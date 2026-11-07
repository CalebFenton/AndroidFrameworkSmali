.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.33f

.field private static final greylist-max-o MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final greylist-max-o NO_POSITION:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private greylist mAreAllItemsSelectable:Z

.field private final greylist-max-o mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field greylist mDivider:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mDividerHeight:I

.field private greylist-max-o mDividerIsOpaque:Z

.field private greylist-max-o mDividerPaint:Landroid/graphics/Paint;

.field private greylist-max-o mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private greylist-max-o mFooterDividersEnabled:Z

.field greylist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeaderDividersEnabled:Z

.field greylist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsCacheColorOpaque:Z

.field private greylist-max-o mItemsCanFocus:Z

.field greylist-max-o mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 221
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    nop

    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 183
    nop

    .line 184
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 206
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 211
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 231
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 233
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ListView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/ListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 236
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 237
    .local p1, "entries":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_47

    .line 238
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090003

    invoke-direct {p2, v4, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    :cond_47
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 242
    .local p2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_50

    .line 245
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_50
    const/4 p3, 0x5

    invoke-virtual {v7, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 249
    .local p3, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_5a

    .line 250
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_5a
    const/4 p4, 0x6

    invoke-virtual {v7, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 254
    .local p4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz p4, :cond_64

    .line 255
    invoke-virtual {p0, p4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_64
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 260
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 262
    .local v1, "dividerHeight":I
    if-eqz v1, :cond_74

    .line 263
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 267
    .end local v1    # "dividerHeight":I
    :cond_74
    const/4 v1, 0x3

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v3, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 268
    const/4 v1, 0x4

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 270
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void
.end method

.method private greylist-max-o addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3335
    add-int/lit8 v2, p2, -0x1

    .line 3336
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3337
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v3

    .line 3338
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v0, v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3340
    return-object v1
.end method

.method private greylist-max-o addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3344
    add-int/lit8 v2, p2, 0x1

    .line 3345
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3346
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v3, v0

    .line 3347
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v0, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3349
    return-object v1
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .registers 6

    .line 286
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 289
    .local v0, "childCount":I
    if-lez v0, :cond_4a

    .line 292
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_23

    .line 295
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 297
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_1f

    .line 300
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 302
    :cond_1f
    if-gez v2, :cond_44

    .line 304
    const/4 v2, 0x0

    goto :goto_44

    .line 308
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_23
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 311
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_41

    .line 314
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 317
    :cond_41
    if-lez v2, :cond_44

    .line 318
    const/4 v2, 0x0

    .line 322
    :cond_44
    :goto_44
    if-eqz v2, :cond_4a

    .line 323
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 326
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4a
    return-void
.end method

.method private greylist-max-o amountToScroll(II)I
    .registers 13
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 2936
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 2937
    .local v0, "listBottom":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2939
    .local v1, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2941
    .local v2, "numChildren":I
    const/16 v3, 0x82

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_7f

    .line 2942
    add-int/lit8 v3, v2, -0x1

    .line 2943
    .local v3, "indexToMakeVisible":I
    if-eq p2, v4, :cond_1f

    .line 2944
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    .line 2946
    :cond_1f
    :goto_1f
    if-gt v2, v3, :cond_32

    .line 2948
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2949
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 2951
    :cond_32
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v3

    .line 2952
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2954
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 2955
    .local v8, "goalBottom":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_45

    .line 2956
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 2959
    :cond_45
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v8, :cond_4c

    .line 2961
    return v5

    .line 2964
    :cond_4c
    if-eq p2, v4, :cond_5b

    .line 2965
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_5b

    .line 2967
    return v5

    .line 2970
    :cond_5b
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v8

    .line 2972
    .local v4, "amountToScroll":I
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v5, v9, :cond_76

    .line 2974
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    .line 2975
    .local v5, "max":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2978
    .end local v5    # "max":I
    :cond_76
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5

    .line 2980
    .end local v3    # "indexToMakeVisible":I
    .end local v4    # "amountToScroll":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalBottom":I
    :cond_7f
    const/4 v3, 0x0

    .line 2981
    .restart local v3    # "indexToMakeVisible":I
    if-eq p2, v4, :cond_86

    .line 2982
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    .line 2984
    :cond_86
    :goto_86
    if-gez v3, :cond_9c

    .line 2986
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2987
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2988
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_86

    .line 2990
    :cond_9c
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v3

    .line 2991
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2992
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 2993
    .local v8, "goalTop":I
    if-lez v6, :cond_ab

    .line 2994
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 2996
    :cond_ab
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v9, v8, :cond_b2

    .line 2998
    return v5

    .line 3001
    :cond_b2
    if-eq p2, v4, :cond_c0

    .line 3002
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_c0

    .line 3004
    return v5

    .line 3007
    :cond_c0
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    .line 3008
    .restart local v4    # "amountToScroll":I
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v9, :cond_d8

    .line 3010
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v1, v5

    .line 3011
    .restart local v5    # "max":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3013
    .end local v5    # "max":I
    :cond_d8
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private greylist-max-o amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 3205
    const/4 v0, 0x0

    .line 3206
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3207
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3208
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2b

    .line 3209
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4b

    .line 3210
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 3211
    if-lez p3, :cond_4b

    .line 3212
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4b

    .line 3216
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3217
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_4b

    .line 3218
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3219
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_4b

    .line 3220
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3224
    .end local v1    # "listBottom":I
    :cond_4b
    :goto_4b
    return v0
.end method

.method private greylist-max-o arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 9
    .param p1, "direction"    # I

    .line 3103
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3105
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x82

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3106
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3107
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3108
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_86

    .line 3109
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_48

    .line 3110
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 3111
    .local v2, "topFadingEdgeShowing":Z
    :goto_26
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3112
    if-eqz v2, :cond_31

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_32

    :cond_31
    move v5, v3

    :goto_32
    add-int/2addr v4, v5

    .line 3114
    .local v4, "listTop":I
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_40

    .line 3115
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_41

    .line 3116
    :cond_40
    move v5, v4

    :goto_41
    nop

    .line 3117
    .local v5, "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3118
    .end local v2    # "topFadingEdgeShowing":Z
    .end local v4    # "listTop":I
    .end local v5    # "ySearchPoint":I
    goto :goto_7c

    .line 3119
    :cond_48
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3120
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    .line 3121
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_56
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 3122
    if-eqz v2, :cond_66

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_67

    :cond_66
    move v5, v3

    :goto_67
    sub-int/2addr v4, v5

    .line 3124
    .local v4, "listBottom":I
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v4, :cond_75

    .line 3125
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_76

    .line 3126
    :cond_75
    move v5, v4

    :goto_76
    nop

    .line 3127
    .restart local v5    # "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3129
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v5    # "ySearchPoint":I
    :goto_7c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 3132
    .local v2, "newFocus":Landroid/view/View;
    :goto_86
    const/4 v3, 0x0

    if-eqz v2, :cond_cd

    .line 3133
    invoke-direct {p0, v2}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 3137
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a7

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a7

    .line 3138
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 3139
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a7

    if-ne p1, v1, :cond_a0

    if-lt v5, v4, :cond_a6

    :cond_a0
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a7

    if-le v5, v4, :cond_a7

    .line 3142
    :cond_a6
    return-object v3

    .line 3146
    .end local v5    # "selectablePosition":I
    :cond_a7
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3148
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    .line 3149
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_bc

    .line 3151
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3152
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3153
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3154
    :cond_bc
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_cd

    .line 3159
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3160
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3161
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3164
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_cd
    return-object v3
.end method

.method private greylist-max-o arrowScrollImpl(I)Z
    .registers 13
    .param p1, "direction"    # I

    .line 2717
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 2718
    return v1

    .line 2721
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2722
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2724
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2725
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2728
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1f

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 2729
    .local v5, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v5, :cond_2a

    .line 2730
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2731
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 2734
    :cond_2a
    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    move v7, v6

    goto :goto_30

    :cond_2f
    move v7, v1

    .line 2735
    .local v7, "needToRedraw":Z
    :goto_30
    const/4 v8, -0x1

    if-eq v3, v8, :cond_59

    .line 2736
    if-eqz v5, :cond_37

    move v9, v6

    goto :goto_38

    :cond_37
    move v9, v1

    :goto_38
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2737
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2738
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2739
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2740
    move v2, v3

    .line 2741
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_55

    if-nez v5, :cond_55

    .line 2744
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    .line 2745
    .local v9, "focused":Landroid/view/View;
    if-eqz v9, :cond_55

    .line 2746
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2749
    .end local v9    # "focused":Landroid/view/View;
    :cond_55
    const/4 v7, 0x1

    .line 2750
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2753
    :cond_59
    if-lez v4, :cond_66

    .line 2754
    const/16 v9, 0x21

    if-ne p1, v9, :cond_61

    move v9, v4

    goto :goto_62

    :cond_61
    neg-int v9, v4

    :goto_62
    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2755
    const/4 v7, 0x1

    .line 2760
    :cond_66
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_89

    if-nez v5, :cond_89

    if-eqz v0, :cond_89

    .line 2761
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_89

    .line 2762
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 2763
    .restart local v9    # "focused":Landroid/view/View;
    if-eqz v9, :cond_89

    .line 2764
    invoke-direct {p0, v9, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_86

    invoke-direct {p0, v9}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_89

    .line 2765
    :cond_86
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2771
    .end local v9    # "focused":Landroid/view/View;
    :cond_89
    if-ne v3, v8, :cond_99

    if-eqz v0, :cond_99

    .line 2772
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_99

    .line 2773
    const/4 v0, 0x0

    .line 2774
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2778
    iput v8, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2781
    :cond_99
    if-eqz v7, :cond_b3

    .line 2782
    if-eqz v0, :cond_a6

    .line 2783
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2784
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2786
    :cond_a6
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_af

    .line 2787
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2789
    :cond_af
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2790
    return v6

    .line 2793
    :cond_b3
    return v1
.end method

.method private greylist-max-o clearRecycledState(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_24

    .line 627
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 629
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 630
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 631
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 632
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 633
    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 629
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 637
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2375
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b0

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1b0

    .line 2379
    :cond_d
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 2380
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2383
    :cond_14
    const/4 v0, 0x0

    .line 2384
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2385
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 2386
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eq v2, v4, :cond_3e

    .line 2387
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2388
    if-nez v0, :cond_3e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3e

    .line 2389
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2390
    const/4 v0, 0x1

    .line 2395
    :cond_3e
    if-nez v0, :cond_193

    if-eq v2, v4, :cond_193

    .line 2396
    const/4 v3, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_1b2

    goto/16 :goto_193

    .line 2466
    :sswitch_4c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2467
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_61

    :cond_5f
    move v3, v1

    goto :goto_62

    :cond_61
    :goto_61
    move v3, v4

    :goto_62
    move v0, v3

    goto/16 :goto_193

    .line 2460
    :sswitch_65
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2461
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7a

    :cond_78
    move v3, v1

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v3, v4

    :goto_7b
    move v0, v3

    goto/16 :goto_193

    .line 2452
    :sswitch_7e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 2453
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_93

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_93

    :cond_91
    move v3, v1

    goto :goto_94

    :cond_93
    :goto_93
    move v3, v4

    :goto_94
    move v0, v3

    goto/16 :goto_193

    .line 2454
    :cond_97
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2455
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_aa

    goto :goto_ac

    :cond_aa
    move v3, v1

    goto :goto_ad

    :cond_ac
    :goto_ac
    move v3, v4

    :goto_ad
    move v0, v3

    goto/16 :goto_193

    .line 2444
    :sswitch_b0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 2445
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_c5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_c3

    goto :goto_c5

    :cond_c3
    move v3, v1

    goto :goto_c6

    :cond_c5
    :goto_c5
    move v3, v4

    :goto_c6
    move v0, v3

    goto/16 :goto_193

    .line 2446
    :cond_c9
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2447
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_de

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_de

    :cond_dc
    move v3, v1

    goto :goto_df

    :cond_de
    :goto_de
    move v3, v4

    :goto_df
    move v0, v3

    goto/16 :goto_193

    .line 2476
    :sswitch_e2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 2477
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f7

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_f5

    goto :goto_f7

    :cond_f5
    move v3, v1

    goto :goto_f8

    :cond_f7
    :goto_f7
    move v3, v4

    :goto_f8
    move v0, v3

    goto/16 :goto_193

    .line 2478
    :cond_fb
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2479
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_110

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_10e

    goto :goto_110

    :cond_10e
    move v3, v1

    goto :goto_111

    :cond_110
    :goto_110
    move v3, v4

    :goto_111
    move v0, v3

    goto/16 :goto_193

    .line 2438
    :sswitch_114
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2439
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_193

    .line 2432
    :sswitch_122
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2433
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_193

    .line 2415
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_149

    .line 2416
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2417
    if-nez v0, :cond_193

    .line 2418
    :goto_13c
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .local v3, "count":I
    if-lez p2, :cond_17a

    .line 2419
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_17a

    .line 2420
    const/4 v0, 0x1

    move p2, v3

    goto :goto_13c

    .line 2426
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_149
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2427
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15e

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_15c

    goto :goto_15e

    :cond_15c
    move v3, v1

    goto :goto_15f

    :cond_15e
    :goto_15e
    move v3, v4

    :goto_15f
    move v0, v3

    goto :goto_193

    .line 2398
    :sswitch_161
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_17c

    .line 2399
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2400
    if-nez v0, :cond_193

    .line 2401
    :goto_16d
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .restart local v3    # "count":I
    if-lez p2, :cond_17a

    .line 2402
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_17a

    .line 2403
    const/4 v0, 0x1

    move p2, v3

    goto :goto_16d

    .line 2485
    :cond_17a
    move p2, v3

    goto :goto_193

    .line 2409
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_17c
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2410
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_191

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_18f

    goto :goto_191

    :cond_18f
    move v3, v1

    goto :goto_192

    :cond_191
    :goto_191
    move v3, v4

    :goto_192
    move v0, v3

    .line 2485
    :cond_193
    :goto_193
    if-eqz v0, :cond_196

    .line 2486
    return v4

    .line 2489
    :cond_196
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 2490
    return v4

    .line 2493
    :cond_19d
    packed-switch v2, :pswitch_data_1d8

    .line 2504
    return v1

    .line 2501
    :pswitch_1a1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2498
    :pswitch_1a6
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2495
    :pswitch_1ab
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2376
    .end local v0    # "handled":Z
    .end local v2    # "action":I
    :cond_1b0
    :goto_1b0
    return v1

    nop

    :sswitch_data_1b2
    .sparse-switch
        0x13 -> :sswitch_161
        0x14 -> :sswitch_130
        0x15 -> :sswitch_122
        0x16 -> :sswitch_114
        0x3d -> :sswitch_e2
        0x5c -> :sswitch_b0
        0x5d -> :sswitch_7e
        0x7a -> :sswitch_65
        0x7b -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_1ab
        :pswitch_1a6
        :pswitch_1a1
    .end packed-switch
.end method

.method private greylist-max-p correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .line 1538
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1539
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5d

    if-lez p1, :cond_5d

    .line 1542
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1545
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1548
    .local v2, "lastBottom":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1552
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1553
    .local v4, "bottomOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1554
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1558
    .local v6, "firstTop":I
    if-lez v4, :cond_5d

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_38

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_5d

    .line 1559
    :cond_38
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_45

    .line 1561
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1564
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1565
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_5d

    .line 1568
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1570
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1575
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastBottom":I
    .end local v3    # "end":I
    .end local v4    # "bottomOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstTop":I
    :cond_5d
    return-void
.end method

.method private greylist-max-p correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .line 1588
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_68

    if-lez p1, :cond_68

    .line 1591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1597
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1600
    .local v2, "start":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1604
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 1605
    .local v4, "topOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1606
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1607
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 1611
    .local v7, "lastPosition":I
    if-lez v4, :cond_68

    .line 1612
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_43

    if-le v6, v3, :cond_39

    goto :goto_43

    .line 1626
    :cond_39
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_68

    .line 1627
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_68

    .line 1613
    :cond_43
    :goto_43
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_4f

    .line 1615
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1618
    :cond_4f
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1619
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_68

    .line 1622
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1624
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1631
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_68
    :goto_68
    return-void
.end method

.method private greylist-max-o distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .line 3235
    const/4 v0, 0x0

    .line 3236
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3237
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3238
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3239
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 3240
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    goto :goto_36

    .line 3241
    :cond_2a
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_36

    .line 3242
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    .line 3244
    :cond_36
    :goto_36
    return v0
.end method

.method private greylist-max-o fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 900
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 901
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 902
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 903
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 904
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_35

    .line 906
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 907
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 908
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 910
    :goto_35
    return-void
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .registers 11
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 781
    const/4 v0, 0x0

    .line 783
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    .line 784
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_15

    .line 785
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    move v3, p1

    move v4, p2

    goto :goto_17

    .line 784
    :cond_15
    move v3, p1

    move v4, p2

    .line 788
    .end local p1    # "pos":I
    .end local p2    # "nextTop":I
    .local v3, "pos":I
    .local v4, "nextTop":I
    :goto_17
    const/4 p1, 0x1

    if-ge v4, v1, :cond_3f

    iget p2, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, p2, :cond_3f

    .line 790
    iget p2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne v3, p2, :cond_23

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    move v7, p1

    .line 791
    .local v7, "selected":Z
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 793
    .local p1, "child":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v5, v2, Landroid/widget/ListView;->mDividerHeight:I

    add-int v4, p2, v5

    .line 794
    if-eqz v7, :cond_3b

    .line 795
    move-object p2, p1

    move-object v0, p2

    .line 797
    :cond_3b
    nop

    .end local v7    # "selected":Z
    .end local p1    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    .line 798
    goto :goto_17

    .line 788
    :cond_3f
    move-object v2, p0

    .line 800
    iget p2, v2, Landroid/widget/ListView;->mFirstPosition:I

    iget v5, v2, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, p1

    invoke-virtual {p0, p2, v5}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 801
    return-object v0
.end method

.method private greylist-max-o fillFromMiddle(II)Landroid/view/View;
    .registers 10
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 868
    sub-int v0, p2, p1

    .line 870
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    .line 872
    .local v2, "position":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    .end local p1    # "childrenTop":I
    .local v3, "childrenTop":I
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 874
    .local p1, "sel":Landroid/view/View;
    iput v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 876
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 877
    .local v4, "selHeight":I
    if-gt v4, v0, :cond_21

    .line 878
    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 881
    :cond_21
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 883
    iget-boolean v5, v1, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v5, :cond_30

    .line 884
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_37

    .line 886
    :cond_30
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 889
    :goto_37
    return-object p1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .registers 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 924
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 925
    .local v0, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 929
    .local v2, "selectedPosition":I
    invoke-direct {p0, p2, v0, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v7

    .line 931
    .local v7, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 934
    .local v8, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    .end local p1    # "selectedTop":I
    .local v3, "selectedTop":I
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 938
    .local p1, "sel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v8, :cond_33

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v7

    .line 945
    .local v4, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v8

    .line 946
    .local v5, "spaceBelow":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 949
    .local v6, "offset":I
    neg-int v9, v6

    invoke-virtual {p1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .end local v4    # "spaceAbove":I
    .end local v5    # "spaceBelow":I
    .end local v6    # "offset":I
    goto :goto_4d

    .line 950
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v7, :cond_4d

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v7, v4

    .line 957
    .restart local v4    # "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v5, v8, v5

    .line 958
    .restart local v5    # "spaceBelow":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 961
    .restart local v6    # "offset":I
    invoke-virtual {p1, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4e

    .line 950
    .end local v4    # "spaceAbove":I
    .end local v5    # "spaceBelow":I
    .end local v6    # "offset":I
    :cond_4d
    :goto_4d
    nop

    .line 965
    :goto_4e
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 967
    iget-boolean v4, v1, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v4, :cond_5d

    .line 968
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_64

    .line 970
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 973
    :goto_64
    return-object p1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .registers 4
    .param p1, "nextTop"    # I

    .line 848
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 849
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 850
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 853
    :cond_1d
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-p fillSpecific(II)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 1489
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v6, v0

    .line 1490
    .local v6, "tempIsSelected":Z
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    .end local p1    # "position":I
    .end local p2    # "top":I
    .local v2, "position":I
    .local v3, "top":I
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1492
    .local p1, "temp":Landroid/view/View;
    iput v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1497
    iget p2, v1, Landroid/widget/ListView;->mDividerHeight:I

    .line 1498
    .local p2, "dividerHeight":I
    iget-boolean v0, v1, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_3f

    .line 1499
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {p0, v0, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1501
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1502
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, p2

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1503
    .local v4, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1504
    .local v5, "childCount":I
    if-lez v5, :cond_3e

    .line 1505
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1507
    .end local v5    # "childCount":I
    :cond_3e
    goto :goto_61

    .line 1508
    .end local v0    # "above":Landroid/view/View;
    .end local v4    # "below":Landroid/view/View;
    :cond_3f
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {p0, v0, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1510
    .restart local v4    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1511
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-direct {p0, v0, v5}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1512
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1513
    .restart local v5    # "childCount":I
    if-lez v5, :cond_61

    .line 1514
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1518
    .end local v5    # "childCount":I
    :cond_61
    :goto_61
    if-eqz v6, :cond_64

    .line 1519
    return-object p1

    .line 1520
    :cond_64
    if-eqz v0, :cond_67

    .line 1521
    return-object v0

    .line 1523
    :cond_67
    return-object v4
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .registers 11
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 819
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_10

    .line 820
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    move v3, p1

    move v4, p2

    goto :goto_12

    .line 819
    :cond_10
    move v3, p1

    move v4, p2

    .line 823
    .end local p1    # "pos":I
    .end local p2    # "nextBottom":I
    .local v3, "pos":I
    .local v4, "nextBottom":I
    :goto_12
    const/4 p1, 0x1

    if-le v4, v1, :cond_38

    if-ltz v3, :cond_38

    .line 825
    iget p2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne v3, p2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    move v7, p1

    .line 826
    .local v7, "selected":Z
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 827
    .local p1, "child":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget v5, v2, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v4, p2, v5

    .line 828
    if-eqz v7, :cond_34

    .line 829
    move-object p2, p1

    move-object v0, p2

    .line 831
    :cond_34
    nop

    .end local v7    # "selected":Z
    .end local p1    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, -0x1

    .line 832
    goto :goto_12

    .line 823
    :cond_38
    move-object v2, p0

    .line 834
    add-int/lit8 p2, v3, 0x1

    iput p2, v2, Landroid/widget/ListView;->mFirstPosition:I

    .line 835
    iget p2, v2, Landroid/widget/ListView;->mFirstPosition:I

    iget v5, v2, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, p1

    invoke-virtual {p0, p2, v5}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 836
    return-object v0
.end method

.method private greylist-max-o getArrowScrollPreviewLength()I
    .registers 3

    .line 2920
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBottomSelectionPixel(III)I
    .registers 6
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 986
    move v0, p1

    .line 987
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 988
    sub-int/2addr v0, p2

    .line 990
    :cond_8
    return v0
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1003
    move v0, p1

    .line 1004
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 1005
    add-int/2addr v0, p2

    .line 1007
    :cond_4
    return v0
.end method

.method private greylist-max-o handleHorizontalFocusWithinListItem(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2605
    const/16 v0, 0x11

    if-eq p1, v0, :cond_11

    const/16 v0, 0x42

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 2606
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2610
    :cond_11
    :goto_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2611
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_6d

    if-lez v0, :cond_6d

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6d

    .line 2612
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 2613
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6d

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6d

    .line 2616
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2617
    .local v2, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2619
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_58

    .line 2621
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2622
    .local v4, "focusedRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_4f

    .line 2623
    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2624
    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2625
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_50

    .line 2627
    :cond_4f
    const/4 v4, 0x0

    .line 2629
    :goto_50
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2630
    const/4 v5, 0x1

    return v5

    .line 2637
    .end local v4    # "focusedRect":Landroid/graphics/Rect;
    :cond_58
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2638
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2637
    invoke-virtual {v4, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2639
    .local v4, "globalNextFocus":Landroid/view/View;
    if-eqz v4, :cond_6d

    .line 2640
    invoke-direct {p0, v4, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 2644
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v2    # "currentFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    .end local v4    # "globalNextFocus":Landroid/view/View;
    :cond_6d
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 16
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 2811
    const/4 v0, -0x1

    if-eq p3, v0, :cond_45

    .line 2822
    const/4 v0, 0x0

    .line 2823
    .local v0, "topSelected":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 2824
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 2825
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x21

    if-ne p2, v3, :cond_1a

    .line 2826
    move v3, v2

    .line 2827
    .local v3, "topViewIndex":I
    move v4, v1

    .line 2828
    .local v4, "bottomViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2829
    .local v5, "topView":Landroid/view/View;
    move-object v6, p1

    .line 2830
    .local v6, "bottomView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_21

    .line 2832
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    :cond_1a
    move v3, v1

    .line 2833
    .restart local v3    # "topViewIndex":I
    move v4, v2

    .line 2834
    .restart local v4    # "bottomViewIndex":I
    move-object v5, p1

    .line 2835
    .restart local v5    # "topView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2838
    .restart local v6    # "bottomView":Landroid/view/View;
    :goto_21
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2841
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_36

    .line 2842
    if-nez p4, :cond_2f

    if-eqz v0, :cond_2f

    move v10, v8

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 2843
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2847
    :cond_36
    if-eqz v6, :cond_44

    .line 2848
    if-nez p4, :cond_3d

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v8, v9

    :goto_3e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2849
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2851
    :cond_44
    return-void

    .line 2812
    .end local v0    # "topSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .line 2016
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2017
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2018
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v3, 0x1

    if-ge v2, v1, :cond_18

    .line 2019
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_15

    .line 2020
    return v3

    .line 2018
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2024
    .end local v2    # "i":I
    :cond_18
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2025
    .local v2, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2026
    .local v4, "numFooters":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v4, :cond_2f

    .line 2027
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2c

    .line 2028
    return v3

    .line 2026
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 2032
    .end local v5    # "i":I
    :cond_2f
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 3187
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3188
    return v0

    .line 3191
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3192
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private greylist-max-o lookForSelectablePositionOnScreen(I)I
    .registers 9
    .param p1, "direction"    # I

    .line 3050
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3051
    .local v0, "firstPosition":I
    const/16 v1, 0x82

    const/4 v2, -0x1

    if-ne p1, v1, :cond_40

    .line 3052
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v1, v2, :cond_10

    .line 3053
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3054
    :cond_10
    move v1, v0

    :goto_11
    nop

    .line 3055
    .local v1, "startPos":I
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1b

    .line 3056
    return v2

    .line 3058
    :cond_1b
    if-ge v1, v0, :cond_1e

    .line 3059
    move v1, v0

    .line 3062
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3063
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3064
    .local v4, "adapter":Landroid/widget/ListAdapter;
    move v5, v1

    .local v5, "pos":I
    :goto_27
    if-gt v5, v3, :cond_3f

    .line 3065
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    sub-int v6, v5, v0

    .line 3066
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3c

    .line 3067
    return v5

    .line 3064
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 3070
    .end local v1    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_3f
    goto :goto_83

    .line 3071
    :cond_40
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3072
    .local v1, "last":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v2, :cond_50

    .line 3073
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 3074
    :cond_50
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_57
    nop

    .line 3075
    .local v3, "startPos":I
    if-ltz v3, :cond_84

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_63

    goto :goto_84

    .line 3078
    :cond_63
    if-le v3, v1, :cond_66

    .line 3079
    move v3, v1

    .line 3082
    :cond_66
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3083
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    move v5, v3

    .restart local v5    # "pos":I
    :goto_6b
    if-lt v5, v0, :cond_83

    .line 3084
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_80

    sub-int v6, v5, v0

    .line 3085
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_80

    .line 3086
    return v5

    .line 3083
    :cond_80
    add-int/lit8 v5, v5, -0x1

    goto :goto_6b

    .line 3090
    .end local v1    # "last":I
    .end local v3    # "startPos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_83
    :goto_83
    return v2

    .line 3076
    .restart local v1    # "last":I
    .restart local v3    # "startPos":I
    :cond_84
    :goto_84
    return v2
.end method

.method private greylist makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .line 2052
    iget-boolean v1, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v1, :cond_17

    .line 2054
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2055
    .local v1, "activeView":Landroid/view/View;
    if-eqz v1, :cond_17

    .line 2058
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2059
    return-object v1

    .line 2065
    .end local v1    # "activeView":Landroid/view/View;
    :cond_17
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2068
    .local v1, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v3, v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2070
    return-object v1
.end method

.method private greylist-max-o measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 2861
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2862
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2863
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_23

    .line 2865
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2868
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2869
    .local v1, "heightDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_17
    if-ge v2, p3, :cond_23

    .line 2870
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2869
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2873
    .end local v1    # "heightDelta":I
    .end local v2    # "i":I
    :cond_23
    return-void
.end method

.method private greylist-max-o measureItem(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .line 2881
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2882
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_e

    .line 2883
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2888
    :cond_e
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2890
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2892
    .local v2, "lpHeight":I
    if-lez v2, :cond_2a

    .line 2893
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_33

    .line 2895
    .end local v3    # "childHeightSpec":I
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2898
    .restart local v3    # "childHeightSpec":I
    :goto_33
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2899
    return-void
.end method

.method private greylist-max-o measureScrapChild(Landroid/view/View;III)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .line 1330
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1331
    .local v0, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_12

    .line 1332
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1333
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    :cond_12
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1336
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1337
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1339
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1341
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1343
    .local v2, "lpHeight":I
    if-lez v2, :cond_3f

    .line 1344
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_44

    .line 1346
    .end local v3    # "childHeightSpec":I
    :cond_3f
    const/4 v3, 0x0

    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1348
    .restart local v3    # "childHeightSpec":I
    :goto_44
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1353
    return-void
.end method

.method private greylist-max-o moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .line 1049
    move/from16 v6, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 1050
    .local v7, "fadingEdgeLength":I
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1054
    .local v8, "selectedPosition":I
    invoke-direct {p0, v6, v7, v8}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v9

    .line 1056
    .local v9, "topSelectionPixel":I
    invoke-direct {p0, v6, v7, v8}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 1059
    .local v10, "bottomSelectionPixel":I
    if-lez p3, :cond_96

    .line 1081
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 1084
    .end local p1    # "oldSel":Landroid/view/View;
    .local v11, "oldSel":Landroid/view/View;
    iget v12, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1087
    .local v12, "dividerHeight":I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v2, v1, v12

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move v1, v8

    .end local v8    # "selectedPosition":I
    .local v1, "selectedPosition":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1091
    .local v2, "sel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v10, :cond_59

    .line 1094
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    .line 1097
    .local v3, "spaceAbove":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v10

    .line 1100
    .local v4, "spaceBelow":I
    sub-int v5, p5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1101
    .local v5, "halfVerticalSpace":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1102
    .local v8, "offset":I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1105
    neg-int v13, v8

    invoke-virtual {v11, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1107
    neg-int v13, v8

    invoke-virtual {v2, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1111
    .end local v3    # "spaceAbove":I
    .end local v4    # "spaceBelow":I
    .end local v5    # "halfVerticalSpace":I
    .end local v8    # "offset":I
    :cond_59
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_79

    .line 1112
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1113
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1114
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v12

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_94

    .line 1116
    :cond_79
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v12

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1117
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1118
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1120
    .end local v12    # "dividerHeight":I
    :goto_94
    goto/16 :goto_107

    .end local v1    # "selectedPosition":I
    .end local v2    # "sel":Landroid/view/View;
    .end local v11    # "oldSel":Landroid/view/View;
    .local v8, "selectedPosition":I
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_96
    move v1, v8

    .end local v8    # "selectedPosition":I
    .restart local v1    # "selectedPosition":I
    if-gez p3, :cond_e0

    .line 1141
    if-eqz p2, :cond_ab

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_ba

    .line 1148
    .end local v2    # "sel":Landroid/view/View;
    :cond_ab
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1153
    .restart local v2    # "sel":Landroid/view/View;
    :goto_ba
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v9, :cond_db

    .line 1155
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v9, v3

    .line 1158
    .restart local v3    # "spaceAbove":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v4, v10, v4

    .line 1161
    .restart local v4    # "spaceBelow":I
    sub-int v5, p5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1162
    .restart local v5    # "halfVerticalSpace":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1163
    .local v8, "offset":I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1166
    invoke-virtual {v2, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1170
    .end local v3    # "spaceAbove":I
    .end local v4    # "spaceBelow":I
    .end local v5    # "halfVerticalSpace":I
    .end local v8    # "offset":I
    :cond_db
    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v11, p1

    goto :goto_107

    .line 1173
    .end local v2    # "sel":Landroid/view/View;
    :cond_e0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1178
    .local v2, "oldTop":I
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    .line 1181
    .local v3, "sel":Landroid/view/View;
    if-ge v2, v6, :cond_102

    .line 1184
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1185
    .local v4, "newBottom":I
    add-int/lit8 v5, v6, 0x14

    if-ge v4, v5, :cond_102

    .line 1187
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v6, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1192
    .end local v4    # "newBottom":I
    :cond_102
    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v11, p1

    move-object v2, v3

    .line 1195
    .end local v3    # "sel":Landroid/view/View;
    .end local p1    # "oldSel":Landroid/view/View;
    .local v2, "sel":Landroid/view/View;
    .restart local v11    # "oldSel":Landroid/view/View;
    :goto_107
    return-object v2
.end method

.method private final greylist-max-o nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 2682
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p3, v2, :cond_25

    .line 2683
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2684
    .local v3, "listBottom":I
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_24

    .line 2685
    if-eq p2, v1, :cond_20

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v4, :cond_20

    .line 2686
    add-int/lit8 v4, p2, 0x1

    goto :goto_22

    .line 2687
    :cond_20
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_22
    nop

    .line 2691
    .end local v3    # "listBottom":I
    .local v4, "nextSelected":I
    goto :goto_43

    .line 2689
    .end local v4    # "nextSelected":I
    .restart local v3    # "listBottom":I
    :cond_24
    return v1

    .line 2692
    .end local v3    # "listBottom":I
    :cond_25
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2693
    .local v3, "listTop":I
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v3, :cond_58

    .line 2694
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 2695
    .local v4, "lastPos":I
    if-eq p2, v1, :cond_40

    if-gt p2, v4, :cond_40

    .line 2696
    add-int/lit8 v5, p2, -0x1

    goto :goto_41

    .line 2697
    :cond_40
    move v5, v4

    :goto_41
    move v4, v5

    .line 2698
    .local v4, "nextSelected":I
    nop

    .line 2703
    .end local v3    # "listTop":I
    :goto_43
    if-ltz v4, :cond_57

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v4, v3, :cond_4e

    goto :goto_57

    .line 2706
    :cond_4e
    if-ne p3, v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    invoke-virtual {p0, v4, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 2704
    :cond_57
    :goto_57
    return v1

    .line 2699
    .end local v4    # "nextSelected":I
    .restart local v3    # "listTop":I
    :cond_58
    return v1
.end method

.method private greylist-max-o positionOfNewFocus(Landroid/view/View;)I
    .registers 6
    .param p1, "newFocus"    # Landroid/view/View;

    .line 3172
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3173
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 3174
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3175
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3176
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3173
    .end local v2    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3179
    .end local v1    # "i":I
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o relayoutMeasuredItem(Landroid/view/View;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;

    .line 2907
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2908
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2909
    .local v1, "h":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2910
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 2911
    .local v3, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2912
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 2913
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 2914
    return-void
.end method

.method private greylist-max-o removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 419
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 420
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 421
    .local v2, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 422
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 423
    goto :goto_18

    .line 419
    .end local v2    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 426
    .end local v1    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method private greylist-max-o removeUnusedFixedViews(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 1995
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    if-nez p1, :cond_3

    .line 1996
    return-void

    .line 1998
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2e

    .line 1999
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2000
    .local v1, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2001
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2002
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2b

    if-eqz v3, :cond_2b

    iget-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_2b

    .line 2003
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2004
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1998
    .end local v1    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2008
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private greylist scrollListItemsBy(I)V
    .registers 13
    .param p1, "amount"    # I

    .line 3256
    iget v0, p0, Landroid/widget/ListView;->mScrollX:I

    .line 3257
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    .line 3259
    .local v1, "oldY":I
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3261
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 3262
    .local v2, "listBottom":I
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3263
    .local v3, "listTop":I
    iget-object v4, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3265
    .local v4, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v5, 0x0

    if-gez p1, :cond_77

    .line 3269
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 3270
    .local v6, "numChildren":I
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3271
    .local v7, "last":Landroid/view/View;
    :goto_23
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_3c

    .line 3272
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    .line 3273
    .local v8, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3c

    .line 3274
    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3275
    nop

    .end local v8    # "lastVisiblePosition":I
    add-int/lit8 v6, v6, 0x1

    .line 3279
    goto :goto_23

    .line 3284
    :cond_3c
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_4b

    .line 3285
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3289
    :cond_4b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3290
    .local v8, "first":Landroid/view/View;
    :goto_4f
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v3, :cond_76

    .line 3291
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    .line 3292
    .local v9, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 3293
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v4, v8, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3295
    :cond_68
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3296
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3297
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3298
    .end local v9    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_4f

    .line 3299
    .end local v6    # "numChildren":I
    .end local v7    # "last":Landroid/view/View;
    .end local v8    # "first":Landroid/view/View;
    :cond_76
    goto :goto_cf

    .line 3301
    :cond_77
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3304
    .local v5, "first":Landroid/view/View;
    :goto_7b
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_92

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v6, :cond_92

    .line 3305
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3306
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_7b

    .line 3311
    :cond_92
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_a1

    .line 3312
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3315
    :cond_a1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 3316
    .local v6, "lastIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3319
    .restart local v7    # "last":Landroid/view/View;
    :goto_ab
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v2, :cond_cf

    .line 3320
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 3321
    .local v8, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 3322
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v6

    invoke-virtual {v4, v7, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3324
    :cond_c5
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3325
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3326
    .end local v8    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_ab

    .line 3328
    .end local v5    # "first":Landroid/view/View;
    .end local v6    # "lastIndex":I
    .end local v7    # "last":Landroid/view/View;
    :cond_cf
    :goto_cf
    invoke-virtual {v4}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3329
    iget-object v5, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3330
    iget-object v5, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3331
    iget v5, p0, Landroid/widget/ListView;->mScrollX:I

    iget v6, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 3332
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZ)V
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    .line 2091
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-string/jumbo v4, "setupListItem"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2093
    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_1c

    invoke-virtual {v0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_1c

    move v8, v4

    goto :goto_1d

    :cond_1c
    move v8, v7

    .line 2094
    .local v8, "isSelected":Z
    :goto_1d
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_25

    move v9, v4

    goto :goto_26

    :cond_25
    move v9, v7

    .line 2095
    .local v9, "updateChildSelected":Z
    :goto_26
    iget v10, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 2096
    .local v10, "mode":I
    if-lez v10, :cond_33

    const/4 v11, 0x3

    if-ge v10, v11, :cond_33

    iget v11, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v11, v2, :cond_33

    move v11, v4

    goto :goto_34

    :cond_33
    move v11, v7

    .line 2098
    .local v11, "isPressed":Z
    :goto_34
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3c

    move v12, v4

    goto :goto_3d

    :cond_3c
    move v12, v7

    .line 2099
    .local v12, "updateChildPressed":Z
    :goto_3d
    if-eqz p7, :cond_4a

    if-nez v9, :cond_4a

    .line 2100
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_4a

    :cond_48
    move v13, v7

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v13, v4

    .line 2104
    .local v13, "needToMeasure":Z
    :goto_4b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2105
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_5a

    .line 2106
    invoke-virtual {v0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2108
    :cond_5a
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2109
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2114
    if-eqz v9, :cond_6f

    .line 2115
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2118
    :cond_6f
    if-eqz v12, :cond_74

    .line 2119
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 2122
    :cond_74
    iget v15, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v15, :cond_a9

    iget-object v15, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a9

    .line 2123
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_8f

    .line 2124
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    move-wide/from16 v16, v5

    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v15, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_ab

    .line 2125
    :cond_8f
    move-wide/from16 v16, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_ab

    .line 2127
    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_ab

    .line 2122
    :cond_a9
    move-wide/from16 v16, v5

    .line 2131
    :cond_ab
    :goto_ab
    const/4 v5, -0x1

    if-eqz p7, :cond_b2

    iget-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v6, :cond_bb

    :cond_b2
    iget-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v15, -0x2

    if-eqz v6, :cond_d2

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v15, :cond_d2

    .line 2133
    :cond_bb
    if-eqz p4, :cond_be

    goto :goto_bf

    :cond_be
    move v5, v7

    :goto_bf
    invoke-virtual {v0, v1, v5, v14}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2137
    if-eqz p7, :cond_e4

    .line 2138
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_e4

    .line 2140
    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_e4

    .line 2143
    :cond_d2
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2144
    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v15, :cond_da

    .line 2145
    iput-boolean v4, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2147
    :cond_da
    if-eqz p4, :cond_dd

    goto :goto_de

    :cond_dd
    move v5, v7

    :goto_de
    invoke-virtual {v0, v1, v5, v14, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2149
    invoke-virtual {v1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2152
    :cond_e4
    :goto_e4
    if-eqz v13, :cond_10e

    .line 2153
    iget v5, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v6, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v15

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v5, v6, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2155
    .local v5, "childWidthSpec":I
    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2157
    .local v6, "lpHeight":I
    if-lez v6, :cond_102

    .line 2158
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childHeightSpec":I
    goto :goto_10a

    .line 2160
    .end local v7    # "childHeightSpec":I
    :cond_102
    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 2163
    .restart local v7    # "childHeightSpec":I
    :goto_10a
    invoke-virtual {v1, v5, v7}, Landroid/view/View;->measure(II)V

    .line 2164
    .end local v5    # "childWidthSpec":I
    .end local v6    # "lpHeight":I
    .end local v7    # "childHeightSpec":I
    goto :goto_111

    .line 2165
    :cond_10e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2168
    :goto_111
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2169
    .local v5, "w":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 2170
    .local v6, "h":I
    if-eqz p4, :cond_11e

    move/from16 v7, p3

    goto :goto_120

    :cond_11e
    sub-int v7, p3, v6

    .line 2172
    .local v7, "childTop":I
    :goto_120
    if-eqz v13, :cond_12a

    .line 2173
    add-int v15, v3, v5

    .line 2174
    .local v15, "childRight":I
    add-int v4, v7, v6

    .line 2175
    .local v4, "childBottom":I
    invoke-virtual {v1, v3, v7, v15, v4}, Landroid/view/View;->layout(IIII)V

    .line 2176
    .end local v4    # "childBottom":I
    .end local v15    # "childRight":I
    goto :goto_13c

    .line 2177
    :cond_12a
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2178
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2181
    :goto_13c
    iget-boolean v4, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v4, :cond_14a

    invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_14a

    .line 2182
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2185
    :cond_14a
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 2186
    return-void
.end method

.method private greylist-max-o shouldAdjustHeightForDivider(I)Z
    .registers 24
    .param p1, "itemIndex"    # I

    .line 4039
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4040
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4041
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4042
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_e

    const/4 v7, 0x1

    goto :goto_f

    :cond_e
    const/4 v7, 0x0

    .line 4043
    .local v7, "drawOverscrollHeader":Z
    :goto_f
    if-eqz v4, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    .line 4044
    .local v8, "drawOverscrollFooter":Z
    :goto_14
    if-lez v2, :cond_1c

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v9, 0x0

    .line 4046
    .local v9, "drawDividers":Z
    :goto_1d
    if-eqz v9, :cond_ca

    .line 4047
    invoke-virtual {v0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-super {v0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_2d

    const/4 v10, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v10, 0x0

    .line 4048
    .local v10, "fillForMissingDividers":Z
    :goto_2e
    iget v11, v0, Landroid/widget/ListView;->mItemCount:I

    .line 4049
    .local v11, "itemCount":I
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 4050
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 4051
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_40

    const/4 v14, 0x1

    goto :goto_41

    :cond_40
    const/4 v14, 0x0

    .line 4052
    .local v14, "isHeader":Z
    :goto_41
    if-lt v1, v13, :cond_45

    const/4 v15, 0x1

    goto :goto_46

    :cond_45
    const/4 v15, 0x0

    .line 4053
    .local v15, "isFooter":Z
    :goto_46
    const/16 v16, 0x0

    iget-boolean v5, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4054
    .local v5, "headerDividers":Z
    const/16 v17, 0x1

    iget-boolean v6, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4055
    .local v6, "footerDividers":Z
    if-nez v5, :cond_59

    if-nez v14, :cond_53

    goto :goto_59

    :cond_53
    move/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_d0

    :cond_59
    :goto_59
    if-nez v6, :cond_5d

    if-nez v15, :cond_53

    .line 4056
    :cond_5d
    move/from16 v18, v2

    .end local v2    # "dividerHeight":I
    .local v18, "dividerHeight":I
    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4057
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v19, v3

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_95

    .line 4058
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_6e

    move/from16 v3, v17

    goto :goto_70

    :cond_6e
    move/from16 v3, v16

    .line 4059
    .local v3, "isLastItem":Z
    :goto_70
    if-eqz v8, :cond_74

    if-nez v3, :cond_94

    .line 4060
    :cond_74
    add-int/lit8 v0, v1, 0x1

    .line 4064
    .local v0, "nextIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_91

    if-nez v5, :cond_82

    if-nez v14, :cond_91

    if-lt v0, v12, :cond_91

    :cond_82
    if-nez v3, :cond_90

    .line 4066
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_91

    if-nez v6, :cond_90

    if-nez v15, :cond_91

    if-ge v0, v13, :cond_91

    .line 4068
    :cond_90
    return v17

    .line 4069
    :cond_91
    if-eqz v10, :cond_94

    .line 4070
    return v17

    .line 4073
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_94
    goto :goto_d0

    .line 4074
    :cond_95
    if-eqz v7, :cond_9a

    move/from16 v0, v17

    goto :goto_9c

    :cond_9a
    move/from16 v0, v16

    .line 4075
    .local v0, "start":I
    :goto_9c
    if-ne v1, v0, :cond_a1

    move/from16 v3, v17

    goto :goto_a3

    :cond_a1
    move/from16 v3, v16

    .line 4076
    .local v3, "isFirstItem":Z
    :goto_a3
    if-nez v3, :cond_c7

    .line 4077
    move/from16 v20, v0

    .end local v0    # "start":I
    .local v20, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 4081
    .local v0, "previousIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_c4

    if-nez v5, :cond_b5

    if-nez v14, :cond_c4

    if-lt v0, v12, :cond_c4

    :cond_b5
    if-nez v3, :cond_c3

    .line 4083
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_c4

    if-nez v6, :cond_c3

    if-nez v15, :cond_c4

    if-ge v0, v13, :cond_c4

    .line 4085
    :cond_c3
    return v17

    .line 4086
    :cond_c4
    if-eqz v10, :cond_d0

    .line 4087
    return v17

    .line 4076
    .end local v20    # "start":I
    .local v0, "start":I
    :cond_c7
    move/from16 v20, v0

    .end local v0    # "start":I
    .restart local v20    # "start":I
    goto :goto_d0

    .line 4046
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    .end local v18    # "dividerHeight":I
    .end local v19    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v20    # "start":I
    .local v2, "dividerHeight":I
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_ca
    move/from16 v18, v2

    move-object/from16 v19, v3

    const/16 v16, 0x0

    .line 4094
    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "dividerHeight":I
    .restart local v19    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_d0
    :goto_d0
    return v16
.end method

.method private greylist-max-o showingBottomFadingEdge()Z
    .registers 7

    .line 651
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 652
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 653
    .local v1, "bottomOfBottomChild":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 655
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 657
    .local v4, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_28

    if-ge v1, v4, :cond_27

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :cond_28
    :goto_28
    return v3
.end method

.method private greylist-max-o showingTopFadingEdge()Z
    .registers 4

    .line 643
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 644
    .local v0, "listTop":I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method


# virtual methods
.method public whitelist addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 489
    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 446
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 447
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 453
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 454
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 455
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 456
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 460
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_45

    .line 461
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_3c

    .line 462
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 467
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_45

    .line 468
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 471
    :cond_45
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 388
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    .line 346
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 347
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1a
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 352
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 353
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 354
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 355
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 359
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_45

    .line 360
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_3c

    .line 361
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 366
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_45

    .line 367
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 370
    :cond_45
    return-void
.end method

.method public whitelist areFooterDividersEnabled()Z
    .registers 2

    .line 3733
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public whitelist areHeaderDividersEnabled()Z
    .registers 2

    .line 3709
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method greylist arrowScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .line 2657
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2658
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2659
    .local v0, "handled":Z
    if-eqz v0, :cond_11

    .line 2660
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 2662
    :cond_11
    nop

    .line 2664
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2662
    return v0

    .line 2664
    .end local v0    # "handled":Z
    :catchall_15
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2665
    throw v0
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 2190
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected greylist-max-o dispatchDataSetObserverOnChangedInternal()V
    .registers 2

    .line 4177
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_9

    .line 4178
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 4180
    :cond_9
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3443
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    .line 3444
    iput-boolean v3, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3448
    :cond_b
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3449
    .local v2, "dividerHeight":I
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3450
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3451
    .local v5, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_15

    move v7, v3

    goto :goto_16

    :cond_15
    const/4 v7, 0x0

    .line 3452
    .local v7, "drawOverscrollHeader":Z
    :goto_16
    if-eqz v5, :cond_1a

    move v8, v3

    goto :goto_1b

    :cond_1a
    const/4 v8, 0x0

    .line 3453
    .local v8, "drawOverscrollFooter":Z
    :goto_1b
    if-lez v2, :cond_23

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_23

    move v9, v3

    goto :goto_24

    :cond_23
    const/4 v9, 0x0

    .line 3455
    .local v9, "drawDividers":Z
    :goto_24
    if-nez v9, :cond_37

    if-nez v7, :cond_37

    if-eqz v8, :cond_2b

    goto :goto_37

    :cond_2b
    move/from16 v23, v2

    move-object/from16 v32, v4

    move/from16 v20, v7

    move/from16 v24, v8

    move/from16 v22, v9

    goto/16 :goto_287

    .line 3457
    :cond_37
    :goto_37
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3458
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v11, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 3459
    iget v11, v0, Landroid/widget/ListView;->mRight:I

    iget v12, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 3461
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3462
    .local v11, "count":I
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 3463
    .local v12, "headerCount":I
    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3464
    .local v13, "itemCount":I
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    .line 3465
    .local v14, "footerLimit":I
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3466
    .local v15, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3467
    .local v3, "footerDividers":Z
    iget v6, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3468
    .local v6, "first":I
    move/from16 v16, v3

    .end local v3    # "footerDividers":Z
    .local v16, "footerDividers":Z
    iget-boolean v3, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3469
    .local v3, "areAllItemsSelectable":Z
    move/from16 v17, v3

    .end local v3    # "areAllItemsSelectable":Z
    .local v17, "areAllItemsSelectable":Z
    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3474
    .local v3, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_76

    invoke-super {v0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v18

    if-nez v18, :cond_76

    const/16 v18, 0x1

    goto :goto_78

    :cond_76
    const/16 v18, 0x0

    .line 3476
    .local v18, "fillForMissingDividers":Z
    :goto_78
    if-eqz v18, :cond_9a

    move/from16 v19, v6

    .end local v6    # "first":I
    .local v19, "first":I
    iget-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_97

    iget-boolean v6, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v6, :cond_97

    .line 3477
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3478
    iget-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move/from16 v20, v7

    .end local v7    # "drawOverscrollHeader":Z
    .local v20, "drawOverscrollHeader":Z
    invoke-virtual {v0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9e

    .line 3476
    .end local v20    # "drawOverscrollHeader":Z
    .restart local v7    # "drawOverscrollHeader":Z
    :cond_97
    move/from16 v20, v7

    .end local v7    # "drawOverscrollHeader":Z
    .restart local v20    # "drawOverscrollHeader":Z
    goto :goto_9e

    .end local v19    # "first":I
    .end local v20    # "drawOverscrollHeader":Z
    .restart local v6    # "first":I
    .restart local v7    # "drawOverscrollHeader":Z
    :cond_9a
    move/from16 v19, v6

    move/from16 v20, v7

    .line 3480
    .end local v6    # "first":I
    .end local v7    # "drawOverscrollHeader":Z
    .restart local v19    # "first":I
    .restart local v20    # "drawOverscrollHeader":Z
    :goto_9e
    iget-object v6, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3482
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 3483
    .local v7, "effectivePaddingTop":I
    const/16 v21, 0x0

    .line 3484
    .local v21, "effectivePaddingBottom":I
    move/from16 v22, v7

    .end local v7    # "effectivePaddingTop":I
    .local v22, "effectivePaddingTop":I
    iget v7, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v23, v7

    const/16 v7, 0x22

    move/from16 v24, v8

    .end local v8    # "drawOverscrollFooter":Z
    .local v24, "drawOverscrollFooter":Z
    and-int/lit8 v8, v23, 0x22

    if-ne v8, v7, :cond_bc

    .line 3485
    iget-object v7, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 3486
    .end local v22    # "effectivePaddingTop":I
    .restart local v7    # "effectivePaddingTop":I
    iget-object v8, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v8

    .end local v21    # "effectivePaddingBottom":I
    .local v8, "effectivePaddingBottom":I
    goto :goto_be

    .line 3484
    .end local v7    # "effectivePaddingTop":I
    .end local v8    # "effectivePaddingBottom":I
    .restart local v21    # "effectivePaddingBottom":I
    .restart local v22    # "effectivePaddingTop":I
    :cond_bc
    move/from16 v7, v22

    .line 3489
    .end local v22    # "effectivePaddingTop":I
    .restart local v7    # "effectivePaddingTop":I
    :goto_be
    iget v8, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v22, v8

    iget v8, v0, Landroid/widget/ListView;->mTop:I

    sub-int v8, v22, v8

    sub-int v8, v8, v21

    move/from16 v22, v8

    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    add-int v8, v22, v8

    .line 3490
    .local v8, "listBottom":I
    move/from16 v22, v9

    .end local v9    # "drawDividers":Z
    .local v22, "drawDividers":Z
    iget-boolean v9, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v23, v9

    if-nez v23, :cond_1a3

    .line 3491
    const/16 v23, 0x0

    .line 3494
    .local v23, "bottom":I
    iget v9, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3495
    .local v9, "scrollY":I
    if-lez v11, :cond_fa

    if-gez v9, :cond_fa

    .line 3496
    if-eqz v20, :cond_eb

    .line 3497
    move/from16 v26, v15

    const/4 v15, 0x0

    .end local v15    # "headerDividers":Z
    .local v26, "headerDividers":Z
    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 3498
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 3499
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_fc

    .line 3500
    .end local v26    # "headerDividers":Z
    .restart local v15    # "headerDividers":Z
    :cond_eb
    move/from16 v26, v15

    const/4 v15, 0x0

    .end local v15    # "headerDividers":Z
    .restart local v26    # "headerDividers":Z
    if-eqz v22, :cond_fc

    .line 3501
    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 3502
    neg-int v15, v2

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 3503
    const/4 v15, -0x1

    invoke-virtual {v0, v1, v10, v15}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_fc

    .line 3495
    .end local v26    # "headerDividers":Z
    .restart local v15    # "headerDividers":Z
    :cond_fa
    move/from16 v26, v15

    .line 3507
    .end local v15    # "headerDividers":Z
    .restart local v26    # "headerDividers":Z
    :cond_fc
    :goto_fc
    const/4 v15, 0x0

    move/from16 v35, v23

    move/from16 v23, v2

    move/from16 v2, v35

    .local v2, "bottom":I
    .local v15, "i":I
    .local v23, "dividerHeight":I
    :goto_103
    if-ge v15, v11, :cond_187

    .line 3508
    move/from16 v25, v9

    .end local v9    # "scrollY":I
    .local v25, "scrollY":I
    add-int v9, v19, v15

    .line 3509
    .local v9, "itemIndex":I
    if-ge v9, v12, :cond_10e

    const/16 v27, 0x1

    goto :goto_110

    :cond_10e
    const/16 v27, 0x0

    .line 3510
    .local v27, "isHeader":Z
    :goto_110
    if-lt v9, v14, :cond_115

    const/16 v28, 0x1

    goto :goto_117

    :cond_115
    const/16 v28, 0x0

    .line 3511
    .local v28, "isFooter":Z
    :goto_117
    if-nez v26, :cond_11b

    if-nez v27, :cond_120

    :cond_11b
    if-nez v16, :cond_124

    if-nez v28, :cond_120

    goto :goto_124

    .line 3507
    .end local v9    # "itemIndex":I
    .end local v27    # "isHeader":Z
    .end local v28    # "isFooter":Z
    :cond_120
    move/from16 v30, v7

    goto/16 :goto_17f

    .line 3512
    .restart local v9    # "itemIndex":I
    .restart local v27    # "isHeader":Z
    .restart local v28    # "isFooter":Z
    :cond_124
    :goto_124
    invoke-virtual {v0, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 3513
    .local v29, "child":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 3514
    move/from16 v30, v7

    .end local v7    # "effectivePaddingTop":I
    .local v30, "effectivePaddingTop":I
    add-int/lit8 v7, v11, -0x1

    if-ne v15, v7, :cond_134

    const/4 v7, 0x1

    goto :goto_135

    :cond_134
    const/4 v7, 0x0

    .line 3516
    .local v7, "isLastItem":Z
    :goto_135
    if-eqz v22, :cond_17d

    if-ge v2, v8, :cond_17d

    if-eqz v24, :cond_13d

    if-nez v7, :cond_17f

    .line 3518
    :cond_13d
    move/from16 v31, v7

    .end local v7    # "isLastItem":Z
    .local v31, "isLastItem":Z
    add-int/lit8 v7, v9, 0x1

    .line 3522
    .local v7, "nextIndex":I
    invoke-interface {v3, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_16f

    if-nez v26, :cond_151

    if-nez v27, :cond_14e

    if-lt v7, v12, :cond_14e

    goto :goto_151

    :cond_14e
    move/from16 v32, v7

    goto :goto_171

    :cond_151
    :goto_151
    if-nez v31, :cond_163

    .line 3524
    invoke-interface {v3, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_160

    if-nez v16, :cond_15f

    if-nez v28, :cond_160

    if-ge v7, v14, :cond_160

    :cond_15f
    goto :goto_163

    :cond_160
    move/from16 v32, v7

    goto :goto_171

    .line 3526
    :cond_163
    :goto_163
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3527
    move/from16 v32, v7

    .end local v7    # "nextIndex":I
    .local v32, "nextIndex":I
    add-int v7, v2, v23

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3528
    invoke-virtual {v0, v1, v10, v15}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_17f

    .line 3522
    .end local v32    # "nextIndex":I
    .restart local v7    # "nextIndex":I
    :cond_16f
    move/from16 v32, v7

    .line 3529
    .end local v7    # "nextIndex":I
    .restart local v32    # "nextIndex":I
    :goto_171
    if-eqz v18, :cond_17f

    .line 3530
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3531
    add-int v7, v2, v23

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3532
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_17f

    .line 3516
    .end local v31    # "isLastItem":Z
    .end local v32    # "nextIndex":I
    .local v7, "isLastItem":Z
    :cond_17d
    move/from16 v31, v7

    .line 3507
    .end local v7    # "isLastItem":Z
    .end local v9    # "itemIndex":I
    .end local v27    # "isHeader":Z
    .end local v28    # "isFooter":Z
    .end local v29    # "child":Landroid/view/View;
    :cond_17f
    :goto_17f
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v25

    move/from16 v7, v30

    goto/16 :goto_103

    .end local v25    # "scrollY":I
    .end local v30    # "effectivePaddingTop":I
    .local v7, "effectivePaddingTop":I
    .local v9, "scrollY":I
    :cond_187
    move/from16 v30, v7

    move/from16 v25, v9

    .line 3538
    .end local v7    # "effectivePaddingTop":I
    .end local v9    # "scrollY":I
    .end local v15    # "i":I
    .restart local v25    # "scrollY":I
    .restart local v30    # "effectivePaddingTop":I
    iget v7, v0, Landroid/widget/ListView;->mBottom:I

    iget v9, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v7, v9

    .line 3539
    .local v7, "overFooterBottom":I
    if-eqz v24, :cond_19f

    add-int v9, v19, v11

    if-ne v9, v13, :cond_19f

    if-le v7, v2, :cond_19f

    .line 3541
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3542
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3543
    invoke-virtual {v0, v1, v5, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3545
    .end local v2    # "bottom":I
    .end local v7    # "overFooterBottom":I
    .end local v25    # "scrollY":I
    :cond_19f
    move-object/from16 v32, v4

    goto/16 :goto_287

    .line 3548
    .end local v23    # "dividerHeight":I
    .end local v26    # "headerDividers":Z
    .end local v30    # "effectivePaddingTop":I
    .local v2, "dividerHeight":I
    .local v7, "effectivePaddingTop":I
    .local v15, "headerDividers":Z
    :cond_1a3
    move/from16 v23, v2

    move/from16 v30, v7

    move/from16 v26, v15

    .end local v2    # "dividerHeight":I
    .end local v7    # "effectivePaddingTop":I
    .end local v15    # "headerDividers":Z
    .restart local v23    # "dividerHeight":I
    .restart local v26    # "headerDividers":Z
    .restart local v30    # "effectivePaddingTop":I
    iget v2, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3550
    .local v2, "scrollY":I
    if-lez v11, :cond_1c0

    if-eqz v20, :cond_1c0

    .line 3551
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3552
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3553
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1c1

    .line 3550
    :cond_1c0
    const/4 v15, 0x0

    .line 3556
    :goto_1c1
    if-eqz v20, :cond_1c5

    const/4 v7, 0x1

    goto :goto_1c6

    :cond_1c5
    move v7, v15

    .line 3557
    .local v7, "start":I
    :goto_1c6
    move v9, v7

    .local v9, "i":I
    :goto_1c7
    if-ge v9, v11, :cond_25f

    .line 3558
    add-int v15, v19, v9

    .line 3559
    .local v15, "itemIndex":I
    if-ge v15, v12, :cond_1d0

    const/16 v27, 0x1

    goto :goto_1d2

    :cond_1d0
    const/16 v27, 0x0

    .line 3560
    .restart local v27    # "isHeader":Z
    :goto_1d2
    if-lt v15, v14, :cond_1d7

    const/16 v28, 0x1

    goto :goto_1d9

    :cond_1d7
    const/16 v28, 0x0

    .line 3561
    .restart local v28    # "isFooter":Z
    :goto_1d9
    if-nez v26, :cond_1e8

    if-nez v27, :cond_1de

    goto :goto_1e8

    :cond_1de
    move/from16 v31, v2

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move/from16 v33, v30

    goto/16 :goto_252

    :cond_1e8
    :goto_1e8
    if-nez v16, :cond_1ec

    if-nez v28, :cond_1de

    .line 3562
    :cond_1ec
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 3563
    .restart local v29    # "child":Landroid/view/View;
    move/from16 v31, v2

    .end local v2    # "scrollY":I
    .local v31, "scrollY":I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3564
    .local v2, "top":I
    if-eqz v22, :cond_24c

    move-object/from16 v32, v4

    move/from16 v4, v30

    .end local v30    # "effectivePaddingTop":I
    .local v4, "effectivePaddingTop":I
    .local v32, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    if-le v2, v4, :cond_247

    .line 3565
    if-ne v9, v7, :cond_203

    const/16 v30, 0x1

    goto :goto_205

    :cond_203
    const/16 v30, 0x0

    .line 3566
    .local v30, "isFirstItem":Z
    :goto_205
    move/from16 v33, v4

    .end local v4    # "effectivePaddingTop":I
    .local v33, "effectivePaddingTop":I
    add-int/lit8 v4, v15, -0x1

    .line 3570
    .local v4, "previousIndex":I
    invoke-interface {v3, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_239

    if-nez v26, :cond_219

    if-nez v27, :cond_216

    if-lt v4, v12, :cond_216

    goto :goto_219

    :cond_216
    move-object/from16 v34, v3

    goto :goto_23b

    :cond_219
    :goto_219
    if-nez v30, :cond_22b

    .line 3572
    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_228

    if-nez v16, :cond_227

    if-nez v28, :cond_228

    if-ge v4, v14, :cond_228

    :cond_227
    goto :goto_22b

    :cond_228
    move-object/from16 v34, v3

    goto :goto_23b

    .line 3574
    :cond_22b
    :goto_22b
    move-object/from16 v34, v3

    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .local v34, "adapter":Landroid/widget/ListAdapter;
    sub-int v3, v2, v23

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3575
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3580
    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_252

    .line 3570
    .end local v34    # "adapter":Landroid/widget/ListAdapter;
    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    :cond_239
    move-object/from16 v34, v3

    .line 3581
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .restart local v34    # "adapter":Landroid/widget/ListAdapter;
    :goto_23b
    if-eqz v18, :cond_252

    .line 3582
    sub-int v3, v2, v23

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3583
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3584
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_252

    .line 3564
    .end local v30    # "isFirstItem":Z
    .end local v33    # "effectivePaddingTop":I
    .end local v34    # "adapter":Landroid/widget/ListAdapter;
    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    .local v4, "effectivePaddingTop":I
    :cond_247
    move-object/from16 v34, v3

    move/from16 v33, v4

    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "effectivePaddingTop":I
    .restart local v33    # "effectivePaddingTop":I
    .restart local v34    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_252

    .end local v32    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v33    # "effectivePaddingTop":I
    .end local v34    # "adapter":Landroid/widget/ListAdapter;
    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v30, "effectivePaddingTop":I
    :cond_24c
    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move/from16 v33, v30

    .line 3557
    .end local v2    # "top":I
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v15    # "itemIndex":I
    .end local v27    # "isHeader":Z
    .end local v28    # "isFooter":Z
    .end local v29    # "child":Landroid/view/View;
    .end local v30    # "effectivePaddingTop":I
    .restart local v32    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "effectivePaddingTop":I
    .restart local v34    # "adapter":Landroid/widget/ListAdapter;
    :cond_252
    :goto_252
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v31

    move-object/from16 v4, v32

    move/from16 v30, v33

    move-object/from16 v3, v34

    const/4 v15, 0x0

    goto/16 :goto_1c7

    .end local v31    # "scrollY":I
    .end local v32    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v33    # "effectivePaddingTop":I
    .end local v34    # "adapter":Landroid/widget/ListAdapter;
    .local v2, "scrollY":I
    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    .restart local v4    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "effectivePaddingTop":I
    :cond_25f
    move/from16 v31, v2

    move-object/from16 v34, v3

    move-object/from16 v32, v4

    move/from16 v33, v30

    .line 3590
    .end local v2    # "scrollY":I
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v9    # "i":I
    .end local v30    # "effectivePaddingTop":I
    .restart local v31    # "scrollY":I
    .restart local v32    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "effectivePaddingTop":I
    .restart local v34    # "adapter":Landroid/widget/ListAdapter;
    if-lez v11, :cond_287

    if-lez v31, :cond_287

    .line 3591
    if-eqz v24, :cond_279

    .line 3592
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    .line 3593
    .local v2, "absListBottom":I
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3594
    add-int v3, v2, v31

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 3595
    invoke-virtual {v0, v1, v5, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .end local v2    # "absListBottom":I
    goto :goto_286

    .line 3596
    :cond_279
    if-eqz v22, :cond_286

    .line 3597
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3598
    add-int v2, v8, v23

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3599
    const/4 v15, -0x1

    invoke-virtual {v0, v1, v10, v15}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_287

    .line 3596
    :cond_286
    :goto_286
    nop

    .line 3606
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "start":I
    .end local v8    # "listBottom":I
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "headerCount":I
    .end local v13    # "itemCount":I
    .end local v14    # "footerLimit":I
    .end local v16    # "footerDividers":Z
    .end local v17    # "areAllItemsSelectable":Z
    .end local v18    # "fillForMissingDividers":Z
    .end local v19    # "first":I
    .end local v21    # "effectivePaddingBottom":I
    .end local v26    # "headerDividers":Z
    .end local v31    # "scrollY":I
    .end local v33    # "effectivePaddingTop":I
    .end local v34    # "adapter":Landroid/widget/ListAdapter;
    :cond_287
    :goto_287
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3607
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2346
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2347
    .local v0, "handled":Z
    if-nez v0, :cond_1a

    .line 2349
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2350
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2353
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2356
    .end local v1    # "focused":Landroid/view/View;
    :cond_1a
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 3611
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3612
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3613
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3615
    :cond_f
    return v0
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 3629
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3631
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3632
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3633
    return-void
.end method

.method greylist-max-o drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3425
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3427
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3428
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3430
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3431
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 3432
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3435
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3436
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3439
    return-void
.end method

.method greylist-max-o drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3408
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3410
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3411
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3413
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3414
    .local v1, "span":I
    if-ge v1, v0, :cond_16

    .line 3415
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3418
    :cond_16
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3419
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3422
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 4157
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4159
    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4160
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .registers 6
    .param p1, "down"    # Z

    .line 746
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 747
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_32

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, "paddingTop":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_12

    .line 750
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 752
    :cond_12
    if-lez v0, :cond_22

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_23

    .line 753
    :cond_22
    move v1, v2

    :goto_23
    nop

    .line 754
    .local v1, "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 755
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 756
    .end local v1    # "startOffset":I
    .end local v2    # "paddingTop":I
    goto :goto_5f

    .line 757
    :cond_32
    const/4 v2, 0x0

    .line 758
    .local v2, "paddingBottom":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3c

    .line 759
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 761
    :cond_3c
    if-lez v0, :cond_4b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_50

    .line 762
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_50
    nop

    .line 763
    .restart local v1    # "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 764
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 766
    .end local v1    # "startOffset":I
    .end local v2    # "paddingBottom":I
    :goto_5f
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .line 1455
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1456
    .local v0, "childCount":I
    if-lez v0, :cond_34

    .line 1457
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1f

    .line 1458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1e

    .line 1459
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1460
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1461
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1458
    .end local v2    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1    # "i":I
    :cond_1e
    goto :goto_34

    .line 1465
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_21
    if-ltz v1, :cond_34

    .line 1466
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1467
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 1468
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1465
    .end local v2    # "v":Landroid/view/View;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1473
    .end local v1    # "i":I
    :cond_34
    :goto_34
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3964
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3965
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3968
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 3969
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3971
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3972
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3974
    if-eqz v2, :cond_20

    .line 3975
    return-object v2

    .line 3968
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3980
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 3943
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3944
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 3945
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3946
    if-eqz v0, :cond_f

    .line 3947
    return-object v0

    .line 3950
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3951
    if-eqz v0, :cond_18

    .line 3952
    return-object v0

    .line 3955
    :cond_18
    return-object v0
.end method

.method greylist-max-o findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3869
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3870
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3873
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 3874
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3876
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3877
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3879
    if-eqz v2, :cond_1e

    .line 3880
    return-object v2

    .line 3873
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3885
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewTraversal(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3853
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3854
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 3855
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3856
    if-eqz v0, :cond_f

    .line 3857
    return-object v0

    .line 3859
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3860
    if-eqz v0, :cond_18

    .line 3861
    return-object v0

    .line 3864
    :cond_18
    return-object v0
.end method

.method greylist-max-o findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3914
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3915
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3918
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 3919
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3921
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3922
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3924
    if-eqz v2, :cond_1e

    .line 3925
    return-object v2

    .line 3918
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3930
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3896
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3897
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_18

    .line 3898
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3899
    if-eqz v0, :cond_f

    .line 3900
    return-object v0

    .line 3903
    :cond_f
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3904
    if-eqz v0, :cond_18

    .line 3905
    return-object v0

    .line 3908
    :cond_18
    return-object v0
.end method

.method greylist-max-o fullScroll(I)Z
    .registers 6
    .param p1, "direction"    # I

    .line 2564
    const/4 v0, 0x0

    .line 2565
    .local v0, "moved":Z
    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1d

    .line 2566
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v1, :cond_3a

    .line 2567
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2568
    .local v1, "position":I
    if-ltz v1, :cond_1b

    .line 2569
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2570
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2571
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2573
    :cond_1b
    const/4 v0, 0x1

    .line 2574
    .end local v1    # "position":I
    goto :goto_3a

    .line 2575
    :cond_1d
    const/16 v1, 0x82

    if-ne p1, v1, :cond_3a

    .line 2576
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v1, v3

    .line 2577
    .local v1, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v1, :cond_3a

    .line 2578
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2580
    .local v2, "position":I
    if-ltz v2, :cond_39

    .line 2581
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2582
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2583
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2585
    :cond_39
    const/4 v0, 0x1

    .line 2589
    .end local v1    # "lastItem":I
    .end local v2    # "position":I
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_48

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_48

    .line 2590
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2591
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2594
    :cond_48
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 4099
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 146
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getCheckItemIds()[J
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3995
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3996
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 4001
    :cond_11
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4b

    .line 4002
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4003
    .local v0, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 4004
    .local v2, "count":I
    new-array v3, v2, [J

    .line 4005
    .local v3, "ids":[J
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4007
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .line 4008
    .local v5, "checkedCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v2, :cond_42

    .line 4009
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 4010
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "checkedCount":I
    .local v7, "checkedCount":I
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    .line 4008
    .end local v7    # "checkedCount":I
    .restart local v5    # "checkedCount":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 4016
    .end local v6    # "i":I
    :cond_42
    if-ne v5, v2, :cond_45

    .line 4017
    return-object v3

    .line 4019
    :cond_45
    new-array v6, v5, [J

    .line 4020
    .local v6, "result":[J
    invoke-static {v3, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4022
    return-object v6

    .line 4025
    .end local v0    # "states":Landroid/util/SparseBooleanArray;
    .end local v2    # "count":I
    .end local v3    # "ids":[J
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "checkedCount":I
    .end local v6    # "result":[J
    :cond_4b
    new-array v0, v1, [J

    return-object v0
.end method

.method public whitelist getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3644
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerHeight()I
    .registers 2

    .line 3673
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public whitelist getFooterViewsCount()I
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeaderViewsCount()I
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-r getHeightForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .line 4031
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4032
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4033
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4035
    :cond_e
    return v0
.end method

.method public whitelist getItemsCanFocus()Z
    .registers 2

    .line 3370
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .registers 3

    .line 278
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3772
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3753
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist isOpaque()Z
    .registers 8

    .line 3375
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_14

    .line 3376
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 3377
    .local v0, "retValue":Z
    :goto_1d
    if-eqz v0, :cond_5a

    .line 3379
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    :cond_28
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3380
    .local v3, "listTop":I
    :goto_2a
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3381
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    goto :goto_59

    .line 3384
    :cond_37
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    .line 3385
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_44

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_46

    :cond_44
    iget v6, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_46
    sub-int/2addr v5, v6

    .line 3386
    .local v5, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3387
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v5, :cond_5a

    .line 3388
    :cond_58
    return v2

    .line 3382
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_59
    :goto_59
    return v2

    .line 3391
    .end local v3    # "listTop":I
    .end local v4    # "first":Landroid/view/View;
    :cond_5a
    return v0
.end method

.method protected whitelist layoutChildren()V
    .registers 31

    .line 1635
    move-object/from16 v1, p0

    iget-boolean v7, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1636
    .local v7, "blockLayoutRequests":Z
    if-eqz v7, :cond_7

    .line 1637
    return-void

    .line 1640
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1643
    const/4 v8, 0x0

    :try_start_b
    invoke-super {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1645
    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 1647
    iget-object v2, v1, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_29

    .line 1648
    invoke-virtual {v1}, Landroid/widget/ListView;->resetList()V

    .line 1649
    invoke-virtual {v1}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_47c

    .line 1970
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_24

    .line 1971
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1973
    :cond_24
    if-nez v7, :cond_28

    .line 1974
    iput-boolean v8, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1650
    :cond_28
    return-void

    .line 1653
    :cond_29
    :try_start_29
    iget-object v2, v1, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1654
    .local v5, "childrenTop":I
    iget v2, v1, Landroid/widget/ListView;->mBottom:I

    iget v3, v1, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v2, v3

    .line 1655
    .local v6, "childrenBottom":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    move v9, v2

    .line 1657
    .local v9, "childCount":I
    const/4 v2, 0x0

    .line 1658
    .local v2, "index":I
    const/4 v3, 0x0

    .line 1661
    .local v3, "delta":I
    const/4 v4, 0x0

    .line 1662
    .local v4, "oldSel":Landroid/view/View;
    const/4 v10, 0x0

    .line 1663
    .local v10, "oldFirst":Landroid/view/View;
    const/4 v11, 0x0

    .line 1666
    .local v11, "newSel":Landroid/view/View;
    iget v12, v1, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v12, :pswitch_data_48c

    .line 1681
    iget v12, v1, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_74

    .line 1668
    :pswitch_4a
    iget v12, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, v12, v13

    .line 1669
    if-ltz v2, :cond_62

    if-ge v2, v9, :cond_62

    .line 1670
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    move-object/from16 v29, v10

    move v10, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v11

    move-object/from16 v11, v29

    goto :goto_9f

    .line 1698
    :cond_62
    move-object/from16 v29, v10

    move v10, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v11

    move-object/from16 v11, v29

    goto :goto_9f

    .line 1677
    :pswitch_6b
    move-object/from16 v29, v10

    move v10, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v11

    move-object/from16 v11, v29

    goto :goto_9f

    .line 1681
    :goto_74
    iget v13, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, v12, v13

    .line 1682
    if-ltz v2, :cond_81

    if-ge v2, v9, :cond_81

    .line 1683
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v4, v12

    .line 1687
    :cond_81
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v10, v12

    .line 1689
    iget v12, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v12, :cond_90

    .line 1690
    iget v12, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v1, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int v3, v12, v13

    .line 1694
    :cond_90
    add-int v12, v2, v3

    invoke-virtual {v1, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    move-object/from16 v29, v10

    move v10, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v11

    move-object/from16 v11, v29

    .line 1698
    .local v2, "oldSel":Landroid/view/View;
    .local v3, "newSel":Landroid/view/View;
    .local v4, "delta":I
    .local v10, "index":I
    .local v11, "oldFirst":Landroid/view/View;
    :goto_9f
    iget-boolean v12, v1, Landroid/widget/ListView;->mDataChanged:Z

    .line 1699
    .local v12, "dataChanged":Z
    if-eqz v12, :cond_a6

    .line 1700
    invoke-virtual {v1}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1705
    :cond_a6
    iget v13, v1, Landroid/widget/ListView;->mItemCount:I

    if-nez v13, :cond_be

    .line 1706
    invoke-virtual {v1}, Landroid/widget/ListView;->resetList()V

    .line 1707
    invoke-virtual {v1}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_b0
    .catchall {:try_start_29 .. :try_end_b0} :catchall_47c

    .line 1970
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_b9

    .line 1971
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1973
    :cond_b9
    if-nez v7, :cond_bd

    .line 1974
    iput-boolean v8, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1708
    :cond_bd
    return-void

    .line 1709
    :cond_be
    :try_start_be
    iget v13, v1, Landroid/widget/ListView;->mItemCount:I

    iget-object v14, v1, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v14

    if-ne v13, v14, :cond_435

    .line 1718
    iget v13, v1, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1720
    const/4 v13, 0x0

    .line 1721
    .local v13, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v14, 0x0

    .line 1722
    .local v14, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v15, -0x1

    .line 1727
    .local v15, "accessibilityFocusPosition":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16

    .line 1728
    .local v16, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v16, :cond_123

    .line 1729
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1730
    .local v18, "focusHost":Landroid/view/View;
    if-eqz v18, :cond_11e

    .line 1731
    move/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "focusHost":Landroid/view/View;
    .local v0, "focusHost":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1732
    .local v19, "focusChild":Landroid/view/View;
    if-eqz v19, :cond_119

    .line 1733
    if-eqz v12, :cond_107

    move-object/from16 v8, v19

    .end local v19    # "focusChild":Landroid/view/View;
    .local v8, "focusChild":Landroid/view/View;
    invoke-direct {v1, v8}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_104

    .line 1734
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v19

    if-eqz v19, :cond_101

    move-object/from16 v19, v0

    .end local v0    # "focusHost":Landroid/view/View;
    .local v19, "focusHost":Landroid/view/View;
    iget-boolean v0, v1, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_113

    goto :goto_10b

    .end local v19    # "focusHost":Landroid/view/View;
    .restart local v0    # "focusHost":Landroid/view/View;
    :cond_101
    move-object/from16 v19, v0

    .end local v0    # "focusHost":Landroid/view/View;
    .restart local v19    # "focusHost":Landroid/view/View;
    goto :goto_113

    .line 1733
    .end local v19    # "focusHost":Landroid/view/View;
    .restart local v0    # "focusHost":Landroid/view/View;
    :cond_104
    move-object/from16 v19, v0

    .end local v0    # "focusHost":Landroid/view/View;
    .restart local v19    # "focusHost":Landroid/view/View;
    goto :goto_10b

    .end local v8    # "focusChild":Landroid/view/View;
    .restart local v0    # "focusHost":Landroid/view/View;
    .local v19, "focusChild":Landroid/view/View;
    :cond_107
    move-object/from16 v8, v19

    move-object/from16 v19, v0

    .line 1737
    .end local v0    # "focusHost":Landroid/view/View;
    .restart local v8    # "focusChild":Landroid/view/View;
    .local v19, "focusHost":Landroid/view/View;
    :goto_10b
    move-object/from16 v14, v19

    .line 1738
    nop

    .line 1739
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v13, v0

    .line 1744
    :cond_113
    :goto_113
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    move v15, v0

    goto :goto_125

    .line 1732
    .end local v8    # "focusChild":Landroid/view/View;
    .restart local v0    # "focusHost":Landroid/view/View;
    .local v19, "focusChild":Landroid/view/View;
    :cond_119
    move-object/from16 v8, v19

    move-object/from16 v19, v0

    .end local v0    # "focusHost":Landroid/view/View;
    .restart local v8    # "focusChild":Landroid/view/View;
    .local v19, "focusHost":Landroid/view/View;
    goto :goto_125

    .line 1730
    .end local v8    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    .restart local v18    # "focusHost":Landroid/view/View;
    :cond_11e
    move/from16 v17, v0

    move-object/from16 v19, v18

    .end local v18    # "focusHost":Landroid/view/View;
    .restart local v19    # "focusHost":Landroid/view/View;
    goto :goto_125

    .line 1728
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_123
    move/from16 v17, v0

    .line 1749
    :goto_125
    const/4 v0, 0x0

    .line 1750
    .local v0, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v8, 0x0

    .line 1755
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v20, v19

    .line 1756
    .local v20, "focusedChild":Landroid/view/View;
    if-eqz v20, :cond_164

    .line 1762
    if-eqz v12, :cond_151

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "focusedChild":Landroid/view/View;
    .local v0, "focusedChild":Landroid/view/View;
    .local v19, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-direct {v1, v0}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_14e

    .line 1763
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_14b

    move-object/from16 v20, v0

    .end local v0    # "focusedChild":Landroid/view/View;
    .restart local v20    # "focusedChild":Landroid/view/View;
    iget-boolean v0, v1, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_148

    goto :goto_153

    :cond_148
    move-object/from16 v0, v19

    goto :goto_160

    .end local v20    # "focusedChild":Landroid/view/View;
    .restart local v0    # "focusedChild":Landroid/view/View;
    :cond_14b
    move-object/from16 v20, v0

    .end local v0    # "focusedChild":Landroid/view/View;
    .restart local v20    # "focusedChild":Landroid/view/View;
    goto :goto_153

    .line 1762
    .end local v20    # "focusedChild":Landroid/view/View;
    .restart local v0    # "focusedChild":Landroid/view/View;
    :cond_14e
    move-object/from16 v20, v0

    .end local v0    # "focusedChild":Landroid/view/View;
    .restart local v20    # "focusedChild":Landroid/view/View;
    goto :goto_153

    .end local v19    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v0, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_151
    move-object/from16 v19, v0

    .line 1764
    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v19    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :goto_153
    move-object/from16 v0, v20

    .line 1766
    .end local v19    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v19

    move-object/from16 v8, v19

    .line 1767
    if-eqz v8, :cond_160

    .line 1769
    invoke-virtual {v8}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1772
    :cond_160
    :goto_160
    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_166

    .line 1756
    :cond_164
    move-object/from16 v19, v0

    .line 1777
    :goto_166
    move-object/from16 v19, v2

    .end local v2    # "oldSel":Landroid/view/View;
    .local v19, "oldSel":Landroid/view/View;
    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1778
    .local v2, "firstPosition":I
    move-object/from16 v21, v3

    .end local v3    # "newSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    iget-object v3, v1, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1779
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v12, :cond_18f

    .line 1780
    const/16 v22, 0x0

    move/from16 v23, v4

    move/from16 v4, v22

    .local v4, "i":I
    .local v23, "delta":I
    :goto_176
    if-ge v4, v9, :cond_18a

    .line 1781
    move/from16 v22, v5

    .end local v5    # "childrenTop":I
    .local v22, "childrenTop":I
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move/from16 v24, v4

    .end local v4    # "i":I
    .local v24, "i":I
    add-int v4, v2, v24

    invoke-virtual {v3, v5, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1780
    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v22

    .end local v24    # "i":I
    .restart local v4    # "i":I
    goto :goto_176

    .end local v22    # "childrenTop":I
    .restart local v5    # "childrenTop":I
    :cond_18a
    move/from16 v24, v4

    move/from16 v22, v5

    .end local v4    # "i":I
    .end local v5    # "childrenTop":I
    .restart local v22    # "childrenTop":I
    goto :goto_196

    .line 1784
    .end local v22    # "childrenTop":I
    .end local v23    # "delta":I
    .local v4, "delta":I
    .restart local v5    # "childrenTop":I
    :cond_18f
    move/from16 v23, v4

    move/from16 v22, v5

    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .restart local v22    # "childrenTop":I
    .restart local v23    # "delta":I
    invoke-virtual {v3, v9, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1788
    :goto_196
    invoke-virtual {v1}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1789
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1791
    iget v4, v1, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_49a

    .line 1832
    move/from16 v5, v22

    move/from16 v4, v23

    move-object/from16 v22, v19

    move-object/from16 v23, v21

    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v2    # "firstPosition":I
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v22, "oldSel":Landroid/view/View;
    .local v23, "newSel":Landroid/view/View;
    if-nez v9, :cond_298

    .line 1833
    iget-boolean v2, v1, Landroid/widget/ListView;->mStackFromBottom:Z

    goto/16 :goto_26a

    .line 1829
    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .restart local v2    # "firstPosition":I
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "oldSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    .local v22, "childrenTop":I
    .local v23, "delta":I
    :pswitch_1b3
    move-object/from16 v4, v19

    move/from16 v19, v2

    move-object v2, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v3

    move-object v3, v4

    move/from16 v5, v22

    move/from16 v4, v23

    .end local v22    # "childrenTop":I
    .end local v23    # "delta":I
    .local v2, "oldSel":Landroid/view/View;
    .local v3, "newSel":Landroid/view/View;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v22

    .line 1830
    .local v22, "sel":Landroid/view/View;
    move-object/from16 v23, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v3

    goto/16 :goto_2cb

    .line 1800
    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .local v2, "firstPosition":I
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "oldSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    .local v22, "childrenTop":I
    .restart local v23    # "delta":I
    :pswitch_1cf
    move-object/from16 v4, v19

    move/from16 v19, v2

    move-object v2, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v3

    move-object v3, v4

    move/from16 v5, v22

    move/from16 v4, v23

    .end local v22    # "childrenTop":I
    .end local v23    # "delta":I
    .local v2, "oldSel":Landroid/view/View;
    .local v3, "newSel":Landroid/view/View;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    move-object/from16 v22, v2

    .end local v2    # "oldSel":Landroid/view/View;
    .local v22, "oldSel":Landroid/view/View;
    iget v2, v1, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v23, v3

    .end local v3    # "newSel":Landroid/view/View;
    .local v23, "newSel":Landroid/view/View;
    iget v3, v1, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v1, v2, v3}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1801
    .local v2, "sel":Landroid/view/View;
    goto/16 :goto_2cb

    .line 1812
    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .local v2, "firstPosition":I
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "oldSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    .local v22, "childrenTop":I
    .local v23, "delta":I
    :pswitch_1eb
    move/from16 v5, v22

    move/from16 v4, v23

    move-object/from16 v22, v19

    move-object/from16 v23, v21

    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v2    # "firstPosition":I
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v22, "oldSel":Landroid/view/View;
    .local v23, "newSel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    .line 1813
    .local v2, "selectedPosition":I
    iget v3, v1, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v1, v2, v3}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v3

    .line 1820
    .local v3, "sel":Landroid/view/View;
    if-nez v3, :cond_215

    move-object/from16 v24, v3

    .end local v3    # "sel":Landroid/view/View;
    .local v24, "sel":Landroid/view/View;
    iget-object v3, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_217

    .line 1821
    iget-object v3, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1822
    invoke-virtual {v3, v2}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v3

    .line 1823
    .local v3, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_214

    .line 1824
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1826
    .end local v3    # "focusRunnable":Ljava/lang/Runnable;
    :cond_214
    goto :goto_217

    .line 1820
    .end local v24    # "sel":Landroid/view/View;
    .local v3, "sel":Landroid/view/View;
    :cond_215
    move-object/from16 v24, v3

    .line 1857
    .end local v2    # "selectedPosition":I
    .end local v3    # "sel":Landroid/view/View;
    .restart local v24    # "sel":Landroid/view/View;
    :cond_217
    :goto_217
    move-object/from16 v2, v24

    goto/16 :goto_2cb

    .line 1803
    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .end local v24    # "sel":Landroid/view/View;
    .local v2, "firstPosition":I
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "oldSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    .local v22, "childrenTop":I
    .local v23, "delta":I
    :pswitch_21b
    move/from16 v5, v22

    move/from16 v4, v23

    move-object/from16 v22, v19

    move-object/from16 v23, v21

    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v2    # "firstPosition":I
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v22, "oldSel":Landroid/view/View;
    .local v23, "newSel":Landroid/view/View;
    iget v2, v1, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1804
    .local v2, "sel":Landroid/view/View;
    invoke-direct {v1}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1805
    goto/16 :goto_2cb

    .line 1793
    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .local v2, "firstPosition":I
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "oldSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    .local v22, "childrenTop":I
    .local v23, "delta":I
    :pswitch_234
    move/from16 v5, v22

    move/from16 v4, v23

    move-object/from16 v22, v19

    move-object/from16 v23, v21

    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v2    # "firstPosition":I
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v22, "oldSel":Landroid/view/View;
    .local v23, "newSel":Landroid/view/View;
    if-eqz v23, :cond_24c

    .line 1794
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v5, v6}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    .local v2, "sel":Landroid/view/View;
    goto/16 :goto_2cb

    .line 1796
    .end local v2    # "sel":Landroid/view/View;
    :cond_24c
    invoke-direct {v1, v5, v6}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v2

    .line 1798
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_2cb

    .line 1807
    .end local v4    # "delta":I
    .end local v5    # "childrenTop":I
    .local v2, "firstPosition":I
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "oldSel":Landroid/view/View;
    .local v21, "newSel":Landroid/view/View;
    .local v22, "childrenTop":I
    .local v23, "delta":I
    :pswitch_252
    move/from16 v5, v22

    move/from16 v4, v23

    move-object/from16 v22, v19

    move-object/from16 v23, v21

    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v2    # "firstPosition":I
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .local v19, "firstPosition":I
    .local v21, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v22, "oldSel":Landroid/view/View;
    .local v23, "newSel":Landroid/view/View;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1808
    invoke-direct {v1, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1809
    .local v2, "sel":Landroid/view/View;
    invoke-direct {v1}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1810
    goto/16 :goto_2cb

    .line 1833
    .end local v2    # "sel":Landroid/view/View;
    :goto_26a
    if-nez v2, :cond_27e

    .line 1834
    move/from16 v2, v17

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v24

    move/from16 v2, v24

    .line 1835
    .local v2, "position":I
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1836
    invoke-direct {v1, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v3

    .line 1837
    .end local v2    # "position":I
    .local v3, "sel":Landroid/view/View;
    move-object v2, v3

    goto :goto_2cb

    .line 1838
    .end local v3    # "sel":Landroid/view/View;
    :cond_27e
    iget v2, v1, Landroid/widget/ListView;->mItemCount:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1839
    .restart local v2    # "position":I
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1840
    iget v3, v1, Landroid/widget/ListView;->mItemCount:I

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v3, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1841
    .end local v2    # "position":I
    .restart local v3    # "sel":Landroid/view/View;
    move-object v2, v3

    goto :goto_2cb

    .line 1843
    .end local v3    # "sel":Landroid/view/View;
    :cond_298
    iget v2, v1, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v2, :cond_2b1

    iget v2, v1, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, v1, Landroid/widget/ListView;->mItemCount:I

    if-ge v2, v3, :cond_2b1

    .line 1844
    iget v2, v1, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1845
    if-nez v22, :cond_2a8

    move v3, v5

    goto :goto_2ac

    :cond_2a8
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1844
    :goto_2ac
    invoke-direct {v1, v2, v3}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .local v2, "sel":Landroid/view/View;
    goto :goto_2cb

    .line 1846
    .end local v2    # "sel":Landroid/view/View;
    :cond_2b1
    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    iget v3, v1, Landroid/widget/ListView;->mItemCount:I

    if-ge v2, v3, :cond_2c6

    .line 1847
    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1848
    if-nez v11, :cond_2bd

    move v3, v5

    goto :goto_2c1

    :cond_2bd
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1847
    :goto_2c1
    invoke-direct {v1, v2, v3}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_2cb

    .line 1850
    .end local v2    # "sel":Landroid/view/View;
    :cond_2c6
    const/4 v3, 0x0

    invoke-direct {v1, v3, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1857
    .restart local v2    # "sel":Landroid/view/View;
    :goto_2cb
    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1860
    iget-object v3, v1, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1861
    iget-object v3, v1, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1863
    if-eqz v2, :cond_329

    .line 1866
    iget-boolean v3, v1, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_31c

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_31c

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_31c

    .line 1867
    if-ne v2, v0, :cond_2f4

    if-eqz v8, :cond_2f4

    .line 1869
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_2fa

    :cond_2f4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_2fc

    :cond_2fa
    const/4 v3, 0x1

    goto :goto_2fd

    :cond_2fc
    const/4 v3, 0x0

    .line 1870
    .local v3, "focusWasTaken":Z
    :goto_2fd
    if-nez v3, :cond_30f

    .line 1874
    invoke-virtual {v1}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v25

    .line 1875
    .local v25, "focused":Landroid/view/View;
    if-eqz v25, :cond_308

    .line 1876
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->clearFocus()V

    .line 1878
    :cond_308
    move-object/from16 v26, v0

    const/4 v0, -0x1

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v26, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1879
    .end local v25    # "focused":Landroid/view/View;
    goto :goto_31b

    .line 1880
    .end local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_30f
    move-object/from16 v26, v0

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    move v0, v3

    const/4 v3, 0x0

    .end local v3    # "focusWasTaken":Z
    .local v0, "focusWasTaken":Z
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1881
    iget-object v3, v1, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1883
    .end local v0    # "focusWasTaken":Z
    :goto_31b
    goto :goto_322

    .line 1866
    .end local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v0, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_31c
    move-object/from16 v26, v0

    .line 1884
    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1886
    :goto_322
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_379

    .line 1888
    .end local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_329
    move-object/from16 v26, v0

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    iget v0, v1, Landroid/widget/ListView;->mTouchMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_338

    iget v0, v1, Landroid/widget/ListView;->mTouchMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_336

    goto :goto_338

    :cond_336
    const/4 v0, 0x0

    goto :goto_339

    :cond_338
    :goto_338
    const/4 v0, 0x1

    .line 1890
    .local v0, "inTouchMode":Z
    :goto_339
    if-eqz v0, :cond_34e

    .line 1892
    iget v3, v1, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v25, v0

    .end local v0    # "inTouchMode":Z
    .local v25, "inTouchMode":Z
    iget v0, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_34d

    .line 1894
    iget v3, v1, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1896
    .end local v0    # "child":Landroid/view/View;
    :cond_34d
    goto :goto_36e

    .end local v25    # "inTouchMode":Z
    .local v0, "inTouchMode":Z
    :cond_34e
    move/from16 v25, v0

    .end local v0    # "inTouchMode":Z
    .restart local v25    # "inTouchMode":Z
    iget v0, v1, Landroid/widget/ListView;->mSelectorPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_366

    .line 1900
    iget v0, v1, Landroid/widget/ListView;->mSelectorPosition:I

    iget v3, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1901
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_365

    .line 1902
    iget v3, v1, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1904
    .end local v0    # "child":Landroid/view/View;
    :cond_365
    goto :goto_36e

    .line 1906
    :cond_366
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 1907
    iget-object v0, v1, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1912
    :goto_36e
    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_379

    if-eqz v8, :cond_379

    .line 1913
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1918
    .end local v25    # "inTouchMode":Z
    :cond_379
    :goto_379
    const/4 v0, 0x0

    if-eqz v16, :cond_3f2

    .line 1919
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v3

    .line 1920
    .local v3, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v3, :cond_3eb

    .line 1921
    if-eqz v14, :cond_3c6

    .line 1922
    invoke-virtual {v14}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v25

    if-eqz v25, :cond_3bf

    .line 1923
    nop

    .line 1924
    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v17

    move-object/from16 v24, v17

    .line 1925
    .local v24, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v13, :cond_3b3

    if-eqz v24, :cond_3b3

    .line 1926
    nop

    .line 1927
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v27

    .line 1926
    invoke-static/range {v27 .. v28}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v17

    move/from16 v25, v17

    .line 1928
    .local v25, "virtualViewId":I
    move-object/from16 v27, v2

    .end local v2    # "sel":Landroid/view/View;
    .local v27, "sel":Landroid/view/View;
    const/16 v2, 0x40

    move/from16 v28, v25

    move/from16 v25, v4

    move/from16 v4, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v24

    .end local v24    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v4, "virtualViewId":I
    .local v25, "delta":I
    .local v28, "newAccessibilityFocusedView":Landroid/view/View;
    invoke-virtual {v3, v4, v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1930
    nop

    .end local v4    # "virtualViewId":I
    goto :goto_3ea

    .line 1925
    .end local v25    # "delta":I
    .end local v27    # "sel":Landroid/view/View;
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v2    # "sel":Landroid/view/View;
    .local v3, "newAccessibilityFocusedView":Landroid/view/View;
    .local v4, "delta":I
    .restart local v24    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3b3
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v25, v4

    move-object/from16 v3, v24

    .line 1931
    .end local v2    # "sel":Landroid/view/View;
    .end local v4    # "delta":I
    .end local v24    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .restart local v25    # "delta":I
    .restart local v27    # "sel":Landroid/view/View;
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_3ea

    .line 1922
    .end local v25    # "delta":I
    .end local v27    # "sel":Landroid/view/View;
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v2    # "sel":Landroid/view/View;
    .local v3, "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v4    # "delta":I
    :cond_3bf
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v25, v4

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v4    # "delta":I
    .restart local v25    # "delta":I
    .restart local v27    # "sel":Landroid/view/View;
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    goto :goto_3cc

    .line 1921
    .end local v25    # "delta":I
    .end local v27    # "sel":Landroid/view/View;
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v4    # "delta":I
    :cond_3c6
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v25, v4

    .line 1933
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v4    # "delta":I
    .restart local v25    # "delta":I
    .restart local v27    # "sel":Landroid/view/View;
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    :goto_3cc
    const/4 v3, -0x1

    if-eq v15, v3, :cond_3ea

    .line 1935
    iget v2, v1, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, v15, v2

    .line 1937
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 1935
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1938
    .local v2, "position":I
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1939
    .local v3, "restoreView":Landroid/view/View;
    if-eqz v3, :cond_3f6

    .line 1940
    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_3f6

    .line 1933
    .end local v2    # "position":I
    .end local v3    # "restoreView":Landroid/view/View;
    :cond_3ea
    :goto_3ea
    goto :goto_3f6

    .line 1920
    .end local v25    # "delta":I
    .end local v27    # "sel":Landroid/view/View;
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .local v2, "sel":Landroid/view/View;
    .local v3, "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v4    # "delta":I
    :cond_3eb
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v25, v4

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v4    # "delta":I
    .restart local v25    # "delta":I
    .restart local v27    # "sel":Landroid/view/View;
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    goto :goto_3f6

    .line 1918
    .end local v25    # "delta":I
    .end local v27    # "sel":Landroid/view/View;
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v4    # "delta":I
    :cond_3f2
    move-object/from16 v27, v2

    move/from16 v25, v4

    .line 1948
    .end local v2    # "sel":Landroid/view/View;
    .end local v4    # "delta":I
    .restart local v25    # "delta":I
    .restart local v27    # "sel":Landroid/view/View;
    :cond_3f6
    :goto_3f6
    if-eqz v8, :cond_401

    .line 1949
    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_401

    .line 1950
    invoke-virtual {v8}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1953
    :cond_401
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/ListView;->mLayoutMode:I

    .line 1954
    iput-boolean v3, v1, Landroid/widget/ListView;->mDataChanged:Z

    .line 1955
    iget-object v2, v1, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_411

    .line 1956
    iget-object v2, v1, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1957
    iput-object v0, v1, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1959
    :cond_411
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/widget/ListView;->mNeedSync:Z

    .line 1960
    iget v0, v1, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1962
    invoke-virtual {v1}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1964
    iget v0, v1, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_423

    .line 1965
    invoke-virtual {v1}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1968
    :cond_423
    invoke-virtual {v1}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_426
    .catchall {:try_start_be .. :try_end_426} :catchall_47c

    .line 1970
    .end local v5    # "childrenTop":I
    .end local v6    # "childrenBottom":I
    .end local v8    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v9    # "childCount":I
    .end local v10    # "index":I
    .end local v11    # "oldFirst":Landroid/view/View;
    .end local v12    # "dataChanged":Z
    .end local v13    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v14    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v15    # "accessibilityFocusPosition":I
    .end local v16    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v19    # "firstPosition":I
    .end local v20    # "focusedChild":Landroid/view/View;
    .end local v21    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v22    # "oldSel":Landroid/view/View;
    .end local v23    # "newSel":Landroid/view/View;
    .end local v25    # "delta":I
    .end local v26    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v27    # "sel":Landroid/view/View;
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_42f

    .line 1971
    iget-object v0, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1973
    :cond_42f
    if-nez v7, :cond_434

    .line 1974
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1977
    :cond_434
    return-void

    .line 1710
    .local v2, "oldSel":Landroid/view/View;
    .local v3, "newSel":Landroid/view/View;
    .restart local v4    # "delta":I
    .restart local v5    # "childrenTop":I
    .restart local v6    # "childrenBottom":I
    .restart local v9    # "childCount":I
    .restart local v10    # "index":I
    .restart local v11    # "oldFirst":Landroid/view/View;
    .restart local v12    # "dataChanged":Z
    :cond_435
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v25, v4

    .end local v2    # "oldSel":Landroid/view/View;
    .end local v3    # "newSel":Landroid/view/View;
    .end local v4    # "delta":I
    .restart local v22    # "oldSel":Landroid/view/View;
    .restart local v23    # "newSel":Landroid/view/View;
    .restart local v25    # "delta":I
    :try_start_43b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1714
    invoke-virtual {v1}, Landroid/widget/ListView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with Adapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1715
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "blockLayoutRequests":Z
    .end local p0    # "this":Landroid/widget/ListView;
    throw v0
    :try_end_47c
    .catchall {:try_start_43b .. :try_end_47c} :catchall_47c

    .line 1970
    .end local v5    # "childrenTop":I
    .end local v6    # "childrenBottom":I
    .end local v9    # "childCount":I
    .end local v10    # "index":I
    .end local v11    # "oldFirst":Landroid/view/View;
    .end local v12    # "dataChanged":Z
    .end local v22    # "oldSel":Landroid/view/View;
    .end local v23    # "newSel":Landroid/view/View;
    .end local v25    # "delta":I
    .restart local v7    # "blockLayoutRequests":Z
    .restart local p0    # "this":Landroid/widget/ListView;
    :catchall_47c
    move-exception v0

    iget-object v2, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v2, :cond_486

    .line 1971
    iget-object v2, v1, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v2}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 1973
    :cond_486
    if-nez v7, :cond_48b

    .line 1974
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1976
    :cond_48b
    throw v0

    :pswitch_data_48c
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_4a
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
    .end packed-switch

    :pswitch_data_49a
    .packed-switch 0x1
        :pswitch_252
        :pswitch_234
        :pswitch_21b
        :pswitch_1eb
        :pswitch_1cf
        :pswitch_1b3
    .end packed-switch
.end method

.method greylist lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2248
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2249
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3e

    .line 2253
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2254
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_37

    .line 2255
    if-eqz p2, :cond_26

    .line 2256
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2257
    :goto_1b
    if-ge p1, v2, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2258
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2261
    :cond_26
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2262
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2263
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2268
    :cond_37
    if-ltz p1, :cond_3d

    if-lt p1, v2, :cond_3c

    goto :goto_3d

    .line 2272
    :cond_3c
    return p1

    .line 2269
    :cond_3d
    :goto_3d
    return v1

    .line 2250
    .end local v2    # "count":I
    :cond_3e
    :goto_3e
    return v1
.end method

.method greylist-max-o lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 2288
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2289
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4b

    .line 2294
    :cond_c
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2295
    .local v2, "after":I
    if-eq v2, v1, :cond_13

    .line 2296
    return v2

    .line 2300
    :cond_13
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2301
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2302
    if-eqz p3, :cond_35

    .line 2303
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2304
    :goto_27
    if-le p2, p1, :cond_32

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2305
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    .line 2307
    :cond_32
    if-gt p2, p1, :cond_4a

    .line 2308
    return v1

    .line 2311
    :cond_35
    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2312
    :goto_3c
    if-ge p2, p1, :cond_47

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_47

    .line 2313
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    .line 2315
    :cond_47
    if-lt p2, p1, :cond_4a

    .line 2316
    return v1

    .line 2320
    :cond_4a
    return p2

    .line 2290
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_4b
    :goto_4b
    return v1
.end method

.method final greylist-max-p measureHeightOfChildren(IIIII)I
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 1394
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1395
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_14

    .line 1396
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4

    .line 1400
    :cond_14
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1401
    .local v4, "returnedHeight":I
    iget v5, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1404
    .local v5, "dividerHeight":I
    const/4 v6, 0x0

    .line 1409
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_2c

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_2d

    :cond_2c
    move v9, v8

    .line 1410
    .end local p3    # "endPosition":I
    .local v9, "endPosition":I
    :goto_2d
    iget-object v8, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1411
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    .line 1412
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1414
    .local v11, "isScrap":[Z
    move/from16 v12, p2

    .local v12, "i":I
    :goto_37
    if-gt v12, v9, :cond_73

    .line 1415
    invoke-virtual {v0, v12, v11}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1417
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1419
    if-lez v12, :cond_45

    .line 1421
    add-int/2addr v4, v5

    .line 1425
    :cond_45
    if-eqz v10, :cond_58

    .line 1426
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1425
    invoke-virtual {v8, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_58

    .line 1427
    invoke-virtual {v8, v13, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1430
    :cond_58
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v4, v15

    .line 1432
    if-lt v4, v1, :cond_6b

    .line 1438
    if-ltz v2, :cond_69

    if-le v12, v2, :cond_69

    if-lez v6, :cond_69

    if-eq v4, v1, :cond_69

    .line 1439
    move v7, v6

    goto :goto_6a

    .line 1440
    :cond_69
    move v7, v1

    .line 1435
    :goto_6a
    return v7

    .line 1443
    :cond_6b
    if-ltz v2, :cond_70

    if-lt v12, v2, :cond_70

    .line 1444
    move v6, v4

    .line 1414
    :cond_70
    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    .line 1450
    .end local v13    # "child":Landroid/view/View;
    :cond_73
    move/from16 v14, p1

    return v4
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 1249
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_c

    .line 1250
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1253
    :cond_c
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1254
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 3834
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3836
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3837
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 3838
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3839
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3838
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3841
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3843
    :cond_19
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3777
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3779
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3780
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 3781
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 3782
    .local v2, "closestChildTop":I
    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    if-eqz p3, :cond_57

    .line 3783
    iget v3, p0, Landroid/widget/ListView;->mScrollX:I

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3787
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_27

    .line 3788
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3789
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3794
    :cond_27
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3795
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 3796
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 3797
    .local v5, "childCount":I
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3799
    .local v6, "firstPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    if-ge v7, v5, :cond_57

    .line 3801
    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 3802
    goto :goto_54

    .line 3805
    :cond_3e
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3806
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3807
    invoke-virtual {p0, v8, v3}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3808
    invoke-static {p3, v3, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 3810
    .local v9, "distance":I
    if-ge v9, v4, :cond_54

    .line 3811
    move v4, v9

    .line 3812
    move v1, v7

    .line 3813
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3799
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_54
    :goto_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 3818
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "childCount":I
    .end local v6    # "firstPosition":I
    .end local v7    # "i":I
    :cond_57
    if-ltz v1, :cond_60

    .line 3819
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_63

    .line 3821
    :cond_60
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3823
    :goto_63
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4144
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4146
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4147
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    move v6, v1

    .line 4148
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    .line 4149
    .local v7, "isSelected":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    move v2, p2

    .end local p2    # "position":I
    .local v2, "position":I
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p2

    .line 4151
    .local p2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4152
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4105
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4107
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4108
    .local v0, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 4109
    .local v1, "selectionMode":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 4111
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4113
    if-lez v0, :cond_1b

    .line 4114
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4116
    :cond_1b
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2361
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2366
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2371
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1277
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1280
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1281
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1282
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1284
    .local v3, "heightSize":I
    const/4 v4, 0x0

    .line 1285
    .local v4, "childWidth":I
    const/4 v5, 0x0

    .line 1286
    .local v5, "childHeight":I
    const/4 v8, 0x0

    .line 1288
    .local v8, "childState":I
    iget-object v9, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_1d

    move v9, v10

    goto :goto_23

    :cond_1d
    iget-object v9, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_23
    iput v9, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1289
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v9, :cond_61

    if-eqz v6, :cond_2d

    if-nez v7, :cond_61

    .line 1291
    :cond_2d
    iget-object v9, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v9}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1295
    .local v9, "child":Landroid/view/View;
    invoke-direct {p0, v9, v10, p1, v3}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1297
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1298
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1299
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v8, v11}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1301
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v11

    if-eqz v11, :cond_61

    iget-object v11, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1302
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/AbsListView$LayoutParams;

    iget v12, v12, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1301
    invoke-virtual {v11, v12}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_61

    .line 1303
    iget-object v11, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v11, v9, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1307
    .end local v9    # "child":Landroid/view/View;
    :cond_61
    move v9, v5

    move v10, v8

    move v8, v4

    .end local v4    # "childWidth":I
    .end local v5    # "childHeight":I
    .local v8, "childWidth":I
    .local v9, "childHeight":I
    .local v10, "childState":I
    if-nez v6, :cond_77

    .line 1308
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    .line 1309
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v5

    add-int/2addr v4, v5

    move v11, v4

    .end local v2    # "widthSize":I
    .local v4, "widthSize":I
    goto :goto_7c

    .line 1311
    .end local v4    # "widthSize":I
    .restart local v2    # "widthSize":I
    :cond_77
    const/high16 v4, -0x1000000

    and-int/2addr v4, v10

    or-int/2addr v4, v2

    move v11, v4

    .line 1314
    .end local v2    # "widthSize":I
    .local v11, "widthSize":I
    :goto_7c
    if-nez v7, :cond_92

    .line 1315
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/2addr v2, v9

    .line 1316
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v3, v2, v4

    move v4, v3

    goto :goto_93

    .line 1314
    :cond_92
    move v4, v3

    .line 1319
    .end local v3    # "heightSize":I
    .local v4, "heightSize":I
    :goto_93
    const/high16 v2, -0x80000000

    if-ne v7, v2, :cond_a0

    .line 1321
    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1324
    :cond_a0
    invoke-virtual {p0, v11, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1326
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1327
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1258
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1259
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1260
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_3c

    .line 1261
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1262
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1263
    .local v2, "childBottom":I
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v3, p2, v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1264
    .local v3, "offset":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1265
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_33

    .line 1266
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView-IA;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1268
    :cond_33
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1271
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childBottom":I
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1272
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2518
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_14

    .line 2519
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2520
    .local v0, "nextPage":I
    const/4 v3, 0x0

    .local v3, "down":Z
    goto :goto_28

    .line 2521
    .end local v0    # "nextPage":I
    .end local v3    # "down":Z
    :cond_14
    const/16 v0, 0x82

    if-ne p1, v0, :cond_67

    .line 2522
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v2

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2523
    .restart local v0    # "nextPage":I
    const/4 v3, 0x1

    .line 2528
    .restart local v3    # "down":Z
    :goto_28
    if-ltz v0, :cond_66

    .line 2529
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v0, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 2530
    .local v4, "position":I
    if-ltz v4, :cond_66

    .line 2531
    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2532
    iget v1, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2534
    if-eqz v3, :cond_4c

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v1, v5

    if-le v4, v1, :cond_4c

    .line 2535
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2538
    :cond_4c
    if-nez v3, :cond_56

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_56

    .line 2539
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2542
    :cond_56
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2543
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2544
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_65

    .line 2545
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2548
    :cond_65
    return v2

    .line 2552
    .end local v4    # "position":I
    :cond_66
    return v1

    .line 2525
    .end local v0    # "nextPage":I
    .end local v3    # "down":Z
    :cond_67
    return v1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4121
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4122
    return v1

    .line 4125
    :cond_8
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 4127
    :pswitch_c
    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4128
    .local v0, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4129
    .local v2, "position":I
    if-ltz v0, :cond_22

    .line 4132
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4133
    return v1

    .line 4138
    .end local v0    # "row":I
    .end local v2    # "position":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0

    :pswitch_data_24
    .packed-switch 0x1020037
        :pswitch_c
    .end packed-switch
.end method

.method protected greylist-max-o recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1362
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 504
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 507
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 508
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 510
    :cond_20
    const/4 v0, 0x1

    .line 512
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 513
    return v0

    .line 515
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 403
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 406
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 407
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 409
    :cond_20
    const/4 v0, 0x1

    .line 411
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 412
    return v0

    .line 414
    .end local v0    # "result":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 665
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 668
    .local v0, "rectTopWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 671
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 672
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    .line 673
    .local v2, "listUnfadedTop":I
    add-int v3, v2, v1

    .line 674
    .local v3, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 676
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 678
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v5, :cond_34

    if-le v0, v4, :cond_35

    .line 679
    :cond_34
    add-int/2addr v2, v4

    .line 683
    :cond_35
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 684
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 686
    .local v6, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_58

    .line 688
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_57

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_58

    .line 690
    :cond_57
    sub-int/2addr v3, v4

    .line 694
    :cond_58
    const/4 v7, 0x0

    .line 696
    .local v7, "scrollYDelta":I
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_78

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-le v9, v2, :cond_78

    .line 701
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_6d

    .line 703
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_71

    .line 706
    :cond_6d
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 710
    :goto_71
    sub-int v9, v6, v3

    .line 711
    .local v9, "distanceToBottom":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 712
    .end local v9    # "distanceToBottom":I
    :cond_77
    goto :goto_9f

    :cond_78
    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_77

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v3, :cond_77

    .line 717
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_8c

    .line 719
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_91

    .line 722
    :cond_8c
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 726
    :goto_91
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 727
    .local v9, "top":I
    sub-int v11, v9, v2

    .line 728
    .local v11, "deltaToTop":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 731
    .end local v9    # "top":I
    .end local v11    # "deltaToTop":I
    :goto_9f
    if-eqz v7, :cond_a2

    goto :goto_a3

    :cond_a2
    move v8, v10

    .line 732
    .local v8, "scroll":Z
    :goto_a3
    if-eqz v8, :cond_b6

    .line 733
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 734
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 736
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 738
    :cond_b6
    return v8
.end method

.method greylist-max-o resetList()V
    .registers 2

    .line 617
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 618
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 620
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 622
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 623
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

    .line 146
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 557
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_f

    .line 558
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 561
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 562
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 564
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    goto :goto_2b

    .line 567
    :cond_28
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_35

    .line 565
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 570
    :goto_35
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 571
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 574
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 576
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_93

    .line 577
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 578
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    iput v0, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 579
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 580
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 582
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 583
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 585
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 588
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_81

    .line 589
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_85

    .line 591
    .end local v0    # "position":I
    :cond_81
    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 593
    .restart local v0    # "position":I
    :goto_85
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 594
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 596
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_92

    .line 598
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 600
    .end local v0    # "position":I
    :cond_92
    goto :goto_9b

    .line 601
    :cond_93
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 602
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 604
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 607
    :goto_9b
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 608
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .registers 4
    .param p1, "color"    # I

    .line 3396
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3397
    .local v0, "opaque":Z
    :goto_9
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3398
    if-eqz v0, :cond_1d

    .line 3399
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_18

    .line 3400
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3402
    :cond_18
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3404
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3405
    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 3657
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 3658
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_c

    .line 3660
    :cond_a
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3662
    :goto_c
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3663
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3664
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3665
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3666
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 3683
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3684
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3685
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3686
    return-void
.end method

.method public whitelist setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z

    .line 3722
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3723
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3724
    return-void
.end method

.method public whitelist setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z

    .line 3698
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3699
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3700
    return-void
.end method

.method public whitelist setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z

    .line 3359
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3360
    if-nez p1, :cond_9

    .line 3361
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3363
    :cond_9
    return-void
.end method

.method public whitelist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .line 3764
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3765
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3766
    return-void
.end method

.method public whitelist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .line 3743
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3744
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_9

    .line 3745
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3747
    :cond_9
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 539
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .line 2202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2203
    return-void
.end method

.method public whitelist setSelectionAfterHeaderView()V
    .registers 3

    .line 2328
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2329
    .local v0, "count":I
    if-lez v0, :cond_a

    .line 2330
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2331
    return-void

    .line 2334
    :cond_a
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    .line 2335
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_17

    .line 2337
    :cond_12
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2338
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2341
    :goto_17
    return-void
.end method

.method greylist setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .line 2213
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2214
    const/4 v0, 0x0

    .line 2216
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2218
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_13

    .line 2219
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_e

    .line 2220
    const/4 v0, 0x1

    goto :goto_13

    .line 2221
    :cond_e
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_13

    .line 2222
    const/4 v0, 0x1

    .line 2226
    :cond_13
    :goto_13
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1c

    .line 2227
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2230
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2232
    if-eqz v0, :cond_24

    .line 2233
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2235
    :cond_24
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1027
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1028
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1017
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1018
    return-void
.end method

.method greylist-max-r trackMotionScroll(II)Z
    .registers 5
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 1982
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 1983
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1984
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1985
    return v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .registers 5
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 4167
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal()V
    .registers 4

    .line 4172
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4173
    return-void
.end method

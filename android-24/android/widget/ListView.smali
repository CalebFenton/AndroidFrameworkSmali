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
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 150
    const v0, 0x1010074

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@a
    move-result-object v6

    #@b
    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@d
    .line 116
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@10
    move-result-object v6

    #@11
    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@13
    .line 130
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@15
    .line 132
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@17
    .line 135
    new-instance v6, Landroid/graphics/Rect;

    #@19
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@1e
    .line 140
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    #@20
    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult;)V

    #@23
    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@25
    .line 161
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    #@27
    .line 160
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v0

    #@2b
    .line 163
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@2e
    move-result-object v3

    #@2f
    .line 164
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    #@31
    .line 165
    new-instance v6, Landroid/widget/ArrayAdapter;

    #@33
    const v7, 0x1090003

    #@36
    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@39
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3c
    .line 168
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v1

    #@40
    .line 169
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@42
    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@45
    .line 175
    :cond_1
    const/4 v6, 0x5

    #@46
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v5

    #@4a
    .line 176
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    #@4c
    .line 177
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    #@4f
    .line 180
    :cond_2
    const/4 v6, 0x6

    #@50
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@53
    move-result-object v4

    #@54
    .line 181
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    #@56
    .line 182
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    #@59
    .line 186
    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_4

    #@5f
    .line 187
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@62
    move-result v2

    #@63
    .line 189
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    #@65
    .line 190
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    #@68
    .line 194
    .end local v2    # "dividerHeight":I
    :cond_4
    const/4 v6, 0x3

    #@69
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6c
    move-result v6

    #@6d
    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@6f
    .line 195
    const/4 v6, 0x4

    #@70
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@73
    move-result v6

    #@74
    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@76
    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@79
    .line 157
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3230
    add-int/lit8 v2, p2, -0x1

    #@3
    .line 3231
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@5
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 3232
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@c
    move-result v0

    #@d
    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@f
    sub-int v3, v0, v5

    #@11
    .line 3233
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@13
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@15
    .line 3234
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@17
    aget-boolean v7, v0, v4

    #@19
    move-object v0, p0

    #@1a
    move v6, v4

    #@1b
    .line 3233
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@1e
    .line 3235
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3239
    add-int/lit8 v2, p2, 0x1

    #@3
    .line 3240
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@5
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 3241
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@c
    move-result v0

    #@d
    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@f
    add-int v3, v0, v4

    #@11
    .line 3242
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@13
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@15
    .line 3243
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@17
    aget-boolean v7, v0, v6

    #@19
    .line 3242
    const/4 v4, 0x1

    #@1a
    move-object v0, p0

    #@1b
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@1e
    .line 3244
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 213
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 216
    .local v1, "childCount":I
    if-lez v1, :cond_2

    #@7
    .line 219
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@9
    if-nez v3, :cond_3

    #@b
    .line 222
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 223
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@12
    move-result v3

    #@13
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@15
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@17
    sub-int v2, v3, v4

    #@19
    .line 224
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 227
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@1f
    sub-int/2addr v2, v3

    #@20
    .line 229
    :cond_0
    if-gez v2, :cond_1

    #@22
    .line 231
    const/4 v2, 0x0

    #@23
    .line 249
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@25
    .line 250
    neg-int v3, v2

    #@26
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@29
    .line 212
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    #@2a
    .line 235
    :cond_3
    add-int/lit8 v3, v1, -0x1

    #@2c
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 236
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@33
    move-result v3

    #@34
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@37
    move-result v4

    #@38
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3c
    sub-int/2addr v4, v5

    #@3d
    sub-int v2, v3, v4

    #@3f
    .line 238
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@41
    add-int/2addr v3, v1

    #@42
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    #@44
    if-ge v3, v4, :cond_4

    #@46
    .line 241
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@48
    add-int/2addr v2, v3

    #@49
    .line 244
    :cond_4
    if-lez v2, :cond_1

    #@4b
    .line 245
    const/4 v2, 0x0

    #@4c
    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    #@0
    .prologue
    .line 2836
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@3
    move-result v10

    #@4
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@6
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    #@8
    sub-int v4, v10, v11

    #@a
    .line 2837
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@c
    iget v5, v10, Landroid/graphics/Rect;->top:I

    #@e
    .line 2839
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@11
    move-result v7

    #@12
    .line 2841
    .local v7, "numChildren":I
    const/16 v10, 0x82

    #@14
    if-ne p1, v10, :cond_6

    #@16
    .line 2842
    add-int/lit8 v3, v7, -0x1

    #@18
    .line 2843
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    #@19
    if-eq p2, v10, :cond_0

    #@1b
    .line 2844
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1d
    sub-int v3, p2, v10

    #@1f
    .line 2846
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    #@21
    .line 2848
    add-int/lit8 v10, v7, -0x1

    #@23
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v10

    #@27
    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@29
    add-int/2addr v11, v7

    #@2a
    add-int/lit8 v11, v11, -0x1

    #@2c
    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    #@2f
    .line 2849
    add-int/lit8 v7, v7, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2851
    :cond_1
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@34
    add-int v8, v10, v3

    #@36
    .line 2852
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@39
    move-result-object v9

    #@3a
    .line 2854
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    #@3b
    .line 2855
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    #@3d
    add-int/lit8 v10, v10, -0x1

    #@3f
    if-ge v8, v10, :cond_2

    #@41
    .line 2856
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@44
    move-result v10

    #@45
    sub-int v1, v4, v10

    #@47
    .line 2859
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@4a
    move-result v10

    #@4b
    if-gt v10, v1, :cond_3

    #@4d
    .line 2861
    const/4 v10, 0x0

    #@4e
    return v10

    #@4f
    .line 2864
    :cond_3
    const/4 v10, -0x1

    #@50
    if-eq p2, v10, :cond_4

    #@52
    .line 2865
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@55
    move-result v10

    #@56
    sub-int v10, v1, v10

    #@58
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@5b
    move-result v11

    #@5c
    if-lt v10, v11, :cond_4

    #@5e
    .line 2867
    const/4 v10, 0x0

    #@5f
    return v10

    #@60
    .line 2870
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@63
    move-result v10

    #@64
    sub-int v0, v10, v1

    #@66
    .line 2872
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@68
    add-int/2addr v10, v7

    #@69
    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    #@6b
    if-ne v10, v11, :cond_5

    #@6d
    .line 2874
    add-int/lit8 v10, v7, -0x1

    #@6f
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@72
    move-result-object v10

    #@73
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@76
    move-result v10

    #@77
    sub-int v6, v10, v4

    #@79
    .line 2875
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    #@7c
    move-result v0

    #@7d
    .line 2878
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@80
    move-result v10

    #@81
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    #@84
    move-result v10

    #@85
    return v10

    #@86
    .line 2880
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    #@87
    .line 2881
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    #@88
    if-eq p2, v10, :cond_7

    #@8a
    .line 2882
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@8c
    sub-int v3, p2, v10

    #@8e
    .line 2884
    :cond_7
    :goto_1
    if-gez v3, :cond_8

    #@90
    .line 2886
    const/4 v10, 0x0

    #@91
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@94
    move-result-object v10

    #@95
    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@97
    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    #@9a
    .line 2887
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@9c
    add-int/lit8 v10, v10, -0x1

    #@9e
    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@a0
    .line 2888
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@a2
    sub-int v3, p2, v10

    #@a4
    goto :goto_1

    #@a5
    .line 2890
    :cond_8
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@a7
    add-int v8, v10, v3

    #@a9
    .line 2891
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@ac
    move-result-object v9

    #@ad
    .line 2892
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    #@ae
    .line 2893
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    #@b0
    .line 2894
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@b3
    move-result v10

    #@b4
    add-int v2, v5, v10

    #@b6
    .line 2896
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@b9
    move-result v10

    #@ba
    if-lt v10, v2, :cond_a

    #@bc
    .line 2898
    const/4 v10, 0x0

    #@bd
    return v10

    #@be
    .line 2901
    :cond_a
    const/4 v10, -0x1

    #@bf
    if-eq p2, v10, :cond_b

    #@c1
    .line 2902
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@c4
    move-result v10

    #@c5
    sub-int/2addr v10, v2

    #@c6
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@c9
    move-result v11

    #@ca
    if-lt v10, v11, :cond_b

    #@cc
    .line 2904
    const/4 v10, 0x0

    #@cd
    return v10

    #@ce
    .line 2907
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@d1
    move-result v10

    #@d2
    sub-int v0, v2, v10

    #@d4
    .line 2908
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@d6
    if-nez v10, :cond_c

    #@d8
    .line 2910
    const/4 v10, 0x0

    #@d9
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@dc
    move-result-object v10

    #@dd
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@e0
    move-result v10

    #@e1
    sub-int v6, v5, v10

    #@e3
    .line 2911
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    #@e6
    move-result v0

    #@e7
    .line 2913
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@ea
    move-result v10

    #@eb
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    #@ee
    move-result v10

    #@ef
    return v10
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    #@0
    .prologue
    .line 3105
    const/4 v0, 0x0

    #@1
    .line 3106
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 3107
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 3108
    const/16 v2, 0x21

    #@d
    if-ne p1, v2, :cond_1

    #@f
    .line 3109
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@11
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@13
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@15
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@17
    if-ge v2, v3, :cond_0

    #@19
    .line 3110
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1b
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@1d
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@1f
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@21
    sub-int v0, v2, v3

    #@23
    .line 3111
    if-lez p3, :cond_0

    #@25
    .line 3112
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@28
    move-result v2

    #@29
    add-int/2addr v0, v2

    #@2a
    .line 3124
    :cond_0
    :goto_0
    return v0

    #@2b
    .line 3116
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@2e
    move-result v2

    #@2f
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@31
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@33
    sub-int v1, v2, v3

    #@35
    .line 3117
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@39
    if-le v2, v1, :cond_0

    #@3b
    .line 3118
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3d
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@3f
    sub-int v0, v2, v1

    #@41
    .line 3119
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    #@43
    add-int/lit8 v2, v2, -0x1

    #@45
    if-ge p3, v2, :cond_0

    #@47
    .line 3120
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@4a
    move-result v2

    #@4b
    add-int/2addr v0, v2

    #@4c
    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 3003
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@3
    move-result-object v11

    #@4
    .line 3005
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_1

    #@6
    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    #@9
    move-result v14

    #@a
    if-eqz v14, :cond_1

    #@c
    .line 3006
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@f
    move-result-object v8

    #@10
    .line 3007
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@13
    move-result-object v14

    #@14
    move-object/from16 v0, p0

    #@16
    move/from16 v1, p1

    #@18
    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@1b
    move-result-object v7

    #@1c
    .line 3032
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    #@1e
    .line 3033
    move-object/from16 v0, p0

    #@20
    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    #@23
    move-result v9

    #@24
    .line 3037
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    #@26
    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@28
    const/4 v15, -0x1

    #@29
    if-eq v14, v15, :cond_a

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@2f
    if-eq v9, v14, :cond_a

    #@31
    .line 3038
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    #@34
    move-result v10

    #@35
    .line 3039
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    #@36
    if-eq v10, v14, :cond_a

    #@38
    .line 3040
    const/16 v14, 0x82

    #@3a
    move/from16 v0, p1

    #@3c
    if-ne v0, v14, :cond_9

    #@3e
    if-ge v10, v9, :cond_9

    #@40
    .line 3042
    :cond_0
    const/4 v14, 0x0

    #@41
    return-object v14

    #@42
    .line 3009
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :cond_1
    const/16 v14, 0x82

    #@44
    move/from16 v0, p1

    #@46
    if-ne v0, v14, :cond_5

    #@48
    .line 3010
    move-object/from16 v0, p0

    #@4a
    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@4c
    if-lez v14, :cond_2

    #@4e
    const/4 v12, 0x1

    #@4f
    .line 3011
    .local v12, "topFadingEdgeShowing":Z
    :goto_1
    move-object/from16 v0, p0

    #@51
    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@53
    iget v15, v14, Landroid/graphics/Rect;->top:I

    #@55
    .line 3012
    if-eqz v12, :cond_3

    #@57
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@5a
    move-result v14

    #@5b
    .line 3011
    :goto_2
    add-int v5, v15, v14

    #@5d
    .line 3014
    .local v5, "listTop":I
    if-eqz v11, :cond_4

    #@5f
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@62
    move-result v14

    #@63
    if-le v14, v5, :cond_4

    #@65
    .line 3015
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@68
    move-result v13

    #@69
    .line 3017
    .local v13, "ySearchPoint":I
    :goto_3
    move-object/from16 v0, p0

    #@6b
    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@6d
    const/4 v15, 0x0

    #@6e
    const/16 v16, 0x0

    #@70
    move/from16 v0, v16

    #@72
    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@75
    .line 3029
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@78
    move-result-object v14

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@7d
    move-object/from16 v0, p0

    #@7f
    move/from16 v1, p1

    #@81
    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    #@84
    move-result-object v7

    #@85
    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    #@86
    .line 3010
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_2
    const/4 v12, 0x0

    #@87
    .restart local v12    # "topFadingEdgeShowing":Z
    goto :goto_1

    #@88
    .line 3012
    :cond_3
    const/4 v14, 0x0

    #@89
    goto :goto_2

    #@8a
    .line 3016
    .restart local v5    # "listTop":I
    :cond_4
    move v13, v5

    #@8b
    .restart local v13    # "ySearchPoint":I
    goto :goto_3

    #@8c
    .line 3020
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    .end local v13    # "ySearchPoint":I
    :cond_5
    move-object/from16 v0, p0

    #@8e
    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@93
    move-result v15

    #@94
    add-int/2addr v14, v15

    #@95
    add-int/lit8 v14, v14, -0x1

    #@97
    move-object/from16 v0, p0

    #@99
    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    #@9b
    if-ge v14, v15, :cond_6

    #@9d
    const/4 v2, 0x1

    #@9e
    .line 3021
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    #@a1
    move-result v14

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@a6
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    #@a8
    sub-int v15, v14, v15

    #@aa
    .line 3022
    if-eqz v2, :cond_7

    #@ac
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@af
    move-result v14

    #@b0
    .line 3021
    :goto_6
    sub-int v4, v15, v14

    #@b2
    .line 3024
    .local v4, "listBottom":I
    if-eqz v11, :cond_8

    #@b4
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@b7
    move-result v14

    #@b8
    if-ge v14, v4, :cond_8

    #@ba
    .line 3025
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@bd
    move-result v13

    #@be
    .line 3027
    .restart local v13    # "ySearchPoint":I
    :goto_7
    move-object/from16 v0, p0

    #@c0
    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@c2
    const/4 v15, 0x0

    #@c3
    const/16 v16, 0x0

    #@c5
    move/from16 v0, v16

    #@c7
    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@ca
    goto :goto_4

    #@cb
    .line 3020
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_6
    const/4 v2, 0x0

    #@cc
    .restart local v2    # "bottomFadingEdgeShowing":Z
    goto :goto_5

    #@cd
    .line 3022
    :cond_7
    const/4 v14, 0x0

    #@ce
    goto :goto_6

    #@cf
    .line 3026
    .restart local v4    # "listBottom":I
    :cond_8
    move v13, v4

    #@d0
    .restart local v13    # "ySearchPoint":I
    goto :goto_7

    #@d1
    .line 3041
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    .restart local v10    # "selectablePosition":I
    :cond_9
    const/16 v14, 0x21

    #@d3
    move/from16 v0, p1

    #@d5
    if-ne v0, v14, :cond_a

    #@d7
    if-gt v10, v9, :cond_0

    #@d9
    .line 3046
    .end local v10    # "selectablePosition":I
    :cond_a
    move-object/from16 v0, p0

    #@db
    move/from16 v1, p1

    #@dd
    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    #@e0
    move-result v3

    #@e1
    .line 3048
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@e4
    move-result v6

    #@e5
    .line 3049
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    #@e7
    .line 3051
    move/from16 v0, p1

    #@e9
    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    #@ec
    .line 3052
    move-object/from16 v0, p0

    #@ee
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@f0
    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    #@f3
    .line 3053
    move-object/from16 v0, p0

    #@f5
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@f7
    return-object v14

    #@f8
    .line 3054
    :cond_b
    move-object/from16 v0, p0

    #@fa
    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    #@fd
    move-result v14

    #@fe
    if-ge v14, v6, :cond_c

    #@100
    .line 3059
    move/from16 v0, p1

    #@102
    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    #@105
    .line 3060
    move-object/from16 v0, p0

    #@107
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@109
    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    #@10c
    .line 3061
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@110
    return-object v14

    #@111
    .line 3064
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    #@112
    return-object v14
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 2617
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@7
    move-result v7

    #@8
    if-gtz v7, :cond_0

    #@a
    .line 2618
    return v9

    #@b
    .line 2621
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@e
    move-result-object v6

    #@f
    .line 2622
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@11
    .line 2624
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    #@14
    move-result v4

    #@15
    .line 2625
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    #@18
    move-result v0

    #@19
    .line 2628
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@1b
    if-eqz v7, :cond_1

    #@1d
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    #@20
    move-result-object v1

    #@21
    .line 2629
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_1
    if-eqz v1, :cond_2

    #@23
    .line 2630
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    #@26
    move-result v4

    #@27
    .line 2631
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    #@2a
    move-result v0

    #@2b
    .line 2634
    :cond_2
    if-eqz v1, :cond_b

    #@2d
    const/4 v3, 0x1

    #@2e
    .line 2635
    .local v3, "needToRedraw":Z
    :goto_0
    if-eq v4, v10, :cond_4

    #@30
    .line 2636
    if-eqz v1, :cond_c

    #@32
    move v7, v8

    #@33
    :goto_1
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    #@36
    .line 2637
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@39
    .line 2638
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@3c
    .line 2639
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@3f
    move-result-object v6

    #@40
    .line 2640
    move v5, v4

    #@41
    .line 2641
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@43
    if-eqz v7, :cond_3

    #@45
    if-nez v1, :cond_3

    #@47
    .line 2644
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@4a
    move-result-object v2

    #@4b
    .line 2645
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    #@4d
    .line 2646
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    #@50
    .line 2649
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    #@51
    .line 2650
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@54
    .line 2653
    :cond_4
    if-lez v0, :cond_5

    #@56
    .line 2654
    const/16 v7, 0x21

    #@58
    if-ne p1, v7, :cond_d

    #@5a
    .end local v0    # "amountToScroll":I
    :goto_2
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    #@5d
    .line 2655
    const/4 v3, 0x1

    #@5e
    .line 2660
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@60
    if-eqz v7, :cond_7

    #@62
    if-nez v1, :cond_7

    #@64
    .line 2661
    if-eqz v6, :cond_7

    #@66
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    #@69
    move-result v7

    #@6a
    .line 2660
    if-eqz v7, :cond_7

    #@6c
    .line 2662
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@6f
    move-result-object v2

    #@70
    .line 2663
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_7

    #@72
    .line 2664
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@75
    move-result v7

    #@76
    if-eqz v7, :cond_6

    #@78
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    #@7b
    move-result v7

    #@7c
    if-lez v7, :cond_7

    #@7e
    .line 2665
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    #@81
    .line 2671
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    #@83
    if-eqz v6, :cond_8

    #@85
    .line 2672
    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_e

    #@8b
    .line 2681
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_8
    :goto_3
    if-eqz v3, :cond_f

    #@8d
    .line 2682
    if-eqz v6, :cond_9

    #@8f
    .line 2683
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    #@92
    .line 2684
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@95
    move-result v7

    #@96
    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    #@98
    .line 2686
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@9b
    move-result v7

    #@9c
    if-nez v7, :cond_a

    #@9e
    .line 2687
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@a1
    .line 2689
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@a4
    .line 2690
    return v8

    #@a5
    .line 2634
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    .restart local v6    # "selectedView":Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    #@a6
    .restart local v3    # "needToRedraw":Z
    goto :goto_0

    #@a7
    :cond_c
    move v7, v9

    #@a8
    .line 2636
    goto :goto_1

    #@a9
    .line 2654
    :cond_d
    neg-int v0, v0

    #@aa
    goto :goto_2

    #@ab
    .line 2673
    .end local v0    # "amountToScroll":I
    :cond_e
    const/4 v6, 0x0

    #@ac
    .line 2674
    .local v6, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    #@af
    .line 2678
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    #@b1
    goto :goto_3

    #@b2
    .line 2693
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_f
    return v9
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 540
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    #@2
    .line 541
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 543
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 544
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    #@f
    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@11
    .line 545
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@17
    .line 546
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    #@19
    .line 547
    const/4 v4, 0x0

    #@1a
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@1c
    .line 543
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 539
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/16 v6, 0x82

    #@4
    const/16 v5, 0x21

    #@6
    const/4 v4, 0x0

    #@7
    .line 2276
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@9
    if-eqz v3, :cond_3

    #@b
    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_3

    #@11
    .line 2280
    iget-boolean v3, p0, Landroid/widget/ListView;->mDataChanged:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 2281
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    #@18
    .line 2284
    :cond_0
    const/4 v2, 0x0

    #@19
    .line 2285
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@1c
    move-result v0

    #@1d
    .line 2286
    .local v0, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 2287
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@26
    move-result v3

    #@27
    .line 2286
    if-eqz v3, :cond_1

    #@29
    .line 2287
    if-eq v0, v7, :cond_1

    #@2b
    .line 2288
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@2e
    move-result v2

    #@2f
    .line 2289
    .local v2, "handled":Z
    if-nez v2, :cond_1

    #@31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@34
    move-result v3

    #@35
    if-nez v3, :cond_1

    #@37
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3a
    move-result v3

    #@3b
    if-lez v3, :cond_1

    #@3d
    .line 2290
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    #@40
    .line 2291
    const/4 v2, 0x1

    #@41
    .line 2296
    .end local v2    # "handled":Z
    :cond_1
    if-nez v2, :cond_2

    #@43
    if-eq v0, v7, :cond_2

    #@45
    .line 2297
    sparse-switch p1, :sswitch_data_0

    #@48
    .line 2386
    :cond_2
    :goto_0
    if-eqz v2, :cond_13

    #@4a
    .line 2387
    return v7

    #@4b
    .line 2277
    .end local v0    # "action":I
    :cond_3
    return v4

    #@4c
    .line 2299
    .restart local v0    # "action":I
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_4

    #@52
    .line 2300
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@55
    move-result v2

    #@56
    .line 2301
    .restart local v2    # "handled":Z
    if-nez v2, :cond_2

    #@58
    .end local v2    # "handled":Z
    :goto_1
    move v1, p2

    #@59
    .line 2302
    .end local p2    # "count":I
    .local v1, "count":I
    add-int/lit8 p2, v1, -0x1

    #@5b
    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_2

    #@5d
    .line 2303
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_2

    #@63
    .line 2304
    const/4 v2, 0x1

    #@64
    .local v2, "handled":Z
    goto :goto_1

    #@65
    .line 2310
    .end local v2    # "handled":Z
    :cond_4
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_2

    #@6b
    .line 2311
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@6e
    move-result v3

    #@6f
    if-nez v3, :cond_5

    #@71
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    #@74
    move-result v2

    #@75
    .local v2, "handled":Z
    goto :goto_0

    #@76
    .end local v2    # "handled":Z
    :cond_5
    const/4 v2, 0x1

    #@77
    .local v2, "handled":Z
    goto :goto_0

    #@78
    .line 2316
    .end local v2    # "handled":Z
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_6

    #@7e
    .line 2317
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@81
    move-result v2

    #@82
    .line 2318
    .local v2, "handled":Z
    if-nez v2, :cond_2

    #@84
    .end local v2    # "handled":Z
    :goto_2
    move v1, p2

    #@85
    .line 2319
    .end local p2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 p2, v1, -0x1

    #@87
    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_2

    #@89
    .line 2320
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_2

    #@8f
    .line 2321
    const/4 v2, 0x1

    #@90
    .local v2, "handled":Z
    goto :goto_2

    #@91
    .line 2327
    .end local v2    # "handled":Z
    :cond_6
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@94
    move-result v3

    #@95
    if-eqz v3, :cond_2

    #@97
    .line 2328
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@9a
    move-result v3

    #@9b
    if-nez v3, :cond_7

    #@9d
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    #@a0
    move-result v2

    #@a1
    .local v2, "handled":Z
    goto :goto_0

    #@a2
    .end local v2    # "handled":Z
    :cond_7
    const/4 v2, 0x1

    #@a3
    .local v2, "handled":Z
    goto :goto_0

    #@a4
    .line 2333
    .end local v2    # "handled":Z
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@a7
    move-result v3

    #@a8
    if-eqz v3, :cond_2

    #@aa
    .line 2334
    const/16 v3, 0x11

    #@ac
    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    #@af
    move-result v2

    #@b0
    .local v2, "handled":Z
    goto :goto_0

    #@b1
    .line 2339
    .end local v2    # "handled":Z
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@b4
    move-result v3

    #@b5
    if-eqz v3, :cond_2

    #@b7
    .line 2340
    const/16 v3, 0x42

    #@b9
    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    #@bc
    move-result v2

    #@bd
    .restart local v2    # "handled":Z
    goto :goto_0

    #@be
    .line 2345
    .end local v2    # "handled":Z
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@c1
    move-result v3

    #@c2
    if-eqz v3, :cond_9

    #@c4
    .line 2346
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@c7
    move-result v3

    #@c8
    if-nez v3, :cond_8

    #@ca
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    #@cd
    move-result v2

    #@ce
    .restart local v2    # "handled":Z
    goto/16 :goto_0

    #@d0
    .end local v2    # "handled":Z
    :cond_8
    const/4 v2, 0x1

    #@d1
    .local v2, "handled":Z
    goto/16 :goto_0

    #@d3
    .line 2347
    .end local v2    # "handled":Z
    :cond_9
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@d6
    move-result v3

    #@d7
    if-eqz v3, :cond_2

    #@d9
    .line 2348
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@dc
    move-result v3

    #@dd
    if-nez v3, :cond_a

    #@df
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    #@e2
    move-result v2

    #@e3
    .local v2, "handled":Z
    goto/16 :goto_0

    #@e5
    .end local v2    # "handled":Z
    :cond_a
    const/4 v2, 0x1

    #@e6
    .local v2, "handled":Z
    goto/16 :goto_0

    #@e8
    .line 2353
    .end local v2    # "handled":Z
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@eb
    move-result v3

    #@ec
    if-eqz v3, :cond_c

    #@ee
    .line 2354
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@f1
    move-result v3

    #@f2
    if-nez v3, :cond_b

    #@f4
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    #@f7
    move-result v2

    #@f8
    .local v2, "handled":Z
    goto/16 :goto_0

    #@fa
    .end local v2    # "handled":Z
    :cond_b
    const/4 v2, 0x1

    #@fb
    .local v2, "handled":Z
    goto/16 :goto_0

    #@fd
    .line 2355
    .end local v2    # "handled":Z
    :cond_c
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@100
    move-result v3

    #@101
    if-eqz v3, :cond_2

    #@103
    .line 2356
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@106
    move-result v3

    #@107
    if-nez v3, :cond_d

    #@109
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    #@10c
    move-result v2

    #@10d
    .local v2, "handled":Z
    goto/16 :goto_0

    #@10f
    .end local v2    # "handled":Z
    :cond_d
    const/4 v2, 0x1

    #@110
    .local v2, "handled":Z
    goto/16 :goto_0

    #@112
    .line 2361
    .end local v2    # "handled":Z
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@115
    move-result v3

    #@116
    if-eqz v3, :cond_2

    #@118
    .line 2362
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@11b
    move-result v3

    #@11c
    if-nez v3, :cond_e

    #@11e
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    #@121
    move-result v2

    #@122
    .local v2, "handled":Z
    goto/16 :goto_0

    #@124
    .end local v2    # "handled":Z
    :cond_e
    const/4 v2, 0x1

    #@125
    .local v2, "handled":Z
    goto/16 :goto_0

    #@127
    .line 2367
    .end local v2    # "handled":Z
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@12a
    move-result v3

    #@12b
    if-eqz v3, :cond_2

    #@12d
    .line 2368
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@130
    move-result v3

    #@131
    if-nez v3, :cond_f

    #@133
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    #@136
    move-result v2

    #@137
    .local v2, "handled":Z
    goto/16 :goto_0

    #@139
    .end local v2    # "handled":Z
    :cond_f
    const/4 v2, 0x1

    #@13a
    .local v2, "handled":Z
    goto/16 :goto_0

    #@13c
    .line 2377
    .end local v2    # "handled":Z
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@13f
    move-result v3

    #@140
    if-eqz v3, :cond_11

    #@142
    .line 2378
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@145
    move-result v3

    #@146
    if-nez v3, :cond_10

    #@148
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    #@14b
    move-result v2

    #@14c
    .local v2, "handled":Z
    goto/16 :goto_0

    #@14e
    .end local v2    # "handled":Z
    :cond_10
    const/4 v2, 0x1

    #@14f
    .local v2, "handled":Z
    goto/16 :goto_0

    #@151
    .line 2379
    .end local v2    # "handled":Z
    :cond_11
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@154
    move-result v3

    #@155
    if-eqz v3, :cond_2

    #@157
    .line 2380
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@15a
    move-result v3

    #@15b
    if-nez v3, :cond_12

    #@15d
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    #@160
    move-result v2

    #@161
    .local v2, "handled":Z
    goto/16 :goto_0

    #@163
    .end local v2    # "handled":Z
    :cond_12
    const/4 v2, 0x1

    #@164
    .local v2, "handled":Z
    goto/16 :goto_0

    #@166
    .line 2390
    .end local v2    # "handled":Z
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    #@169
    move-result v3

    #@16a
    if-eqz v3, :cond_14

    #@16c
    .line 2391
    return v7

    #@16d
    .line 2394
    :cond_14
    packed-switch v0, :pswitch_data_0

    #@170
    .line 2405
    return v4

    #@171
    .line 2396
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@174
    move-result v3

    #@175
    return v3

    #@176
    .line 2399
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@179
    move-result v3

    #@17a
    return v3

    #@17b
    .line 2402
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@17e
    move-result v3

    #@17f
    return v3

    #@180
    .line 2297
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_8
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch

    #@1a6
    .line 2394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1447
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    add-int/2addr v7, p1

    #@4
    add-int/lit8 v6, v7, -0x1

    #@6
    .line 1448
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    #@8
    add-int/lit8 v7, v7, -0x1

    #@a
    if-ne v6, v7, :cond_2

    #@c
    if-lez p1, :cond_2

    #@e
    .line 1451
    add-int/lit8 v7, p1, -0x1

    #@10
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v5

    #@14
    .line 1454
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@17
    move-result v4

    #@18
    .line 1457
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    #@1a
    iget v8, p0, Landroid/widget/ListView;->mTop:I

    #@1c
    sub-int/2addr v7, v8

    #@1d
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1f
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@21
    sub-int v1, v7, v8

    #@23
    .line 1461
    .local v1, "end":I
    sub-int v0, v1, v4

    #@25
    .line 1462
    .local v0, "bottomOffset":I
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v2

    #@29
    .line 1463
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@2c
    move-result v3

    #@2d
    .line 1467
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    #@2f
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@31
    if-gtz v7, :cond_0

    #@33
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@35
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@37
    if-ge v3, v7, :cond_2

    #@39
    .line 1468
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3b
    if-nez v7, :cond_1

    #@3d
    .line 1470
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3f
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@41
    sub-int/2addr v7, v3

    #@42
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v0

    #@46
    .line 1473
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@49
    .line 1474
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@4b
    if-lez v7, :cond_2

    #@4d
    .line 1477
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@4f
    add-int/lit8 v7, v7, -0x1

    #@51
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@54
    move-result v8

    #@55
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@57
    sub-int/2addr v8, v9

    #@58
    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@5b
    .line 1479
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@5e
    .line 1444
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1496
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    if-nez v8, :cond_2

    #@5
    if-lez p1, :cond_2

    #@7
    .line 1499
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 1502
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@e
    move-result v2

    #@f
    .line 1505
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@11
    iget v6, v8, Landroid/graphics/Rect;->top:I

    #@13
    .line 1508
    .local v6, "start":I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    #@15
    iget v9, p0, Landroid/widget/ListView;->mTop:I

    #@17
    sub-int/2addr v8, v9

    #@18
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1a
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@1c
    sub-int v0, v8, v9

    #@1e
    .line 1512
    .local v0, "end":I
    sub-int v7, v2, v6

    #@20
    .line 1513
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    #@22
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v4

    #@26
    .line 1514
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@29
    move-result v3

    #@2a
    .line 1515
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@2c
    add-int/2addr v8, p1

    #@2d
    add-int/lit8 v5, v8, -0x1

    #@2f
    .line 1519
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    #@31
    .line 1520
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@33
    add-int/lit8 v8, v8, -0x1

    #@35
    if-lt v5, v8, :cond_0

    #@37
    if-le v3, v0, :cond_3

    #@39
    .line 1521
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@3b
    add-int/lit8 v8, v8, -0x1

    #@3d
    if-ne v5, v8, :cond_1

    #@3f
    .line 1523
    sub-int v8, v3, v0

    #@41
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v7

    #@45
    .line 1526
    :cond_1
    neg-int v8, v7

    #@46
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@49
    .line 1527
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@4b
    add-int/lit8 v8, v8, -0x1

    #@4d
    if-ge v5, v8, :cond_2

    #@4f
    .line 1530
    add-int/lit8 v8, v5, 0x1

    #@51
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@54
    move-result v9

    #@55
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@57
    add-int/2addr v9, v10

    #@58
    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@5b
    .line 1532
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@5e
    .line 1493
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    #@5f
    .line 1534
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@61
    add-int/lit8 v8, v8, -0x1

    #@63
    if-ne v5, v8, :cond_2

    #@65
    .line 1535
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@68
    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    #@0
    .prologue
    .line 3135
    const/4 v0, 0x0

    #@1
    .line 3136
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 3137
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 3138
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    #@d
    iget v3, p0, Landroid/widget/ListView;->mTop:I

    #@f
    sub-int/2addr v2, v3

    #@10
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@12
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@14
    sub-int v1, v2, v3

    #@16
    .line 3139
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@18
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@1a
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1c
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@1e
    if-ge v2, v3, :cond_1

    #@20
    .line 3140
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@22
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@24
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@26
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@28
    sub-int v0, v2, v3

    #@2a
    .line 3144
    :cond_0
    :goto_0
    return v0

    #@2b
    .line 3141
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@2d
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2f
    if-le v2, v1, :cond_0

    #@31
    .line 3142
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@33
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@35
    sub-int v0, v2, v1

    #@37
    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 812
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@2
    .line 813
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 814
    add-int/lit8 v1, p2, -0x1

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@b
    move-result v2

    #@c
    sub-int/2addr v2, v0

    #@d
    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@10
    .line 815
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@13
    .line 816
    add-int/lit8 v1, p2, 0x1

    #@15
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@18
    move-result v2

    #@19
    add-int/2addr v2, v0

    #@1a
    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@1d
    .line 811
    :goto_0
    return-void

    #@1e
    .line 818
    :cond_0
    add-int/lit8 v1, p2, 0x1

    #@20
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@23
    move-result v2

    #@24
    add-int/2addr v2, v0

    #@25
    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@28
    .line 819
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@2b
    .line 820
    add-int/lit8 v1, p2, -0x1

    #@2d
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@30
    move-result v2

    #@31
    sub-int/2addr v2, v0

    #@32
    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@35
    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    #@0
    .prologue
    .line 694
    const/4 v8, 0x0

    #@1
    .line 696
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    #@3
    iget v1, p0, Landroid/widget/ListView;->mTop:I

    #@5
    sub-int v7, v0, v1

    #@7
    .line 697
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@9
    and-int/lit8 v0, v0, 0x22

    #@b
    const/16 v1, 0x22

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 698
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@13
    sub-int/2addr v7, v0

    #@14
    .line 701
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    #@16
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    #@18
    if-ge p1, v0, :cond_3

    #@1a
    .line 703
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@1c
    if-ne p1, v0, :cond_2

    #@1e
    const/4 v5, 0x1

    #@1f
    .line 704
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@21
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@23
    const/4 v3, 0x1

    #@24
    move-object v0, p0

    #@25
    move v1, p1

    #@26
    move v2, p2

    #@27
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@2a
    move-result-object v6

    #@2b
    .line 706
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@2e
    move-result v0

    #@2f
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@31
    add-int p2, v0, v1

    #@33
    .line 707
    if-eqz v5, :cond_1

    #@35
    .line 708
    move-object v8, v6

    #@36
    .line 710
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 703
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    #@3a
    .restart local v5    # "selected":Z
    goto :goto_1

    #@3b
    .line 713
    .end local v5    # "selected":Z
    :cond_3
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3d
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3f
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@42
    move-result v2

    #@43
    add-int/2addr v1, v2

    #@44
    add-int/lit8 v1, v1, -0x1

    #@46
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    #@49
    .line 714
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 780
    sub-int v6, p2, p1

    #@3
    .line 782
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    #@6
    move-result v1

    #@7
    .line 785
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@9
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@b
    move-object v0, p0

    #@c
    move v2, p1

    #@d
    move v5, v3

    #@e
    .line 784
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@11
    move-result-object v7

    #@12
    .line 786
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@14
    .line 788
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    #@17
    move-result v8

    #@18
    .line 789
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    #@1a
    .line 790
    sub-int v0, v6, v8

    #@1c
    div-int/lit8 v0, v0, 0x2

    #@1e
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@21
    .line 793
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    #@24
    .line 795
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@26
    if-nez v0, :cond_1

    #@28
    .line 796
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@2b
    move-result v0

    #@2c
    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@2f
    .line 801
    :goto_0
    return-object v7

    #@30
    .line 798
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@33
    move-result v0

    #@34
    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    #@37
    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    #@0
    .prologue
    .line 836
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v8

    #@4
    .line 837
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@6
    .line 841
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    #@8
    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    #@b
    move-result v13

    #@c
    .line 843
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    #@e
    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    #@11
    move-result v7

    #@12
    .line 846
    .local v7, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@14
    iget v5, v1, Landroid/graphics/Rect;->left:I

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v6, 0x1

    #@18
    move-object v1, p0

    #@19
    move v3, p1

    #@1a
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@1d
    move-result-object v10

    #@1e
    .line 850
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@21
    move-result v1

    #@22
    if-le v1, v7, :cond_1

    #@24
    .line 853
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@27
    move-result v1

    #@28
    sub-int v11, v1, v13

    #@2a
    .line 857
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@2d
    move-result v1

    #@2e
    sub-int v12, v1, v7

    #@30
    .line 858
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v9

    #@34
    .line 861
    .local v9, "offset":I
    neg-int v1, v9

    #@35
    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@38
    .line 877
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    #@3b
    .line 879
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 880
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@42
    move-result v1

    #@43
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@46
    .line 885
    :goto_1
    return-object v10

    #@47
    .line 862
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@4a
    move-result v1

    #@4b
    if-ge v1, v13, :cond_0

    #@4d
    .line 865
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@50
    move-result v1

    #@51
    sub-int v11, v13, v1

    #@53
    .line 869
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@56
    move-result v1

    #@57
    sub-int v12, v7, v1

    #@59
    .line 870
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v9

    #@5d
    .line 873
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@60
    goto :goto_0

    #@61
    .line 882
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@64
    move-result v1

    #@65
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    #@68
    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 760
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@b
    .line 761
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@d
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@17
    .line 762
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@19
    if-gez v0, :cond_0

    #@1b
    .line 763
    iput v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1d
    .line 765
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1f
    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    .line 1399
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@2
    if-ne p1, v0, :cond_1

    #@4
    const/4 v5, 0x1

    #@5
    .line 1400
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@7
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@9
    const/4 v3, 0x1

    #@a
    move-object v0, p0

    #@b
    move v1, p1

    #@c
    move v2, p2

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@10
    move-result-object v10

    #@11
    .line 1402
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@13
    .line 1407
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@15
    .line 1408
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@17
    if-nez v0, :cond_2

    #@19
    .line 1409
    add-int/lit8 v0, p1, -0x1

    #@1b
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@1e
    move-result v1

    #@1f
    sub-int/2addr v1, v9

    #@20
    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@23
    move-result-object v6

    #@24
    .line 1411
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@27
    .line 1412
    add-int/lit8 v0, p1, 0x1

    #@29
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v1, v9

    #@2e
    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@31
    move-result-object v7

    #@32
    .line 1413
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@35
    move-result v8

    #@36
    .line 1414
    .local v8, "childCount":I
    if-lez v8, :cond_0

    #@38
    .line 1415
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@3b
    .line 1428
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    #@3d
    .line 1429
    return-object v10

    #@3e
    .line 1399
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    .end local v10    # "temp":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    #@3f
    .restart local v5    # "tempIsSelected":Z
    goto :goto_0

    #@40
    .line 1418
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    #@42
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@45
    move-result v1

    #@46
    add-int/2addr v1, v9

    #@47
    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@4a
    move-result-object v7

    #@4b
    .line 1420
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@4e
    .line 1421
    add-int/lit8 v0, p1, -0x1

    #@50
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@53
    move-result v1

    #@54
    sub-int/2addr v1, v9

    #@55
    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@58
    move-result-object v6

    #@59
    .line 1422
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@5c
    move-result v8

    #@5d
    .line 1423
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    #@5f
    .line 1424
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    #@62
    goto :goto_1

    #@63
    .line 1430
    :cond_3
    if-eqz v6, :cond_4

    #@65
    .line 1431
    return-object v6

    #@66
    .line 1433
    :cond_4
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 728
    const/4 v8, 0x0

    #@2
    .line 730
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    #@3
    .line 731
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@5
    and-int/lit8 v0, v0, 0x22

    #@7
    const/16 v1, 0x22

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 732
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@d
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@f
    .line 735
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    #@11
    if-ltz p1, :cond_3

    #@13
    .line 737
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@15
    if-ne p1, v0, :cond_2

    #@17
    const/4 v5, 0x1

    #@18
    .line 738
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1a
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@1c
    move-object v0, p0

    #@1d
    move v1, p1

    #@1e
    move v2, p2

    #@1f
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@22
    move-result-object v6

    #@23
    .line 739
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@26
    move-result v0

    #@27
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@29
    sub-int p2, v0, v1

    #@2b
    .line 740
    if-eqz v5, :cond_1

    #@2d
    .line 741
    move-object v8, v6

    #@2e
    .line 743
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@30
    goto :goto_0

    #@31
    .line 737
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    #@32
    .restart local v5    # "selected":Z
    goto :goto_1

    #@33
    .line 746
    .end local v5    # "selected":Z
    :cond_3
    add-int/lit8 v0, p1, 0x1

    #@35
    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@37
    .line 747
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@39
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3b
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3e
    move-result v2

    #@3f
    add-int/2addr v1, v2

    #@40
    add-int/lit8 v1, v1, -0x1

    #@42
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    #@45
    .line 748
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    #@0
    .prologue
    .line 2820
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    #@0
    .prologue
    .line 898
    move v0, p1

    #@1
    .line 899
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    if-eq p3, v1, :cond_0

    #@7
    .line 900
    sub-int v0, p1, p2

    #@9
    .line 902
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    #@0
    .prologue
    .line 915
    move v0, p1

    #@1
    .line 916
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    #@3
    .line 917
    add-int v0, p1, p2

    #@5
    .line 919
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 9
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2506
    const/16 v6, 0x11

    #@3
    if-eq p1, v6, :cond_0

    #@5
    const/16 v6, 0x42

    #@7
    if-eq p1, v6, :cond_0

    #@9
    .line 2507
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v7, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    #@e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v6

    #@12
    .line 2511
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@15
    move-result v4

    #@16
    .line 2512
    .local v4, "numChildren":I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@18
    if-eqz v6, :cond_3

    #@1a
    if-lez v4, :cond_3

    #@1c
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@1e
    const/4 v7, -0x1

    #@1f
    if-eq v6, v7, :cond_3

    #@21
    .line 2513
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@24
    move-result-object v5

    #@25
    .line 2514
    .local v5, "selectedView":Landroid/view/View;
    if-eqz v5, :cond_3

    #@27
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 2515
    instance-of v6, v5, Landroid/view/ViewGroup;

    #@2f
    .line 2514
    if-eqz v6, :cond_3

    #@31
    .line 2517
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@34
    move-result-object v0

    #@35
    .line 2518
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@38
    move-result-object v6

    #@39
    .line 2519
    check-cast v5, Landroid/view/ViewGroup;

    #@3b
    .line 2518
    .end local v5    # "selectedView":Landroid/view/View;
    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@3e
    move-result-object v3

    #@3f
    .line 2520
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_2

    #@41
    .line 2522
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@43
    .line 2523
    .local v1, "focusedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    #@45
    .line 2524
    invoke-virtual {v0, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@48
    .line 2525
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4b
    .line 2526
    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4e
    .line 2530
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v3, p1, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_2

    #@54
    .line 2531
    const/4 v6, 0x1

    #@55
    return v6

    #@56
    .line 2528
    .restart local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    #@57
    .local v1, "focusedRect":Landroid/graphics/Rect;
    goto :goto_0

    #@58
    .line 2538
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@5b
    move-result-object v7

    #@5c
    .line 2539
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    #@5f
    move-result-object v6

    #@60
    check-cast v6, Landroid/view/ViewGroup;

    #@62
    .line 2538
    invoke-virtual {v7, v6, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@65
    move-result-object v2

    #@66
    .line 2540
    .local v2, "globalNextFocus":Landroid/view/View;
    if-eqz v2, :cond_3

    #@68
    .line 2541
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@6b
    move-result v6

    #@6c
    return v6

    #@6d
    .line 2545
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "globalNextFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    :cond_3
    return v8
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2711
    const/4 v8, -0x1

    #@2
    if-ne p3, v8, :cond_0

    #@4
    .line 2712
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    #@9
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 2722
    :cond_0
    const/4 v5, 0x0

    #@e
    .line 2723
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@10
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@12
    sub-int v4, v8, v10

    #@14
    .line 2724
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@16
    sub-int v2, p3, v8

    #@18
    .line 2725
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    #@1a
    if-ne p2, v8, :cond_4

    #@1c
    .line 2726
    move v7, v2

    #@1d
    .line 2727
    .local v7, "topViewIndex":I
    move v1, v4

    #@1e
    .line 2728
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v6

    #@22
    .line 2729
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    #@23
    .line 2730
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    #@24
    .line 2738
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@27
    move-result v3

    #@28
    .line 2741
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    #@2a
    .line 2742
    if-nez p4, :cond_5

    #@2c
    move v8, v5

    #@2d
    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    #@30
    .line 2743
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    #@33
    .line 2747
    :cond_1
    if-eqz v0, :cond_3

    #@35
    .line 2748
    if-nez p4, :cond_2

    #@37
    if-eqz v5, :cond_6

    #@39
    :cond_2
    :goto_2
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    #@3c
    .line 2749
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    #@3f
    .line 2710
    :cond_3
    return-void

    #@40
    .line 2732
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_4
    move v7, v4

    #@41
    .line 2733
    .restart local v7    # "topViewIndex":I
    move v1, v2

    #@42
    .line 2734
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    #@43
    .line 2735
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@46
    move-result-object v0

    #@47
    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    #@48
    .restart local v3    # "numChildren":I
    :cond_5
    move v8, v9

    #@49
    .line 2742
    goto :goto_1

    #@4a
    .line 2748
    :cond_6
    const/4 v9, 0x1

    #@4b
    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1922
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3
    .line 1923
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 1924
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@a
    .line 1925
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    if-ne p1, v5, :cond_0

    #@14
    .line 1926
    return v6

    #@15
    .line 1924
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1930
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@1a
    .line 1931
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v3

    #@1e
    .line 1932
    .local v3, "numFooters":I
    const/4 v2, 0x0

    #@1f
    :goto_1
    if-ge v2, v3, :cond_3

    #@21
    .line 1933
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    #@27
    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@29
    if-ne p1, v5, :cond_2

    #@2b
    .line 1934
    return v6

    #@2c
    .line 1932
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1938
    :cond_3
    const/4 v5, 0x0

    #@30
    return v5
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 3087
    if-ne p1, p2, :cond_0

    #@2
    .line 3088
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 3091
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 3092
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 2950
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    .line 2951
    .local v1, "firstPosition":I
    const/16 v6, 0x82

    #@5
    if-ne p1, v6, :cond_4

    #@7
    .line 2952
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@9
    if-eq v6, v7, :cond_0

    #@b
    .line 2953
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@d
    add-int/lit8 v5, v6, 0x1

    #@f
    .line 2955
    .local v5, "startPos":I
    :goto_0
    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@11
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    #@14
    move-result v6

    #@15
    if-lt v5, v6, :cond_1

    #@17
    .line 2956
    return v7

    #@18
    .line 2954
    .end local v5    # "startPos":I
    :cond_0
    move v5, v1

    #@19
    .restart local v5    # "startPos":I
    goto :goto_0

    #@1a
    .line 2958
    :cond_1
    if-ge v5, v1, :cond_2

    #@1c
    .line 2959
    move v5, v1

    #@1d
    .line 2962
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    #@20
    move-result v3

    #@21
    .line 2963
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@24
    move-result-object v0

    #@25
    .line 2964
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    #@26
    .local v4, "pos":I
    :goto_1
    if-gt v4, v3, :cond_a

    #@28
    .line 2965
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_3

    #@2e
    .line 2966
    sub-int v6, v4, v1

    #@30
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_3

    #@3a
    .line 2967
    return v4

    #@3b
    .line 2964
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 2971
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@41
    move-result v6

    #@42
    add-int/2addr v6, v1

    #@43
    add-int/lit8 v2, v6, -0x1

    #@45
    .line 2972
    .local v2, "last":I
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@47
    if-eq v6, v7, :cond_6

    #@49
    .line 2973
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@4b
    add-int/lit8 v5, v6, -0x1

    #@4d
    .line 2975
    .restart local v5    # "startPos":I
    :goto_2
    if-ltz v5, :cond_5

    #@4f
    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@51
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    #@54
    move-result v6

    #@55
    if-lt v5, v6, :cond_7

    #@57
    .line 2976
    :cond_5
    return v7

    #@58
    .line 2974
    .end local v5    # "startPos":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@5b
    move-result v6

    #@5c
    add-int/2addr v6, v1

    #@5d
    add-int/lit8 v5, v6, -0x1

    #@5f
    goto :goto_2

    #@60
    .line 2978
    .restart local v5    # "startPos":I
    :cond_7
    if-le v5, v2, :cond_8

    #@62
    .line 2979
    move v5, v2

    #@63
    .line 2982
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@66
    move-result-object v0

    #@67
    .line 2983
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    #@68
    .restart local v4    # "pos":I
    :goto_3
    if-lt v4, v1, :cond_a

    #@6a
    .line 2984
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_9

    #@70
    .line 2985
    sub-int v6, v4, v1

    #@72
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@79
    move-result v6

    #@7a
    if-nez v6, :cond_9

    #@7c
    .line 2986
    return v4

    #@7d
    .line 2983
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@7f
    goto :goto_3

    #@80
    .line 2990
    .end local v2    # "last":I
    :cond_a
    return v7
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    #@0
    .prologue
    .line 1957
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1959
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    .line 1960
    .local v1, "activeView":Landroid/view/View;
    if-eqz v1, :cond_0

    #@c
    .line 1963
    const/4 v7, 0x1

    #@d
    move-object v0, p0

    #@e
    move v2, p1

    #@f
    move v3, p2

    #@10
    move v4, p3

    #@11
    move v5, p4

    #@12
    move v6, p5

    #@13
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@16
    .line 1964
    return-object v1

    #@17
    .line 1970
    .end local v1    # "activeView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@19
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@1c
    move-result-object v3

    #@1d
    .line 1973
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@1f
    const/4 v2, 0x0

    #@20
    aget-boolean v9, v0, v2

    #@22
    move-object v2, p0

    #@23
    move v4, p1

    #@24
    move v5, p2

    #@25
    move v6, p3

    #@26
    move v7, p4

    #@27
    move v8, p5

    #@28
    invoke-direct/range {v2 .. v9}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@2b
    .line 1975
    return-object v3
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    #@0
    .prologue
    .line 2761
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@3
    move-result v2

    #@4
    .line 2762
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    #@7
    .line 2763
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@a
    move-result v3

    #@b
    if-eq v3, v2, :cond_0

    #@d
    .line 2765
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    #@10
    .line 2768
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@13
    move-result v3

    #@14
    sub-int v0, v3, v2

    #@16
    .line 2769
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@1a
    .line 2770
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@21
    .line 2769
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2760
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2781
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v3

    #@5
    .line 2782
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    #@7
    .line 2783
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@9
    .line 2784
    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    #@a
    .line 2785
    const/4 v5, -0x2

    #@b
    .line 2783
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@e
    .line 2788
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    #@10
    .line 2789
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@12
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@14
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@16
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@18
    add-int/2addr v5, v6

    #@19
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1b
    .line 2788
    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@1e
    move-result v1

    #@1f
    .line 2790
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@21
    .line 2792
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    #@23
    .line 2793
    const/high16 v4, 0x40000000    # 2.0f

    #@25
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@28
    move-result v0

    #@29
    .line 2798
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@2c
    .line 2780
    return-void

    #@2d
    .line 2795
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    #@30
    move-result v4

    #@31
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@34
    move-result v0

    #@35
    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v3

    #@5
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@7
    .line 1243
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    #@9
    .line 1244
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object v3

    #@d
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@f
    .line 1245
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 1247
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@14
    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@17
    move-result v4

    #@18
    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@1a
    .line 1248
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1c
    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@1f
    move-result v4

    #@20
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    #@22
    .line 1249
    const/4 v4, 0x1

    #@23
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@25
    .line 1252
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@27
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@29
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@2b
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@2d
    add-int/2addr v4, v5

    #@2e
    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    #@30
    .line 1251
    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@33
    move-result v1

    #@34
    .line 1253
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    #@36
    .line 1255
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    #@38
    .line 1256
    const/high16 v4, 0x40000000    # 2.0f

    #@3a
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3d
    move-result v0

    #@3e
    .line 1260
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@41
    .line 1264
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    #@44
    .line 1241
    return-void

    #@45
    .line 1258
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {p4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@48
    move-result v0

    #@49
    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    #@0
    .prologue
    .line 961
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v10

    #@4
    .line 962
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    #@6
    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@8
    .line 966
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p4

    #@c
    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    #@f
    move-result v18

    #@10
    .line 968
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    #@12
    move/from16 v1, p4

    #@14
    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    #@17
    move-result v8

    #@18
    .line 971
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    #@1a
    .line 993
    add-int/lit8 v3, v15, -0x1

    #@1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@1f
    move-result v4

    #@20
    .line 994
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@24
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@26
    .line 993
    const/4 v5, 0x1

    #@27
    .line 994
    const/4 v7, 0x0

    #@28
    move-object/from16 v2, p0

    #@2a
    .line 993
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@2d
    move-result-object p1

    #@2e
    .line 996
    move-object/from16 v0, p0

    #@30
    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    #@32
    .line 999
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    #@35
    move-result v2

    #@36
    add-int v4, v2, v9

    #@38
    .line 1000
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3c
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@3e
    .line 999
    const/4 v5, 0x1

    #@3f
    .line 1000
    const/4 v7, 0x1

    #@40
    move-object/from16 v2, p0

    #@42
    move v3, v15

    #@43
    .line 999
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@46
    move-result-object v14

    #@47
    .line 1003
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@4a
    move-result v2

    #@4b
    if-le v2, v8, :cond_0

    #@4d
    .line 1006
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@50
    move-result v2

    #@51
    sub-int v16, v2, v18

    #@53
    .line 1009
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@56
    move-result v2

    #@57
    sub-int v17, v2, v8

    #@59
    .line 1012
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    #@5b
    div-int/lit8 v11, v2, 0x2

    #@5d
    .line 1013
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v13

    #@61
    .line 1014
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    #@64
    move-result v13

    #@65
    .line 1017
    neg-int v2, v13

    #@66
    move-object/from16 v0, p1

    #@68
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@6b
    .line 1019
    neg-int v2, v13

    #@6c
    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@6f
    .line 1023
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    #@71
    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@73
    if-nez v2, :cond_1

    #@75
    .line 1024
    move-object/from16 v0, p0

    #@77
    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@79
    add-int/lit8 v2, v2, -0x2

    #@7b
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@7e
    move-result v3

    #@7f
    sub-int/2addr v3, v9

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@85
    .line 1025
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@88
    .line 1026
    move-object/from16 v0, p0

    #@8a
    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@8c
    add-int/lit8 v2, v2, 0x1

    #@8e
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@91
    move-result v3

    #@92
    add-int/2addr v3, v9

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@98
    .line 1107
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    #@99
    .line 1028
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    #@9b
    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@9d
    add-int/lit8 v2, v2, 0x1

    #@9f
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@a2
    move-result v3

    #@a3
    add-int/2addr v3, v9

    #@a4
    move-object/from16 v0, p0

    #@a6
    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@a9
    .line 1029
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@ac
    .line 1030
    move-object/from16 v0, p0

    #@ae
    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@b0
    add-int/lit8 v2, v2, -0x2

    #@b2
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@b5
    move-result v3

    #@b6
    sub-int/2addr v3, v9

    #@b7
    move-object/from16 v0, p0

    #@b9
    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@bc
    goto :goto_0

    #@bd
    .line 1032
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    #@bf
    .line 1053
    if-eqz p2, :cond_4

    #@c1
    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    #@c4
    move-result v4

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@c9
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@cb
    const/4 v5, 0x1

    #@cc
    .line 1056
    const/4 v7, 0x1

    #@cd
    move-object/from16 v2, p0

    #@cf
    move v3, v15

    #@d0
    .line 1055
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@d3
    move-result-object v14

    #@d4
    .line 1065
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@d7
    move-result v2

    #@d8
    move/from16 v0, v18

    #@da
    if-ge v2, v0, :cond_3

    #@dc
    .line 1067
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@df
    move-result v2

    #@e0
    sub-int v16, v18, v2

    #@e2
    .line 1070
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@e5
    move-result v2

    #@e6
    sub-int v17, v8, v2

    #@e8
    .line 1073
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    #@ea
    div-int/lit8 v11, v2, 0x2

    #@ec
    .line 1074
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    #@ef
    move-result v13

    #@f0
    .line 1075
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    #@f3
    move-result v13

    #@f4
    .line 1078
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@f7
    .line 1082
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    #@f9
    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    #@fc
    goto :goto_0

    #@fd
    .line 1060
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@100
    move-result v4

    #@101
    move-object/from16 v0, p0

    #@103
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@105
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@107
    const/4 v5, 0x0

    #@108
    .line 1061
    const/4 v7, 0x1

    #@109
    move-object/from16 v2, p0

    #@10b
    move v3, v15

    #@10c
    .line 1060
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@10f
    move-result-object v14

    #@110
    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    #@111
    .line 1085
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@114
    move-result v4

    #@115
    .line 1090
    .local v4, "oldTop":I
    move-object/from16 v0, p0

    #@117
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@119
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@11b
    const/4 v5, 0x1

    #@11c
    const/4 v7, 0x1

    #@11d
    move-object/from16 v2, p0

    #@11f
    move v3, v15

    #@120
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@123
    move-result-object v14

    #@124
    .line 1093
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    #@126
    if-ge v4, v0, :cond_6

    #@128
    .line 1096
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@12b
    move-result v12

    #@12c
    .line 1097
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    #@12e
    if-ge v12, v2, :cond_6

    #@130
    .line 1099
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@133
    move-result v2

    #@134
    sub-int v2, p4, v2

    #@136
    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@139
    .line 1104
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    #@13b
    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    #@13e
    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    #@0
    .prologue
    const/16 v8, 0x82

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v7, -0x1

    #@4
    .line 2582
    if-ne p3, v8, :cond_3

    #@6
    .line 2583
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@9
    move-result v5

    #@a
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@c
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@e
    sub-int v1, v5, v6

    #@10
    .line 2584
    .local v1, "listBottom":I
    if-eqz p1, :cond_2

    #@12
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@15
    move-result v5

    #@16
    if-gt v5, v1, :cond_2

    #@18
    .line 2585
    if-eq p2, v7, :cond_1

    #@1a
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1c
    if-lt p2, v5, :cond_1

    #@1e
    .line 2586
    add-int/lit8 v3, p2, 0x1

    #@20
    .line 2603
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    #@22
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@24
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    #@27
    move-result v5

    #@28
    if-lt v3, v5, :cond_6

    #@2a
    .line 2604
    :cond_0
    return v7

    #@2b
    .line 2587
    .end local v3    # "nextSelected":I
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@2d
    .restart local v3    # "nextSelected":I
    goto :goto_0

    #@2e
    .line 2589
    .end local v3    # "nextSelected":I
    :cond_2
    return v7

    #@2f
    .line 2592
    .end local v1    # "listBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@31
    iget v2, v5, Landroid/graphics/Rect;->top:I

    #@33
    .line 2593
    .local v2, "listTop":I
    if-eqz p1, :cond_5

    #@35
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@38
    move-result v5

    #@39
    if-lt v5, v2, :cond_5

    #@3b
    .line 2594
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@40
    move-result v6

    #@41
    add-int/2addr v5, v6

    #@42
    add-int/lit8 v0, v5, -0x1

    #@44
    .line 2595
    .local v0, "lastPos":I
    if-eq p2, v7, :cond_4

    #@46
    if-gt p2, v0, :cond_4

    #@48
    .line 2596
    add-int/lit8 v3, p2, -0x1

    #@4a
    .restart local v3    # "nextSelected":I
    goto :goto_0

    #@4b
    .line 2597
    .end local v3    # "nextSelected":I
    :cond_4
    move v3, v0

    #@4c
    .restart local v3    # "nextSelected":I
    goto :goto_0

    #@4d
    .line 2599
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_5
    return v7

    #@4e
    .line 2606
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_6
    if-ne p3, v8, :cond_7

    #@50
    const/4 v4, 0x1

    #@51
    :cond_7
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@54
    move-result v4

    #@55
    return v4
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    #@0
    .prologue
    .line 3072
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3
    move-result v2

    #@4
    .line 3073
    .local v2, "numChildren":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 3074
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 3075
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 3076
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@13
    add-int/2addr v3, v1

    #@14
    return v3

    #@15
    .line 3073
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 3079
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2807
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v5

    #@4
    .line 2808
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@7
    move-result v4

    #@8
    .line 2809
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@a
    iget v1, v6, Landroid/graphics/Rect;->left:I

    #@c
    .line 2810
    .local v1, "childLeft":I
    add-int v2, v1, v5

    #@e
    .line 2811
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@11
    move-result v3

    #@12
    .line 2812
    .local v3, "childTop":I
    add-int v0, v3, v4

    #@14
    .line 2813
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    #@17
    .line 2806
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 339
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 340
    .local v2, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@7
    .line 341
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    #@d
    .line 342
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@f
    if-ne v3, p1, :cond_1

    #@11
    .line 343
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@14
    .line 338
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    #@15
    .line 340
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v5, 0x0

    #@1
    .line 1902
    if-nez p1, :cond_0

    #@3
    .line 1903
    return-void

    #@4
    .line 1905
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v1, v4, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@c
    .line 1906
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    #@12
    .line 1907
    .local v0, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@14
    .line 1908
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    #@1a
    .line 1909
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1d
    move-result-object v4

    #@1e
    if-nez v4, :cond_1

    #@20
    if-eqz v2, :cond_1

    #@22
    iget-boolean v4, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 1910
    invoke-virtual {p0, v3, v5}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    #@29
    .line 1911
    iput-boolean v5, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@2b
    .line 1905
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1901
    .end local v0    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 3155
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@4
    .line 3157
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@7
    move-result v9

    #@8
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@a
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@c
    sub-int v5, v9, v10

    #@e
    .line 3158
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@10
    iget v6, v9, Landroid/graphics/Rect;->top:I

    #@12
    .line 3159
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@14
    .line 3161
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    #@16
    .line 3165
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@19
    move-result v7

    #@1a
    .line 3166
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    #@1c
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 3167
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@23
    move-result v9

    #@24
    if-ge v9, v5, :cond_0

    #@26
    .line 3168
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@28
    add-int/2addr v9, v7

    #@29
    add-int/lit8 v3, v9, -0x1

    #@2b
    .line 3169
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    #@2d
    add-int/lit8 v9, v9, -0x1

    #@2f
    if-ge v3, v9, :cond_0

    #@31
    .line 3170
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    #@34
    move-result-object v1

    #@35
    .line 3171
    add-int/lit8 v7, v7, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3180
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@3b
    move-result v9

    #@3c
    if-ge v9, v5, :cond_1

    #@3e
    .line 3181
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@41
    move-result v9

    #@42
    sub-int v9, v5, v9

    #@44
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@47
    .line 3185
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@4a
    move-result-object v0

    #@4b
    .line 3186
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@4e
    move-result v9

    #@4f
    if-ge v9, v6, :cond_7

    #@51
    .line 3187
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    #@57
    .line 3188
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@59
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@5c
    move-result v9

    #@5d
    if-eqz v9, :cond_2

    #@5f
    .line 3189
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@61
    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@64
    .line 3191
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    #@67
    .line 3192
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@6a
    move-result-object v0

    #@6b
    .line 3193
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@6d
    add-int/lit8 v9, v9, 0x1

    #@6f
    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@71
    goto :goto_1

    #@72
    .line 3197
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@75
    move-result-object v0

    #@76
    .line 3200
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@79
    move-result v9

    #@7a
    if-le v9, v6, :cond_4

    #@7c
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@7e
    if-lez v9, :cond_4

    #@80
    .line 3201
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@82
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    #@85
    move-result-object v0

    #@86
    .line 3202
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@88
    add-int/lit8 v9, v9, -0x1

    #@8a
    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@8c
    goto :goto_2

    #@8d
    .line 3207
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@90
    move-result v9

    #@91
    if-le v9, v6, :cond_5

    #@93
    .line 3208
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@96
    move-result v9

    #@97
    sub-int v9, v6, v9

    #@99
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@9c
    .line 3211
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@9f
    move-result v9

    #@a0
    add-int/lit8 v2, v9, -0x1

    #@a2
    .line 3212
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a5
    move-result-object v1

    #@a6
    .line 3215
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@a9
    move-result v9

    #@aa
    if-le v9, v5, :cond_7

    #@ac
    .line 3216
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@af
    move-result-object v4

    #@b0
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    #@b2
    .line 3217
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@b4
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@b7
    move-result v9

    #@b8
    if-eqz v9, :cond_6

    #@ba
    .line 3218
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@bc
    add-int/2addr v9, v2

    #@bd
    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@c0
    .line 3220
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    #@c3
    .line 3221
    add-int/lit8 v2, v2, -0x1

    #@c5
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@c8
    move-result-object v1

    #@c9
    goto :goto_3

    #@ca
    .line 3224
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    invoke-virtual {v8}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    #@cd
    .line 3225
    iget-object v9, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@cf
    invoke-direct {p0, v9}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    #@d2
    .line 3226
    iget-object v9, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@d4
    invoke-direct {p0, v9}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    #@d7
    .line 3154
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    #@0
    .prologue
    .line 1996
    const-string/jumbo v19, "setupListItem"

    #@3
    const-wide/16 v20, 0x8

    #@5
    move-wide/from16 v0, v20

    #@7
    move-object/from16 v2, v19

    #@9
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1998
    if-eqz p6, :cond_8

    #@e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    #@11
    move-result v11

    #@12
    .line 1999
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    #@15
    move-result v19

    #@16
    move/from16 v0, v19

    #@18
    if-eq v11, v0, :cond_9

    #@1a
    const/16 v17, 0x1

    #@1c
    .line 2000
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    #@1e
    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    #@20
    .line 2001
    .local v13, "mode":I
    if-lez v13, :cond_b

    #@22
    const/16 v19, 0x3

    #@24
    move/from16 v0, v19

    #@26
    if-ge v13, v0, :cond_b

    #@28
    .line 2002
    move-object/from16 v0, p0

    #@2a
    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    #@2c
    move/from16 v19, v0

    #@2e
    move/from16 v0, v19

    #@30
    move/from16 v1, p2

    #@32
    if-ne v0, v1, :cond_a

    #@34
    const/4 v10, 0x1

    #@35
    .line 2003
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    #@38
    move-result v19

    #@39
    move/from16 v0, v19

    #@3b
    if-eq v10, v0, :cond_c

    #@3d
    const/16 v16, 0x1

    #@3f
    .line 2004
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_d

    #@41
    if-nez v17, :cond_d

    #@43
    .line 2005
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    #@46
    move-result v14

    #@47
    .line 2009
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4a
    move-result-object v15

    #@4b
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    #@4d
    .line 2010
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_0

    #@4f
    .line 2011
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@52
    move-result-object v15

    #@53
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    #@55
    .line 2013
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@59
    move-object/from16 v19, v0

    #@5b
    move-object/from16 v0, v19

    #@5d
    move/from16 v1, p2

    #@5f
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@62
    move-result v19

    #@63
    move/from16 v0, v19

    #@65
    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@67
    .line 2014
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@6b
    move-object/from16 v19, v0

    #@6d
    move-object/from16 v0, v19

    #@6f
    move/from16 v1, p2

    #@71
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@74
    move-result v19

    #@75
    move/from16 v0, v19

    #@77
    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    #@79
    .line 2019
    if-eqz v17, :cond_1

    #@7b
    .line 2020
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    #@80
    .line 2023
    :cond_1
    if-eqz v16, :cond_2

    #@82
    .line 2024
    move-object/from16 v0, p1

    #@84
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    #@87
    .line 2027
    :cond_2
    move-object/from16 v0, p0

    #@89
    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    #@8b
    move/from16 v19, v0

    #@8d
    if-eqz v19, :cond_3

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@93
    move-object/from16 v19, v0

    #@95
    if-eqz v19, :cond_3

    #@97
    .line 2028
    move-object/from16 v0, p1

    #@99
    instance-of v0, v0, Landroid/widget/Checkable;

    #@9b
    move/from16 v19, v0

    #@9d
    if-eqz v19, :cond_e

    #@9f
    move-object/from16 v19, p1

    #@a1
    .line 2029
    check-cast v19, Landroid/widget/Checkable;

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@a7
    move-object/from16 v20, v0

    #@a9
    move-object/from16 v0, v20

    #@ab
    move/from16 v1, p2

    #@ad
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@b0
    move-result v20

    #@b1
    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    #@b4
    .line 2036
    :cond_3
    :goto_5
    if-eqz p7, :cond_4

    #@b6
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@b8
    move/from16 v19, v0

    #@ba
    if-eqz v19, :cond_5

    #@bc
    :cond_4
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@be
    move/from16 v19, v0

    #@c0
    if-eqz v19, :cond_10

    #@c2
    .line 2037
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@c4
    move/from16 v19, v0

    #@c6
    const/16 v20, -0x2

    #@c8
    move/from16 v0, v19

    #@ca
    move/from16 v1, v20

    #@cc
    if-ne v0, v1, :cond_10

    #@ce
    .line 2038
    :cond_5
    if-eqz p4, :cond_f

    #@d0
    const/16 v19, -0x1

    #@d2
    :goto_6
    move-object/from16 v0, p0

    #@d4
    move-object/from16 v1, p1

    #@d6
    move/from16 v2, v19

    #@d8
    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@db
    .line 2042
    if-eqz p7, :cond_6

    #@dd
    .line 2043
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e0
    move-result-object v19

    #@e1
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    #@e3
    move-object/from16 v0, v19

    #@e5
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@e7
    move/from16 v19, v0

    #@e9
    move/from16 v0, v19

    #@eb
    move/from16 v1, p2

    #@ed
    if-eq v0, v1, :cond_6

    #@ef
    .line 2045
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@f2
    .line 2055
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    #@f4
    .line 2056
    move-object/from16 v0, p0

    #@f6
    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    #@f8
    move/from16 v19, v0

    #@fa
    .line 2057
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@fe
    move-object/from16 v20, v0

    #@100
    move-object/from16 v0, v20

    #@102
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@104
    move/from16 v20, v0

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@10a
    move-object/from16 v21, v0

    #@10c
    move-object/from16 v0, v21

    #@10e
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@110
    move/from16 v21, v0

    #@112
    add-int v20, v20, v21

    #@114
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    #@116
    move/from16 v21, v0

    #@118
    .line 2056
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@11b
    move-result v8

    #@11c
    .line 2058
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    #@11e
    .line 2060
    .local v12, "lpHeight":I
    if-lez v12, :cond_13

    #@120
    .line 2061
    const/high16 v19, 0x40000000    # 2.0f

    #@122
    move/from16 v0, v19

    #@124
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@127
    move-result v5

    #@128
    .line 2066
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    #@12a
    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    #@12d
    .line 2071
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@130
    move-result v18

    #@131
    .line 2072
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@134
    move-result v9

    #@135
    .line 2073
    .local v9, "h":I
    if-eqz p4, :cond_15

    #@137
    move/from16 v7, p3

    #@139
    .line 2075
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_16

    #@13b
    .line 2076
    add-int v6, p5, v18

    #@13d
    .line 2077
    .local v6, "childRight":I
    add-int v4, v7, v9

    #@13f
    .line 2078
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    #@141
    move/from16 v1, p5

    #@143
    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    #@146
    .line 2084
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    #@148
    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    #@14a
    move/from16 v19, v0

    #@14c
    if-eqz v19, :cond_7

    #@14e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@151
    move-result v19

    #@152
    if-eqz v19, :cond_17

    #@154
    .line 2088
    :cond_7
    :goto_c
    const-wide/16 v20, 0x8

    #@156
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    #@159
    .line 1995
    return-void

    #@15a
    .line 1998
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v13    # "mode":I
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_8
    const/4 v11, 0x0

    #@15b
    .local v11, "isSelected":Z
    goto/16 :goto_0

    #@15d
    .line 1999
    .end local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    #@15f
    .restart local v17    # "updateChildSelected":Z
    goto/16 :goto_1

    #@161
    .line 2002
    .restart local v13    # "mode":I
    :cond_a
    const/4 v10, 0x0

    #@162
    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    #@164
    .line 2001
    .end local v10    # "isPressed":Z
    :cond_b
    const/4 v10, 0x0

    #@165
    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    #@167
    .line 2003
    :cond_c
    const/16 v16, 0x0

    #@169
    .restart local v16    # "updateChildPressed":Z
    goto/16 :goto_3

    #@16b
    .line 2004
    :cond_d
    const/4 v14, 0x1

    #@16c
    .local v14, "needToMeasure":Z
    goto/16 :goto_4

    #@16e
    .line 2030
    .end local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    #@171
    move-result-object v19

    #@172
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@175
    move-result-object v19

    #@176
    move-object/from16 v0, v19

    #@178
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@17a
    move/from16 v19, v0

    #@17c
    .line 2031
    const/16 v20, 0xb

    #@17e
    .line 2030
    move/from16 v0, v19

    #@180
    move/from16 v1, v20

    #@182
    if-lt v0, v1, :cond_3

    #@184
    .line 2032
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@188
    move-object/from16 v19, v0

    #@18a
    move-object/from16 v0, v19

    #@18c
    move/from16 v1, p2

    #@18e
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@191
    move-result v19

    #@192
    move-object/from16 v0, p1

    #@194
    move/from16 v1, v19

    #@196
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    #@199
    goto/16 :goto_5

    #@19b
    .line 2038
    :cond_f
    const/16 v19, 0x0

    #@19d
    goto/16 :goto_6

    #@19f
    .line 2048
    :cond_10
    const/16 v19, 0x0

    #@1a1
    move/from16 v0, v19

    #@1a3
    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@1a5
    .line 2049
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@1a7
    move/from16 v19, v0

    #@1a9
    const/16 v20, -0x2

    #@1ab
    move/from16 v0, v19

    #@1ad
    move/from16 v1, v20

    #@1af
    if-ne v0, v1, :cond_11

    #@1b1
    .line 2050
    const/16 v19, 0x1

    #@1b3
    move/from16 v0, v19

    #@1b5
    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@1b7
    .line 2052
    :cond_11
    if-eqz p4, :cond_12

    #@1b9
    const/16 v19, -0x1

    #@1bb
    :goto_d
    const/16 v20, 0x1

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    move-object/from16 v1, p1

    #@1c1
    move/from16 v2, v19

    #@1c3
    move/from16 v3, v20

    #@1c5
    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    #@1c8
    goto/16 :goto_7

    #@1ca
    :cond_12
    const/16 v19, 0x0

    #@1cc
    goto :goto_d

    #@1cd
    .line 2063
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    #@1d0
    move-result v19

    #@1d1
    .line 2064
    const/16 v20, 0x0

    #@1d3
    .line 2063
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@1d6
    move-result v5

    #@1d7
    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    #@1d9
    .line 2068
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    #@1dc
    goto/16 :goto_9

    #@1de
    .line 2073
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v7, p3, v9

    #@1e0
    .restart local v7    # "childTop":I
    goto/16 :goto_a

    #@1e2
    .line 2080
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@1e5
    move-result v19

    #@1e6
    sub-int v19, p5, v19

    #@1e8
    move-object/from16 v0, p1

    #@1ea
    move/from16 v1, v19

    #@1ec
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1ef
    .line 2081
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@1f2
    move-result v19

    #@1f3
    sub-int v19, v7, v19

    #@1f5
    move-object/from16 v0, p1

    #@1f7
    move/from16 v1, v19

    #@1f9
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@1fc
    goto/16 :goto_b

    #@1fe
    .line 2085
    :cond_17
    const/16 v19, 0x1

    #@200
    move-object/from16 v0, p1

    #@202
    move/from16 v1, v19

    #@204
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@207
    goto/16 :goto_c
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    #@0
    .prologue
    .line 3931
    move-object/from16 v0, p0

    #@2
    iget v3, v0, Landroid/widget/ListView;->mDividerHeight:I

    #@4
    .line 3932
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@8
    move-object/from16 v19, v0

    #@a
    .line 3933
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@e
    move-object/from16 v18, v0

    #@10
    .line 3934
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_2

    #@12
    const/4 v6, 0x1

    #@13
    .line 3935
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_3

    #@15
    const/4 v5, 0x1

    #@16
    .line 3936
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_4

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1c
    move-object/from16 v22, v0

    #@1e
    if-eqz v22, :cond_4

    #@20
    const/4 v4, 0x1

    #@21
    .line 3938
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_1

    #@23
    .line 3939
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    #@26
    move-result v22

    #@27
    if-eqz v22, :cond_0

    #@29
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    #@2c
    move-result v22

    #@2d
    if-eqz v22, :cond_5

    #@2f
    :cond_0
    const/4 v7, 0x0

    #@30
    .line 3940
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    #@32
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@34
    move/from16 v16, v0

    #@36
    .line 3941
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3a
    move-object/from16 v22, v0

    #@3c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v10

    #@40
    .line 3942
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@44
    move-object/from16 v22, v0

    #@46
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v22

    #@4a
    sub-int v9, v16, v22

    #@4c
    .line 3943
    .local v9, "footerLimit":I
    move/from16 v0, p1

    #@4e
    if-ge v0, v10, :cond_6

    #@50
    const/4 v14, 0x1

    #@51
    .line 3944
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    #@53
    if-lt v0, v9, :cond_7

    #@55
    const/4 v13, 0x1

    #@56
    .line 3945
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    #@58
    iget-boolean v11, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@5a
    .line 3946
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    #@5c
    iget-boolean v8, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@5e
    .line 3947
    .local v8, "footerDividers":Z
    if-nez v11, :cond_8

    #@60
    if-eqz v14, :cond_8

    #@62
    .line 3986
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    :cond_1
    const/16 v22, 0x0

    #@64
    return v22

    #@65
    .line 3934
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_2
    const/4 v6, 0x0

    #@66
    .restart local v6    # "drawOverscrollHeader":Z
    goto :goto_0

    #@67
    .line 3935
    :cond_3
    const/4 v5, 0x0

    #@68
    .restart local v5    # "drawOverscrollFooter":Z
    goto :goto_1

    #@69
    .line 3936
    :cond_4
    const/4 v4, 0x0

    #@6a
    goto :goto_2

    #@6b
    .line 3939
    .restart local v4    # "drawDividers":Z
    :cond_5
    const/4 v7, 0x1

    #@6c
    .restart local v7    # "fillForMissingDividers":Z
    goto :goto_3

    #@6d
    .line 3943
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_6
    const/4 v14, 0x0

    #@6e
    .restart local v14    # "isHeader":Z
    goto :goto_4

    #@6f
    .line 3944
    :cond_7
    const/4 v13, 0x0

    #@70
    .restart local v13    # "isFooter":Z
    goto :goto_5

    #@71
    .line 3947
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    :cond_8
    if-nez v8, :cond_9

    #@73
    if-nez v13, :cond_1

    #@75
    .line 3948
    :cond_9
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@79
    .line 3949
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    #@7b
    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@7d
    move/from16 v22, v0

    #@7f
    if-nez v22, :cond_f

    #@81
    .line 3950
    add-int/lit8 v22, v16, -0x1

    #@83
    move/from16 v0, p1

    #@85
    move/from16 v1, v22

    #@87
    if-ne v0, v1, :cond_d

    #@89
    const/4 v15, 0x1

    #@8a
    .line 3951
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_a

    #@8c
    if-nez v15, :cond_1

    #@8e
    .line 3952
    :cond_a
    add-int/lit8 v17, p1, 0x1

    #@90
    .line 3956
    .local v17, "nextIndex":I
    move/from16 v0, p1

    #@92
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@95
    move-result v22

    #@96
    if-eqz v22, :cond_e

    #@98
    if-nez v11, :cond_b

    #@9a
    if-nez v14, :cond_e

    #@9c
    .line 3957
    move/from16 v0, v17

    #@9e
    if-lt v0, v10, :cond_e

    #@a0
    :cond_b
    if-nez v15, :cond_c

    #@a2
    .line 3958
    move/from16 v0, v17

    #@a4
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@a7
    move-result v22

    #@a8
    if-eqz v22, :cond_e

    #@aa
    if-nez v8, :cond_c

    #@ac
    if-nez v13, :cond_e

    #@ae
    .line 3959
    move/from16 v0, v17

    #@b0
    if-ge v0, v9, :cond_e

    #@b2
    .line 3960
    :cond_c
    const/16 v22, 0x1

    #@b4
    return v22

    #@b5
    .line 3950
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    const/4 v15, 0x0

    #@b6
    .restart local v15    # "isLastItem":Z
    goto :goto_6

    #@b7
    .line 3961
    .restart local v17    # "nextIndex":I
    :cond_e
    if-eqz v7, :cond_1

    #@b9
    .line 3962
    const/16 v22, 0x1

    #@bb
    return v22

    #@bc
    .line 3966
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_f
    if-eqz v6, :cond_12

    #@be
    const/16 v21, 0x1

    #@c0
    .line 3967
    .local v21, "start":I
    :goto_7
    move/from16 v0, p1

    #@c2
    move/from16 v1, v21

    #@c4
    if-ne v0, v1, :cond_13

    #@c6
    const/4 v12, 0x1

    #@c7
    .line 3968
    .local v12, "isFirstItem":Z
    :goto_8
    if-nez v12, :cond_1

    #@c9
    .line 3969
    add-int/lit8 v20, p1, -0x1

    #@cb
    .line 3973
    .local v20, "previousIndex":I
    move/from16 v0, p1

    #@cd
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@d0
    move-result v22

    #@d1
    if-eqz v22, :cond_14

    #@d3
    if-nez v11, :cond_10

    #@d5
    if-nez v14, :cond_14

    #@d7
    .line 3974
    move/from16 v0, v20

    #@d9
    if-lt v0, v10, :cond_14

    #@db
    :cond_10
    if-nez v12, :cond_11

    #@dd
    .line 3975
    move/from16 v0, v20

    #@df
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@e2
    move-result v22

    #@e3
    if-eqz v22, :cond_14

    #@e5
    if-nez v8, :cond_11

    #@e7
    if-nez v13, :cond_14

    #@e9
    .line 3976
    move/from16 v0, v20

    #@eb
    if-ge v0, v9, :cond_14

    #@ed
    .line 3977
    :cond_11
    const/16 v22, 0x1

    #@ef
    return v22

    #@f0
    .line 3966
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_12
    const/16 v21, 0x0

    #@f2
    goto :goto_7

    #@f3
    .line 3967
    .restart local v21    # "start":I
    :cond_13
    const/4 v12, 0x0

    #@f4
    goto :goto_8

    #@f5
    .line 3978
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_14
    if-eqz v7, :cond_1

    #@f7
    .line 3979
    const/16 v22, 0x1

    #@f9
    return v22
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 565
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 566
    .local v1, "childCount":I
    add-int/lit8 v5, v1, -0x1

    #@7
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@e
    move-result v0

    #@f
    .line 567
    .local v0, "bottomOfBottomChild":I
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@11
    add-int/2addr v5, v1

    #@12
    add-int/lit8 v2, v5, -0x1

    #@14
    .line 569
    .local v2, "lastVisiblePosition":I
    iget v5, p0, Landroid/widget/ListView;->mScrollY:I

    #@16
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@19
    move-result v6

    #@1a
    add-int/2addr v5, v6

    #@1b
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1d
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@1f
    sub-int v3, v5, v6

    #@21
    .line 571
    .local v3, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    #@23
    add-int/lit8 v5, v5, -0x1

    #@25
    if-lt v2, v5, :cond_0

    #@27
    .line 572
    if-ge v0, v3, :cond_1

    #@29
    .line 571
    :cond_0
    :goto_0
    return v4

    #@2a
    .line 572
    :cond_1
    const/4 v4, 0x0

    #@2b
    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 557
    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    #@4
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@6
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@8
    add-int v0, v3, v4

    #@a
    .line 558
    .local v0, "listTop":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@c
    if-gtz v3, :cond_0

    #@e
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@15
    move-result v3

    #@16
    if-le v3, v0, :cond_1

    #@18
    :cond_0
    :goto_0
    return v1

    #@19
    :cond_1
    move v1, v2

    #@1a
    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 402
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@5
    .line 401
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    #@0
    .prologue
    .line 366
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    #@5
    .line 367
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@7
    .line 368
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    #@9
    .line 369
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@b
    .line 370
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 371
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@12
    and-int/2addr v1, p3

    #@13
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@15
    .line 374
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 375
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1b
    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 376
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    #@21
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@23
    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@25
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@27
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    #@2a
    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2c
    .line 381
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 382
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@32
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@35
    .line 365
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 308
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@5
    .line 307
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    #@0
    .prologue
    .line 272
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    #@5
    .line 273
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@7
    .line 274
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    #@9
    .line 275
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@b
    .line 276
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 277
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@12
    and-int/2addr v1, p3

    #@13
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@15
    .line 280
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 281
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1b
    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 282
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    #@21
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@23
    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@25
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@27
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    #@2a
    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2c
    .line 287
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 288
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@32
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@35
    .line 271
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 3624
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@2
    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 3601
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@2
    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2557
    const/4 v1, 0x1

    #@2
    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    #@4
    .line 2558
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    #@7
    move-result v0

    #@8
    .line 2559
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    #@a
    .line 2560
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 2564
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    #@13
    .line 2562
    return v0

    #@14
    .line 2563
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    #@15
    .line 2564
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    #@17
    .line 2563
    throw v1
.end method

.method protected canAnimate()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2093
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 3338
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    #@4
    move/from16 v39, v0

    #@6
    if-eqz v39, :cond_0

    #@8
    .line 3339
    const/16 v39, 0x1

    #@a
    move/from16 v0, v39

    #@c
    move-object/from16 v1, p0

    #@e
    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    #@10
    .line 3343
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    #@14
    .line 3344
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@18
    move-object/from16 v33, v0

    #@1a
    .line 3345
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@1e
    move-object/from16 v32, v0

    #@20
    .line 3346
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_7

    #@22
    const/4 v13, 0x1

    #@23
    .line 3347
    .local v13, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_8

    #@25
    const/4 v12, 0x1

    #@26
    .line 3348
    .local v12, "drawOverscrollFooter":Z
    :goto_1
    if-lez v10, :cond_9

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2c
    move-object/from16 v39, v0

    #@2e
    if-eqz v39, :cond_9

    #@30
    const/4 v11, 0x1

    #@31
    .line 3350
    .local v11, "drawDividers":Z
    :goto_2
    if-nez v11, :cond_1

    #@33
    if-nez v13, :cond_1

    #@35
    if-eqz v12, :cond_16

    #@37
    .line 3352
    :cond_1
    move-object/from16 v0, p0

    #@39
    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3b
    .line 3353
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@3d
    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    #@3f
    move/from16 v39, v0

    #@41
    move/from16 v0, v39

    #@43
    iput v0, v7, Landroid/graphics/Rect;->left:I

    #@45
    .line 3354
    move-object/from16 v0, p0

    #@47
    iget v0, v0, Landroid/widget/ListView;->mRight:I

    #@49
    move/from16 v39, v0

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    #@4f
    move/from16 v40, v0

    #@51
    sub-int v39, v39, v40

    #@53
    move-object/from16 v0, p0

    #@55
    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    #@57
    move/from16 v40, v0

    #@59
    sub-int v39, v39, v40

    #@5b
    move/from16 v0, v39

    #@5d
    iput v0, v7, Landroid/graphics/Rect;->right:I

    #@5f
    .line 3356
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@62
    move-result v9

    #@63
    .line 3357
    .local v9, "count":I
    move-object/from16 v0, p0

    #@65
    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@67
    move-object/from16 v39, v0

    #@69
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v20

    #@6d
    .line 3358
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@71
    move/from16 v27, v0

    #@73
    .line 3359
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@77
    move-object/from16 v39, v0

    #@79
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    #@7c
    move-result v39

    #@7d
    sub-int v19, v27, v39

    #@7f
    .line 3360
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    #@81
    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@83
    move/from16 v21, v0

    #@85
    .line 3361
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    #@87
    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@89
    move/from16 v18, v0

    #@8b
    .line 3362
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    #@8d
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@8f
    move/from16 v17, v0

    #@91
    .line 3363
    .local v17, "first":I
    move-object/from16 v0, p0

    #@93
    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@95
    .line 3364
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    #@97
    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@99
    .line 3369
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    #@9c
    move-result v39

    #@9d
    if-eqz v39, :cond_2

    #@9f
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    #@a2
    move-result v39

    #@a3
    if-eqz v39, :cond_a

    #@a5
    :cond_2
    const/16 v16, 0x0

    #@a7
    .line 3371
    .local v16, "fillForMissingDividers":Z
    :goto_3
    if-eqz v16, :cond_3

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@ad
    move-object/from16 v39, v0

    #@af
    if-nez v39, :cond_3

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    #@b5
    move/from16 v39, v0

    #@b7
    if-eqz v39, :cond_3

    #@b9
    .line 3372
    new-instance v39, Landroid/graphics/Paint;

    #@bb
    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    #@be
    move-object/from16 v0, v39

    #@c0
    move-object/from16 v1, p0

    #@c2
    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@c4
    .line 3373
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@c8
    move-object/from16 v39, v0

    #@ca
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    #@cd
    move-result v40

    #@ce
    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    #@d1
    .line 3375
    :cond_3
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@d5
    move-object/from16 v34, v0

    #@d7
    .line 3377
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    #@d8
    .line 3378
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    #@d9
    .line 3379
    .local v14, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    #@db
    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    #@dd
    move/from16 v39, v0

    #@df
    and-int/lit8 v39, v39, 0x22

    #@e1
    const/16 v40, 0x22

    #@e3
    move/from16 v0, v39

    #@e5
    move/from16 v1, v40

    #@e7
    if-ne v0, v1, :cond_4

    #@e9
    .line 3380
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@ed
    move-object/from16 v39, v0

    #@ef
    move-object/from16 v0, v39

    #@f1
    iget v15, v0, Landroid/graphics/Rect;->top:I

    #@f3
    .line 3381
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@f7
    move-object/from16 v39, v0

    #@f9
    move-object/from16 v0, v39

    #@fb
    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    #@fd
    .line 3384
    :cond_4
    move-object/from16 v0, p0

    #@ff
    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    #@101
    move/from16 v39, v0

    #@103
    move-object/from16 v0, p0

    #@105
    iget v0, v0, Landroid/widget/ListView;->mTop:I

    #@107
    move/from16 v40, v0

    #@109
    sub-int v39, v39, v40

    #@10b
    sub-int v39, v39, v14

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    #@111
    move/from16 v40, v0

    #@113
    add-int v29, v39, v40

    #@115
    .line 3385
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    #@117
    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@119
    move/from16 v39, v0

    #@11b
    if-nez v39, :cond_17

    #@11d
    .line 3386
    const/4 v6, 0x0

    #@11e
    .line 3389
    .local v6, "bottom":I
    move-object/from16 v0, p0

    #@120
    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    #@122
    move/from16 v36, v0

    #@124
    .line 3390
    .local v36, "scrollY":I
    if-lez v9, :cond_5

    #@126
    if-gez v36, :cond_5

    #@128
    .line 3391
    if-eqz v13, :cond_b

    #@12a
    .line 3392
    const/16 v39, 0x0

    #@12c
    move/from16 v0, v39

    #@12e
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@130
    .line 3393
    move/from16 v0, v36

    #@132
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@134
    .line 3394
    move-object/from16 v0, p0

    #@136
    move-object/from16 v1, p1

    #@138
    move-object/from16 v2, v33

    #@13a
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@13d
    .line 3402
    :cond_5
    :goto_4
    const/16 v22, 0x0

    #@13f
    .local v22, "i":I
    :goto_5
    move/from16 v0, v22

    #@141
    if-ge v0, v9, :cond_15

    #@143
    .line 3403
    add-int v28, v17, v22

    #@145
    .line 3404
    .local v28, "itemIndex":I
    move/from16 v0, v28

    #@147
    move/from16 v1, v20

    #@149
    if-ge v0, v1, :cond_c

    #@14b
    const/16 v25, 0x1

    #@14d
    .line 3405
    .local v25, "isHeader":Z
    :goto_6
    move/from16 v0, v28

    #@14f
    move/from16 v1, v19

    #@151
    if-lt v0, v1, :cond_d

    #@153
    const/16 v24, 0x1

    #@155
    .line 3406
    .local v24, "isFooter":Z
    :goto_7
    if-nez v21, :cond_e

    #@157
    if-eqz v25, :cond_e

    #@159
    .line 3402
    :cond_6
    :goto_8
    add-int/lit8 v22, v22, 0x1

    #@15b
    goto :goto_5

    #@15c
    .line 3346
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v11    # "drawDividers":Z
    .end local v12    # "drawOverscrollFooter":Z
    .end local v13    # "drawOverscrollHeader":Z
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v27    # "itemCount":I
    .end local v28    # "itemIndex":I
    .end local v29    # "listBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_7
    const/4 v13, 0x0

    #@15d
    .restart local v13    # "drawOverscrollHeader":Z
    goto/16 :goto_0

    #@15f
    .line 3347
    :cond_8
    const/4 v12, 0x0

    #@160
    .restart local v12    # "drawOverscrollFooter":Z
    goto/16 :goto_1

    #@162
    .line 3348
    :cond_9
    const/4 v11, 0x0

    #@163
    goto/16 :goto_2

    #@165
    .line 3369
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v11    # "drawDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    :cond_a
    const/16 v16, 0x1

    #@167
    goto/16 :goto_3

    #@169
    .line 3395
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "scrollY":I
    :cond_b
    if-eqz v11, :cond_5

    #@16b
    .line 3396
    const/16 v39, 0x0

    #@16d
    move/from16 v0, v39

    #@16f
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@171
    .line 3397
    neg-int v0, v10

    #@172
    move/from16 v39, v0

    #@174
    move/from16 v0, v39

    #@176
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@178
    .line 3398
    const/16 v39, -0x1

    #@17a
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, p1

    #@17e
    move/from16 v2, v39

    #@180
    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    #@183
    goto :goto_4

    #@184
    .line 3404
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_c
    const/16 v25, 0x0

    #@186
    .restart local v25    # "isHeader":Z
    goto :goto_6

    #@187
    .line 3405
    :cond_d
    const/16 v24, 0x0

    #@189
    .restart local v24    # "isFooter":Z
    goto :goto_7

    #@18a
    .line 3406
    :cond_e
    if-nez v18, :cond_f

    #@18c
    if-nez v24, :cond_6

    #@18e
    .line 3407
    :cond_f
    move-object/from16 v0, p0

    #@190
    move/from16 v1, v22

    #@192
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@195
    move-result-object v8

    #@196
    .line 3408
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    #@199
    move-result v6

    #@19a
    .line 3409
    add-int/lit8 v39, v9, -0x1

    #@19c
    move/from16 v0, v22

    #@19e
    move/from16 v1, v39

    #@1a0
    if-ne v0, v1, :cond_13

    #@1a2
    const/16 v26, 0x1

    #@1a4
    .line 3411
    .local v26, "isLastItem":Z
    :goto_9
    if-eqz v11, :cond_6

    #@1a6
    move/from16 v0, v29

    #@1a8
    if-ge v6, v0, :cond_6

    #@1aa
    .line 3412
    if-eqz v12, :cond_10

    #@1ac
    if-nez v26, :cond_6

    #@1ae
    .line 3413
    :cond_10
    add-int/lit8 v30, v28, 0x1

    #@1b0
    .line 3417
    .local v30, "nextIndex":I
    move/from16 v0, v28

    #@1b2
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@1b5
    move-result v39

    #@1b6
    if-eqz v39, :cond_14

    #@1b8
    if-nez v21, :cond_11

    #@1ba
    if-nez v25, :cond_14

    #@1bc
    .line 3418
    move/from16 v0, v30

    #@1be
    move/from16 v1, v20

    #@1c0
    if-lt v0, v1, :cond_14

    #@1c2
    :cond_11
    if-nez v26, :cond_12

    #@1c4
    .line 3419
    move/from16 v0, v30

    #@1c6
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@1c9
    move-result v39

    #@1ca
    if-eqz v39, :cond_14

    #@1cc
    if-nez v18, :cond_12

    #@1ce
    if-nez v24, :cond_14

    #@1d0
    .line 3420
    move/from16 v0, v30

    #@1d2
    move/from16 v1, v19

    #@1d4
    if-ge v0, v1, :cond_14

    #@1d6
    .line 3421
    :cond_12
    iput v6, v7, Landroid/graphics/Rect;->top:I

    #@1d8
    .line 3422
    add-int v39, v6, v10

    #@1da
    move/from16 v0, v39

    #@1dc
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@1de
    .line 3423
    move-object/from16 v0, p0

    #@1e0
    move-object/from16 v1, p1

    #@1e2
    move/from16 v2, v22

    #@1e4
    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    #@1e7
    goto/16 :goto_8

    #@1e9
    .line 3409
    .end local v26    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_13
    const/16 v26, 0x0

    #@1eb
    .restart local v26    # "isLastItem":Z
    goto :goto_9

    #@1ec
    .line 3424
    .restart local v30    # "nextIndex":I
    :cond_14
    if-eqz v16, :cond_6

    #@1ee
    .line 3425
    iput v6, v7, Landroid/graphics/Rect;->top:I

    #@1f0
    .line 3426
    add-int v39, v6, v10

    #@1f2
    move/from16 v0, v39

    #@1f4
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@1f6
    .line 3427
    move-object/from16 v0, p1

    #@1f8
    move-object/from16 v1, v34

    #@1fa
    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@1fd
    goto/16 :goto_8

    #@1ff
    .line 3433
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_15
    move-object/from16 v0, p0

    #@201
    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    #@203
    move/from16 v39, v0

    #@205
    move-object/from16 v0, p0

    #@207
    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    #@209
    move/from16 v40, v0

    #@20b
    add-int v31, v39, v40

    #@20d
    .line 3434
    .local v31, "overFooterBottom":I
    if-eqz v12, :cond_16

    #@20f
    add-int v39, v17, v9

    #@211
    move/from16 v0, v39

    #@213
    move/from16 v1, v27

    #@215
    if-ne v0, v1, :cond_16

    #@217
    .line 3435
    move/from16 v0, v31

    #@219
    if-le v0, v6, :cond_16

    #@21b
    .line 3436
    iput v6, v7, Landroid/graphics/Rect;->top:I

    #@21d
    .line 3437
    move/from16 v0, v31

    #@21f
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@221
    .line 3438
    move-object/from16 v0, p0

    #@223
    move-object/from16 v1, p1

    #@225
    move-object/from16 v2, v32

    #@227
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@22a
    .line 3501
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v27    # "itemCount":I
    .end local v29    # "listBottom":I
    .end local v31    # "overFooterBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_16
    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@22d
    .line 3337
    return-void

    #@22e
    .line 3443
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_17
    move-object/from16 v0, p0

    #@230
    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    #@232
    move/from16 v36, v0

    #@234
    .line 3445
    .restart local v36    # "scrollY":I
    if-lez v9, :cond_18

    #@236
    if-eqz v13, :cond_18

    #@238
    .line 3446
    move/from16 v0, v36

    #@23a
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@23c
    .line 3447
    const/16 v39, 0x0

    #@23e
    move-object/from16 v0, p0

    #@240
    move/from16 v1, v39

    #@242
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@245
    move-result-object v39

    #@246
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    #@249
    move-result v39

    #@24a
    move/from16 v0, v39

    #@24c
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@24e
    .line 3448
    move-object/from16 v0, p0

    #@250
    move-object/from16 v1, p1

    #@252
    move-object/from16 v2, v33

    #@254
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@257
    .line 3451
    :cond_18
    if-eqz v13, :cond_1a

    #@259
    const/16 v37, 0x1

    #@25b
    .line 3452
    .local v37, "start":I
    :goto_b
    move/from16 v22, v37

    #@25d
    .restart local v22    # "i":I
    :goto_c
    move/from16 v0, v22

    #@25f
    if-ge v0, v9, :cond_23

    #@261
    .line 3453
    add-int v28, v17, v22

    #@263
    .line 3454
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    #@265
    move/from16 v1, v20

    #@267
    if-ge v0, v1, :cond_1b

    #@269
    const/16 v25, 0x1

    #@26b
    .line 3455
    .restart local v25    # "isHeader":Z
    :goto_d
    move/from16 v0, v28

    #@26d
    move/from16 v1, v19

    #@26f
    if-lt v0, v1, :cond_1c

    #@271
    const/16 v24, 0x1

    #@273
    .line 3456
    .restart local v24    # "isFooter":Z
    :goto_e
    if-nez v21, :cond_1d

    #@275
    if-eqz v25, :cond_1d

    #@277
    .line 3452
    :cond_19
    :goto_f
    add-int/lit8 v22, v22, 0x1

    #@279
    goto :goto_c

    #@27a
    .line 3451
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v37    # "start":I
    :cond_1a
    const/16 v37, 0x0

    #@27c
    goto :goto_b

    #@27d
    .line 3454
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    .restart local v37    # "start":I
    :cond_1b
    const/16 v25, 0x0

    #@27f
    .restart local v25    # "isHeader":Z
    goto :goto_d

    #@280
    .line 3455
    :cond_1c
    const/16 v24, 0x0

    #@282
    .restart local v24    # "isFooter":Z
    goto :goto_e

    #@283
    .line 3456
    :cond_1d
    if-nez v18, :cond_1e

    #@285
    if-nez v24, :cond_19

    #@287
    .line 3457
    :cond_1e
    move-object/from16 v0, p0

    #@289
    move/from16 v1, v22

    #@28b
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@28e
    move-result-object v8

    #@28f
    .line 3458
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@292
    move-result v38

    #@293
    .line 3459
    .local v38, "top":I
    if-eqz v11, :cond_19

    #@295
    move/from16 v0, v38

    #@297
    if-le v0, v15, :cond_19

    #@299
    .line 3460
    move/from16 v0, v22

    #@29b
    move/from16 v1, v37

    #@29d
    if-ne v0, v1, :cond_21

    #@29f
    const/16 v23, 0x1

    #@2a1
    .line 3461
    .local v23, "isFirstItem":Z
    :goto_10
    add-int/lit8 v35, v28, -0x1

    #@2a3
    .line 3465
    .local v35, "previousIndex":I
    move/from16 v0, v28

    #@2a5
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@2a8
    move-result v39

    #@2a9
    if-eqz v39, :cond_22

    #@2ab
    if-nez v21, :cond_1f

    #@2ad
    if-nez v25, :cond_22

    #@2af
    .line 3466
    move/from16 v0, v35

    #@2b1
    move/from16 v1, v20

    #@2b3
    if-lt v0, v1, :cond_22

    #@2b5
    :cond_1f
    if-nez v23, :cond_20

    #@2b7
    .line 3467
    move/from16 v0, v35

    #@2b9
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@2bc
    move-result v39

    #@2bd
    if-eqz v39, :cond_22

    #@2bf
    if-nez v18, :cond_20

    #@2c1
    if-nez v24, :cond_22

    #@2c3
    .line 3468
    move/from16 v0, v35

    #@2c5
    move/from16 v1, v19

    #@2c7
    if-ge v0, v1, :cond_22

    #@2c9
    .line 3469
    :cond_20
    sub-int v39, v38, v10

    #@2cb
    move/from16 v0, v39

    #@2cd
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@2cf
    .line 3470
    move/from16 v0, v38

    #@2d1
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@2d3
    .line 3475
    add-int/lit8 v39, v22, -0x1

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    move-object/from16 v1, p1

    #@2d9
    move/from16 v2, v39

    #@2db
    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    #@2de
    goto :goto_f

    #@2df
    .line 3460
    .end local v23    # "isFirstItem":Z
    .end local v35    # "previousIndex":I
    :cond_21
    const/16 v23, 0x0

    #@2e1
    .restart local v23    # "isFirstItem":Z
    goto :goto_10

    #@2e2
    .line 3476
    .restart local v35    # "previousIndex":I
    :cond_22
    if-eqz v16, :cond_19

    #@2e4
    .line 3477
    sub-int v39, v38, v10

    #@2e6
    move/from16 v0, v39

    #@2e8
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@2ea
    .line 3478
    move/from16 v0, v38

    #@2ec
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@2ee
    .line 3479
    move-object/from16 v0, p1

    #@2f0
    move-object/from16 v1, v34

    #@2f2
    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@2f5
    goto :goto_f

    #@2f6
    .line 3485
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v35    # "previousIndex":I
    .end local v38    # "top":I
    :cond_23
    if-lez v9, :cond_16

    #@2f8
    if-lez v36, :cond_16

    #@2fa
    .line 3486
    if-eqz v12, :cond_24

    #@2fc
    .line 3487
    move-object/from16 v0, p0

    #@2fe
    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    #@300
    .line 3488
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    #@302
    .line 3489
    add-int v39, v3, v36

    #@304
    move/from16 v0, v39

    #@306
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@308
    .line 3490
    move-object/from16 v0, p0

    #@30a
    move-object/from16 v1, p1

    #@30c
    move-object/from16 v2, v32

    #@30e
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@311
    goto/16 :goto_a

    #@313
    .line 3491
    .end local v3    # "absListBottom":I
    :cond_24
    if-eqz v11, :cond_16

    #@315
    .line 3492
    move/from16 v0, v29

    #@317
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@319
    .line 3493
    add-int v39, v29, v10

    #@31b
    move/from16 v0, v39

    #@31d
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@31f
    .line 3494
    const/16 v39, -0x1

    #@321
    move-object/from16 v0, p0

    #@323
    move-object/from16 v1, p1

    #@325
    move/from16 v2, v39

    #@327
    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    #@32a
    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2247
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v1

    #@4
    .line 2248
    .local v1, "handled":Z
    if-nez v1, :cond_0

    #@6
    .line 2250
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 2251
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 2254
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@19
    move-result v1

    #@1a
    .line 2257
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 3506
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@3
    move-result v0

    #@4
    .line 3507
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 3508
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    #@f
    .line 3510
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    #@0
    .prologue
    .line 3524
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    .line 3526
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@5
    .line 3527
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@8
    .line 3522
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3320
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    .line 3322
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    .line 3323
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@a
    .line 3325
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@c
    iget v3, p3, Landroid/graphics/Rect;->top:I

    #@e
    sub-int v1, v2, v3

    #@10
    .line 3326
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    #@12
    .line 3327
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr v2, v0

    #@15
    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    #@17
    .line 3330
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1a
    .line 3331
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 3333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@20
    .line 3319
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3303
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    .line 3305
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    .line 3306
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@a
    .line 3308
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@c
    iget v3, p3, Landroid/graphics/Rect;->top:I

    #@e
    sub-int v1, v2, v3

    #@10
    .line 3309
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    #@12
    .line 3310
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@14
    sub-int/2addr v2, v0

    #@15
    iput v2, p3, Landroid/graphics/Rect;->top:I

    #@17
    .line 3313
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1a
    .line 3314
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 3316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@20
    .line 3302
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 4049
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 4051
    const-string/jumbo v0, "recycleOnMeasure"

    #@6
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@d
    .line 4048
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .param p1, "down"    # Z

    #@0
    .prologue
    const/16 v6, 0x22

    #@2
    const/4 v5, 0x0

    #@3
    .line 660
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@6
    move-result v0

    #@7
    .line 661
    .local v0, "count":I
    if-eqz p1, :cond_2

    #@9
    .line 662
    const/4 v2, 0x0

    #@a
    .line 663
    .local v2, "paddingTop":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@c
    and-int/lit8 v4, v4, 0x22

    #@e
    if-ne v4, v6, :cond_0

    #@10
    .line 664
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    #@13
    move-result v2

    #@14
    .line 666
    :cond_0
    if-lez v0, :cond_1

    #@16
    add-int/lit8 v4, v0, -0x1

    #@18
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@1f
    move-result v4

    #@20
    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@22
    add-int v3, v4, v5

    #@24
    .line 668
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@26
    add-int/2addr v4, v0

    #@27
    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@2a
    .line 669
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@2d
    move-result v4

    #@2e
    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@31
    .line 659
    .end local v2    # "paddingTop":I
    :goto_1
    return-void

    #@32
    .line 667
    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_1
    move v3, v2

    #@33
    .restart local v3    # "startOffset":I
    goto :goto_0

    #@34
    .line 671
    .end local v2    # "paddingTop":I
    .end local v3    # "startOffset":I
    :cond_2
    const/4 v1, 0x0

    #@35
    .line 672
    .local v1, "paddingBottom":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@37
    and-int/lit8 v4, v4, 0x22

    #@39
    if-ne v4, v6, :cond_3

    #@3b
    .line 673
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    #@3e
    move-result v1

    #@3f
    .line 675
    :cond_3
    if-lez v0, :cond_4

    #@41
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@48
    move-result v4

    #@49
    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@4b
    sub-int v3, v4, v5

    #@4d
    .line 677
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@4f
    add-int/lit8 v4, v4, -0x1

    #@51
    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@54
    .line 678
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@57
    move-result v4

    #@58
    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    #@5b
    goto :goto_1

    #@5c
    .line 676
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@5f
    move-result v4

    #@60
    sub-int v3, v4, v1

    #@62
    .restart local v3    # "startOffset":I
    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    #@0
    .prologue
    .line 1366
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1367
    .local v0, "childCount":I
    if-lez v0, :cond_3

    #@6
    .line 1368
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@8
    if-nez v3, :cond_1

    #@a
    .line 1369
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@d
    .line 1370
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    .line 1371
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@14
    move-result v3

    #@15
    if-gt p1, v3, :cond_0

    #@17
    .line 1372
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@19
    add-int/2addr v3, v1

    #@1a
    return v3

    #@1b
    .line 1369
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1376
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@20
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@22
    .line 1377
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v2

    #@26
    .line 1378
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@29
    move-result v3

    #@2a
    if-lt p1, v3, :cond_2

    #@2c
    .line 1379
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@2e
    add-int/2addr v3, v1

    #@2f
    return v3

    #@30
    .line 1376
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@32
    goto :goto_1

    #@33
    .line 1384
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    #@34
    return v3
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v4, 0x0

    #@1
    .line 3857
    if-eqz p1, :cond_2

    #@3
    .line 3858
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 3861
    .local v1, "len":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@a
    .line 3862
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    .line 3864
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    #@14
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 3861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 3865
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    .line 3867
    if-eqz v2, :cond_0

    #@23
    .line 3868
    return-object v2

    #@24
    .line 3873
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v4
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .line 3835
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 3836
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    .line 3837
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3838
    if-eqz v0, :cond_0

    #@e
    .line 3839
    return-object v0

    #@f
    .line 3842
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 3843
    if-eqz v0, :cond_1

    #@17
    .line 3844
    return-object v0

    #@18
    .line 3847
    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 5
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    #@1
    .line 3762
    if-eqz p1, :cond_1

    #@3
    .line 3763
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 3766
    .local v1, "len":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 3767
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    .line 3769
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_0

    #@18
    .line 3770
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    .line 3772
    if-eqz v2, :cond_0

    #@1e
    .line 3773
    return-object v2

    #@1f
    .line 3766
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 3778
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 3743
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 3744
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    .line 3745
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3746
    if-eqz v0, :cond_0

    #@e
    .line 3747
    return-object v0

    #@f
    .line 3749
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 3750
    if-eqz v0, :cond_1

    #@17
    .line 3751
    return-object v0

    #@18
    .line 3754
    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    #@1
    .line 3808
    if-eqz p1, :cond_1

    #@3
    .line 3809
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 3812
    .local v1, "len":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 3813
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    .line 3815
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_0

    #@18
    .line 3816
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    .line 3818
    if-eqz v2, :cond_0

    #@1e
    .line 3819
    return-object v2

    #@1f
    .line 3812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 3824
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3788
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 3789
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    .line 3790
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3791
    if-eqz v0, :cond_0

    #@e
    .line 3792
    return-object v0

    #@f
    .line 3795
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 3796
    if-eqz v0, :cond_1

    #@17
    .line 3797
    return-object v0

    #@18
    .line 3800
    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2465
    const/4 v1, 0x0

    #@3
    .line 2466
    .local v1, "moved":Z
    const/16 v3, 0x21

    #@5
    if-ne p1, v3, :cond_3

    #@7
    .line 2467
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 2468
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@d
    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    #@10
    move-result v2

    #@11
    .line 2469
    .local v2, "position":I
    if-ltz v2, :cond_0

    #@13
    .line 2470
    iput v5, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@15
    .line 2471
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    #@18
    .line 2472
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@1b
    .line 2474
    :cond_0
    const/4 v1, 0x1

    #@1c
    .line 2490
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    #@1e
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_5

    #@24
    .line 2495
    :cond_2
    :goto_1
    return v1

    #@25
    .line 2476
    :cond_3
    const/16 v3, 0x82

    #@27
    if-ne p1, v3, :cond_1

    #@29
    .line 2477
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    #@2b
    add-int/lit8 v0, v3, -0x1

    #@2d
    .line 2478
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@2f
    if-ge v3, v0, :cond_1

    #@31
    .line 2480
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@33
    .line 2479
    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    #@36
    move-result v2

    #@37
    .line 2481
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    #@39
    .line 2482
    const/4 v3, 0x3

    #@3a
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@3c
    .line 2483
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    #@3f
    .line 2484
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@42
    .line 2486
    :cond_4
    const/4 v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2491
    .end local v0    # "lastItem":I
    .end local v2    # "position":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@47
    .line 2492
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@4a
    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 3991
    const-class v0, Landroid/widget/ListView;

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
    .line 442
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 3888
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    if-eqz v8, :cond_0

    #@5
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@7
    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 3889
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    #@10
    move-result-object v8

    #@11
    return-object v8

    #@12
    .line 3894
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    #@14
    if-eqz v8, :cond_3

    #@16
    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@18
    if-eqz v8, :cond_3

    #@1a
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1c
    if-eqz v8, :cond_3

    #@1e
    .line 3895
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@20
    .line 3896
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    #@23
    move-result v3

    #@24
    .line 3897
    .local v3, "count":I
    new-array v5, v3, [J

    #@26
    .line 3898
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@28
    .line 3900
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    #@29
    .line 3901
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    #@2a
    .local v4, "i":I
    move v2, v1

    #@2b
    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_0
    if-ge v4, v3, :cond_1

    #@2d
    .line 3902
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@30
    move-result v8

    #@31
    if-eqz v8, :cond_4

    #@33
    .line 3903
    add-int/lit8 v1, v2, 0x1

    #@35
    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@38
    move-result v8

    #@39
    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@3c
    move-result-wide v8

    #@3d
    aput-wide v8, v5, v2

    #@3f
    .line 3901
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@41
    move v2, v1

    #@42
    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_0

    #@43
    .line 3909
    :cond_1
    if-ne v2, v3, :cond_2

    #@45
    .line 3910
    return-object v5

    #@46
    .line 3912
    :cond_2
    new-array v6, v2, [J

    #@48
    .line 3913
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@4b
    .line 3915
    return-object v6

    #@4c
    .line 3918
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    #@4e
    return-object v8

    #@4f
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    #@50
    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_1
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 3538
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    #@0
    .prologue
    .line 3566
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@2
    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 3923
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    #@3
    move-result v0

    #@4
    .line 3924
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3925
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@c
    add-int/2addr v1, v0

    #@d
    return v1

    #@e
    .line 3927
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    #@0
    .prologue
    .line 3265
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@2
    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    #@0
    .prologue
    .line 205
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    #@2
    iget v1, p0, Landroid/widget/ListView;->mTop:I

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-float v0, v0

    #@6
    const v1, 0x3ea8f5c3    # 0.33f

    #@9
    mul-float/2addr v0, v1

    #@a
    float-to-int v0, v0

    #@b
    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 3663
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 3644
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3270
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    #@7
    if-eqz v5, :cond_0

    #@9
    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 3271
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    #@10
    move-result v5

    #@11
    .line 3270
    if-nez v5, :cond_2

    #@13
    .line 3271
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    #@16
    move-result v4

    #@17
    .line 3272
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_7

    #@19
    .line 3274
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1b
    if-eqz v5, :cond_3

    #@1d
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1f
    iget v3, v5, Landroid/graphics/Rect;->top:I

    #@21
    .line 3275
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    .line 3276
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@2a
    move-result v5

    #@2b
    if-le v5, v3, :cond_4

    #@2d
    .line 3277
    :cond_1
    return v7

    #@2e
    .line 3270
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_2
    const/4 v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 3274
    .restart local v4    # "retValue":Z
    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    #@32
    .restart local v3    # "listTop":I
    goto :goto_1

    #@33
    .line 3279
    .restart local v0    # "first":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@36
    move-result v6

    #@37
    .line 3280
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@39
    if-eqz v5, :cond_6

    #@3b
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3d
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3f
    .line 3279
    :goto_2
    sub-int v2, v6, v5

    #@41
    .line 3281
    .local v2, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@44
    move-result v5

    #@45
    add-int/lit8 v5, v5, -0x1

    #@47
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@4a
    move-result-object v1

    #@4b
    .line 3282
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_5

    #@4d
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@50
    move-result v5

    #@51
    if-ge v5, v2, :cond_7

    #@53
    .line 3283
    :cond_5
    return v7

    #@54
    .line 3280
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_6
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    #@56
    goto :goto_2

    #@57
    .line 3286
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    :cond_7
    return v4
.end method

.method protected layoutChildren()V
    .locals 42

    #@0
    .prologue
    .line 1543
    move-object/from16 v0, p0

    #@2
    iget-boolean v13, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@4
    .line 1544
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_0

    #@6
    .line 1545
    return-void

    #@7
    .line 1548
    :cond_0
    const/4 v4, 0x1

    #@8
    move-object/from16 v0, p0

    #@a
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@c
    .line 1551
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@f
    .line 1553
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    #@12
    .line 1555
    move-object/from16 v0, p0

    #@14
    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    if-nez v4, :cond_3

    #@18
    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    #@1b
    .line 1557
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1878
    move-object/from16 v0, p0

    #@20
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 1879
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@28
    invoke-virtual {v4}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    #@2b
    .line 1881
    :cond_1
    if-nez v13, :cond_2

    #@2d
    .line 1882
    const/4 v4, 0x0

    #@2e
    move-object/from16 v0, p0

    #@30
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@32
    .line 1558
    :cond_2
    return-void

    #@33
    .line 1561
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@35
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@37
    iget v8, v4, Landroid/graphics/Rect;->top:I

    #@39
    .line 1562
    .local v8, "childrenTop":I
    move-object/from16 v0, p0

    #@3b
    iget v4, v0, Landroid/widget/ListView;->mBottom:I

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget v0, v0, Landroid/widget/ListView;->mTop:I

    #@41
    move/from16 v39, v0

    #@43
    sub-int v4, v4, v39

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@49
    move-object/from16 v39, v0

    #@4b
    move-object/from16 v0, v39

    #@4d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4f
    move/from16 v39, v0

    #@51
    sub-int v9, v4, v39

    #@53
    .line 1563
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@56
    move-result v15

    #@57
    .line 1565
    .local v15, "childCount":I
    const/16 v28, 0x0

    #@59
    .line 1566
    .local v28, "index":I
    const/4 v7, 0x0

    #@5a
    .line 1569
    .local v7, "delta":I
    const/4 v5, 0x0

    #@5b
    .line 1570
    .local v5, "oldSel":Landroid/view/View;
    const/16 v30, 0x0

    #@5d
    .line 1571
    .local v30, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    #@5e
    .line 1574
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    #@60
    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    #@62
    packed-switch v4, :pswitch_data_0

    #@65
    .line 1589
    move-object/from16 v0, p0

    #@67
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@69
    move-object/from16 v0, p0

    #@6b
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@6d
    move/from16 v39, v0

    #@6f
    sub-int v28, v4, v39

    #@71
    .line 1590
    if-ltz v28, :cond_4

    #@73
    move/from16 v0, v28

    #@75
    if-ge v0, v15, :cond_4

    #@77
    .line 1591
    move-object/from16 v0, p0

    #@79
    move/from16 v1, v28

    #@7b
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@7e
    move-result-object v5

    #@7f
    .line 1595
    .end local v5    # "oldSel":Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@85
    move-result-object v30

    #@86
    .line 1597
    .local v30, "oldFirst":Landroid/view/View;
    move-object/from16 v0, p0

    #@88
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@8a
    if-ltz v4, :cond_5

    #@8c
    .line 1598
    move-object/from16 v0, p0

    #@8e
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@90
    move-object/from16 v0, p0

    #@92
    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@94
    move/from16 v39, v0

    #@96
    sub-int v7, v4, v39

    #@98
    .line 1602
    :cond_5
    add-int v4, v28, v7

    #@9a
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@9f
    move-result-object v6

    #@a0
    .line 1606
    .end local v6    # "newSel":Landroid/view/View;
    .end local v30    # "oldFirst":Landroid/view/View;
    :cond_6
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@a2
    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    #@a4
    move/from16 v16, v0

    #@a6
    .line 1607
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_7

    #@a8
    .line 1608
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    #@ab
    .line 1613
    :cond_7
    move-object/from16 v0, p0

    #@ad
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@af
    if-nez v4, :cond_a

    #@b1
    .line 1614
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    #@b4
    .line 1615
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b7
    .line 1878
    move-object/from16 v0, p0

    #@b9
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@bb
    if-eqz v4, :cond_8

    #@bd
    .line 1879
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@c1
    invoke-virtual {v4}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    #@c4
    .line 1881
    :cond_8
    if-nez v13, :cond_9

    #@c6
    .line 1882
    const/4 v4, 0x0

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@cb
    .line 1616
    :cond_9
    return-void

    #@cc
    .line 1576
    .end local v16    # "dataChanged":Z
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .local v30, "oldFirst":Landroid/view/View;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    #@ce
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@d4
    move/from16 v39, v0

    #@d6
    sub-int v28, v4, v39

    #@d8
    .line 1577
    if-ltz v28, :cond_6

    #@da
    move/from16 v0, v28

    #@dc
    if-ge v0, v15, :cond_6

    #@de
    .line 1578
    move-object/from16 v0, p0

    #@e0
    move/from16 v1, v28

    #@e2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@e5
    move-result-object v6

    #@e6
    .local v6, "newSel":Landroid/view/View;
    goto :goto_0

    #@e7
    .line 1617
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v30    # "oldFirst":Landroid/view/View;
    .restart local v16    # "dataChanged":Z
    :cond_a
    move-object/from16 v0, p0

    #@e9
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@ef
    move-object/from16 v39, v0

    #@f1
    invoke-interface/range {v39 .. v39}, Landroid/widget/ListAdapter;->getCount()I

    #@f4
    move-result v39

    #@f5
    move/from16 v0, v39

    #@f7
    if-eq v4, v0, :cond_d

    #@f9
    .line 1618
    new-instance v4, Ljava/lang/IllegalStateException;

    #@fb
    new-instance v39, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v40, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    #@103
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v39

    #@107
    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    #@10a
    move-result v40

    #@10b
    .line 1618
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v39

    #@10f
    .line 1622
    const-string/jumbo v40, ", "

    #@112
    .line 1618
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v39

    #@116
    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getClass()Ljava/lang/Class;

    #@119
    move-result-object v40

    #@11a
    .line 1618
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v39

    #@11e
    .line 1623
    const-string/jumbo v40, ") with Adapter("

    #@121
    .line 1618
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v39

    #@125
    .line 1623
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@129
    move-object/from16 v40, v0

    #@12b
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@12e
    move-result-object v40

    #@12f
    .line 1618
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v39

    #@133
    .line 1623
    const-string/jumbo v40, ")]"

    #@136
    .line 1618
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v39

    #@13a
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v39

    #@13e
    move-object/from16 v0, v39

    #@140
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@143
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@144
    .line 1877
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v28    # "index":I
    :catchall_0
    move-exception v4

    #@145
    .line 1878
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@149
    move-object/from16 v39, v0

    #@14b
    if-eqz v39, :cond_b

    #@14d
    .line 1879
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@151
    move-object/from16 v39, v0

    #@153
    invoke-virtual/range {v39 .. v39}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    #@156
    .line 1881
    :cond_b
    if-nez v13, :cond_c

    #@158
    .line 1882
    const/16 v39, 0x0

    #@15a
    move/from16 v0, v39

    #@15c
    move-object/from16 v1, p0

    #@15e
    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@160
    .line 1877
    :cond_c
    throw v4

    #@161
    .line 1626
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v28    # "index":I
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    #@163
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@165
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@16a
    .line 1628
    const/4 v10, 0x0

    #@16b
    .line 1629
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    #@16c
    .line 1630
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    #@16d
    .line 1635
    .local v12, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@170
    move-result-object v37

    #@171
    .line 1636
    .local v37, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v37, :cond_10

    #@173
    .line 1637
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@176
    move-result-object v19

    #@177
    .line 1638
    .local v19, "focusHost":Landroid/view/View;
    if-eqz v19, :cond_10

    #@179
    .line 1639
    move-object/from16 v0, p0

    #@17b
    move-object/from16 v1, v19

    #@17d
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    #@180
    move-result-object v18

    #@181
    .line 1640
    .local v18, "focusChild":Landroid/view/View;
    if-eqz v18, :cond_10

    #@183
    .line 1641
    if-eqz v16, :cond_e

    #@185
    move-object/from16 v0, p0

    #@187
    move-object/from16 v1, v18

    #@189
    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    #@18c
    move-result v4

    #@18d
    if-nez v4, :cond_e

    #@18f
    .line 1642
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    #@192
    move-result v4

    #@193
    .line 1641
    if-nez v4, :cond_e

    #@195
    .line 1642
    move-object/from16 v0, p0

    #@197
    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    #@199
    .line 1641
    if-eqz v4, :cond_f

    #@19b
    .line 1645
    :cond_e
    move-object/from16 v11, v19

    #@19d
    .line 1646
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1a0
    move-result-object v10

    #@1a1
    .line 1652
    .end local v10    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    #@1a3
    move-object/from16 v1, v18

    #@1a5
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    #@1a8
    move-result v12

    #@1a9
    .line 1657
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_10
    const/16 v20, 0x0

    #@1ab
    .line 1658
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v21, 0x0

    #@1ad
    .line 1663
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@1b0
    move-result-object v25

    #@1b1
    .line 1664
    .local v25, "focusedChild":Landroid/view/View;
    if-eqz v25, :cond_13

    #@1b3
    .line 1670
    if-eqz v16, :cond_11

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, v25

    #@1b9
    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    #@1bc
    move-result v4

    #@1bd
    if-nez v4, :cond_11

    #@1bf
    .line 1671
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasTransientState()Z

    #@1c2
    move-result v4

    #@1c3
    .line 1670
    if-nez v4, :cond_11

    #@1c5
    .line 1671
    move-object/from16 v0, p0

    #@1c7
    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    #@1c9
    .line 1670
    if-eqz v4, :cond_12

    #@1cb
    .line 1672
    :cond_11
    move-object/from16 v20, v25

    #@1cd
    .line 1674
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    #@1d0
    move-result-object v21

    #@1d1
    .line 1675
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v21, :cond_12

    #@1d3
    .line 1677
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@1d6
    .line 1680
    .end local v20    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v21    # "focusLayoutRestoreView":Landroid/view/View;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    #@1d9
    .line 1685
    :cond_13
    move-object/from16 v0, p0

    #@1db
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@1dd
    move/from16 v17, v0

    #@1df
    .line 1686
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@1e3
    move-object/from16 v33, v0

    #@1e5
    .line 1687
    .local v33, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v16, :cond_14

    #@1e7
    .line 1688
    const/16 v26, 0x0

    #@1e9
    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    #@1eb
    if-ge v0, v15, :cond_15

    #@1ed
    .line 1689
    move-object/from16 v0, p0

    #@1ef
    move/from16 v1, v26

    #@1f1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1f4
    move-result-object v4

    #@1f5
    add-int v39, v17, v26

    #@1f7
    move-object/from16 v0, v33

    #@1f9
    move/from16 v1, v39

    #@1fb
    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@1fe
    .line 1688
    add-int/lit8 v26, v26, 0x1

    #@200
    goto :goto_1

    #@201
    .line 1692
    .end local v26    # "i":I
    :cond_14
    move-object/from16 v0, v33

    #@203
    move/from16 v1, v17

    #@205
    invoke-virtual {v0, v15, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    #@208
    .line 1696
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    #@20b
    .line 1697
    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    #@20e
    .line 1699
    move-object/from16 v0, p0

    #@210
    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    #@212
    packed-switch v4, :pswitch_data_1

    #@215
    .line 1740
    if-nez v15, :cond_21

    #@217
    .line 1741
    move-object/from16 v0, p0

    #@219
    iget-boolean v4, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@21b
    if-nez v4, :cond_20

    #@21d
    .line 1742
    const/4 v4, 0x0

    #@21e
    const/16 v39, 0x1

    #@220
    move-object/from16 v0, p0

    #@222
    move/from16 v1, v39

    #@224
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@227
    move-result v31

    #@228
    .line 1743
    .local v31, "position":I
    move-object/from16 v0, p0

    #@22a
    move/from16 v1, v31

    #@22c
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@22f
    .line 1744
    move-object/from16 v0, p0

    #@231
    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    #@234
    move-result-object v35

    #@235
    .line 1765
    .end local v8    # "childrenTop":I
    .end local v31    # "position":I
    .local v35, "sel":Landroid/view/View;
    :cond_16
    :goto_2
    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    #@238
    .line 1768
    move-object/from16 v0, p0

    #@23a
    iget-object v4, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@23c
    move-object/from16 v0, p0

    #@23e
    invoke-direct {v0, v4}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    #@241
    .line 1769
    move-object/from16 v0, p0

    #@243
    iget-object v4, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@245
    move-object/from16 v0, p0

    #@247
    invoke-direct {v0, v4}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    #@24a
    .line 1771
    if-eqz v35, :cond_2b

    #@24c
    .line 1774
    move-object/from16 v0, p0

    #@24e
    iget-boolean v4, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@250
    if-eqz v4, :cond_17

    #@252
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    #@255
    move-result v4

    #@256
    if-eqz v4, :cond_17

    #@258
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocus()Z

    #@25b
    move-result v4

    #@25c
    if-eqz v4, :cond_26

    #@25e
    .line 1792
    :cond_17
    const/4 v4, -0x1

    #@25f
    move-object/from16 v0, p0

    #@261
    move-object/from16 v1, v35

    #@263
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@266
    .line 1794
    :goto_3
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    #@269
    move-result v4

    #@26a
    move-object/from16 v0, p0

    #@26c
    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    #@26e
    .line 1826
    :cond_18
    :goto_4
    if-eqz v37, :cond_19

    #@270
    .line 1827
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@273
    move-result-object v29

    #@274
    .line 1828
    .local v29, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v29, :cond_19

    #@276
    .line 1829
    if-eqz v11, :cond_32

    #@278
    .line 1830
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    #@27b
    move-result v4

    #@27c
    .line 1829
    if-eqz v4, :cond_32

    #@27e
    .line 1832
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@281
    move-result-object v32

    #@282
    .line 1833
    .local v32, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_31

    #@284
    if-eqz v32, :cond_31

    #@286
    .line 1835
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@289
    move-result-wide v40

    #@28a
    .line 1834
    invoke-static/range {v40 .. v41}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@28d
    move-result v38

    #@28e
    .line 1837
    .local v38, "virtualViewId":I
    const/16 v4, 0x40

    #@290
    const/16 v39, 0x0

    #@292
    .line 1836
    move-object/from16 v0, v32

    #@294
    move/from16 v1, v38

    #@296
    move-object/from16 v2, v39

    #@298
    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@29b
    .line 1856
    .end local v29    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v32    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v38    # "virtualViewId":I
    :cond_19
    :goto_5
    if-eqz v21, :cond_1a

    #@29d
    .line 1857
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@2a0
    move-result-object v4

    #@2a1
    if-eqz v4, :cond_1a

    #@2a3
    .line 1858
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@2a6
    .line 1861
    :cond_1a
    const/4 v4, 0x0

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iput v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    #@2ab
    .line 1862
    const/4 v4, 0x0

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    iput-boolean v4, v0, Landroid/widget/ListView;->mDataChanged:Z

    #@2b0
    .line 1863
    move-object/from16 v0, p0

    #@2b2
    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@2b4
    if-eqz v4, :cond_1b

    #@2b6
    .line 1864
    move-object/from16 v0, p0

    #@2b8
    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    #@2bf
    .line 1865
    const/4 v4, 0x0

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iput-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@2c4
    .line 1867
    :cond_1b
    const/4 v4, 0x0

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    iput-boolean v4, v0, Landroid/widget/ListView;->mNeedSync:Z

    #@2c9
    .line 1868
    move-object/from16 v0, p0

    #@2cb
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@2d2
    .line 1870
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    #@2d5
    .line 1872
    move-object/from16 v0, p0

    #@2d7
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@2d9
    if-lez v4, :cond_1c

    #@2db
    .line 1873
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@2de
    .line 1876
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e1
    .line 1878
    move-object/from16 v0, p0

    #@2e3
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@2e5
    if-eqz v4, :cond_1d

    #@2e7
    .line 1879
    move-object/from16 v0, p0

    #@2e9
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@2eb
    invoke-virtual {v4}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    #@2ee
    .line 1881
    :cond_1d
    if-nez v13, :cond_1e

    #@2f0
    .line 1882
    const/4 v4, 0x0

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@2f5
    .line 1542
    :cond_1e
    return-void

    #@2f6
    .line 1701
    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :pswitch_2
    if-eqz v6, :cond_1f

    #@2f8
    .line 1702
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@2fb
    move-result v4

    #@2fc
    move-object/from16 v0, p0

    #@2fe
    invoke-direct {v0, v4, v8, v9}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    #@301
    move-result-object v35

    #@302
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@304
    .line 1704
    .end local v35    # "sel":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    #@306
    invoke-direct {v0, v8, v9}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    #@309
    move-result-object v35

    #@30a
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@30c
    .line 1708
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    #@30e
    iget v4, v0, Landroid/widget/ListView;->mSyncPosition:I

    #@310
    move-object/from16 v0, p0

    #@312
    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    #@314
    move/from16 v39, v0

    #@316
    move-object/from16 v0, p0

    #@318
    move/from16 v1, v39

    #@31a
    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@31d
    move-result-object v35

    #@31e
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@320
    .line 1711
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    #@322
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@324
    add-int/lit8 v4, v4, -0x1

    #@326
    move-object/from16 v0, p0

    #@328
    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@32b
    move-result-object v35

    #@32c
    .line 1712
    .restart local v35    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@32f
    goto/16 :goto_2

    #@331
    .line 1715
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    #@332
    move-object/from16 v0, p0

    #@334
    iput v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@336
    .line 1716
    move-object/from16 v0, p0

    #@338
    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    #@33b
    move-result-object v35

    #@33c
    .line 1717
    .restart local v35    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@33f
    goto/16 :goto_2

    #@341
    .line 1720
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    #@344
    move-result v36

    #@345
    .line 1721
    .local v36, "selectedPosition":I
    move-object/from16 v0, p0

    #@347
    iget v4, v0, Landroid/widget/ListView;->mSpecificTop:I

    #@349
    move-object/from16 v0, p0

    #@34b
    move/from16 v1, v36

    #@34d
    invoke-direct {v0, v1, v4}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@350
    move-result-object v35

    #@351
    .line 1728
    .restart local v35    # "sel":Landroid/view/View;
    if-nez v35, :cond_16

    #@353
    move-object/from16 v0, p0

    #@355
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@357
    if-eqz v4, :cond_16

    #@359
    .line 1729
    move-object/from16 v0, p0

    #@35b
    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@35d
    move/from16 v0, v36

    #@35f
    invoke-virtual {v4, v0}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    #@362
    move-result-object v22

    #@363
    .line 1731
    .local v22, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v22, :cond_16

    #@365
    .line 1732
    move-object/from16 v0, p0

    #@367
    move-object/from16 v1, v22

    #@369
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    #@36c
    goto/16 :goto_2

    #@36e
    .end local v22    # "focusRunnable":Ljava/lang/Runnable;
    .end local v35    # "sel":Landroid/view/View;
    .end local v36    # "selectedPosition":I
    :pswitch_7
    move-object/from16 v4, p0

    #@370
    .line 1737
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    #@373
    move-result-object v35

    #@374
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@376
    .line 1746
    .end local v35    # "sel":Landroid/view/View;
    :cond_20
    move-object/from16 v0, p0

    #@378
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@37a
    add-int/lit8 v4, v4, -0x1

    #@37c
    const/16 v39, 0x0

    #@37e
    move-object/from16 v0, p0

    #@380
    move/from16 v1, v39

    #@382
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@385
    move-result v31

    #@386
    .line 1747
    .restart local v31    # "position":I
    move-object/from16 v0, p0

    #@388
    move/from16 v1, v31

    #@38a
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@38d
    .line 1748
    move-object/from16 v0, p0

    #@38f
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@391
    add-int/lit8 v4, v4, -0x1

    #@393
    move-object/from16 v0, p0

    #@395
    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@398
    move-result-object v35

    #@399
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@39b
    .line 1751
    .end local v31    # "position":I
    .end local v35    # "sel":Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    #@39d
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@39f
    if-ltz v4, :cond_23

    #@3a1
    move-object/from16 v0, p0

    #@3a3
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@3a9
    move/from16 v39, v0

    #@3ab
    move/from16 v0, v39

    #@3ad
    if-ge v4, v0, :cond_23

    #@3af
    .line 1752
    move-object/from16 v0, p0

    #@3b1
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@3b3
    .line 1753
    if-nez v5, :cond_22

    #@3b5
    .line 1752
    .end local v8    # "childrenTop":I
    :goto_6
    move-object/from16 v0, p0

    #@3b7
    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@3ba
    move-result-object v35

    #@3bb
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@3bd
    .line 1753
    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@3c0
    move-result v8

    #@3c1
    goto :goto_6

    #@3c2
    .line 1754
    :cond_23
    move-object/from16 v0, p0

    #@3c4
    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@3ca
    move/from16 v39, v0

    #@3cc
    move/from16 v0, v39

    #@3ce
    if-ge v4, v0, :cond_25

    #@3d0
    .line 1755
    move-object/from16 v0, p0

    #@3d2
    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@3d4
    .line 1756
    if-nez v30, :cond_24

    #@3d6
    .line 1755
    .end local v8    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    #@3d8
    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@3db
    move-result-object v35

    #@3dc
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@3de
    .line 1756
    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_24
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    #@3e1
    move-result v8

    #@3e2
    goto :goto_7

    #@3e3
    .line 1758
    :cond_25
    const/4 v4, 0x0

    #@3e4
    move-object/from16 v0, p0

    #@3e6
    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@3e9
    move-result-object v35

    #@3ea
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@3ec
    .line 1775
    .end local v8    # "childrenTop":I
    :cond_26
    move-object/from16 v0, v35

    #@3ee
    move-object/from16 v1, v20

    #@3f0
    if-ne v0, v1, :cond_27

    #@3f2
    .line 1776
    if-eqz v21, :cond_27

    #@3f4
    .line 1777
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    #@3f7
    move-result v4

    #@3f8
    .line 1775
    if-nez v4, :cond_29

    #@3fa
    .line 1777
    :cond_27
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestFocus()Z

    #@3fd
    move-result v23

    #@3fe
    .line 1778
    .local v23, "focusWasTaken":Z
    :goto_8
    if-nez v23, :cond_2a

    #@400
    .line 1782
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@403
    move-result-object v24

    #@404
    .line 1783
    .local v24, "focused":Landroid/view/View;
    if-eqz v24, :cond_28

    #@406
    .line 1784
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->clearFocus()V

    #@409
    .line 1786
    :cond_28
    const/4 v4, -0x1

    #@40a
    move-object/from16 v0, p0

    #@40c
    move-object/from16 v1, v35

    #@40e
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@411
    goto/16 :goto_3

    #@413
    .line 1775
    .end local v23    # "focusWasTaken":Z
    .end local v24    # "focused":Landroid/view/View;
    :cond_29
    const/16 v23, 0x1

    #@415
    goto :goto_8

    #@416
    .line 1788
    .restart local v23    # "focusWasTaken":Z
    :cond_2a
    const/4 v4, 0x0

    #@417
    move-object/from16 v0, v35

    #@419
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    #@41c
    .line 1789
    move-object/from16 v0, p0

    #@41e
    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    #@420
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    #@423
    goto/16 :goto_3

    #@425
    .line 1796
    .end local v23    # "focusWasTaken":Z
    :cond_2b
    move-object/from16 v0, p0

    #@427
    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    #@429
    const/16 v39, 0x1

    #@42b
    move/from16 v0, v39

    #@42d
    if-eq v4, v0, :cond_2d

    #@42f
    .line 1797
    move-object/from16 v0, p0

    #@431
    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    #@433
    const/16 v39, 0x2

    #@435
    move/from16 v0, v39

    #@437
    if-ne v4, v0, :cond_2e

    #@439
    const/16 v27, 0x1

    #@43b
    .line 1798
    .local v27, "inTouchMode":Z
    :goto_9
    if-eqz v27, :cond_2f

    #@43d
    .line 1800
    move-object/from16 v0, p0

    #@43f
    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    #@441
    move-object/from16 v0, p0

    #@443
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@445
    move/from16 v39, v0

    #@447
    sub-int v4, v4, v39

    #@449
    move-object/from16 v0, p0

    #@44b
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@44e
    move-result-object v14

    #@44f
    .line 1801
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_2c

    #@451
    .line 1802
    move-object/from16 v0, p0

    #@453
    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    #@455
    move-object/from16 v0, p0

    #@457
    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@45a
    .line 1820
    .end local v14    # "child":Landroid/view/View;
    :cond_2c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    #@45d
    move-result v4

    #@45e
    if-eqz v4, :cond_18

    #@460
    if-eqz v21, :cond_18

    #@462
    .line 1821
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    #@465
    goto/16 :goto_4

    #@467
    .line 1796
    .end local v27    # "inTouchMode":Z
    :cond_2d
    const/16 v27, 0x1

    #@469
    goto :goto_9

    #@46a
    .line 1797
    :cond_2e
    const/16 v27, 0x0

    #@46c
    goto :goto_9

    #@46d
    .line 1804
    .restart local v27    # "inTouchMode":Z
    :cond_2f
    move-object/from16 v0, p0

    #@46f
    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    #@471
    const/16 v39, -0x1

    #@473
    move/from16 v0, v39

    #@475
    if-eq v4, v0, :cond_30

    #@477
    .line 1808
    move-object/from16 v0, p0

    #@479
    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    #@47b
    move-object/from16 v0, p0

    #@47d
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@47f
    move/from16 v39, v0

    #@481
    sub-int v4, v4, v39

    #@483
    move-object/from16 v0, p0

    #@485
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@488
    move-result-object v14

    #@489
    .line 1809
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_2c

    #@48b
    .line 1810
    move-object/from16 v0, p0

    #@48d
    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    #@48f
    move-object/from16 v0, p0

    #@491
    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@494
    goto :goto_a

    #@495
    .line 1814
    .end local v14    # "child":Landroid/view/View;
    :cond_30
    const/4 v4, 0x0

    #@496
    move-object/from16 v0, p0

    #@498
    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    #@49a
    .line 1815
    move-object/from16 v0, p0

    #@49c
    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    #@49e
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    #@4a1
    goto :goto_a

    #@4a2
    .line 1839
    .end local v27    # "inTouchMode":Z
    .restart local v29    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v32    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_31
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    #@4a5
    goto/16 :goto_5

    #@4a7
    .line 1841
    .end local v32    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_32
    const/4 v4, -0x1

    #@4a8
    if-eq v12, v4, :cond_19

    #@4aa
    .line 1844
    move-object/from16 v0, p0

    #@4ac
    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@4ae
    sub-int v4, v12, v4

    #@4b0
    .line 1845
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@4b3
    move-result v39

    #@4b4
    add-int/lit8 v39, v39, -0x1

    #@4b6
    .line 1844
    const/16 v40, 0x0

    #@4b8
    .line 1843
    move/from16 v0, v40

    #@4ba
    move/from16 v1, v39

    #@4bc
    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@4bf
    move-result v31

    #@4c0
    .line 1846
    .restart local v31    # "position":I
    move-object/from16 v0, p0

    #@4c2
    move/from16 v1, v31

    #@4c4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@4c7
    move-result-object v34

    #@4c8
    .line 1847
    .local v34, "restoreView":Landroid/view/View;
    if-eqz v34, :cond_19

    #@4ca
    .line 1848
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4cd
    goto/16 :goto_5

    #@4cf
    .line 1574
    nop

    #@4d0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@4de
    .line 1699
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2149
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    .line 2150
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 2151
    :cond_0
    return v4

    #@d
    .line 2154
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@10
    move-result v1

    #@11
    .line 2155
    .local v1, "count":I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@13
    if-nez v2, :cond_2

    #@15
    .line 2156
    if-eqz p2, :cond_5

    #@17
    .line 2157
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result p1

    #@1b
    .line 2158
    :goto_0
    if-ge p1, v1, :cond_2

    #@1d
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_4

    #@23
    .line 2169
    :cond_2
    if-ltz p1, :cond_3

    #@25
    if-lt p1, v1, :cond_6

    #@27
    .line 2170
    :cond_3
    return v4

    #@28
    .line 2159
    :cond_4
    add-int/lit8 p1, p1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2162
    :cond_5
    add-int/lit8 v2, v1, -0x1

    #@2d
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    #@30
    move-result p1

    #@31
    .line 2163
    :goto_1
    if-ltz p1, :cond_2

    #@33
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_2

    #@39
    .line 2164
    add-int/lit8 p1, p1, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 2173
    :cond_6
    return p1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 2189
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    .line 2190
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 2191
    :cond_0
    return v5

    #@c
    .line 2195
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@f
    move-result v1

    #@10
    .line 2196
    .local v1, "after":I
    if-eq v1, v5, :cond_2

    #@12
    .line 2197
    return v1

    #@13
    .line 2201
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@16
    move-result v2

    #@17
    .line 2202
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    #@19
    invoke-static {p1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    #@1c
    move-result p1

    #@1d
    .line 2203
    if-eqz p3, :cond_5

    #@1f
    .line 2204
    add-int/lit8 v3, p2, -0x1

    #@21
    add-int/lit8 v4, v2, -0x1

    #@23
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@26
    move-result p2

    #@27
    .line 2205
    :goto_0
    if-le p2, p1, :cond_3

    #@29
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_4

    #@2f
    .line 2208
    :cond_3
    if-gt p2, p1, :cond_8

    #@31
    .line 2209
    return v5

    #@32
    .line 2206
    :cond_4
    add-int/lit8 p2, p2, -0x1

    #@34
    goto :goto_0

    #@35
    .line 2212
    :cond_5
    add-int/lit8 v3, p2, 0x1

    #@37
    const/4 v4, 0x0

    #@38
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result p2

    #@3c
    .line 2213
    :goto_1
    if-ge p2, p1, :cond_6

    #@3e
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_7

    #@44
    .line 2216
    :cond_6
    if-lt p2, p1, :cond_8

    #@46
    .line 2217
    return v5

    #@47
    .line 2214
    :cond_7
    add-int/lit8 p2, p2, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 2221
    :cond_8
    return p2
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    #@0
    .prologue
    .line 1305
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    .line 1306
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    #@4
    .line 1307
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@6
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@8
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@a
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    #@c
    add-int/2addr v10, v11

    #@d
    return v10

    #@e
    .line 1311
    :cond_0
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@10
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@12
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@14
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    #@16
    add-int v9, v10, v11

    #@18
    .line 1312
    .local v9, "returnedHeight":I
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@1a
    .line 1315
    .local v3, "dividerHeight":I
    const/4 v6, 0x0

    #@1b
    .line 1320
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    #@1c
    if-ne p3, v10, :cond_1

    #@1e
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@21
    move-result v10

    #@22
    add-int/lit8 p3, v10, -0x1

    #@24
    .line 1321
    :cond_1
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@26
    .line 1322
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    #@29
    move-result v8

    #@2a
    .line 1323
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@2c
    .line 1325
    .local v5, "isScrap":[Z
    move v4, p2

    #@2d
    .local v4, "i":I
    :goto_0
    if-gt v4, p3, :cond_7

    #@2f
    .line 1326
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@32
    move-result-object v2

    #@33
    .line 1328
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    #@35
    invoke-direct {p0, v2, v4, p1, v0}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    #@38
    .line 1330
    if-lez v4, :cond_2

    #@3a
    .line 1332
    add-int/2addr v9, v3

    #@3b
    .line 1336
    :cond_2
    if-eqz v8, :cond_3

    #@3d
    .line 1337
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@40
    move-result-object v10

    #@41
    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    #@43
    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@45
    .line 1336
    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@48
    move-result v10

    #@49
    if-eqz v10, :cond_3

    #@4b
    .line 1338
    const/4 v10, -0x1

    #@4c
    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@4f
    .line 1341
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@52
    move-result v10

    #@53
    add-int/2addr v9, v10

    #@54
    .line 1343
    move/from16 v0, p4

    #@56
    if-lt v9, v0, :cond_5

    #@58
    .line 1346
    if-ltz p5, :cond_4

    #@5a
    .line 1347
    move/from16 v0, p5

    #@5c
    if-le v4, v0, :cond_4

    #@5e
    .line 1348
    if-lez v6, :cond_4

    #@60
    .line 1349
    move/from16 v0, p4

    #@62
    if-eq v9, v0, :cond_4

    #@64
    .line 1346
    .end local v6    # "prevHeightWithoutPartialChild":I
    :goto_1
    return v6

    #@65
    .restart local v6    # "prevHeightWithoutPartialChild":I
    :cond_4
    move/from16 v6, p4

    #@67
    .line 1351
    goto :goto_1

    #@68
    .line 1354
    :cond_5
    if-ltz p5, :cond_6

    #@6a
    move/from16 v0, p5

    #@6c
    if-lt v4, v0, :cond_6

    #@6e
    .line 1355
    move v6, v9

    #@6f
    .line 1325
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1361
    .end local v2    # "child":Landroid/view/View;
    :cond_7
    return v9
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1161
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1162
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    .line 1163
    iput-object v1, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@c
    .line 1165
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    #@f
    .line 1160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    .line 3725
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    #@3
    .line 3727
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@6
    move-result v0

    #@7
    .line 3728
    .local v0, "count":I
    if-lez v0, :cond_1

    #@9
    .line 3729
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 3730
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    #@13
    .line 3729
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 3732
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    #@19
    .line 3724
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3668
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 3670
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    .line 3671
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    #@6
    .line 3672
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    #@7
    .line 3673
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    #@9
    if-eqz p1, :cond_3

    #@b
    if-eqz p3, :cond_3

    #@d
    .line 3674
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    #@f
    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    #@11
    move-object/from16 v0, p3

    #@13
    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    #@16
    .line 3678
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    #@19
    move-result v12

    #@1a
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@1d
    move-result v13

    #@1e
    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@20
    add-int/2addr v13, v14

    #@21
    if-ge v12, v13, :cond_0

    #@23
    .line 3679
    const/4 v12, 0x0

    #@24
    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@26
    .line 3680
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    #@29
    .line 3685
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@2b
    .line 3686
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    #@2e
    .line 3687
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@31
    move-result v3

    #@32
    .line 3688
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@34
    .line 3690
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    #@35
    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    #@37
    .line 3692
    add-int v12, v7, v8

    #@39
    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@3c
    move-result v12

    #@3d
    if-nez v12, :cond_2

    #@3f
    .line 3690
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@41
    goto :goto_0

    #@42
    .line 3696
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@45
    move-result-object v10

    #@46
    .line 3697
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@49
    .line 3698
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4c
    .line 3699
    move-object/from16 v0, p3

    #@4e
    move/from16 v1, p2

    #@50
    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    #@53
    move-result v6

    #@54
    .line 3701
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    #@56
    .line 3702
    move v9, v6

    #@57
    .line 3703
    move v5, v8

    #@58
    .line 3704
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@5b
    move-result v4

    #@5c
    goto :goto_1

    #@5d
    .line 3709
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    #@5f
    .line 3710
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@61
    add-int/2addr v12, v5

    #@62
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@65
    .line 3667
    :goto_2
    return-void

    #@66
    .line 3712
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@69
    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4036
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 4038
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v7

    #@8
    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    #@a
    .line 4039
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_0

    #@c
    iget v0, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@e
    const/4 v2, -0x2

    #@f
    if-ne v0, v2, :cond_0

    #@11
    const/4 v4, 0x1

    #@12
    .line 4040
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    #@15
    move-result v5

    #@16
    .line 4042
    .local v5, "isSelected":Z
    const/4 v2, 0x0

    #@17
    move v0, p2

    #@18
    move v3, v1

    #@19
    .line 4041
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@1c
    move-result-object v6

    #@1d
    .line 4043
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    #@20
    .line 4035
    return-void

    #@21
    .line 4039
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    const/4 v4, 0x0

    #@22
    .restart local v4    # "isHeading":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3997
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 3999
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    #@7
    move-result v1

    #@8
    .line 4000
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    #@b
    move-result v2

    #@c
    .line 4002
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    #@d
    .line 4001
    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@10
    move-result-object v0

    #@11
    .line 4003
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    #@14
    .line 4005
    if-lez v1, :cond_0

    #@16
    .line 4006
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@18
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1b
    .line 3996
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2262
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2267
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2272
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1189
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    #@5
    .line 1191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@8
    move-result v11

    #@9
    .line 1192
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v10

    #@d
    .line 1193
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@10
    move-result v12

    #@11
    .line 1194
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@14
    move-result v4

    #@15
    .line 1196
    .local v4, "heightSize":I
    const/4 v9, 0x0

    #@16
    .line 1197
    .local v9, "childWidth":I
    const/4 v7, 0x0

    #@17
    .line 1198
    .local v7, "childHeight":I
    const/4 v8, 0x0

    #@18
    .line 1200
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1a
    if-nez v0, :cond_4

    #@1c
    move v0, v2

    #@1d
    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    #@1f
    .line 1201
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    #@21
    if-lez v0, :cond_1

    #@23
    if-eqz v11, :cond_0

    #@25
    .line 1202
    if-nez v10, :cond_1

    #@27
    .line 1203
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@29
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@2c
    move-result-object v6

    #@2d
    .line 1207
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1, v4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    #@30
    .line 1209
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@33
    move-result v9

    #@34
    .line 1210
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@37
    move-result v7

    #@38
    .line 1211
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    #@3b
    move-result v0

    #@3c
    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    #@3f
    move-result v8

    #@40
    .line 1213
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_1

    #@46
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@48
    .line 1214
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    #@4e
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@50
    .line 1213
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 1215
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@58
    invoke-virtual {v0, v6, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@5b
    .line 1219
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    #@5d
    .line 1220
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@5f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@61
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@63
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@65
    add-int/2addr v0, v1

    #@66
    add-int/2addr v0, v9

    #@67
    .line 1221
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    #@6a
    move-result v1

    #@6b
    .line 1220
    add-int v12, v0, v1

    #@6d
    .line 1226
    :goto_1
    if-nez v10, :cond_2

    #@6f
    .line 1227
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@71
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@73
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@75
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@77
    add-int/2addr v0, v1

    #@78
    add-int/2addr v0, v7

    #@79
    .line 1228
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@7c
    move-result v1

    #@7d
    mul-int/lit8 v1, v1, 0x2

    #@7f
    .line 1227
    add-int v4, v0, v1

    #@81
    .line 1231
    :cond_2
    const/high16 v0, -0x80000000

    #@83
    if-ne v10, v0, :cond_3

    #@85
    move-object v0, p0

    #@86
    move v1, p1

    #@87
    move v5, v3

    #@88
    .line 1233
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    #@8b
    move-result v4

    #@8c
    .line 1236
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    #@8f
    .line 1238
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    #@91
    .line 1187
    return-void

    #@92
    .line 1200
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@94
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@97
    move-result v0

    #@98
    goto :goto_0

    #@99
    .line 1223
    :cond_5
    const/high16 v0, -0x1000000

    #@9b
    and-int/2addr v0, v8

    #@9c
    or-int/2addr v12, v0

    #@9d
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1170
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@5
    move-result v5

    #@6
    if-lez v5, :cond_1

    #@8
    .line 1171
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    .line 1172
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    #@e
    .line 1173
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@10
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    #@13
    move-result v6

    #@14
    add-int v1, v5, v6

    #@16
    .line 1174
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@19
    move-result v0

    #@1a
    .line 1175
    .local v0, "childBottom":I
    iget v5, p0, Landroid/widget/ListView;->mPaddingTop:I

    #@1c
    sub-int v5, p2, v5

    #@1e
    sub-int v5, v0, v5

    #@20
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v3

    #@24
    .line 1176
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@27
    move-result v5

    #@28
    sub-int v4, v5, v3

    #@2a
    .line 1177
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 1178
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    #@30
    invoke-direct {v5, p0, v7}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector;)V

    #@33
    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@35
    .line 1180
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@37
    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    #@3e
    .line 1183
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    #@41
    .line 1169
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2419
    const/16 v3, 0x21

    #@4
    if-ne p1, v3, :cond_3

    #@6
    .line 2420
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@8
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@b
    move-result v4

    #@c
    sub-int/2addr v3, v4

    #@d
    add-int/lit8 v3, v3, -0x1

    #@f
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v1

    #@13
    .line 2421
    .local v1, "nextPage":I
    const/4 v0, 0x0

    #@14
    .line 2429
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_5

    #@16
    .line 2430
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@18
    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    #@1b
    move-result v2

    #@1c
    .line 2431
    .local v2, "position":I
    if-ltz v2, :cond_5

    #@1e
    .line 2432
    const/4 v3, 0x4

    #@1f
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@21
    .line 2433
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    #@23
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@26
    move-result v4

    #@27
    add-int/2addr v3, v4

    #@28
    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    #@2a
    .line 2435
    if-eqz v0, :cond_0

    #@2c
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    #@2e
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@31
    move-result v4

    #@32
    sub-int/2addr v3, v4

    #@33
    if-le v2, v3, :cond_0

    #@35
    .line 2436
    const/4 v3, 0x3

    #@36
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@38
    .line 2439
    :cond_0
    if-nez v0, :cond_1

    #@3a
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3d
    move-result v3

    #@3e
    if-ge v2, v3, :cond_1

    #@40
    .line 2440
    iput v7, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@42
    .line 2443
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    #@45
    .line 2444
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@48
    .line 2445
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_2

    #@4e
    .line 2446
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@51
    .line 2449
    :cond_2
    return v7

    #@52
    .line 2422
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_3
    const/16 v3, 0x82

    #@54
    if-ne p1, v3, :cond_4

    #@56
    .line 2423
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    #@58
    add-int/lit8 v3, v3, -0x1

    #@5a
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@5c
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@5f
    move-result v5

    #@60
    add-int/2addr v4, v5

    #@61
    add-int/lit8 v4, v4, -0x1

    #@63
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@66
    move-result v1

    #@67
    .line 2424
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    #@68
    .restart local v0    # "down":Z
    goto :goto_0

    #@69
    .line 2426
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    :cond_4
    return v6

    #@6a
    .line 2453
    .restart local v0    # "down":Z
    .restart local v1    # "nextPage":I
    :cond_5
    return v6
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 4013
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 4014
    return v5

    #@9
    .line 4017
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 4030
    :cond_1
    return v4

    #@d
    .line 4019
    :pswitch_0
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    #@10
    const/4 v3, -0x1

    #@11
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@14
    move-result v1

    #@15
    .line 4020
    .local v1, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    #@18
    move-result v2

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v0

    #@1f
    .line 4021
    .local v0, "position":I
    if-ltz v1, :cond_1

    #@21
    .line 4024
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    #@24
    .line 4025
    return v5

    #@25
    .line 4017
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    #@0
    .prologue
    .line 1274
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 418
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_2

    #@9
    .line 419
    const/4 v0, 0x0

    #@a
    .line 420
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@10
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    #@12
    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 421
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 422
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1e
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@21
    .line 424
    :cond_0
    const/4 v0, 0x1

    #@22
    .line 426
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@24
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    #@27
    .line 427
    return v0

    #@28
    .line 429
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 324
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_2

    #@9
    .line 325
    const/4 v0, 0x0

    #@a
    .line 326
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@10
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    #@12
    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 327
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 328
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1e
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@21
    .line 330
    :cond_0
    const/4 v0, 0x1

    #@22
    .line 332
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@24
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    #@27
    .line 333
    return v0

    #@28
    .line 335
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    #@0
    .prologue
    .line 579
    move-object/from16 v0, p2

    #@2
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@4
    .line 582
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@7
    move-result v13

    #@8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@b
    move-result v14

    #@c
    move-object/from16 v0, p2

    #@e
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    #@11
    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    #@14
    move-result v13

    #@15
    neg-int v13, v13

    #@16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    #@19
    move-result v14

    #@1a
    neg-int v14, v14

    #@1b
    move-object/from16 v0, p2

    #@1d
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    #@20
    .line 585
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@23
    move-result v6

    #@24
    .line 586
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    #@27
    move-result v8

    #@28
    .line 587
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    #@2a
    .line 588
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@2d
    move-result v5

    #@2e
    .line 590
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    #@31
    move-result v13

    #@32
    if-eqz v13, :cond_1

    #@34
    .line 592
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@36
    if-gtz v13, :cond_0

    #@38
    if-le v9, v5, :cond_1

    #@3a
    .line 593
    :cond_0
    add-int/2addr v8, v5

    #@3b
    .line 597
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3e
    move-result v2

    #@3f
    .line 598
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    #@41
    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@44
    move-result-object v13

    #@45
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    #@48
    move-result v1

    #@49
    .line 600
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    #@4c
    move-result v13

    #@4d
    if-eqz v13, :cond_3

    #@4f
    .line 602
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@51
    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    #@53
    add-int/lit8 v14, v14, -0x1

    #@55
    if-lt v13, v14, :cond_2

    #@57
    .line 603
    move-object/from16 v0, p2

    #@59
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@5b
    sub-int v14, v1, v5

    #@5d
    if-ge v13, v14, :cond_3

    #@5f
    .line 604
    :cond_2
    sub-int/2addr v7, v5

    #@60
    .line 608
    :cond_3
    const/4 v11, 0x0

    #@61
    .line 610
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    #@63
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@65
    if-le v13, v7, :cond_7

    #@67
    move-object/from16 v0, p2

    #@69
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@6b
    if-le v13, v8, :cond_7

    #@6d
    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@70
    move-result v13

    #@71
    if-le v13, v6, :cond_6

    #@73
    .line 617
    move-object/from16 v0, p2

    #@75
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@77
    sub-int/2addr v13, v8

    #@78
    add-int/lit8 v11, v13, 0x0

    #@7a
    .line 624
    :goto_0
    sub-int v4, v1, v7

    #@7c
    .line 625
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    #@7f
    move-result v11

    #@80
    .line 645
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    #@82
    const/4 v10, 0x1

    #@83
    .line 646
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    #@85
    .line 647
    neg-int v13, v11

    #@86
    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    #@89
    .line 648
    const/4 v13, -0x1

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@8f
    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@92
    move-result v13

    #@93
    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    #@95
    .line 650
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@98
    .line 652
    :cond_5
    return v10

    #@99
    .line 620
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    #@9b
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@9d
    sub-int/2addr v13, v7

    #@9e
    add-int/lit8 v11, v13, 0x0

    #@a0
    goto :goto_0

    #@a1
    .line 626
    :cond_7
    move-object/from16 v0, p2

    #@a3
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@a5
    if-ge v13, v8, :cond_4

    #@a7
    move-object/from16 v0, p2

    #@a9
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@ab
    if-ge v13, v7, :cond_4

    #@ad
    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@b0
    move-result v13

    #@b1
    if-le v13, v6, :cond_8

    #@b3
    .line 633
    move-object/from16 v0, p2

    #@b5
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@b7
    sub-int v13, v7, v13

    #@b9
    rsub-int/lit8 v11, v13, 0x0

    #@bb
    .line 640
    :goto_3
    const/4 v13, 0x0

    #@bc
    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@bf
    move-result-object v13

    #@c0
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    #@c3
    move-result v12

    #@c4
    .line 641
    .local v12, "top":I
    sub-int v3, v12, v8

    #@c6
    .line 642
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    #@c9
    move-result v11

    #@ca
    goto :goto_1

    #@cb
    .line 636
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_8
    move-object/from16 v0, p2

    #@cd
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@cf
    sub-int v13, v8, v13

    #@d1
    rsub-int/lit8 v11, v13, 0x0

    #@d3
    goto :goto_3

    #@d4
    .line 645
    :cond_9
    const/4 v10, 0x0

    #@d5
    goto :goto_2
.end method

.method resetList()V
    .locals 1

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    #@5
    .line 532
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@7
    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    #@a
    .line 534
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    #@d
    .line 536
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@10
    .line 528
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 471
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 472
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@c
    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@e
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@11
    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    #@14
    .line 476
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@16
    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    #@19
    .line 478
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    if-gtz v1, :cond_1

    #@21
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v1

    #@27
    if-lez v1, :cond_3

    #@29
    .line 479
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    #@2b
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@2d
    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@2f
    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    #@32
    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@34
    .line 484
    :goto_0
    const/4 v1, -0x1

    #@35
    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    #@37
    .line 485
    const-wide/high16 v2, -0x8000000000000000L

    #@39
    iput-wide v2, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    #@3b
    .line 488
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3e
    .line 490
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@40
    if-eqz v1, :cond_5

    #@42
    .line 491
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@44
    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@47
    move-result v1

    #@48
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@4a
    .line 492
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@4c
    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    #@4e
    .line 493
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@50
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@53
    move-result v1

    #@54
    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@56
    .line 494
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    #@59
    .line 496
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@5b
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    #@5e
    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@60
    .line 497
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@62
    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@64
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@67
    .line 499
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@69
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@6b
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    #@6e
    move-result v2

    #@6f
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    #@72
    .line 502
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@74
    if-eqz v1, :cond_4

    #@76
    .line 503
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@78
    add-int/lit8 v1, v1, -0x1

    #@7a
    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@7d
    move-result v0

    #@7e
    .line 507
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@81
    .line 508
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@84
    .line 510
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@86
    if-nez v1, :cond_2

    #@88
    .line 512
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@8b
    .line 521
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@8e
    .line 470
    return-void

    #@8f
    .line 481
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@91
    goto :goto_0

    #@92
    .line 505
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@95
    move-result v0

    #@96
    .restart local v0    # "position":I
    goto :goto_1

    #@97
    .line 515
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@99
    .line 516
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    #@9c
    .line 518
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@9f
    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    .line 3291
    ushr-int/lit8 v1, p1, 0x18

    #@2
    const/16 v2, 0xff

    #@4
    if-ne v1, v2, :cond_2

    #@6
    const/4 v0, 0x1

    #@7
    .line 3292
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    #@9
    .line 3293
    if-eqz v0, :cond_1

    #@b
    .line 3294
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 3295
    new-instance v1, Landroid/graphics/Paint;

    #@11
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@14
    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@16
    .line 3297
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@18
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@1b
    .line 3299
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    #@1e
    .line 3290
    return-void

    #@1f
    .line 3291
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3551
    if-eqz p1, :cond_1

    #@4
    .line 3552
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v2

    #@8
    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@a
    .line 3556
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@c
    .line 3557
    if-eqz p1, :cond_0

    #@e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@11
    move-result v2

    #@12
    const/4 v3, -0x1

    #@13
    if-ne v2, v3, :cond_2

    #@15
    :cond_0
    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    #@17
    .line 3558
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@1a
    .line 3559
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@1d
    .line 3550
    return-void

    #@1e
    .line 3554
    :cond_1
    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@20
    goto :goto_0

    #@21
    :cond_2
    move v0, v1

    #@22
    .line 3557
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 3576
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@2
    .line 3577
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@5
    .line 3578
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@8
    .line 3575
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    #@0
    .prologue
    .line 3614
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@2
    .line 3615
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@5
    .line 3613
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    #@0
    .prologue
    .line 3591
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@2
    .line 3592
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@5
    .line 3590
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    #@0
    .prologue
    .line 3254
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@2
    .line 3255
    if-nez p1, :cond_0

    #@4
    .line 3256
    const/high16 v0, 0x60000

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    #@9
    .line 3253
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3655
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@2
    .line 3656
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@5
    .line 3654
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3634
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@2
    .line 3635
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    #@4
    if-gez v0, :cond_0

    #@6
    .line 3636
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@9
    .line 3633
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    #@3
    .line 452
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 2105
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@4
    .line 2104
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2229
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 2230
    .local v0, "count":I
    if-lez v0, :cond_0

    #@9
    .line 2231
    iput v2, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@b
    .line 2232
    return-void

    #@c
    .line 2235
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2236
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    #@13
    .line 2228
    :goto_0
    return-void

    #@14
    .line 2238
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@16
    .line 2239
    const/4 v1, 0x2

    #@17
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@19
    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 2115
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@3
    .line 2116
    const/4 v0, 0x0

    #@4
    .line 2118
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@6
    .line 2120
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    #@8
    .line 2121
    add-int/lit8 v2, v1, -0x1

    #@a
    if-ne p1, v2, :cond_3

    #@c
    .line 2122
    const/4 v0, 0x1

    #@d
    .line 2128
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 2129
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@13
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@16
    .line 2132
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    #@19
    .line 2134
    if-eqz v0, :cond_2

    #@1b
    .line 2135
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@1e
    .line 2114
    :cond_2
    return-void

    #@1f
    .line 2123
    :cond_3
    add-int/lit8 v2, v1, 0x1

    #@21
    if-ne p1, v2, :cond_0

    #@23
    .line 2124
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 939
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    #@3
    .line 938
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 929
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    #@3
    .line 928
    return-void
.end method

.method trackMotionScroll(II)Z
    .locals 2
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    #@0
    .prologue
    .line 1889
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@3
    move-result v0

    #@4
    .line 1890
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    #@9
    .line 1891
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@b
    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    #@e
    .line 1892
    return v0
.end method

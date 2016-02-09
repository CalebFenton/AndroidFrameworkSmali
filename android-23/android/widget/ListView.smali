.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$ArrowScrollFocusResult;
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
    .line 144
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 148
    const v0, 0x1010074

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 151
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
    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@a
    move-result-object v6

    #@b
    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@d
    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@10
    move-result-object v6

    #@11
    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@13
    .line 128
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@15
    .line 130
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@17
    .line 133
    new-instance v6, Landroid/graphics/Rect;

    #@19
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@1e
    .line 138
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    #@20
    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult;)V

    #@23
    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@25
    .line 159
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    #@27
    .line 158
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v0

    #@2b
    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@2e
    move-result-object v3

    #@2f
    .line 162
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    #@31
    .line 163
    new-instance v6, Landroid/widget/ArrayAdapter;

    #@33
    const v7, 0x1090003

    #@36
    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@39
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3c
    .line 166
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v1

    #@40
    .line 167
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@42
    .line 170
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@45
    .line 173
    :cond_1
    const/4 v6, 0x5

    #@46
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v5

    #@4a
    .line 174
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    #@4c
    .line 175
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    #@4f
    .line 178
    :cond_2
    const/4 v6, 0x6

    #@50
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@53
    move-result-object v4

    #@54
    .line 179
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    #@56
    .line 180
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    #@59
    .line 184
    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_4

    #@5f
    .line 185
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@62
    move-result v2

    #@63
    .line 187
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    #@65
    .line 188
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    #@68
    .line 192
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
    .line 193
    const/4 v6, 0x4

    #@70
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@73
    move-result v6

    #@74
    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@76
    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@79
    .line 155
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
    .line 3140
    add-int/lit8 v2, p2, -0x1

    #@3
    .line 3141
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@5
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 3142
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@c
    move-result v0

    #@d
    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@f
    sub-int v3, v0, v5

    #@11
    .line 3143
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@13
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@15
    .line 3144
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@17
    aget-boolean v7, v0, v4

    #@19
    move-object v0, p0

    #@1a
    move v6, v4

    #@1b
    .line 3143
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@1e
    .line 3145
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
    .line 3149
    add-int/lit8 v2, p2, 0x1

    #@3
    .line 3150
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@5
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 3151
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@c
    move-result v0

    #@d
    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@f
    add-int v3, v0, v4

    #@11
    .line 3152
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@13
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@15
    .line 3153
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@17
    aget-boolean v7, v0, v6

    #@19
    .line 3152
    const/4 v4, 0x1

    #@1a
    move-object v0, p0

    #@1b
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@1e
    .line 3154
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 211
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 214
    .local v1, "childCount":I
    if-lez v1, :cond_2

    #@7
    .line 217
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@9
    if-nez v3, :cond_3

    #@b
    .line 220
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 221
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
    .line 222
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 225
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@1f
    sub-int/2addr v2, v3

    #@20
    .line 227
    :cond_0
    if-gez v2, :cond_1

    #@22
    .line 229
    const/4 v2, 0x0

    #@23
    .line 247
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@25
    .line 248
    neg-int v3, v2

    #@26
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@29
    .line 210
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    #@2a
    .line 233
    :cond_3
    add-int/lit8 v3, v1, -0x1

    #@2c
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 234
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
    .line 236
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@41
    add-int/2addr v3, v1

    #@42
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    #@44
    if-ge v3, v4, :cond_4

    #@46
    .line 239
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@48
    add-int/2addr v2, v3

    #@49
    .line 242
    :cond_4
    if-lez v2, :cond_1

    #@4b
    .line 243
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
    .line 2749
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
    .line 2750
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@c
    iget v5, v10, Landroid/graphics/Rect;->top:I

    #@e
    .line 2752
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@11
    move-result v7

    #@12
    .line 2754
    .local v7, "numChildren":I
    const/16 v10, 0x82

    #@14
    if-ne p1, v10, :cond_6

    #@16
    .line 2755
    add-int/lit8 v3, v7, -0x1

    #@18
    .line 2756
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    #@19
    if-eq p2, v10, :cond_0

    #@1b
    .line 2757
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1d
    sub-int v3, p2, v10

    #@1f
    .line 2759
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    #@21
    .line 2761
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
    .line 2762
    add-int/lit8 v7, v7, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2764
    :cond_1
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@34
    add-int v8, v10, v3

    #@36
    .line 2765
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@39
    move-result-object v9

    #@3a
    .line 2767
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    #@3b
    .line 2768
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    #@3d
    add-int/lit8 v10, v10, -0x1

    #@3f
    if-ge v8, v10, :cond_2

    #@41
    .line 2769
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@44
    move-result v10

    #@45
    sub-int/2addr v1, v10

    #@46
    .line 2772
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@49
    move-result v10

    #@4a
    if-gt v10, v1, :cond_3

    #@4c
    .line 2774
    const/4 v10, 0x0

    #@4d
    return v10

    #@4e
    .line 2777
    :cond_3
    const/4 v10, -0x1

    #@4f
    if-eq p2, v10, :cond_4

    #@51
    .line 2778
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@54
    move-result v10

    #@55
    sub-int v10, v1, v10

    #@57
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@5a
    move-result v11

    #@5b
    if-lt v10, v11, :cond_4

    #@5d
    .line 2780
    const/4 v10, 0x0

    #@5e
    return v10

    #@5f
    .line 2783
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@62
    move-result v10

    #@63
    sub-int v0, v10, v1

    #@65
    .line 2785
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@67
    add-int/2addr v10, v7

    #@68
    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    #@6a
    if-ne v10, v11, :cond_5

    #@6c
    .line 2787
    add-int/lit8 v10, v7, -0x1

    #@6e
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@71
    move-result-object v10

    #@72
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@75
    move-result v10

    #@76
    sub-int v6, v10, v4

    #@78
    .line 2788
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    #@7b
    move-result v0

    #@7c
    .line 2791
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@7f
    move-result v10

    #@80
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    #@83
    move-result v10

    #@84
    return v10

    #@85
    .line 2793
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    #@86
    .line 2794
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    #@87
    if-eq p2, v10, :cond_7

    #@89
    .line 2795
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@8b
    sub-int v3, p2, v10

    #@8d
    .line 2797
    :cond_7
    :goto_1
    if-gez v3, :cond_8

    #@8f
    .line 2799
    const/4 v10, 0x0

    #@90
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@93
    move-result-object v10

    #@94
    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@96
    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    #@99
    .line 2800
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@9b
    add-int/lit8 v10, v10, -0x1

    #@9d
    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@9f
    .line 2801
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@a1
    sub-int v3, p2, v10

    #@a3
    goto :goto_1

    #@a4
    .line 2803
    :cond_8
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@a6
    add-int v8, v10, v3

    #@a8
    .line 2804
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@ab
    move-result-object v9

    #@ac
    .line 2805
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    #@ad
    .line 2806
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    #@af
    .line 2807
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@b2
    move-result v10

    #@b3
    add-int/2addr v2, v10

    #@b4
    .line 2809
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@b7
    move-result v10

    #@b8
    if-lt v10, v2, :cond_a

    #@ba
    .line 2811
    const/4 v10, 0x0

    #@bb
    return v10

    #@bc
    .line 2814
    :cond_a
    const/4 v10, -0x1

    #@bd
    if-eq p2, v10, :cond_b

    #@bf
    .line 2815
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@c2
    move-result v10

    #@c3
    sub-int/2addr v10, v2

    #@c4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@c7
    move-result v11

    #@c8
    if-lt v10, v11, :cond_b

    #@ca
    .line 2817
    const/4 v10, 0x0

    #@cb
    return v10

    #@cc
    .line 2820
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@cf
    move-result v10

    #@d0
    sub-int v0, v2, v10

    #@d2
    .line 2821
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@d4
    if-nez v10, :cond_c

    #@d6
    .line 2823
    const/4 v10, 0x0

    #@d7
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@da
    move-result-object v10

    #@db
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@de
    move-result v10

    #@df
    sub-int v6, v5, v10

    #@e1
    .line 2824
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    #@e4
    move-result v0

    #@e5
    .line 2826
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@e8
    move-result v10

    #@e9
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    #@ec
    move-result v10

    #@ed
    return v10
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    #@0
    .prologue
    .line 3018
    const/4 v0, 0x0

    #@1
    .line 3019
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 3020
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 3021
    const/16 v2, 0x21

    #@d
    if-ne p1, v2, :cond_1

    #@f
    .line 3022
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
    .line 3023
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
    .line 3024
    if-lez p3, :cond_0

    #@25
    .line 3025
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@28
    move-result v2

    #@29
    add-int/2addr v0, v2

    #@2a
    .line 3037
    :cond_0
    :goto_0
    return v0

    #@2b
    .line 3029
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
    .line 3030
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@39
    if-le v2, v1, :cond_0

    #@3b
    .line 3031
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3d
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@3f
    sub-int v0, v2, v1

    #@41
    .line 3032
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    #@43
    add-int/lit8 v2, v2, -0x1

    #@45
    if-ge p3, v2, :cond_0

    #@47
    .line 3033
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
    .line 2916
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@3
    move-result-object v11

    #@4
    .line 2918
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_1

    #@6
    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    #@9
    move-result v14

    #@a
    if-eqz v14, :cond_1

    #@c
    .line 2919
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@f
    move-result-object v8

    #@10
    .line 2920
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
    .line 2945
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    #@1e
    .line 2946
    move-object/from16 v0, p0

    #@20
    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    #@23
    move-result v9

    #@24
    .line 2950
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
    .line 2951
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    #@34
    move-result v10

    #@35
    .line 2952
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    #@36
    if-eq v10, v14, :cond_a

    #@38
    .line 2953
    const/16 v14, 0x82

    #@3a
    move/from16 v0, p1

    #@3c
    if-ne v0, v14, :cond_9

    #@3e
    if-ge v10, v9, :cond_9

    #@40
    .line 2955
    :cond_0
    const/4 v14, 0x0

    #@41
    return-object v14

    #@42
    .line 2922
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
    .line 2923
    move-object/from16 v0, p0

    #@4a
    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@4c
    if-lez v14, :cond_2

    #@4e
    const/4 v12, 0x1

    #@4f
    .line 2924
    .local v12, "topFadingEdgeShowing":Z
    :goto_1
    move-object/from16 v0, p0

    #@51
    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@53
    iget v15, v14, Landroid/graphics/Rect;->top:I

    #@55
    .line 2925
    if-eqz v12, :cond_3

    #@57
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@5a
    move-result v14

    #@5b
    .line 2924
    :goto_2
    add-int v5, v15, v14

    #@5d
    .line 2927
    .local v5, "listTop":I
    if-eqz v11, :cond_4

    #@5f
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@62
    move-result v14

    #@63
    if-le v14, v5, :cond_4

    #@65
    .line 2928
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@68
    move-result v13

    #@69
    .line 2930
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
    .line 2942
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
    .line 2923
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_2
    const/4 v12, 0x0

    #@87
    .restart local v12    # "topFadingEdgeShowing":Z
    goto :goto_1

    #@88
    .line 2925
    :cond_3
    const/4 v14, 0x0

    #@89
    goto :goto_2

    #@8a
    .line 2929
    .restart local v5    # "listTop":I
    :cond_4
    move v13, v5

    #@8b
    .restart local v13    # "ySearchPoint":I
    goto :goto_3

    #@8c
    .line 2933
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
    .line 2934
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
    .line 2935
    if-eqz v2, :cond_7

    #@ac
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    #@af
    move-result v14

    #@b0
    .line 2934
    :goto_6
    sub-int v4, v15, v14

    #@b2
    .line 2937
    .local v4, "listBottom":I
    if-eqz v11, :cond_8

    #@b4
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@b7
    move-result v14

    #@b8
    if-ge v14, v4, :cond_8

    #@ba
    .line 2938
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@bd
    move-result v13

    #@be
    .line 2940
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
    .line 2933
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_6
    const/4 v2, 0x0

    #@cc
    .restart local v2    # "bottomFadingEdgeShowing":Z
    goto :goto_5

    #@cd
    .line 2935
    :cond_7
    const/4 v14, 0x0

    #@ce
    goto :goto_6

    #@cf
    .line 2939
    .restart local v4    # "listBottom":I
    :cond_8
    move v13, v4

    #@d0
    .restart local v13    # "ySearchPoint":I
    goto :goto_7

    #@d1
    .line 2954
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
    .line 2959
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
    .line 2961
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    #@e4
    move-result v6

    #@e5
    .line 2962
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    #@e7
    .line 2964
    move/from16 v0, p1

    #@e9
    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    #@ec
    .line 2965
    move-object/from16 v0, p0

    #@ee
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@f0
    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    #@f3
    .line 2966
    move-object/from16 v0, p0

    #@f5
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@f7
    return-object v14

    #@f8
    .line 2967
    :cond_b
    move-object/from16 v0, p0

    #@fa
    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    #@fd
    move-result v14

    #@fe
    if-ge v14, v6, :cond_c

    #@100
    .line 2972
    move/from16 v0, p1

    #@102
    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    #@105
    .line 2973
    move-object/from16 v0, p0

    #@107
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@109
    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    #@10c
    .line 2974
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    #@110
    return-object v14

    #@111
    .line 2977
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
    .line 2530
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@6
    move-result v7

    #@7
    if-gtz v7, :cond_0

    #@9
    .line 2531
    return v9

    #@a
    .line 2534
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@d
    move-result-object v6

    #@e
    .line 2535
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@10
    .line 2537
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    #@13
    move-result v4

    #@14
    .line 2538
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    #@17
    move-result v0

    #@18
    .line 2541
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@1a
    if-eqz v7, :cond_a

    #@1c
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    #@1f
    move-result-object v1

    #@20
    .line 2542
    :goto_0
    if-eqz v1, :cond_1

    #@22
    .line 2543
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    #@25
    move-result v4

    #@26
    .line 2544
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    #@29
    move-result v0

    #@2a
    .line 2547
    :cond_1
    if-eqz v1, :cond_b

    #@2c
    const/4 v3, 0x1

    #@2d
    .line 2548
    .local v3, "needToRedraw":Z
    :goto_1
    if-eq v4, v10, :cond_3

    #@2f
    .line 2549
    if-eqz v1, :cond_c

    #@31
    move v7, v8

    #@32
    :goto_2
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    #@35
    .line 2550
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@38
    .line 2551
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@3b
    .line 2552
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@3e
    move-result-object v6

    #@3f
    .line 2553
    move v5, v4

    #@40
    .line 2554
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@42
    if-eqz v7, :cond_2

    #@44
    if-nez v1, :cond_2

    #@46
    .line 2557
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@49
    move-result-object v2

    #@4a
    .line 2558
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_2

    #@4c
    .line 2559
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    #@4f
    .line 2562
    .end local v2    # "focused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    #@50
    .line 2563
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@53
    .line 2566
    :cond_3
    if-lez v0, :cond_4

    #@55
    .line 2567
    const/16 v7, 0x21

    #@57
    if-ne p1, v7, :cond_d

    #@59
    .end local v0    # "amountToScroll":I
    :goto_3
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    #@5c
    .line 2568
    const/4 v3, 0x1

    #@5d
    .line 2573
    :cond_4
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@5f
    if-eqz v7, :cond_6

    #@61
    if-nez v1, :cond_6

    #@63
    .line 2574
    if-eqz v6, :cond_6

    #@65
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    #@68
    move-result v7

    #@69
    .line 2573
    if-eqz v7, :cond_6

    #@6b
    .line 2575
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@6e
    move-result-object v2

    #@6f
    .line 2576
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_6

    #@71
    .line 2577
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@74
    move-result v7

    #@75
    if-eqz v7, :cond_5

    #@77
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    #@7a
    move-result v7

    #@7b
    if-lez v7, :cond_6

    #@7d
    .line 2578
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    #@80
    .line 2584
    .end local v2    # "focused":Landroid/view/View;
    :cond_6
    if-ne v4, v10, :cond_7

    #@82
    if-eqz v6, :cond_7

    #@84
    .line 2585
    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@87
    move-result v7

    #@88
    if-eqz v7, :cond_e

    #@8a
    .line 2594
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_7
    :goto_4
    if-eqz v3, :cond_f

    #@8c
    .line 2595
    if-eqz v6, :cond_8

    #@8e
    .line 2596
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    #@91
    .line 2597
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@94
    move-result v7

    #@95
    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    #@97
    .line 2599
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@9a
    move-result v7

    #@9b
    if-nez v7, :cond_9

    #@9d
    .line 2600
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@a0
    .line 2602
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@a3
    .line 2603
    return v8

    #@a4
    .line 2541
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    .restart local v6    # "selectedView":Landroid/view/View;
    :cond_a
    const/4 v1, 0x0

    #@a5
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    goto/16 :goto_0

    #@a7
    .line 2547
    .end local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_b
    const/4 v3, 0x0

    #@a8
    .restart local v3    # "needToRedraw":Z
    goto :goto_1

    #@a9
    :cond_c
    move v7, v9

    #@aa
    .line 2549
    goto :goto_2

    #@ab
    .line 2567
    :cond_d
    neg-int v0, v0

    #@ac
    goto :goto_3

    #@ad
    .line 2586
    .end local v0    # "amountToScroll":I
    :cond_e
    const/4 v6, 0x0

    #@ae
    .line 2587
    .local v6, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    #@b1
    .line 2591
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    #@b3
    goto :goto_4

    #@b4
    .line 2606
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
    .line 538
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    #@2
    .line 539
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 541
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 542
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    #@f
    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@11
    .line 543
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@17
    .line 544
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    #@19
    .line 545
    const/4 v4, 0x0

    #@1a
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@1c
    .line 541
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 537
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
    .line 2171
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@9
    if-eqz v3, :cond_2

    #@b
    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 2175
    iget-boolean v3, p0, Landroid/widget/ListView;->mDataChanged:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 2176
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    #@18
    .line 2179
    :cond_0
    const/4 v2, 0x0

    #@19
    .line 2180
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@1c
    move-result v0

    #@1d
    .line 2182
    .local v0, "action":I
    if-eq v0, v7, :cond_1

    #@1f
    .line 2183
    sparse-switch p1, :sswitch_data_0

    #@22
    .line 2299
    .end local v2    # "handled":Z
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_14

    #@24
    .line 2300
    return v7

    #@25
    .line 2172
    .end local v0    # "action":I
    :cond_2
    return v4

    #@26
    .line 2185
    .restart local v0    # "action":I
    .restart local v2    # "handled":Z
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 2186
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@2f
    move-result v2

    #@30
    .line 2187
    .local v2, "handled":Z
    if-nez v2, :cond_1

    #@32
    .end local v2    # "handled":Z
    :goto_1
    move v1, p2

    #@33
    .line 2188
    .end local p2    # "count":I
    .local v1, "count":I
    add-int/lit8 p2, v1, -0x1

    #@35
    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_1

    #@37
    .line 2189
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 2190
    const/4 v2, 0x1

    #@3e
    .local v2, "handled":Z
    goto :goto_1

    #@3f
    .line 2196
    :cond_3
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_1

    #@45
    .line 2197
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_4

    #@4b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    #@4e
    move-result v2

    #@4f
    .local v2, "handled":Z
    goto :goto_0

    #@50
    .local v2, "handled":Z
    :cond_4
    const/4 v2, 0x1

    #@51
    goto :goto_0

    #@52
    .line 2202
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_5

    #@58
    .line 2203
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@5b
    move-result v2

    #@5c
    .line 2204
    .local v2, "handled":Z
    if-nez v2, :cond_1

    #@5e
    .end local v2    # "handled":Z
    :goto_2
    move v1, p2

    #@5f
    .line 2205
    .end local p2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 p2, v1, -0x1

    #@61
    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_1

    #@63
    .line 2206
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    #@66
    move-result v3

    #@67
    if-eqz v3, :cond_1

    #@69
    .line 2207
    const/4 v2, 0x1

    #@6a
    .local v2, "handled":Z
    goto :goto_2

    #@6b
    .line 2213
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_1

    #@71
    .line 2214
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@74
    move-result v3

    #@75
    if-nez v3, :cond_6

    #@77
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    #@7a
    move-result v2

    #@7b
    .local v2, "handled":Z
    goto :goto_0

    #@7c
    .local v2, "handled":Z
    :cond_6
    const/4 v2, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 2219
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_1

    #@84
    .line 2220
    const/16 v3, 0x11

    #@86
    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    #@89
    move-result v2

    #@8a
    .local v2, "handled":Z
    goto :goto_0

    #@8b
    .line 2225
    .local v2, "handled":Z
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@8e
    move-result v3

    #@8f
    if-eqz v3, :cond_1

    #@91
    .line 2226
    const/16 v3, 0x42

    #@93
    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    #@96
    move-result v2

    #@97
    .local v2, "handled":Z
    goto :goto_0

    #@98
    .line 2232
    .local v2, "handled":Z
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@9b
    move-result v3

    #@9c
    if-eqz v3, :cond_1

    #@9e
    .line 2233
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@a1
    move-result v2

    #@a2
    .line 2234
    .local v2, "handled":Z
    if-nez v2, :cond_1

    #@a4
    .line 2235
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@a7
    move-result v3

    #@a8
    if-nez v3, :cond_1

    #@aa
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@ad
    move-result v3

    #@ae
    if-lez v3, :cond_1

    #@b0
    .line 2236
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    #@b3
    .line 2237
    const/4 v2, 0x1

    #@b4
    .local v2, "handled":Z
    goto/16 :goto_0

    #@b6
    .line 2243
    :sswitch_6
    iget-object v3, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    #@b8
    if-eqz v3, :cond_7

    #@ba
    iget-object v3, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    #@bc
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    #@bf
    move-result v3

    #@c0
    if-nez v3, :cond_1

    #@c2
    .line 2244
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@c5
    move-result v3

    #@c6
    if-eqz v3, :cond_a

    #@c8
    .line 2245
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@cb
    move-result v3

    #@cc
    if-nez v3, :cond_9

    #@ce
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    #@d1
    move-result v2

    #@d2
    .line 2249
    .end local v2    # "handled":Z
    :cond_8
    :goto_3
    const/4 v2, 0x1

    #@d3
    .restart local v2    # "handled":Z
    goto/16 :goto_0

    #@d5
    .line 2245
    :cond_9
    const/4 v2, 0x1

    #@d6
    goto :goto_3

    #@d7
    .line 2246
    :cond_a
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@da
    move-result v3

    #@db
    if-eqz v3, :cond_8

    #@dd
    .line 2247
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@e0
    move-result v3

    #@e1
    if-nez v3, :cond_b

    #@e3
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    #@e6
    move-result v2

    #@e7
    .local v2, "handled":Z
    goto :goto_3

    #@e8
    .local v2, "handled":Z
    :cond_b
    const/4 v2, 0x1

    #@e9
    goto :goto_3

    #@ea
    .line 2254
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@ed
    move-result v3

    #@ee
    if-eqz v3, :cond_d

    #@f0
    .line 2255
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@f3
    move-result v3

    #@f4
    if-nez v3, :cond_c

    #@f6
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    #@f9
    move-result v2

    #@fa
    .local v2, "handled":Z
    goto/16 :goto_0

    #@fc
    .local v2, "handled":Z
    :cond_c
    const/4 v2, 0x1

    #@fd
    goto/16 :goto_0

    #@ff
    .line 2256
    :cond_d
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@102
    move-result v3

    #@103
    if-eqz v3, :cond_1

    #@105
    .line 2257
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@108
    move-result v3

    #@109
    if-nez v3, :cond_e

    #@10b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    #@10e
    move-result v2

    #@10f
    .local v2, "handled":Z
    goto/16 :goto_0

    #@111
    .local v2, "handled":Z
    :cond_e
    const/4 v2, 0x1

    #@112
    goto/16 :goto_0

    #@114
    .line 2262
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@117
    move-result v3

    #@118
    if-eqz v3, :cond_10

    #@11a
    .line 2263
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@11d
    move-result v3

    #@11e
    if-nez v3, :cond_f

    #@120
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    #@123
    move-result v2

    #@124
    .local v2, "handled":Z
    goto/16 :goto_0

    #@126
    .local v2, "handled":Z
    :cond_f
    const/4 v2, 0x1

    #@127
    goto/16 :goto_0

    #@129
    .line 2264
    :cond_10
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@12c
    move-result v3

    #@12d
    if-eqz v3, :cond_1

    #@12f
    .line 2265
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@132
    move-result v3

    #@133
    if-nez v3, :cond_11

    #@135
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    #@138
    move-result v2

    #@139
    .local v2, "handled":Z
    goto/16 :goto_0

    #@13b
    .local v2, "handled":Z
    :cond_11
    const/4 v2, 0x1

    #@13c
    goto/16 :goto_0

    #@13e
    .line 2270
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@141
    move-result v3

    #@142
    if-eqz v3, :cond_1

    #@144
    .line 2271
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@147
    move-result v3

    #@148
    if-nez v3, :cond_12

    #@14a
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    #@14d
    move-result v2

    #@14e
    .local v2, "handled":Z
    goto/16 :goto_0

    #@150
    .local v2, "handled":Z
    :cond_12
    const/4 v2, 0x1

    #@151
    goto/16 :goto_0

    #@153
    .line 2276
    :sswitch_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@156
    move-result v3

    #@157
    if-eqz v3, :cond_1

    #@159
    .line 2277
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    #@15c
    move-result v3

    #@15d
    if-nez v3, :cond_13

    #@15f
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    #@162
    move-result v2

    #@163
    .local v2, "handled":Z
    goto/16 :goto_0

    #@165
    .local v2, "handled":Z
    :cond_13
    const/4 v2, 0x1

    #@166
    goto/16 :goto_0

    #@168
    .line 2303
    .end local v2    # "handled":Z
    :cond_14
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    #@16b
    move-result v3

    #@16c
    if-eqz v3, :cond_15

    #@16e
    .line 2304
    return v7

    #@16f
    .line 2307
    :cond_15
    packed-switch v0, :pswitch_data_0

    #@172
    .line 2318
    return v4

    #@173
    .line 2309
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@176
    move-result v3

    #@177
    return v3

    #@178
    .line 2312
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@17b
    move-result v3

    #@17c
    return v3

    #@17d
    .line 2315
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@180
    move-result v3

    #@181
    return v3

    #@182
    .line 2183
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3d -> :sswitch_0
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x7a -> :sswitch_9
        0x7b -> :sswitch_a
    .end sparse-switch

    #@1b4
    .line 2307
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
    .line 1401
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    add-int/2addr v7, p1

    #@4
    add-int/lit8 v6, v7, -0x1

    #@6
    .line 1402
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    #@8
    add-int/lit8 v7, v7, -0x1

    #@a
    if-ne v6, v7, :cond_2

    #@c
    if-lez p1, :cond_2

    #@e
    .line 1405
    add-int/lit8 v7, p1, -0x1

    #@10
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v5

    #@14
    .line 1408
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@17
    move-result v4

    #@18
    .line 1411
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
    .line 1415
    .local v1, "end":I
    sub-int v0, v1, v4

    #@25
    .line 1416
    .local v0, "bottomOffset":I
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v2

    #@29
    .line 1417
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@2c
    move-result v3

    #@2d
    .line 1421
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
    .line 1422
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3b
    if-nez v7, :cond_1

    #@3d
    .line 1424
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
    .line 1427
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@49
    .line 1428
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@4b
    if-lez v7, :cond_2

    #@4d
    .line 1431
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
    .line 1433
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@5e
    .line 1398
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
    .line 1450
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    if-nez v8, :cond_2

    #@5
    if-lez p1, :cond_2

    #@7
    .line 1453
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 1456
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@e
    move-result v2

    #@f
    .line 1459
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@11
    iget v6, v8, Landroid/graphics/Rect;->top:I

    #@13
    .line 1462
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
    .line 1466
    .local v0, "end":I
    sub-int v7, v2, v6

    #@20
    .line 1467
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    #@22
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v4

    #@26
    .line 1468
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@29
    move-result v3

    #@2a
    .line 1469
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@2c
    add-int/2addr v8, p1

    #@2d
    add-int/lit8 v5, v8, -0x1

    #@2f
    .line 1473
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    #@31
    .line 1474
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@33
    add-int/lit8 v8, v8, -0x1

    #@35
    if-lt v5, v8, :cond_0

    #@37
    if-le v3, v0, :cond_3

    #@39
    .line 1475
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@3b
    add-int/lit8 v8, v8, -0x1

    #@3d
    if-ne v5, v8, :cond_1

    #@3f
    .line 1477
    sub-int v8, v3, v0

    #@41
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v7

    #@45
    .line 1480
    :cond_1
    neg-int v8, v7

    #@46
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@49
    .line 1481
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    #@4b
    add-int/lit8 v8, v8, -0x1

    #@4d
    if-ge v5, v8, :cond_2

    #@4f
    .line 1484
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
    .line 1486
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@5e
    .line 1447
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
    .line 1488
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
    .line 1489
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@68
    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    #@0
    .prologue
    .line 3048
    const/4 v0, 0x0

    #@1
    .line 3049
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@6
    .line 3050
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b
    .line 3051
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
    .line 3052
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
    .line 3053
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
    .line 3057
    :cond_0
    :goto_0
    return v0

    #@2b
    .line 3054
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@2d
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2f
    if-le v2, v1, :cond_0

    #@31
    .line 3055
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
    .line 810
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@2
    .line 811
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 812
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
    .line 813
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@13
    .line 814
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
    .line 809
    :goto_0
    return-void

    #@1e
    .line 816
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
    .line 817
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@2b
    .line 818
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
    .line 692
    const/4 v8, 0x0

    #@1
    .line 694
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    #@3
    iget v1, p0, Landroid/widget/ListView;->mTop:I

    #@5
    sub-int v7, v0, v1

    #@7
    .line 695
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@9
    and-int/lit8 v0, v0, 0x22

    #@b
    const/16 v1, 0x22

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 696
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@13
    sub-int/2addr v7, v0

    #@14
    .line 699
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    #@16
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    #@18
    if-ge p1, v0, :cond_3

    #@1a
    .line 701
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@1c
    if-ne p1, v0, :cond_2

    #@1e
    const/4 v5, 0x1

    #@1f
    .line 702
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
    .line 704
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@2e
    move-result v0

    #@2f
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@31
    add-int p2, v0, v1

    #@33
    .line 705
    if-eqz v5, :cond_1

    #@35
    .line 706
    move-object v8, v6

    #@36
    .line 708
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 701
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    #@3a
    .restart local v5    # "selected":Z
    goto :goto_1

    #@3b
    .line 711
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
    .line 712
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
    .line 778
    sub-int v6, p2, p1

    #@3
    .line 780
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    #@6
    move-result v1

    #@7
    .line 783
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
    .line 782
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@11
    move-result-object v7

    #@12
    .line 784
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@14
    .line 786
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    #@17
    move-result v8

    #@18
    .line 787
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    #@1a
    .line 788
    sub-int v0, v6, v8

    #@1c
    div-int/lit8 v0, v0, 0x2

    #@1e
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@21
    .line 791
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    #@24
    .line 793
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@26
    if-nez v0, :cond_1

    #@28
    .line 794
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@2b
    move-result v0

    #@2c
    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@2f
    .line 799
    :goto_0
    return-object v7

    #@30
    .line 796
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
    .line 834
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v8

    #@4
    .line 835
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@6
    .line 839
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    #@8
    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    #@b
    move-result v13

    #@c
    .line 841
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    #@e
    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    #@11
    move-result v7

    #@12
    .line 844
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
    .line 848
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@21
    move-result v1

    #@22
    if-le v1, v7, :cond_1

    #@24
    .line 851
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@27
    move-result v1

    #@28
    sub-int v11, v1, v13

    #@2a
    .line 855
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@2d
    move-result v1

    #@2e
    sub-int v12, v1, v7

    #@30
    .line 856
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v9

    #@34
    .line 859
    .local v9, "offset":I
    neg-int v1, v9

    #@35
    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@38
    .line 875
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    #@3b
    .line 877
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 878
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@42
    move-result v1

    #@43
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@46
    .line 883
    :goto_1
    return-object v10

    #@47
    .line 860
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@4a
    move-result v1

    #@4b
    if-ge v1, v13, :cond_0

    #@4d
    .line 863
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@50
    move-result v1

    #@51
    sub-int v11, v13, v1

    #@53
    .line 867
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@56
    move-result v1

    #@57
    sub-int v12, v7, v1

    #@59
    .line 868
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v9

    #@5d
    .line 871
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@60
    goto :goto_0

    #@61
    .line 880
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
    .line 758
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
    .line 759
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
    .line 760
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@19
    if-gez v0, :cond_0

    #@1b
    .line 761
    iput v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1d
    .line 763
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
    .line 1353
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@2
    if-ne p1, v0, :cond_1

    #@4
    const/4 v5, 0x1

    #@5
    .line 1354
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
    .line 1356
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@13
    .line 1361
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@15
    .line 1362
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@17
    if-nez v0, :cond_2

    #@19
    .line 1363
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
    .line 1365
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@27
    .line 1366
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
    .line 1367
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@35
    move-result v8

    #@36
    .line 1368
    .local v8, "childCount":I
    if-lez v8, :cond_0

    #@38
    .line 1369
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@3b
    .line 1382
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    #@3d
    .line 1383
    return-object v10

    #@3e
    .line 1353
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
    .line 1372
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
    .line 1374
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@4e
    .line 1375
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
    .line 1376
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@5c
    move-result v8

    #@5d
    .line 1377
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    #@5f
    .line 1378
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    #@62
    goto :goto_1

    #@63
    .line 1384
    :cond_3
    if-eqz v6, :cond_4

    #@65
    .line 1385
    return-object v6

    #@66
    .line 1387
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
    .line 726
    const/4 v8, 0x0

    #@2
    .line 728
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    #@3
    .line 729
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@5
    and-int/lit8 v0, v0, 0x22

    #@7
    const/16 v1, 0x22

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 730
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@d
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@f
    .line 733
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    #@11
    if-ltz p1, :cond_3

    #@13
    .line 735
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@15
    if-ne p1, v0, :cond_2

    #@17
    const/4 v5, 0x1

    #@18
    .line 736
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
    .line 737
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@26
    move-result v0

    #@27
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@29
    sub-int p2, v0, v1

    #@2b
    .line 738
    if-eqz v5, :cond_1

    #@2d
    .line 739
    move-object v8, v6

    #@2e
    .line 741
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@30
    goto :goto_0

    #@31
    .line 735
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    #@32
    .restart local v5    # "selected":Z
    goto :goto_1

    #@33
    .line 744
    .end local v5    # "selected":Z
    :cond_3
    add-int/lit8 v0, p1, 0x1

    #@35
    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@37
    .line 745
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
    .line 746
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    #@0
    .prologue
    .line 2733
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
    .line 896
    move v0, p1

    #@1
    .line 897
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    if-eq p3, v1, :cond_0

    #@7
    .line 898
    sub-int/2addr v0, p2

    #@8
    .line 900
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
    .line 913
    move v0, p1

    #@1
    .line 914
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    #@3
    .line 915
    add-int/2addr v0, p2

    #@4
    .line 917
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
    .line 2419
    const/16 v6, 0x11

    #@3
    if-eq p1, v6, :cond_0

    #@5
    const/16 v6, 0x42

    #@7
    if-eq p1, v6, :cond_0

    #@9
    .line 2420
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v7, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    #@e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v6

    #@12
    .line 2424
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@15
    move-result v4

    #@16
    .line 2425
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
    .line 2426
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@24
    move-result-object v5

    #@25
    .line 2427
    .local v5, "selectedView":Landroid/view/View;
    if-eqz v5, :cond_3

    #@27
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 2428
    instance-of v6, v5, Landroid/view/ViewGroup;

    #@2f
    .line 2427
    if-eqz v6, :cond_3

    #@31
    .line 2430
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@34
    move-result-object v0

    #@35
    .line 2431
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@38
    move-result-object v6

    #@39
    .line 2432
    check-cast v5, Landroid/view/ViewGroup;

    #@3b
    .line 2431
    .end local v5    # "selectedView":Landroid/view/View;
    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@3e
    move-result-object v3

    #@3f
    .line 2433
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_2

    #@41
    .line 2435
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@43
    .line 2436
    .local v1, "focusedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    #@45
    .line 2437
    invoke-virtual {v0, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@48
    .line 2438
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4b
    .line 2439
    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4e
    .line 2443
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v3, p1, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_2

    #@54
    .line 2444
    const/4 v6, 0x1

    #@55
    return v6

    #@56
    .line 2441
    .restart local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    #@57
    .local v1, "focusedRect":Landroid/graphics/Rect;
    goto :goto_0

    #@58
    .line 2451
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@5b
    move-result-object v7

    #@5c
    .line 2452
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    #@5f
    move-result-object v6

    #@60
    check-cast v6, Landroid/view/ViewGroup;

    #@62
    .line 2451
    invoke-virtual {v7, v6, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@65
    move-result-object v2

    #@66
    .line 2453
    .local v2, "globalNextFocus":Landroid/view/View;
    if-eqz v2, :cond_3

    #@68
    .line 2454
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@6b
    move-result v6

    #@6c
    return v6

    #@6d
    .line 2458
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
    .line 2624
    const/4 v8, -0x1

    #@2
    if-ne p3, v8, :cond_0

    #@4
    .line 2625
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    #@9
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 2635
    :cond_0
    const/4 v5, 0x0

    #@e
    .line 2636
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@10
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@12
    sub-int v4, v8, v10

    #@14
    .line 2637
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@16
    sub-int v2, p3, v8

    #@18
    .line 2638
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    #@1a
    if-ne p2, v8, :cond_4

    #@1c
    .line 2639
    move v7, v2

    #@1d
    .line 2640
    .local v7, "topViewIndex":I
    move v1, v4

    #@1e
    .line 2641
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v6

    #@22
    .line 2642
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    #@23
    .line 2643
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    #@24
    .line 2651
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@27
    move-result v3

    #@28
    .line 2654
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    #@2a
    .line 2655
    if-nez p4, :cond_5

    #@2c
    move v8, v5

    #@2d
    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    #@30
    .line 2656
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    #@33
    .line 2660
    :cond_1
    if-eqz v0, :cond_3

    #@35
    .line 2661
    if-nez p4, :cond_2

    #@37
    if-eqz v5, :cond_6

    #@39
    :cond_2
    :goto_2
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    #@3c
    .line 2662
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    #@3f
    .line 2623
    :cond_3
    return-void

    #@40
    .line 2645
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_4
    move v7, v4

    #@41
    .line 2646
    .restart local v7    # "topViewIndex":I
    move v1, v2

    #@42
    .line 2647
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    #@43
    .line 2648
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

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
    .line 2655
    goto :goto_1

    #@4a
    .line 2661
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
    .line 1825
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3
    .line 1826
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 1827
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@a
    .line 1828
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
    .line 1829
    return v6

    #@15
    .line 1827
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1833
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@1a
    .line 1834
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v3

    #@1e
    .line 1835
    .local v3, "numFooters":I
    const/4 v2, 0x0

    #@1f
    :goto_1
    if-ge v2, v3, :cond_3

    #@21
    .line 1836
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
    .line 1837
    return v6

    #@2c
    .line 1835
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1841
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
    .line 3000
    if-ne p1, p2, :cond_0

    #@2
    .line 3001
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 3004
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 3005
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
    .line 2863
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@3
    .line 2864
    .local v1, "firstPosition":I
    const/16 v6, 0x82

    #@5
    if-ne p1, v6, :cond_4

    #@7
    .line 2865
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@9
    if-eq v6, v7, :cond_0

    #@b
    .line 2866
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@d
    add-int/lit8 v5, v6, 0x1

    #@f
    .line 2868
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
    .line 2869
    return v7

    #@18
    .line 2867
    .end local v5    # "startPos":I
    :cond_0
    move v5, v1

    #@19
    .restart local v5    # "startPos":I
    goto :goto_0

    #@1a
    .line 2871
    :cond_1
    if-ge v5, v1, :cond_2

    #@1c
    .line 2872
    move v5, v1

    #@1d
    .line 2875
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    #@20
    move-result v3

    #@21
    .line 2876
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@24
    move-result-object v0

    #@25
    .line 2877
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    #@26
    .local v4, "pos":I
    :goto_1
    if-gt v4, v3, :cond_a

    #@28
    .line 2878
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_3

    #@2e
    .line 2879
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
    .line 2880
    return v4

    #@3b
    .line 2877
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 2884
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
    .line 2885
    .local v2, "last":I
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@47
    if-eq v6, v7, :cond_6

    #@49
    .line 2886
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@4b
    add-int/lit8 v5, v6, -0x1

    #@4d
    .line 2888
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
    .line 2889
    :cond_5
    return v7

    #@58
    .line 2887
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
    .restart local v5    # "startPos":I
    goto :goto_2

    #@60
    .line 2891
    :cond_7
    if-le v5, v2, :cond_8

    #@62
    .line 2892
    move v5, v2

    #@63
    .line 2895
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@66
    move-result-object v0

    #@67
    .line 2896
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    #@68
    .restart local v4    # "pos":I
    :goto_3
    if-lt v4, v1, :cond_a

    #@6a
    .line 2897
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_9

    #@70
    .line 2898
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
    .line 2899
    return v4

    #@7d
    .line 2896
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@7f
    goto :goto_3

    #@80
    .line 2903
    .end local v2    # "last":I
    :cond_a
    return v7
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    #@0
    .prologue
    .line 1862
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1864
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    .line 1865
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    #@c
    .line 1868
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
    .line 1870
    return-object v1

    #@17
    .line 1875
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@19
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    .line 1878
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@1f
    const/4 v2, 0x0

    #@20
    aget-boolean v7, v0, v2

    #@22
    move-object v0, p0

    #@23
    move v2, p1

    #@24
    move v3, p2

    #@25
    move v4, p3

    #@26
    move v5, p4

    #@27
    move v6, p5

    #@28
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    #@2b
    .line 1880
    return-object v1
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    #@0
    .prologue
    .line 2674
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@3
    move-result v2

    #@4
    .line 2675
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    #@7
    .line 2676
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@a
    move-result v3

    #@b
    if-eq v3, v2, :cond_0

    #@d
    .line 2678
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    #@10
    .line 2681
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@13
    move-result v3

    #@14
    sub-int v0, v3, v2

    #@16
    .line 2682
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@1a
    .line 2683
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@21
    .line 2682
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2673
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
    .line 2694
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v3

    #@5
    .line 2695
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    #@7
    .line 2696
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@9
    .line 2697
    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    #@a
    .line 2698
    const/4 v5, -0x2

    #@b
    .line 2696
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@e
    .line 2701
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    #@10
    .line 2702
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
    .line 2701
    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@1e
    move-result v1

    #@1f
    .line 2703
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@21
    .line 2705
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    #@23
    .line 2706
    const/high16 v4, 0x40000000    # 2.0f

    #@25
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@28
    move-result v0

    #@29
    .line 2711
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@2c
    .line 2693
    return-void

    #@2d
    .line 2708
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
    .line 1197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v3

    #@5
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@7
    .line 1198
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    #@9
    .line 1199
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object v3

    #@d
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@f
    .line 1200
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 1202
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@14
    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@17
    move-result v4

    #@18
    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@1a
    .line 1203
    const/4 v4, 0x1

    #@1b
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@1d
    .line 1206
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1f
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@21
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@23
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@25
    add-int/2addr v4, v5

    #@26
    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    #@28
    .line 1205
    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@2b
    move-result v1

    #@2c
    .line 1207
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    #@2e
    .line 1209
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    #@30
    .line 1210
    const/high16 v4, 0x40000000    # 2.0f

    #@32
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@35
    move-result v0

    #@36
    .line 1214
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@39
    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    #@3c
    .line 1196
    return-void

    #@3d
    .line 1212
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {p4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@40
    move-result v0

    #@41
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
    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@3
    move-result v10

    #@4
    .line 960
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    #@6
    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@8
    .line 964
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p4

    #@c
    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    #@f
    move-result v18

    #@10
    .line 966
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    #@12
    move/from16 v1, p4

    #@14
    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    #@17
    move-result v8

    #@18
    .line 969
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    #@1a
    .line 991
    add-int/lit8 v3, v15, -0x1

    #@1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@1f
    move-result v4

    #@20
    .line 992
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@24
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@26
    .line 991
    const/4 v5, 0x1

    #@27
    .line 992
    const/4 v7, 0x0

    #@28
    move-object/from16 v2, p0

    #@2a
    .line 991
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@2d
    move-result-object p1

    #@2e
    .line 994
    move-object/from16 v0, p0

    #@30
    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    #@32
    .line 997
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    #@35
    move-result v2

    #@36
    add-int v4, v2, v9

    #@38
    .line 998
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3c
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@3e
    .line 997
    const/4 v5, 0x1

    #@3f
    .line 998
    const/4 v7, 0x1

    #@40
    move-object/from16 v2, p0

    #@42
    move v3, v15

    #@43
    .line 997
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@46
    move-result-object v14

    #@47
    .line 1001
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@4a
    move-result v2

    #@4b
    if-le v2, v8, :cond_0

    #@4d
    .line 1004
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@50
    move-result v2

    #@51
    sub-int v16, v2, v18

    #@53
    .line 1007
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@56
    move-result v2

    #@57
    sub-int v17, v2, v8

    #@59
    .line 1010
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    #@5b
    div-int/lit8 v11, v2, 0x2

    #@5d
    .line 1011
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v13

    #@61
    .line 1012
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    #@64
    move-result v13

    #@65
    .line 1015
    neg-int v2, v13

    #@66
    move-object/from16 v0, p1

    #@68
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@6b
    .line 1017
    neg-int v2, v13

    #@6c
    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@6f
    .line 1021
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
    .line 1022
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
    .line 1023
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@88
    .line 1024
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
    .line 1105
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    #@99
    .line 1026
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
    .line 1027
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@ac
    .line 1028
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
    .line 1030
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    #@bf
    .line 1051
    if-eqz p2, :cond_4

    #@c1
    .line 1053
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
    .line 1054
    const/4 v7, 0x1

    #@cd
    move-object/from16 v2, p0

    #@cf
    move v3, v15

    #@d0
    .line 1053
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@d3
    move-result-object v14

    #@d4
    .line 1063
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
    .line 1065
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@df
    move-result v2

    #@e0
    sub-int v16, v18, v2

    #@e2
    .line 1068
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@e5
    move-result v2

    #@e6
    sub-int v17, v8, v2

    #@e8
    .line 1071
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    #@ea
    div-int/lit8 v11, v2, 0x2

    #@ec
    .line 1072
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    #@ef
    move-result v13

    #@f0
    .line 1073
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    #@f3
    move-result v13

    #@f4
    .line 1076
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@f7
    .line 1080
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
    .line 1058
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
    .line 1059
    const/4 v7, 0x1

    #@109
    move-object/from16 v2, p0

    #@10b
    move v3, v15

    #@10c
    .line 1058
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    #@10f
    move-result-object v14

    #@110
    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    #@111
    .line 1083
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@114
    move-result v4

    #@115
    .line 1088
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
    .line 1091
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    #@126
    if-ge v4, v0, :cond_6

    #@128
    .line 1094
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@12b
    move-result v12

    #@12c
    .line 1095
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    #@12e
    if-ge v12, v2, :cond_6

    #@130
    .line 1097
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@133
    move-result v2

    #@134
    sub-int v2, p4, v2

    #@136
    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@139
    .line 1102
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
    .line 2495
    if-ne p3, v8, :cond_3

    #@6
    .line 2496
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
    .line 2497
    .local v1, "listBottom":I
    if-eqz p1, :cond_2

    #@12
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@15
    move-result v5

    #@16
    if-gt v5, v1, :cond_2

    #@18
    .line 2498
    if-eq p2, v7, :cond_1

    #@1a
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@1c
    if-lt p2, v5, :cond_1

    #@1e
    .line 2499
    add-int/lit8 v3, p2, 0x1

    #@20
    .line 2516
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
    .line 2517
    :cond_0
    return v7

    #@2b
    .line 2500
    .end local v3    # "nextSelected":I
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@2d
    .restart local v3    # "nextSelected":I
    goto :goto_0

    #@2e
    .line 2502
    .end local v3    # "nextSelected":I
    :cond_2
    return v7

    #@2f
    .line 2505
    .end local v1    # "listBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@31
    iget v2, v5, Landroid/graphics/Rect;->top:I

    #@33
    .line 2506
    .local v2, "listTop":I
    if-eqz p1, :cond_5

    #@35
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@38
    move-result v5

    #@39
    if-lt v5, v2, :cond_5

    #@3b
    .line 2507
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
    .line 2508
    .local v0, "lastPos":I
    if-eq p2, v7, :cond_4

    #@46
    if-gt p2, v0, :cond_4

    #@48
    .line 2509
    add-int/lit8 v3, p2, -0x1

    #@4a
    .restart local v3    # "nextSelected":I
    goto :goto_0

    #@4b
    .line 2510
    .end local v3    # "nextSelected":I
    :cond_4
    move v3, v0

    #@4c
    .restart local v3    # "nextSelected":I
    goto :goto_0

    #@4d
    .line 2512
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_5
    return v7

    #@4e
    .line 2519
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
    .line 2985
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3
    move-result v2

    #@4
    .line 2986
    .local v2, "numChildren":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 2987
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 2988
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 2989
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@13
    add-int/2addr v3, v1

    #@14
    return v3

    #@15
    .line 2986
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 2992
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
    .line 2720
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v5

    #@4
    .line 2721
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@7
    move-result v4

    #@8
    .line 2722
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@a
    iget v1, v6, Landroid/graphics/Rect;->left:I

    #@c
    .line 2723
    .local v1, "childLeft":I
    add-int v2, v1, v5

    #@e
    .line 2724
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@11
    move-result v3

    #@12
    .line 2725
    .local v3, "childTop":I
    add-int v0, v3, v4

    #@14
    .line 2726
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    #@17
    .line 2719
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
    .line 337
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 338
    .local v2, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@7
    .line 339
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    #@d
    .line 340
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@f
    if-ne v3, p1, :cond_1

    #@11
    .line 341
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@14
    .line 336
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    #@15
    .line 338
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 3068
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@4
    .line 3070
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
    .line 3071
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@10
    iget v6, v9, Landroid/graphics/Rect;->top:I

    #@12
    .line 3072
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@14
    .line 3074
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    #@16
    .line 3078
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@19
    move-result v7

    #@1a
    .line 3079
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    #@1c
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 3080
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@23
    move-result v9

    #@24
    if-ge v9, v5, :cond_0

    #@26
    .line 3081
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@28
    add-int/2addr v9, v7

    #@29
    add-int/lit8 v3, v9, -0x1

    #@2b
    .line 3082
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    #@2d
    add-int/lit8 v9, v9, -0x1

    #@2f
    if-ge v3, v9, :cond_0

    #@31
    .line 3083
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    #@34
    move-result-object v1

    #@35
    .line 3084
    add-int/lit8 v7, v7, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3093
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@3b
    move-result v9

    #@3c
    if-ge v9, v5, :cond_1

    #@3e
    .line 3094
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@41
    move-result v9

    #@42
    sub-int v9, v5, v9

    #@44
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@47
    .line 3098
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@4a
    move-result-object v0

    #@4b
    .line 3099
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@4e
    move-result v9

    #@4f
    if-ge v9, v6, :cond_7

    #@51
    .line 3100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    #@57
    .line 3101
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@59
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@5c
    move-result v9

    #@5d
    if-eqz v9, :cond_2

    #@5f
    .line 3102
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@61
    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@64
    .line 3104
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    #@67
    .line 3105
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@6a
    move-result-object v0

    #@6b
    .line 3106
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@6d
    add-int/lit8 v9, v9, 0x1

    #@6f
    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@71
    goto :goto_1

    #@72
    .line 3110
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@75
    move-result-object v0

    #@76
    .line 3113
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
    .line 3114
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@82
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    #@85
    move-result-object v0

    #@86
    .line 3115
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@88
    add-int/lit8 v9, v9, -0x1

    #@8a
    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@8c
    goto :goto_2

    #@8d
    .line 3120
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@90
    move-result v9

    #@91
    if-le v9, v6, :cond_5

    #@93
    .line 3121
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@96
    move-result v9

    #@97
    sub-int v9, v6, v9

    #@99
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    #@9c
    .line 3124
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@9f
    move-result v9

    #@a0
    add-int/lit8 v2, v9, -0x1

    #@a2
    .line 3125
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a5
    move-result-object v1

    #@a6
    .line 3128
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@a9
    move-result v9

    #@aa
    if-le v9, v5, :cond_7

    #@ac
    .line 3129
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@af
    move-result-object v4

    #@b0
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    #@b2
    .line 3130
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@b4
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@b7
    move-result v9

    #@b8
    if-eqz v9, :cond_6

    #@ba
    .line 3131
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@bc
    add-int/2addr v9, v2

    #@bd
    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@c0
    .line 3133
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    #@c3
    .line 3134
    add-int/lit8 v2, v2, -0x1

    #@c5
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@c8
    move-result-object v1

    #@c9
    goto :goto_3

    #@ca
    .line 3067
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_7
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
    .param p7, "recycled"    # Z

    #@0
    .prologue
    .line 1899
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
    .line 1901
    if-eqz p6, :cond_8

    #@e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    #@11
    move-result v11

    #@12
    .line 1902
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
    .line 1903
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    #@1e
    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    #@20
    .line 1904
    .local v13, "mode":I
    if-lez v13, :cond_b

    #@22
    const/16 v19, 0x3

    #@24
    move/from16 v0, v19

    #@26
    if-ge v13, v0, :cond_b

    #@28
    .line 1905
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
    .line 1906
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
    .line 1907
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_d

    #@41
    if-nez v17, :cond_d

    #@43
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    #@46
    move-result v14

    #@47
    .line 1911
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4a
    move-result-object v15

    #@4b
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    #@4d
    .line 1912
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_0

    #@4f
    .line 1913
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@52
    move-result-object v15

    #@53
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    #@55
    .line 1915
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
    .line 1917
    if-eqz p7, :cond_1

    #@69
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@6b
    move/from16 v19, v0

    #@6d
    if-eqz v19, :cond_2

    #@6f
    :cond_1
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@71
    move/from16 v19, v0

    #@73
    if-eqz v19, :cond_f

    #@75
    .line 1918
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@77
    move/from16 v19, v0

    #@79
    const/16 v20, -0x2

    #@7b
    move/from16 v0, v19

    #@7d
    move/from16 v1, v20

    #@7f
    if-ne v0, v1, :cond_f

    #@81
    .line 1919
    :cond_2
    if-eqz p4, :cond_e

    #@83
    const/16 v19, -0x1

    #@85
    :goto_5
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, p1

    #@89
    move/from16 v2, v19

    #@8b
    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@8e
    .line 1928
    :goto_6
    if-eqz v17, :cond_3

    #@90
    .line 1929
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    #@95
    .line 1932
    :cond_3
    if-eqz v16, :cond_4

    #@97
    .line 1933
    move-object/from16 v0, p1

    #@99
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    #@9c
    .line 1936
    :cond_4
    move-object/from16 v0, p0

    #@9e
    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    #@a0
    move/from16 v19, v0

    #@a2
    if-eqz v19, :cond_5

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@a8
    move-object/from16 v19, v0

    #@aa
    if-eqz v19, :cond_5

    #@ac
    .line 1937
    move-object/from16 v0, p1

    #@ae
    instance-of v0, v0, Landroid/widget/Checkable;

    #@b0
    move/from16 v19, v0

    #@b2
    if-eqz v19, :cond_12

    #@b4
    move-object/from16 v19, p1

    #@b6
    .line 1938
    check-cast v19, Landroid/widget/Checkable;

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@bc
    move-object/from16 v20, v0

    #@be
    move-object/from16 v0, v20

    #@c0
    move/from16 v1, p2

    #@c2
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@c5
    move-result v20

    #@c6
    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    #@c9
    .line 1945
    :cond_5
    :goto_7
    if-eqz v14, :cond_14

    #@cb
    .line 1946
    move-object/from16 v0, p0

    #@cd
    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    #@cf
    move/from16 v19, v0

    #@d1
    .line 1947
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@d5
    move-object/from16 v20, v0

    #@d7
    move-object/from16 v0, v20

    #@d9
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@db
    move/from16 v20, v0

    #@dd
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@e1
    move-object/from16 v21, v0

    #@e3
    move-object/from16 v0, v21

    #@e5
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@e7
    move/from16 v21, v0

    #@e9
    add-int v20, v20, v21

    #@eb
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    #@ed
    move/from16 v21, v0

    #@ef
    .line 1946
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@f2
    move-result v8

    #@f3
    .line 1948
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    #@f5
    .line 1950
    .local v12, "lpHeight":I
    if-lez v12, :cond_13

    #@f7
    .line 1951
    const/high16 v19, 0x40000000    # 2.0f

    #@f9
    move/from16 v0, v19

    #@fb
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@fe
    move-result v5

    #@ff
    .line 1956
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    #@101
    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    #@104
    .line 1961
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@107
    move-result v18

    #@108
    .line 1962
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@10b
    move-result v9

    #@10c
    .line 1963
    .local v9, "h":I
    if-eqz p4, :cond_15

    #@10e
    move/from16 v7, p3

    #@110
    .line 1965
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_16

    #@112
    .line 1966
    add-int v6, p5, v18

    #@114
    .line 1967
    .local v6, "childRight":I
    add-int v4, v7, v9

    #@116
    .line 1968
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    #@118
    move/from16 v1, p5

    #@11a
    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    #@11d
    .line 1974
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    #@11f
    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    #@121
    move/from16 v19, v0

    #@123
    if-eqz v19, :cond_6

    #@125
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@128
    move-result v19

    #@129
    if-eqz v19, :cond_17

    #@12b
    .line 1978
    :cond_6
    :goto_c
    if-eqz p7, :cond_7

    #@12d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@130
    move-result-object v19

    #@131
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    #@133
    move-object/from16 v0, v19

    #@135
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@137
    move/from16 v19, v0

    #@139
    move/from16 v0, v19

    #@13b
    move/from16 v1, p2

    #@13d
    if-eq v0, v1, :cond_7

    #@13f
    .line 1980
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@142
    .line 1983
    :cond_7
    const-wide/16 v20, 0x8

    #@144
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    #@147
    .line 1898
    return-void

    #@148
    .line 1901
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

    #@149
    .local v11, "isSelected":Z
    goto/16 :goto_0

    #@14b
    .line 1902
    .end local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    #@14d
    .restart local v17    # "updateChildSelected":Z
    goto/16 :goto_1

    #@14f
    .line 1905
    .restart local v13    # "mode":I
    :cond_a
    const/4 v10, 0x0

    #@150
    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    #@152
    .line 1904
    .end local v10    # "isPressed":Z
    :cond_b
    const/4 v10, 0x0

    #@153
    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    #@155
    .line 1906
    :cond_c
    const/16 v16, 0x0

    #@157
    .restart local v16    # "updateChildPressed":Z
    goto/16 :goto_3

    #@159
    .line 1907
    :cond_d
    const/4 v14, 0x1

    #@15a
    .local v14, "needToMeasure":Z
    goto/16 :goto_4

    #@15c
    .line 1919
    .end local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    #@15e
    goto/16 :goto_5

    #@160
    .line 1921
    :cond_f
    const/16 v19, 0x0

    #@162
    move/from16 v0, v19

    #@164
    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@166
    .line 1922
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@168
    move/from16 v19, v0

    #@16a
    const/16 v20, -0x2

    #@16c
    move/from16 v0, v19

    #@16e
    move/from16 v1, v20

    #@170
    if-ne v0, v1, :cond_10

    #@172
    .line 1923
    const/16 v19, 0x1

    #@174
    move/from16 v0, v19

    #@176
    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@178
    .line 1925
    :cond_10
    if-eqz p4, :cond_11

    #@17a
    const/16 v19, -0x1

    #@17c
    :goto_d
    const/16 v20, 0x1

    #@17e
    move-object/from16 v0, p0

    #@180
    move-object/from16 v1, p1

    #@182
    move/from16 v2, v19

    #@184
    move/from16 v3, v20

    #@186
    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    #@189
    goto/16 :goto_6

    #@18b
    :cond_11
    const/16 v19, 0x0

    #@18d
    goto :goto_d

    #@18e
    .line 1939
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    #@191
    move-result-object v19

    #@192
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@195
    move-result-object v19

    #@196
    move-object/from16 v0, v19

    #@198
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@19a
    move/from16 v19, v0

    #@19c
    .line 1940
    const/16 v20, 0xb

    #@19e
    .line 1939
    move/from16 v0, v19

    #@1a0
    move/from16 v1, v20

    #@1a2
    if-lt v0, v1, :cond_5

    #@1a4
    .line 1941
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@1a8
    move-object/from16 v19, v0

    #@1aa
    move-object/from16 v0, v19

    #@1ac
    move/from16 v1, p2

    #@1ae
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1b1
    move-result v19

    #@1b2
    move-object/from16 v0, p1

    #@1b4
    move/from16 v1, v19

    #@1b6
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    #@1b9
    goto/16 :goto_7

    #@1bb
    .line 1953
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    #@1be
    move-result v19

    #@1bf
    .line 1954
    const/16 v20, 0x0

    #@1c1
    .line 1953
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@1c4
    move-result v5

    #@1c5
    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    #@1c7
    .line 1958
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    #@1ca
    goto/16 :goto_9

    #@1cc
    .line 1963
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v7, p3, v9

    #@1ce
    .restart local v7    # "childTop":I
    goto/16 :goto_a

    #@1d0
    .line 1970
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@1d3
    move-result v19

    #@1d4
    sub-int v19, p5, v19

    #@1d6
    move-object/from16 v0, p1

    #@1d8
    move/from16 v1, v19

    #@1da
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1dd
    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@1e0
    move-result v19

    #@1e1
    sub-int v19, v7, v19

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    move/from16 v1, v19

    #@1e7
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@1ea
    goto/16 :goto_b

    #@1ec
    .line 1975
    :cond_17
    const/16 v19, 0x1

    #@1ee
    move-object/from16 v0, p1

    #@1f0
    move/from16 v1, v19

    #@1f2
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@1f5
    goto/16 :goto_c
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    #@0
    .prologue
    .line 3841
    move-object/from16 v0, p0

    #@2
    iget v3, v0, Landroid/widget/ListView;->mDividerHeight:I

    #@4
    .line 3842
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@8
    move-object/from16 v19, v0

    #@a
    .line 3843
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@e
    move-object/from16 v18, v0

    #@10
    .line 3844
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_2

    #@12
    const/4 v6, 0x1

    #@13
    .line 3845
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_3

    #@15
    const/4 v5, 0x1

    #@16
    .line 3846
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
    .line 3848
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_1

    #@23
    .line 3849
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
    .line 3850
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    #@32
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@34
    move/from16 v16, v0

    #@36
    .line 3851
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
    .line 3852
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
    .line 3853
    .local v9, "footerLimit":I
    move/from16 v0, p1

    #@4e
    if-ge v0, v10, :cond_6

    #@50
    const/4 v14, 0x1

    #@51
    .line 3854
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    #@53
    if-lt v0, v9, :cond_7

    #@55
    const/4 v13, 0x1

    #@56
    .line 3855
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    #@58
    iget-boolean v11, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@5a
    .line 3856
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    #@5c
    iget-boolean v8, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@5e
    .line 3857
    .local v8, "footerDividers":Z
    if-nez v11, :cond_8

    #@60
    if-eqz v14, :cond_8

    #@62
    .line 3896
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
    .line 3844
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_2
    const/4 v6, 0x0

    #@66
    .restart local v6    # "drawOverscrollHeader":Z
    goto :goto_0

    #@67
    .line 3845
    :cond_3
    const/4 v5, 0x0

    #@68
    .restart local v5    # "drawOverscrollFooter":Z
    goto :goto_1

    #@69
    .line 3846
    :cond_4
    const/4 v4, 0x0

    #@6a
    .restart local v4    # "drawDividers":Z
    goto :goto_2

    #@6b
    .line 3849
    :cond_5
    const/4 v7, 0x1

    #@6c
    .restart local v7    # "fillForMissingDividers":Z
    goto :goto_3

    #@6d
    .line 3853
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_6
    const/4 v14, 0x0

    #@6e
    .restart local v14    # "isHeader":Z
    goto :goto_4

    #@6f
    .line 3854
    :cond_7
    const/4 v13, 0x0

    #@70
    .restart local v13    # "isFooter":Z
    goto :goto_5

    #@71
    .line 3857
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    :cond_8
    if-nez v8, :cond_9

    #@73
    if-nez v13, :cond_1

    #@75
    .line 3858
    :cond_9
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@79
    .line 3859
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    #@7b
    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@7d
    move/from16 v22, v0

    #@7f
    if-nez v22, :cond_f

    #@81
    .line 3860
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
    .line 3861
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_a

    #@8c
    if-nez v15, :cond_1

    #@8e
    .line 3862
    :cond_a
    add-int/lit8 v17, p1, 0x1

    #@90
    .line 3866
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
    .line 3867
    move/from16 v0, v17

    #@9e
    if-lt v0, v10, :cond_e

    #@a0
    :cond_b
    if-nez v15, :cond_c

    #@a2
    .line 3868
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
    .line 3869
    move/from16 v0, v17

    #@b0
    if-ge v0, v9, :cond_e

    #@b2
    .line 3870
    :cond_c
    const/16 v22, 0x1

    #@b4
    return v22

    #@b5
    .line 3860
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    const/4 v15, 0x0

    #@b6
    .restart local v15    # "isLastItem":Z
    goto :goto_6

    #@b7
    .line 3871
    .restart local v17    # "nextIndex":I
    :cond_e
    if-eqz v7, :cond_1

    #@b9
    .line 3872
    const/16 v22, 0x1

    #@bb
    return v22

    #@bc
    .line 3876
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_f
    if-eqz v6, :cond_12

    #@be
    const/16 v21, 0x1

    #@c0
    .line 3877
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
    .line 3878
    .local v12, "isFirstItem":Z
    :goto_8
    if-nez v12, :cond_1

    #@c9
    .line 3879
    add-int/lit8 v20, p1, -0x1

    #@cb
    .line 3883
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
    .line 3884
    move/from16 v0, v20

    #@d9
    if-lt v0, v10, :cond_14

    #@db
    :cond_10
    if-nez v12, :cond_11

    #@dd
    .line 3885
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
    .line 3886
    move/from16 v0, v20

    #@eb
    if-ge v0, v9, :cond_14

    #@ed
    .line 3887
    :cond_11
    const/16 v22, 0x1

    #@ef
    return v22

    #@f0
    .line 3876
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_12
    const/16 v21, 0x0

    #@f2
    .restart local v21    # "start":I
    goto :goto_7

    #@f3
    .line 3877
    :cond_13
    const/4 v12, 0x0

    #@f4
    .restart local v12    # "isFirstItem":Z
    goto :goto_8

    #@f5
    .line 3888
    .restart local v20    # "previousIndex":I
    :cond_14
    if-eqz v7, :cond_1

    #@f7
    .line 3889
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
    .line 563
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 564
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
    .line 565
    .local v0, "bottomOfBottomChild":I
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@11
    add-int/2addr v5, v1

    #@12
    add-int/lit8 v2, v5, -0x1

    #@14
    .line 567
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
    .line 569
    .local v3, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    #@23
    add-int/lit8 v5, v5, -0x1

    #@25
    if-lt v2, v5, :cond_0

    #@27
    .line 570
    if-ge v0, v3, :cond_1

    #@29
    .line 569
    :cond_0
    :goto_0
    return v4

    #@2a
    .line 570
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
    .line 555
    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    #@4
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@6
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@8
    add-int v0, v3, v4

    #@a
    .line 556
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
    .line 400
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@5
    .line 399
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    #@0
    .prologue
    .line 364
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    #@5
    .line 365
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@7
    .line 366
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    #@9
    .line 367
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@b
    .line 368
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 369
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@12
    and-int/2addr v1, p3

    #@13
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@15
    .line 372
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 373
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1b
    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 374
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
    .line 379
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 380
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@32
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@35
    .line 363
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 306
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@5
    .line 305
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    #@0
    .prologue
    .line 270
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    #@5
    .line 271
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@7
    .line 272
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    #@9
    .line 273
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@b
    .line 274
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 275
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@12
    and-int/2addr v1, p3

    #@13
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@15
    .line 278
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 279
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1b
    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 280
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
    .line 285
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 286
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@32
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@35
    .line 269
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 3534
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@2
    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 3511
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
    .line 2470
    const/4 v1, 0x1

    #@2
    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    #@4
    .line 2471
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    #@7
    move-result v0

    #@8
    .line 2472
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    #@a
    .line 2473
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 2477
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    #@13
    .line 2475
    return v0

    #@14
    .line 2476
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    #@15
    .line 2477
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    #@17
    .line 2476
    throw v1
.end method

.method protected canAnimate()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1988
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
    .line 3248
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    #@4
    move/from16 v39, v0

    #@6
    if-eqz v39, :cond_0

    #@8
    .line 3249
    const/16 v39, 0x1

    #@a
    move/from16 v0, v39

    #@c
    move-object/from16 v1, p0

    #@e
    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    #@10
    .line 3253
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    #@14
    .line 3254
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@18
    move-object/from16 v33, v0

    #@1a
    .line 3255
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@1e
    move-object/from16 v32, v0

    #@20
    .line 3256
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_7

    #@22
    const/4 v13, 0x1

    #@23
    .line 3257
    .local v13, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_8

    #@25
    const/4 v12, 0x1

    #@26
    .line 3258
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
    .line 3260
    .local v11, "drawDividers":Z
    :goto_2
    if-nez v11, :cond_1

    #@33
    if-nez v13, :cond_1

    #@35
    if-eqz v12, :cond_16

    #@37
    .line 3262
    :cond_1
    move-object/from16 v0, p0

    #@39
    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@3b
    .line 3263
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
    .line 3264
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
    .line 3266
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@62
    move-result v9

    #@63
    .line 3267
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
    .line 3268
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@71
    move/from16 v27, v0

    #@73
    .line 3269
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
    .line 3270
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    #@81
    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@83
    move/from16 v21, v0

    #@85
    .line 3271
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    #@87
    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@89
    move/from16 v18, v0

    #@8b
    .line 3272
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    #@8d
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@8f
    move/from16 v17, v0

    #@91
    .line 3273
    .local v17, "first":I
    move-object/from16 v0, p0

    #@93
    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@95
    .line 3274
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    #@97
    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@99
    .line 3279
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
    .line 3281
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
    .line 3282
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
    .line 3283
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
    .line 3285
    :cond_3
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@d5
    move-object/from16 v34, v0

    #@d7
    .line 3287
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    #@d8
    .line 3288
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    #@d9
    .line 3289
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
    .line 3290
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
    .line 3291
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
    .line 3294
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
    .line 3295
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    #@117
    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@119
    move/from16 v39, v0

    #@11b
    if-nez v39, :cond_17

    #@11d
    .line 3296
    const/4 v6, 0x0

    #@11e
    .line 3299
    .local v6, "bottom":I
    move-object/from16 v0, p0

    #@120
    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    #@122
    move/from16 v36, v0

    #@124
    .line 3300
    .local v36, "scrollY":I
    if-lez v9, :cond_5

    #@126
    if-gez v36, :cond_5

    #@128
    .line 3301
    if-eqz v13, :cond_b

    #@12a
    .line 3302
    const/16 v39, 0x0

    #@12c
    move/from16 v0, v39

    #@12e
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@130
    .line 3303
    move/from16 v0, v36

    #@132
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@134
    .line 3304
    move-object/from16 v0, p0

    #@136
    move-object/from16 v1, p1

    #@138
    move-object/from16 v2, v33

    #@13a
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@13d
    .line 3312
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
    .line 3313
    add-int v28, v17, v22

    #@145
    .line 3314
    .local v28, "itemIndex":I
    move/from16 v0, v28

    #@147
    move/from16 v1, v20

    #@149
    if-ge v0, v1, :cond_c

    #@14b
    const/16 v25, 0x1

    #@14d
    .line 3315
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
    .line 3316
    .local v24, "isFooter":Z
    :goto_7
    if-nez v21, :cond_e

    #@157
    if-eqz v25, :cond_e

    #@159
    .line 3312
    :cond_6
    :goto_8
    add-int/lit8 v22, v22, 0x1

    #@15b
    goto :goto_5

    #@15c
    .line 3256
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
    .line 3257
    :cond_8
    const/4 v12, 0x0

    #@160
    .restart local v12    # "drawOverscrollFooter":Z
    goto/16 :goto_1

    #@162
    .line 3258
    :cond_9
    const/4 v11, 0x0

    #@163
    .restart local v11    # "drawDividers":Z
    goto/16 :goto_2

    #@165
    .line 3279
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    :cond_a
    const/16 v16, 0x1

    #@167
    .restart local v16    # "fillForMissingDividers":Z
    goto/16 :goto_3

    #@169
    .line 3305
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "scrollY":I
    :cond_b
    if-eqz v11, :cond_5

    #@16b
    .line 3306
    const/16 v39, 0x0

    #@16d
    move/from16 v0, v39

    #@16f
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@171
    .line 3307
    neg-int v0, v10

    #@172
    move/from16 v39, v0

    #@174
    move/from16 v0, v39

    #@176
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@178
    .line 3308
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
    .line 3314
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_c
    const/16 v25, 0x0

    #@186
    .restart local v25    # "isHeader":Z
    goto :goto_6

    #@187
    .line 3315
    :cond_d
    const/16 v24, 0x0

    #@189
    .restart local v24    # "isFooter":Z
    goto :goto_7

    #@18a
    .line 3316
    :cond_e
    if-nez v18, :cond_f

    #@18c
    if-nez v24, :cond_6

    #@18e
    .line 3317
    :cond_f
    move-object/from16 v0, p0

    #@190
    move/from16 v1, v22

    #@192
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@195
    move-result-object v8

    #@196
    .line 3318
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    #@199
    move-result v6

    #@19a
    .line 3319
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
    .line 3321
    .local v26, "isLastItem":Z
    :goto_9
    if-eqz v11, :cond_6

    #@1a6
    move/from16 v0, v29

    #@1a8
    if-ge v6, v0, :cond_6

    #@1aa
    .line 3322
    if-eqz v12, :cond_10

    #@1ac
    if-nez v26, :cond_6

    #@1ae
    .line 3323
    :cond_10
    add-int/lit8 v30, v28, 0x1

    #@1b0
    .line 3327
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
    .line 3328
    move/from16 v0, v30

    #@1be
    move/from16 v1, v20

    #@1c0
    if-lt v0, v1, :cond_14

    #@1c2
    :cond_11
    if-nez v26, :cond_12

    #@1c4
    .line 3329
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
    .line 3330
    move/from16 v0, v30

    #@1d2
    move/from16 v1, v19

    #@1d4
    if-ge v0, v1, :cond_14

    #@1d6
    .line 3331
    :cond_12
    iput v6, v7, Landroid/graphics/Rect;->top:I

    #@1d8
    .line 3332
    add-int v39, v6, v10

    #@1da
    move/from16 v0, v39

    #@1dc
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@1de
    .line 3333
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
    .line 3319
    .end local v26    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_13
    const/16 v26, 0x0

    #@1eb
    .restart local v26    # "isLastItem":Z
    goto :goto_9

    #@1ec
    .line 3334
    .restart local v30    # "nextIndex":I
    :cond_14
    if-eqz v16, :cond_6

    #@1ee
    .line 3335
    iput v6, v7, Landroid/graphics/Rect;->top:I

    #@1f0
    .line 3336
    add-int v39, v6, v10

    #@1f2
    move/from16 v0, v39

    #@1f4
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@1f6
    .line 3337
    move-object/from16 v0, p1

    #@1f8
    move-object/from16 v1, v34

    #@1fa
    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@1fd
    goto/16 :goto_8

    #@1ff
    .line 3343
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
    .line 3344
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
    .line 3345
    move/from16 v0, v31

    #@219
    if-le v0, v6, :cond_16

    #@21b
    .line 3346
    iput v6, v7, Landroid/graphics/Rect;->top:I

    #@21d
    .line 3347
    move/from16 v0, v31

    #@21f
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@221
    .line 3348
    move-object/from16 v0, p0

    #@223
    move-object/from16 v1, p1

    #@225
    move-object/from16 v2, v32

    #@227
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@22a
    .line 3411
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
    .line 3247
    return-void

    #@22e
    .line 3353
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
    .line 3355
    .restart local v36    # "scrollY":I
    if-lez v9, :cond_18

    #@236
    if-eqz v13, :cond_18

    #@238
    .line 3356
    move/from16 v0, v36

    #@23a
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@23c
    .line 3357
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
    .line 3358
    move-object/from16 v0, p0

    #@250
    move-object/from16 v1, p1

    #@252
    move-object/from16 v2, v33

    #@254
    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    #@257
    .line 3361
    :cond_18
    if-eqz v13, :cond_1a

    #@259
    const/16 v37, 0x1

    #@25b
    .line 3362
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
    .line 3363
    add-int v28, v17, v22

    #@263
    .line 3364
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    #@265
    move/from16 v1, v20

    #@267
    if-ge v0, v1, :cond_1b

    #@269
    const/16 v25, 0x1

    #@26b
    .line 3365
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
    .line 3366
    .restart local v24    # "isFooter":Z
    :goto_e
    if-nez v21, :cond_1d

    #@275
    if-eqz v25, :cond_1d

    #@277
    .line 3362
    :cond_19
    :goto_f
    add-int/lit8 v22, v22, 0x1

    #@279
    goto :goto_c

    #@27a
    .line 3361
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v37    # "start":I
    :cond_1a
    const/16 v37, 0x0

    #@27c
    .restart local v37    # "start":I
    goto :goto_b

    #@27d
    .line 3364
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_1b
    const/16 v25, 0x0

    #@27f
    .restart local v25    # "isHeader":Z
    goto :goto_d

    #@280
    .line 3365
    :cond_1c
    const/16 v24, 0x0

    #@282
    .restart local v24    # "isFooter":Z
    goto :goto_e

    #@283
    .line 3366
    :cond_1d
    if-nez v18, :cond_1e

    #@285
    if-nez v24, :cond_19

    #@287
    .line 3367
    :cond_1e
    move-object/from16 v0, p0

    #@289
    move/from16 v1, v22

    #@28b
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@28e
    move-result-object v8

    #@28f
    .line 3368
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@292
    move-result v38

    #@293
    .line 3369
    .local v38, "top":I
    if-eqz v11, :cond_19

    #@295
    move/from16 v0, v38

    #@297
    if-le v0, v15, :cond_19

    #@299
    .line 3370
    move/from16 v0, v22

    #@29b
    move/from16 v1, v37

    #@29d
    if-ne v0, v1, :cond_21

    #@29f
    const/16 v23, 0x1

    #@2a1
    .line 3371
    .local v23, "isFirstItem":Z
    :goto_10
    add-int/lit8 v35, v28, -0x1

    #@2a3
    .line 3375
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
    .line 3376
    move/from16 v0, v35

    #@2b1
    move/from16 v1, v20

    #@2b3
    if-lt v0, v1, :cond_22

    #@2b5
    :cond_1f
    if-nez v23, :cond_20

    #@2b7
    .line 3377
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
    .line 3378
    move/from16 v0, v35

    #@2c5
    move/from16 v1, v19

    #@2c7
    if-ge v0, v1, :cond_22

    #@2c9
    .line 3379
    :cond_20
    sub-int v39, v38, v10

    #@2cb
    move/from16 v0, v39

    #@2cd
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@2cf
    .line 3380
    move/from16 v0, v38

    #@2d1
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@2d3
    .line 3385
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
    .line 3370
    .end local v23    # "isFirstItem":Z
    .end local v35    # "previousIndex":I
    :cond_21
    const/16 v23, 0x0

    #@2e1
    .restart local v23    # "isFirstItem":Z
    goto :goto_10

    #@2e2
    .line 3386
    .restart local v35    # "previousIndex":I
    :cond_22
    if-eqz v16, :cond_19

    #@2e4
    .line 3387
    sub-int v39, v38, v10

    #@2e6
    move/from16 v0, v39

    #@2e8
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@2ea
    .line 3388
    move/from16 v0, v38

    #@2ec
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@2ee
    .line 3389
    move-object/from16 v0, p1

    #@2f0
    move-object/from16 v1, v34

    #@2f2
    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@2f5
    goto :goto_f

    #@2f6
    .line 3395
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
    .line 3396
    if-eqz v12, :cond_24

    #@2fc
    .line 3397
    move-object/from16 v0, p0

    #@2fe
    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    #@300
    .line 3398
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    #@302
    .line 3399
    add-int v39, v3, v36

    #@304
    move/from16 v0, v39

    #@306
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@308
    .line 3400
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
    .line 3401
    .end local v3    # "absListBottom":I
    :cond_24
    if-eqz v11, :cond_16

    #@315
    .line 3402
    move/from16 v0, v29

    #@317
    iput v0, v7, Landroid/graphics/Rect;->top:I

    #@319
    .line 3403
    add-int v39, v29, v10

    #@31b
    move/from16 v0, v39

    #@31d
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    #@31f
    .line 3404
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
    .line 2142
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v1

    #@4
    .line 2143
    .local v1, "handled":Z
    if-nez v1, :cond_0

    #@6
    .line 2145
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 2146
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 2149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@19
    move-result v1

    #@1a
    .line 2152
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
    .line 3416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@3
    move-result v0

    #@4
    .line 3417
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 3418
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    #@f
    .line 3420
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
    .line 3434
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    .line 3436
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@5
    .line 3437
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@8
    .line 3432
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3230
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    .line 3232
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    .line 3233
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@a
    .line 3235
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@c
    iget v3, p3, Landroid/graphics/Rect;->top:I

    #@e
    sub-int v1, v2, v3

    #@10
    .line 3236
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    #@12
    .line 3237
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr v2, v0

    #@15
    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    #@17
    .line 3240
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1a
    .line 3241
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 3243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@20
    .line 3229
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3213
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    .line 3215
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    .line 3216
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@a
    .line 3218
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@c
    iget v3, p3, Landroid/graphics/Rect;->top:I

    #@e
    sub-int v1, v2, v3

    #@10
    .line 3219
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    #@12
    .line 3220
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@14
    sub-int/2addr v2, v0

    #@15
    iput v2, p3, Landroid/graphics/Rect;->top:I

    #@17
    .line 3223
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1a
    .line 3224
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 3226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@20
    .line 3212
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 3959
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 3961
    const-string/jumbo v0, "recycleOnMeasure"

    #@6
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@d
    .line 3958
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
    .line 658
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@6
    move-result v0

    #@7
    .line 659
    .local v0, "count":I
    if-eqz p1, :cond_2

    #@9
    .line 660
    const/4 v2, 0x0

    #@a
    .line 661
    .local v2, "paddingTop":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@c
    and-int/lit8 v4, v4, 0x22

    #@e
    if-ne v4, v6, :cond_0

    #@10
    .line 662
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    #@13
    move-result v2

    #@14
    .line 664
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
    .line 666
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@26
    add-int/2addr v4, v0

    #@27
    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    #@2a
    .line 667
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@2d
    move-result v4

    #@2e
    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    #@31
    .line 657
    .end local v2    # "paddingTop":I
    :goto_1
    return-void

    #@32
    .line 665
    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_1
    move v3, v2

    #@33
    .restart local v3    # "startOffset":I
    goto :goto_0

    #@34
    .line 669
    .end local v2    # "paddingTop":I
    .end local v3    # "startOffset":I
    :cond_2
    const/4 v1, 0x0

    #@35
    .line 670
    .local v1, "paddingBottom":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    #@37
    and-int/lit8 v4, v4, 0x22

    #@39
    if-ne v4, v6, :cond_3

    #@3b
    .line 671
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    #@3e
    move-result v1

    #@3f
    .line 673
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
    .line 675
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@4f
    add-int/lit8 v4, v4, -0x1

    #@51
    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@54
    .line 676
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@57
    move-result v4

    #@58
    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    #@5b
    goto :goto_1

    #@5c
    .line 674
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
    .line 1320
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1321
    .local v0, "childCount":I
    if-lez v0, :cond_3

    #@6
    .line 1322
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@8
    if-nez v3, :cond_1

    #@a
    .line 1323
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@d
    .line 1324
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    .line 1325
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@14
    move-result v3

    #@15
    if-gt p1, v3, :cond_0

    #@17
    .line 1326
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@19
    add-int/2addr v3, v1

    #@1a
    return v3

    #@1b
    .line 1323
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1330
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@20
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@22
    .line 1331
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v2

    #@26
    .line 1332
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@29
    move-result v3

    #@2a
    if-lt p1, v3, :cond_2

    #@2c
    .line 1333
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@2e
    add-int/2addr v3, v1

    #@2f
    return v3

    #@30
    .line 1330
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@32
    goto :goto_1

    #@33
    .line 1338
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
    .line 3767
    if-eqz p1, :cond_2

    #@3
    .line 3768
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 3771
    .local v1, "len":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@a
    .line 3772
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    .line 3774
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    #@14
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 3771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 3775
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    .line 3777
    if-eqz v2, :cond_0

    #@23
    .line 3778
    return-object v2

    #@24
    .line 3783
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
    .line 3745
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 3746
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    .line 3747
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3748
    if-eqz v0, :cond_0

    #@e
    .line 3749
    return-object v0

    #@f
    .line 3752
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 3753
    if-eqz v0, :cond_1

    #@17
    .line 3754
    return-object v0

    #@18
    .line 3757
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
    .line 3672
    if-eqz p1, :cond_1

    #@3
    .line 3673
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 3676
    .local v1, "len":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 3677
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    .line 3679
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_0

    #@18
    .line 3680
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    .line 3682
    if-eqz v2, :cond_0

    #@1e
    .line 3683
    return-object v2

    #@1f
    .line 3676
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 3688
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
    .line 3653
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 3654
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    .line 3655
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3656
    if-eqz v0, :cond_0

    #@e
    .line 3657
    return-object v0

    #@f
    .line 3659
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 3660
    if-eqz v0, :cond_1

    #@17
    .line 3661
    return-object v0

    #@18
    .line 3664
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
    .line 3718
    if-eqz p1, :cond_1

    #@3
    .line 3719
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 3722
    .local v1, "len":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 3723
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@10
    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@12
    .line 3725
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_0

    #@18
    .line 3726
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    .line 3728
    if-eqz v2, :cond_0

    #@1e
    .line 3729
    return-object v2

    #@1f
    .line 3722
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 3734
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
    .line 3698
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 3699
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    .line 3700
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 3701
    if-eqz v0, :cond_0

    #@e
    .line 3702
    return-object v0

    #@f
    .line 3705
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@11
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 3706
    if-eqz v0, :cond_1

    #@17
    .line 3707
    return-object v0

    #@18
    .line 3710
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
    .line 2378
    const/4 v1, 0x0

    #@3
    .line 2379
    .local v1, "moved":Z
    const/16 v3, 0x21

    #@5
    if-ne p1, v3, :cond_3

    #@7
    .line 2380
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 2381
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@d
    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    #@10
    move-result v2

    #@11
    .line 2382
    .local v2, "position":I
    if-ltz v2, :cond_0

    #@13
    .line 2383
    iput v5, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@15
    .line 2384
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    #@18
    .line 2385
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@1b
    .line 2387
    :cond_0
    const/4 v1, 0x1

    #@1c
    .line 2403
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
    .line 2408
    :cond_2
    :goto_1
    return v1

    #@25
    .line 2389
    :cond_3
    const/16 v3, 0x82

    #@27
    if-ne p1, v3, :cond_1

    #@29
    .line 2390
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    #@2b
    add-int/lit8 v0, v3, -0x1

    #@2d
    .line 2391
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@2f
    if-ge v3, v0, :cond_1

    #@31
    .line 2393
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@33
    .line 2392
    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    #@36
    move-result v2

    #@37
    .line 2394
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    #@39
    .line 2395
    const/4 v3, 0x3

    #@3a
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@3c
    .line 2396
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    #@3f
    .line 2397
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@42
    .line 2399
    :cond_4
    const/4 v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2404
    .end local v0    # "lastItem":I
    .end local v2    # "position":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@47
    .line 2405
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@4a
    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 3901
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
    .line 440
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
    .line 441
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
    .line 3798
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
    .line 3799
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    #@10
    move-result-object v8

    #@11
    return-object v8

    #@12
    .line 3804
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
    .line 3805
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@20
    .line 3806
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    #@23
    move-result v3

    #@24
    .line 3807
    .local v3, "count":I
    new-array v5, v3, [J

    #@26
    .line 3808
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@28
    .line 3810
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    #@29
    .line 3811
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
    .line 3812
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@30
    move-result v8

    #@31
    if-eqz v8, :cond_4

    #@33
    .line 3813
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
    .line 3811
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@41
    move v2, v1

    #@42
    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_0

    #@43
    .line 3819
    :cond_1
    if-ne v2, v3, :cond_2

    #@45
    .line 3820
    return-object v5

    #@46
    .line 3822
    :cond_2
    new-array v6, v2, [J

    #@48
    .line 3823
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@4b
    .line 3825
    return-object v6

    #@4c
    .line 3828
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
    .line 3448
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    #@0
    .prologue
    .line 3476
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@2
    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    #@0
    .prologue
    .line 405
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
    .line 311
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
    .line 3833
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    #@3
    move-result v0

    #@4
    .line 3834
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3835
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@c
    add-int/2addr v1, v0

    #@d
    return v1

    #@e
    .line 3837
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    #@0
    .prologue
    .line 3175
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@2
    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    #@0
    .prologue
    .line 203
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
    .line 3573
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 3554
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
    .line 3180
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
    .line 3181
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    #@10
    move-result v5

    #@11
    .line 3180
    if-nez v5, :cond_2

    #@13
    .line 3181
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    #@16
    move-result v4

    #@17
    .line 3182
    :goto_0
    if-eqz v4, :cond_7

    #@19
    .line 3184
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1b
    if-eqz v5, :cond_3

    #@1d
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@1f
    iget v3, v5, Landroid/graphics/Rect;->top:I

    #@21
    .line 3185
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    .line 3186
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@2a
    move-result v5

    #@2b
    if-le v5, v3, :cond_4

    #@2d
    .line 3187
    :cond_1
    return v7

    #@2e
    .line 3180
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    :cond_2
    const/4 v4, 0x1

    #@2f
    .local v4, "retValue":Z
    goto :goto_0

    #@30
    .line 3184
    .end local v4    # "retValue":Z
    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    #@32
    .restart local v3    # "listTop":I
    goto :goto_1

    #@33
    .line 3189
    .restart local v0    # "first":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@36
    move-result v6

    #@37
    .line 3190
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@39
    if-eqz v5, :cond_6

    #@3b
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3d
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3f
    .line 3189
    :goto_2
    sub-int v2, v6, v5

    #@41
    .line 3191
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
    .line 3192
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_5

    #@4d
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@50
    move-result v5

    #@51
    if-ge v5, v2, :cond_7

    #@53
    .line 3193
    :cond_5
    return v7

    #@54
    .line 3190
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_6
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    #@56
    goto :goto_2

    #@57
    .line 3196
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    :cond_7
    return v4
.end method

.method protected layoutChildren()V
    .locals 40

    #@0
    .prologue
    .line 1497
    move-object/from16 v0, p0

    #@2
    iget-boolean v13, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@4
    .line 1498
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_0

    #@6
    .line 1499
    return-void

    #@7
    .line 1502
    :cond_0
    const/4 v4, 0x1

    #@8
    move-object/from16 v0, p0

    #@a
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@c
    .line 1505
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@f
    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    #@12
    .line 1509
    move-object/from16 v0, p0

    #@14
    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    if-nez v4, :cond_2

    #@18
    .line 1510
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    #@1b
    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1814
    if-nez v13, :cond_1

    #@20
    .line 1815
    const/4 v4, 0x0

    #@21
    move-object/from16 v0, p0

    #@23
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@25
    .line 1512
    :cond_1
    return-void

    #@26
    .line 1515
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@2a
    iget v8, v4, Landroid/graphics/Rect;->top:I

    #@2c
    .line 1516
    .local v8, "childrenTop":I
    move-object/from16 v0, p0

    #@2e
    iget v4, v0, Landroid/widget/ListView;->mBottom:I

    #@30
    move-object/from16 v0, p0

    #@32
    iget v0, v0, Landroid/widget/ListView;->mTop:I

    #@34
    move/from16 v37, v0

    #@36
    sub-int v4, v4, v37

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    #@3c
    move-object/from16 v37, v0

    #@3e
    move-object/from16 v0, v37

    #@40
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@42
    move/from16 v37, v0

    #@44
    sub-int v9, v4, v37

    #@46
    .line 1517
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@49
    move-result v15

    #@4a
    .line 1519
    .local v15, "childCount":I
    const/16 v27, 0x0

    #@4c
    .line 1520
    .local v27, "index":I
    const/4 v7, 0x0

    #@4d
    .line 1523
    .local v7, "delta":I
    const/4 v5, 0x0

    #@4e
    .line 1524
    .local v5, "oldSel":Landroid/view/View;
    const/16 v29, 0x0

    #@50
    .line 1525
    .local v29, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    #@51
    .line 1528
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    #@53
    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    #@55
    packed-switch v4, :pswitch_data_0

    #@58
    .line 1543
    move-object/from16 v0, p0

    #@5a
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@60
    move/from16 v37, v0

    #@62
    sub-int v27, v4, v37

    #@64
    .line 1544
    if-ltz v27, :cond_3

    #@66
    move/from16 v0, v27

    #@68
    if-ge v0, v15, :cond_3

    #@6a
    .line 1545
    move-object/from16 v0, p0

    #@6c
    move/from16 v1, v27

    #@6e
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@71
    move-result-object v5

    #@72
    .line 1549
    .end local v5    # "oldSel":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@78
    move-result-object v29

    #@79
    .line 1551
    .local v29, "oldFirst":Landroid/view/View;
    move-object/from16 v0, p0

    #@7b
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@7d
    if-ltz v4, :cond_4

    #@7f
    .line 1552
    move-object/from16 v0, p0

    #@81
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@83
    move-object/from16 v0, p0

    #@85
    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@87
    move/from16 v37, v0

    #@89
    sub-int v7, v4, v37

    #@8b
    .line 1556
    :cond_4
    add-int v4, v27, v7

    #@8d
    move-object/from16 v0, p0

    #@8f
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@92
    move-result-object v6

    #@93
    .line 1560
    .end local v6    # "newSel":Landroid/view/View;
    .end local v29    # "oldFirst":Landroid/view/View;
    :cond_5
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@95
    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    #@97
    move/from16 v16, v0

    #@99
    .line 1561
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_6

    #@9b
    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    #@9e
    .line 1567
    :cond_6
    move-object/from16 v0, p0

    #@a0
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@a2
    if-nez v4, :cond_8

    #@a4
    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    #@a7
    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@aa
    .line 1814
    if-nez v13, :cond_7

    #@ac
    .line 1815
    const/4 v4, 0x0

    #@ad
    move-object/from16 v0, p0

    #@af
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@b1
    .line 1570
    :cond_7
    return-void

    #@b2
    .line 1530
    .end local v16    # "dataChanged":Z
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .local v29, "oldFirst":Landroid/view/View;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    #@b4
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@ba
    move/from16 v37, v0

    #@bc
    sub-int v27, v4, v37

    #@be
    .line 1531
    if-ltz v27, :cond_5

    #@c0
    move/from16 v0, v27

    #@c2
    if-ge v0, v15, :cond_5

    #@c4
    .line 1532
    move-object/from16 v0, p0

    #@c6
    move/from16 v1, v27

    #@c8
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@cb
    move-result-object v6

    #@cc
    .local v6, "newSel":Landroid/view/View;
    goto :goto_0

    #@cd
    .line 1571
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v29    # "oldFirst":Landroid/view/View;
    .restart local v16    # "dataChanged":Z
    :cond_8
    move-object/from16 v0, p0

    #@cf
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@d1
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@d5
    move-object/from16 v37, v0

    #@d7
    invoke-interface/range {v37 .. v37}, Landroid/widget/ListAdapter;->getCount()I

    #@da
    move-result v37

    #@db
    move/from16 v0, v37

    #@dd
    if-eq v4, v0, :cond_a

    #@df
    .line 1572
    new-instance v4, Ljava/lang/IllegalStateException;

    #@e1
    new-instance v37, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v38, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    #@e9
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v37

    #@ed
    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    #@f0
    move-result v38

    #@f1
    .line 1572
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v37

    #@f5
    .line 1576
    const-string/jumbo v38, ", "

    #@f8
    .line 1572
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v37

    #@fc
    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getClass()Ljava/lang/Class;

    #@ff
    move-result-object v38

    #@100
    .line 1572
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v37

    #@104
    .line 1577
    const-string/jumbo v38, ") with Adapter("

    #@107
    .line 1572
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v37

    #@10b
    .line 1577
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@10f
    move-object/from16 v38, v0

    #@111
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@114
    move-result-object v38

    #@115
    .line 1572
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v37

    #@119
    .line 1577
    const-string/jumbo v38, ")]"

    #@11c
    .line 1572
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v37

    #@120
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v37

    #@124
    move-object/from16 v0, v37

    #@126
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@129
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12a
    .line 1813
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v27    # "index":I
    :catchall_0
    move-exception v4

    #@12b
    .line 1814
    if-nez v13, :cond_9

    #@12d
    .line 1815
    const/16 v37, 0x0

    #@12f
    move/from16 v0, v37

    #@131
    move-object/from16 v1, p0

    #@133
    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@135
    .line 1813
    :cond_9
    throw v4

    #@136
    .line 1580
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v27    # "index":I
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    #@138
    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@13a
    move-object/from16 v0, p0

    #@13c
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@13f
    .line 1582
    const/4 v10, 0x0

    #@140
    .line 1583
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    #@141
    .line 1584
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    #@142
    .line 1589
    .local v12, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@145
    move-result-object v35

    #@146
    .line 1590
    .local v35, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v35, :cond_d

    #@148
    .line 1591
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@14b
    move-result-object v19

    #@14c
    .line 1592
    .local v19, "focusHost":Landroid/view/View;
    if-eqz v19, :cond_d

    #@14e
    .line 1593
    move-object/from16 v0, p0

    #@150
    move-object/from16 v1, v19

    #@152
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    #@155
    move-result-object v18

    #@156
    .line 1594
    .local v18, "focusChild":Landroid/view/View;
    if-eqz v18, :cond_d

    #@158
    .line 1595
    if-eqz v16, :cond_b

    #@15a
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v18

    #@15e
    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    #@161
    move-result v4

    #@162
    if-nez v4, :cond_b

    #@164
    .line 1596
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    #@167
    move-result v4

    #@168
    .line 1595
    if-nez v4, :cond_b

    #@16a
    .line 1596
    move-object/from16 v0, p0

    #@16c
    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    #@16e
    .line 1595
    if-eqz v4, :cond_c

    #@170
    .line 1599
    :cond_b
    move-object/from16 v11, v19

    #@172
    .line 1600
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@175
    move-result-object v10

    #@176
    .line 1606
    .end local v10    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, v18

    #@17a
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    #@17d
    move-result v12

    #@17e
    .line 1611
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_d
    const/16 v20, 0x0

    #@180
    .line 1612
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v21, 0x0

    #@182
    .line 1617
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@185
    move-result-object v24

    #@186
    .line 1618
    .local v24, "focusedChild":Landroid/view/View;
    if-eqz v24, :cond_10

    #@188
    .line 1624
    if-eqz v16, :cond_e

    #@18a
    move-object/from16 v0, p0

    #@18c
    move-object/from16 v1, v24

    #@18e
    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    #@191
    move-result v4

    #@192
    if-nez v4, :cond_e

    #@194
    .line 1625
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasTransientState()Z

    #@197
    move-result v4

    #@198
    .line 1624
    if-nez v4, :cond_e

    #@19a
    .line 1625
    move-object/from16 v0, p0

    #@19c
    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    #@19e
    .line 1624
    if-eqz v4, :cond_f

    #@1a0
    .line 1626
    :cond_e
    move-object/from16 v20, v24

    #@1a2
    .line 1628
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    #@1a5
    move-result-object v21

    #@1a6
    .line 1629
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v21, :cond_f

    #@1a8
    .line 1631
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    #@1ab
    .line 1634
    .end local v20    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v21    # "focusLayoutRestoreView":Landroid/view/View;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    #@1ae
    .line 1639
    :cond_10
    move-object/from16 v0, p0

    #@1b0
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@1b2
    move/from16 v17, v0

    #@1b4
    .line 1640
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@1b8
    move-object/from16 v32, v0

    #@1ba
    .line 1641
    .local v32, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v16, :cond_11

    #@1bc
    .line 1642
    const/16 v25, 0x0

    #@1be
    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    #@1c0
    if-ge v0, v15, :cond_12

    #@1c2
    .line 1643
    move-object/from16 v0, p0

    #@1c4
    move/from16 v1, v25

    #@1c6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1c9
    move-result-object v4

    #@1ca
    add-int v37, v17, v25

    #@1cc
    move-object/from16 v0, v32

    #@1ce
    move/from16 v1, v37

    #@1d0
    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@1d3
    .line 1642
    add-int/lit8 v25, v25, 0x1

    #@1d5
    goto :goto_1

    #@1d6
    .line 1646
    .end local v25    # "i":I
    :cond_11
    move-object/from16 v0, v32

    #@1d8
    move/from16 v1, v17

    #@1da
    invoke-virtual {v0, v15, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    #@1dd
    .line 1650
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    #@1e0
    .line 1651
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    #@1e3
    .line 1653
    move-object/from16 v0, p0

    #@1e5
    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    #@1e7
    packed-switch v4, :pswitch_data_1

    #@1ea
    .line 1680
    if-nez v15, :cond_1c

    #@1ec
    .line 1681
    move-object/from16 v0, p0

    #@1ee
    iget-boolean v4, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@1f0
    if-nez v4, :cond_1b

    #@1f2
    .line 1682
    const/4 v4, 0x0

    #@1f3
    const/16 v37, 0x1

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    move/from16 v1, v37

    #@1f9
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@1fc
    move-result v30

    #@1fd
    .line 1683
    .local v30, "position":I
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, v30

    #@201
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@204
    .line 1684
    move-object/from16 v0, p0

    #@206
    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    #@209
    move-result-object v34

    #@20a
    .line 1705
    .end local v8    # "childrenTop":I
    .end local v30    # "position":I
    .local v34, "sel":Landroid/view/View;
    :goto_2
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    #@20d
    .line 1707
    if-eqz v34, :cond_26

    #@20f
    .line 1710
    move-object/from16 v0, p0

    #@211
    iget-boolean v4, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@213
    if-eqz v4, :cond_13

    #@215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    #@218
    move-result v4

    #@219
    if-eqz v4, :cond_13

    #@21b
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->hasFocus()Z

    #@21e
    move-result v4

    #@21f
    if-eqz v4, :cond_21

    #@221
    .line 1728
    :cond_13
    const/4 v4, -0x1

    #@222
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, v34

    #@226
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@229
    .line 1730
    :goto_3
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTop()I

    #@22c
    move-result v4

    #@22d
    move-object/from16 v0, p0

    #@22f
    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    #@231
    .line 1762
    :cond_14
    :goto_4
    if-eqz v35, :cond_15

    #@233
    .line 1763
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    #@236
    move-result-object v28

    #@237
    .line 1764
    .local v28, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v28, :cond_15

    #@239
    .line 1765
    if-eqz v11, :cond_2d

    #@23b
    .line 1766
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    #@23e
    move-result v4

    #@23f
    .line 1765
    if-eqz v4, :cond_2d

    #@241
    .line 1768
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@244
    move-result-object v31

    #@245
    .line 1769
    .local v31, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_2c

    #@247
    if-eqz v31, :cond_2c

    #@249
    .line 1771
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@24c
    move-result-wide v38

    #@24d
    .line 1770
    invoke-static/range {v38 .. v39}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@250
    move-result v36

    #@251
    .line 1773
    .local v36, "virtualViewId":I
    const/16 v4, 0x40

    #@253
    const/16 v37, 0x0

    #@255
    .line 1772
    move-object/from16 v0, v31

    #@257
    move/from16 v1, v36

    #@259
    move-object/from16 v2, v37

    #@25b
    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@25e
    .line 1792
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v36    # "virtualViewId":I
    :cond_15
    :goto_5
    if-eqz v21, :cond_16

    #@260
    .line 1793
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@263
    move-result-object v4

    #@264
    if-eqz v4, :cond_16

    #@266
    .line 1794
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    #@269
    .line 1797
    :cond_16
    const/4 v4, 0x0

    #@26a
    move-object/from16 v0, p0

    #@26c
    iput v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    #@26e
    .line 1798
    const/4 v4, 0x0

    #@26f
    move-object/from16 v0, p0

    #@271
    iput-boolean v4, v0, Landroid/widget/ListView;->mDataChanged:Z

    #@273
    .line 1799
    move-object/from16 v0, p0

    #@275
    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@277
    if-eqz v4, :cond_17

    #@279
    .line 1800
    move-object/from16 v0, p0

    #@27b
    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@27d
    move-object/from16 v0, p0

    #@27f
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    #@282
    .line 1801
    const/4 v4, 0x0

    #@283
    move-object/from16 v0, p0

    #@285
    iput-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@287
    .line 1803
    :cond_17
    const/4 v4, 0x0

    #@288
    move-object/from16 v0, p0

    #@28a
    iput-boolean v4, v0, Landroid/widget/ListView;->mNeedSync:Z

    #@28c
    .line 1804
    move-object/from16 v0, p0

    #@28e
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@290
    move-object/from16 v0, p0

    #@292
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@295
    .line 1806
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    #@298
    .line 1808
    move-object/from16 v0, p0

    #@29a
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@29c
    if-lez v4, :cond_18

    #@29e
    .line 1809
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@2a1
    .line 1812
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a4
    .line 1814
    if-nez v13, :cond_19

    #@2a6
    .line 1815
    const/4 v4, 0x0

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    #@2ab
    .line 1496
    :cond_19
    return-void

    #@2ac
    .line 1655
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :pswitch_2
    if-eqz v6, :cond_1a

    #@2ae
    .line 1656
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@2b1
    move-result v4

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    invoke-direct {v0, v4, v8, v9}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    #@2b7
    move-result-object v34

    #@2b8
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@2ba
    .line 1658
    .end local v34    # "sel":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    #@2bc
    invoke-direct {v0, v8, v9}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    #@2bf
    move-result-object v34

    #@2c0
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@2c2
    .line 1662
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    #@2c4
    iget v4, v0, Landroid/widget/ListView;->mSyncPosition:I

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    #@2ca
    move/from16 v37, v0

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    move/from16 v1, v37

    #@2d0
    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@2d3
    move-result-object v34

    #@2d4
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@2d6
    .line 1665
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    #@2d8
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@2da
    add-int/lit8 v4, v4, -0x1

    #@2dc
    move-object/from16 v0, p0

    #@2de
    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@2e1
    move-result-object v34

    #@2e2
    .line 1666
    .restart local v34    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@2e5
    goto/16 :goto_2

    #@2e7
    .line 1669
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iput v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@2ec
    .line 1670
    move-object/from16 v0, p0

    #@2ee
    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    #@2f1
    move-result-object v34

    #@2f2
    .line 1671
    .restart local v34    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    #@2f5
    goto/16 :goto_2

    #@2f7
    .line 1674
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    #@2fa
    move-result v4

    #@2fb
    move-object/from16 v0, p0

    #@2fd
    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    #@2ff
    move/from16 v37, v0

    #@301
    move-object/from16 v0, p0

    #@303
    move/from16 v1, v37

    #@305
    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@308
    move-result-object v34

    #@309
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@30b
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    #@30d
    .line 1677
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    #@310
    move-result-object v34

    #@311
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@313
    .line 1686
    .end local v34    # "sel":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    #@315
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@317
    add-int/lit8 v4, v4, -0x1

    #@319
    const/16 v37, 0x0

    #@31b
    move-object/from16 v0, p0

    #@31d
    move/from16 v1, v37

    #@31f
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@322
    move-result v30

    #@323
    .line 1687
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    #@325
    move/from16 v1, v30

    #@327
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@32a
    .line 1688
    move-object/from16 v0, p0

    #@32c
    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    #@32e
    add-int/lit8 v4, v4, -0x1

    #@330
    move-object/from16 v0, p0

    #@332
    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    #@335
    move-result-object v34

    #@336
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@338
    .line 1691
    .end local v30    # "position":I
    .end local v34    # "sel":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    #@33a
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@33c
    if-ltz v4, :cond_1e

    #@33e
    move-object/from16 v0, p0

    #@340
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@342
    move-object/from16 v0, p0

    #@344
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@346
    move/from16 v37, v0

    #@348
    move/from16 v0, v37

    #@34a
    if-ge v4, v0, :cond_1e

    #@34c
    .line 1692
    move-object/from16 v0, p0

    #@34e
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    #@350
    .line 1693
    if-nez v5, :cond_1d

    #@352
    .line 1692
    .end local v8    # "childrenTop":I
    :goto_6
    move-object/from16 v0, p0

    #@354
    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@357
    move-result-object v34

    #@358
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@35a
    .line 1693
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_1d
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@35d
    move-result v8

    #@35e
    goto :goto_6

    #@35f
    .line 1694
    :cond_1e
    move-object/from16 v0, p0

    #@361
    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@363
    move-object/from16 v0, p0

    #@365
    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    #@367
    move/from16 v37, v0

    #@369
    move/from16 v0, v37

    #@36b
    if-ge v4, v0, :cond_20

    #@36d
    .line 1695
    move-object/from16 v0, p0

    #@36f
    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@371
    .line 1696
    if-nez v29, :cond_1f

    #@373
    .line 1695
    .end local v8    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    #@375
    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@378
    move-result-object v34

    #@379
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@37b
    .line 1696
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_1f
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    #@37e
    move-result v8

    #@37f
    goto :goto_7

    #@380
    .line 1698
    :cond_20
    const/4 v4, 0x0

    #@381
    move-object/from16 v0, p0

    #@383
    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    #@386
    move-result-object v34

    #@387
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_2

    #@389
    .line 1711
    .end local v8    # "childrenTop":I
    :cond_21
    move-object/from16 v0, v34

    #@38b
    move-object/from16 v1, v20

    #@38d
    if-ne v0, v1, :cond_22

    #@38f
    .line 1712
    if-eqz v21, :cond_22

    #@391
    .line 1713
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    #@394
    move-result v4

    #@395
    .line 1711
    if-nez v4, :cond_24

    #@397
    .line 1713
    :cond_22
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestFocus()Z

    #@39a
    move-result v22

    #@39b
    .line 1714
    :goto_8
    if-nez v22, :cond_25

    #@39d
    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@3a0
    move-result-object v23

    #@3a1
    .line 1719
    .local v23, "focused":Landroid/view/View;
    if-eqz v23, :cond_23

    #@3a3
    .line 1720
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    #@3a6
    .line 1722
    :cond_23
    const/4 v4, -0x1

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    move-object/from16 v1, v34

    #@3ab
    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@3ae
    goto/16 :goto_3

    #@3b0
    .line 1711
    .end local v23    # "focused":Landroid/view/View;
    :cond_24
    const/16 v22, 0x1

    #@3b2
    .local v22, "focusWasTaken":Z
    goto :goto_8

    #@3b3
    .line 1724
    .end local v22    # "focusWasTaken":Z
    :cond_25
    const/4 v4, 0x0

    #@3b4
    move-object/from16 v0, v34

    #@3b6
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    #@3b9
    .line 1725
    move-object/from16 v0, p0

    #@3bb
    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    #@3bd
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    #@3c0
    goto/16 :goto_3

    #@3c2
    .line 1732
    :cond_26
    move-object/from16 v0, p0

    #@3c4
    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    #@3c6
    const/16 v37, 0x1

    #@3c8
    move/from16 v0, v37

    #@3ca
    if-eq v4, v0, :cond_28

    #@3cc
    .line 1733
    move-object/from16 v0, p0

    #@3ce
    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    #@3d0
    const/16 v37, 0x2

    #@3d2
    move/from16 v0, v37

    #@3d4
    if-ne v4, v0, :cond_29

    #@3d6
    const/16 v26, 0x1

    #@3d8
    .line 1734
    .local v26, "inTouchMode":Z
    :goto_9
    if-eqz v26, :cond_2a

    #@3da
    .line 1736
    move-object/from16 v0, p0

    #@3dc
    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    #@3de
    move-object/from16 v0, p0

    #@3e0
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@3e2
    move/from16 v37, v0

    #@3e4
    sub-int v4, v4, v37

    #@3e6
    move-object/from16 v0, p0

    #@3e8
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@3eb
    move-result-object v14

    #@3ec
    .line 1737
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_27

    #@3ee
    .line 1738
    move-object/from16 v0, p0

    #@3f0
    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    #@3f2
    move-object/from16 v0, p0

    #@3f4
    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@3f7
    .line 1756
    .end local v14    # "child":Landroid/view/View;
    :cond_27
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    #@3fa
    move-result v4

    #@3fb
    if-eqz v4, :cond_14

    #@3fd
    if-eqz v21, :cond_14

    #@3ff
    .line 1757
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    #@402
    goto/16 :goto_4

    #@404
    .line 1732
    .end local v26    # "inTouchMode":Z
    :cond_28
    const/16 v26, 0x1

    #@406
    .restart local v26    # "inTouchMode":Z
    goto :goto_9

    #@407
    .line 1733
    .end local v26    # "inTouchMode":Z
    :cond_29
    const/16 v26, 0x0

    #@409
    .restart local v26    # "inTouchMode":Z
    goto :goto_9

    #@40a
    .line 1740
    :cond_2a
    move-object/from16 v0, p0

    #@40c
    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    #@40e
    const/16 v37, -0x1

    #@410
    move/from16 v0, v37

    #@412
    if-eq v4, v0, :cond_2b

    #@414
    .line 1744
    move-object/from16 v0, p0

    #@416
    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    #@418
    move-object/from16 v0, p0

    #@41a
    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@41c
    move/from16 v37, v0

    #@41e
    sub-int v4, v4, v37

    #@420
    move-object/from16 v0, p0

    #@422
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@425
    move-result-object v14

    #@426
    .line 1745
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_27

    #@428
    .line 1746
    move-object/from16 v0, p0

    #@42a
    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    #@42c
    move-object/from16 v0, p0

    #@42e
    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@431
    goto :goto_a

    #@432
    .line 1750
    .end local v14    # "child":Landroid/view/View;
    :cond_2b
    const/4 v4, 0x0

    #@433
    move-object/from16 v0, p0

    #@435
    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    #@437
    .line 1751
    move-object/from16 v0, p0

    #@439
    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    #@43b
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    #@43e
    goto :goto_a

    #@43f
    .line 1775
    .end local v26    # "inTouchMode":Z
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2c
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    #@442
    goto/16 :goto_5

    #@444
    .line 1777
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2d
    const/4 v4, -0x1

    #@445
    if-eq v12, v4, :cond_15

    #@447
    .line 1780
    move-object/from16 v0, p0

    #@449
    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    #@44b
    sub-int v4, v12, v4

    #@44d
    .line 1781
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    #@450
    move-result v37

    #@451
    add-int/lit8 v37, v37, -0x1

    #@453
    .line 1780
    const/16 v38, 0x0

    #@455
    .line 1779
    move/from16 v0, v38

    #@457
    move/from16 v1, v37

    #@459
    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@45c
    move-result v30

    #@45d
    .line 1782
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    #@45f
    move/from16 v1, v30

    #@461
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@464
    move-result-object v33

    #@465
    .line 1783
    .local v33, "restoreView":Landroid/view/View;
    if-eqz v33, :cond_15

    #@467
    .line 1784
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@46a
    goto/16 :goto_5

    #@46c
    .line 1528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@47a
    .line 1653
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
    .line 2044
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    .line 2045
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 2046
    :cond_0
    return v4

    #@d
    .line 2049
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@10
    move-result v1

    #@11
    .line 2050
    .local v1, "count":I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@13
    if-nez v2, :cond_2

    #@15
    .line 2051
    if-eqz p2, :cond_5

    #@17
    .line 2052
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result p1

    #@1b
    .line 2053
    :goto_0
    if-ge p1, v1, :cond_2

    #@1d
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_4

    #@23
    .line 2064
    :cond_2
    if-ltz p1, :cond_3

    #@25
    if-lt p1, v1, :cond_6

    #@27
    .line 2065
    :cond_3
    return v4

    #@28
    .line 2054
    :cond_4
    add-int/lit8 p1, p1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2057
    :cond_5
    add-int/lit8 v2, v1, -0x1

    #@2d
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    #@30
    move-result p1

    #@31
    .line 2058
    :goto_1
    if-ltz p1, :cond_2

    #@33
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_2

    #@39
    .line 2059
    add-int/lit8 p1, p1, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 2068
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
    .line 2084
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    .line 2085
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 2086
    :cond_0
    return v5

    #@c
    .line 2090
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@f
    move-result v1

    #@10
    .line 2091
    .local v1, "after":I
    if-eq v1, v5, :cond_2

    #@12
    .line 2092
    return v1

    #@13
    .line 2096
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@16
    move-result v2

    #@17
    .line 2097
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    #@19
    invoke-static {p1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    #@1c
    move-result p1

    #@1d
    .line 2098
    if-eqz p3, :cond_5

    #@1f
    .line 2099
    add-int/lit8 v3, p2, -0x1

    #@21
    add-int/lit8 v4, v2, -0x1

    #@23
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@26
    move-result p2

    #@27
    .line 2100
    :goto_0
    if-le p2, p1, :cond_3

    #@29
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_4

    #@2f
    .line 2103
    :cond_3
    if-gt p2, p1, :cond_8

    #@31
    .line 2104
    return v5

    #@32
    .line 2101
    :cond_4
    add-int/lit8 p2, p2, -0x1

    #@34
    goto :goto_0

    #@35
    .line 2107
    :cond_5
    add-int/lit8 v3, p2, 0x1

    #@37
    const/4 v4, 0x0

    #@38
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result p2

    #@3c
    .line 2108
    :goto_1
    if-ge p2, p1, :cond_6

    #@3e
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_7

    #@44
    .line 2111
    :cond_6
    if-lt p2, p1, :cond_8

    #@46
    .line 2112
    return v5

    #@47
    .line 2109
    :cond_7
    add-int/lit8 p2, p2, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 2116
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
    .line 1259
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    .line 1260
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    #@4
    .line 1261
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
    .line 1265
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
    .line 1266
    .local v9, "returnedHeight":I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@1a
    if-lez v10, :cond_4

    #@1c
    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1e
    if-eqz v10, :cond_4

    #@20
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@22
    .line 1269
    .local v3, "dividerHeight":I
    :goto_0
    const/4 v6, 0x0

    #@23
    .line 1274
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    #@24
    if-ne p3, v10, :cond_1

    #@26
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@29
    move-result v10

    #@2a
    add-int/lit8 p3, v10, -0x1

    #@2c
    .line 1275
    :cond_1
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@2e
    .line 1276
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    #@31
    move-result v8

    #@32
    .line 1277
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@34
    .line 1279
    .local v5, "isScrap":[Z
    move v4, p2

    #@35
    .local v4, "i":I
    :goto_1
    if-gt v4, p3, :cond_8

    #@37
    .line 1280
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@3a
    move-result-object v2

    #@3b
    .line 1282
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    #@3d
    invoke-direct {p0, v2, v4, p1, v0}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    #@40
    .line 1284
    if-lez v4, :cond_2

    #@42
    .line 1286
    add-int/2addr v9, v3

    #@43
    .line 1290
    :cond_2
    if-eqz v8, :cond_3

    #@45
    .line 1291
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@48
    move-result-object v10

    #@49
    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    #@4b
    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@4d
    .line 1290
    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@50
    move-result v10

    #@51
    if-eqz v10, :cond_3

    #@53
    .line 1292
    const/4 v10, -0x1

    #@54
    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@57
    .line 1295
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@5a
    move-result v10

    #@5b
    add-int/2addr v9, v10

    #@5c
    .line 1297
    move/from16 v0, p4

    #@5e
    if-lt v9, v0, :cond_6

    #@60
    .line 1300
    if-ltz p5, :cond_5

    #@62
    .line 1301
    move/from16 v0, p5

    #@64
    if-le v4, v0, :cond_5

    #@66
    .line 1302
    if-lez v6, :cond_5

    #@68
    .line 1303
    move/from16 v0, p4

    #@6a
    if-eq v9, v0, :cond_5

    #@6c
    .line 1300
    .end local v6    # "prevHeightWithoutPartialChild":I
    :goto_2
    return v6

    #@6d
    .line 1266
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_4
    const/4 v3, 0x0

    #@6e
    .restart local v3    # "dividerHeight":I
    goto :goto_0

    #@6f
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_5
    move/from16 v6, p4

    #@71
    .line 1305
    goto :goto_2

    #@72
    .line 1308
    :cond_6
    if-ltz p5, :cond_7

    #@74
    move/from16 v0, p5

    #@76
    if-lt v4, v0, :cond_7

    #@78
    .line 1309
    move v6, v9

    #@79
    .line 1279
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 1315
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    return v9
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    .line 3635
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    #@3
    .line 3637
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@6
    move-result v0

    #@7
    .line 3638
    .local v0, "count":I
    if-lez v0, :cond_1

    #@9
    .line 3639
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 3640
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    #@13
    .line 3639
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 3642
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    #@19
    .line 3634
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
    .line 3578
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 3580
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    .line 3581
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    #@6
    .line 3582
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    #@7
    .line 3583
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    #@9
    if-eqz p1, :cond_3

    #@b
    if-eqz p3, :cond_3

    #@d
    .line 3584
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    #@f
    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    #@11
    move-object/from16 v0, p3

    #@13
    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    #@16
    .line 3588
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
    .line 3589
    const/4 v12, 0x0

    #@24
    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@26
    .line 3590
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    #@29
    .line 3595
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    #@2b
    .line 3596
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    #@2e
    .line 3597
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@31
    move-result v3

    #@32
    .line 3598
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@34
    .line 3600
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    #@35
    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    #@37
    .line 3602
    add-int v12, v7, v8

    #@39
    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@3c
    move-result v12

    #@3d
    if-nez v12, :cond_2

    #@3f
    .line 3600
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@41
    goto :goto_0

    #@42
    .line 3606
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@45
    move-result-object v10

    #@46
    .line 3607
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@49
    .line 3608
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4c
    .line 3609
    move-object/from16 v0, p3

    #@4e
    move/from16 v1, p2

    #@50
    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    #@53
    move-result v6

    #@54
    .line 3611
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    #@56
    .line 3612
    move v9, v6

    #@57
    .line 3613
    move v5, v8

    #@58
    .line 3614
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@5b
    move-result v4

    #@5c
    goto :goto_1

    #@5d
    .line 3619
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
    .line 3620
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@61
    add-int/2addr v12, v5

    #@62
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@65
    .line 3577
    :goto_2
    return-void

    #@66
    .line 3622
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
    .line 3946
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 3948
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v7

    #@8
    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    #@a
    .line 3949
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_0

    #@c
    iget v0, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@e
    const/4 v2, -0x2

    #@f
    if-eq v0, v2, :cond_0

    #@11
    const/4 v4, 0x1

    #@12
    .line 3950
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    #@15
    move-result v5

    #@16
    .line 3952
    .local v5, "isSelected":Z
    const/4 v2, 0x0

    #@17
    move v0, p2

    #@18
    move v3, v1

    #@19
    .line 3951
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@1c
    move-result-object v6

    #@1d
    .line 3953
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    #@20
    .line 3945
    return-void

    #@21
    .line 3949
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
    .line 3907
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 3909
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    #@7
    move-result v1

    #@8
    .line 3910
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    #@b
    move-result v2

    #@c
    .line 3912
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    #@d
    .line 3911
    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@10
    move-result-object v0

    #@11
    .line 3913
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    #@14
    .line 3915
    if-lez v1, :cond_0

    #@16
    .line 3916
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@18
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1b
    .line 3906
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2157
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
    .line 2162
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
    .line 2167
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
    .line 1144
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    #@5
    .line 1146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@8
    move-result v11

    #@9
    .line 1147
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v10

    #@d
    .line 1148
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@10
    move-result v12

    #@11
    .line 1149
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@14
    move-result v4

    #@15
    .line 1151
    .local v4, "heightSize":I
    const/4 v9, 0x0

    #@16
    .line 1152
    .local v9, "childWidth":I
    const/4 v7, 0x0

    #@17
    .line 1153
    .local v7, "childHeight":I
    const/4 v8, 0x0

    #@18
    .line 1155
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
    .line 1156
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    #@21
    if-lez v0, :cond_1

    #@23
    if-eqz v11, :cond_0

    #@25
    .line 1157
    if-nez v10, :cond_1

    #@27
    .line 1158
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    #@29
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@2c
    move-result-object v6

    #@2d
    .line 1162
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1, v4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    #@30
    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@33
    move-result v9

    #@34
    .line 1165
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@37
    move-result v7

    #@38
    .line 1166
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    #@3b
    move-result v0

    #@3c
    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    #@3f
    move-result v8

    #@40
    .line 1168
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_1

    #@46
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@48
    .line 1169
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    #@4e
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@50
    .line 1168
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 1170
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@58
    invoke-virtual {v0, v6, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@5b
    .line 1174
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    #@5d
    .line 1175
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
    .line 1176
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    #@6a
    move-result v1

    #@6b
    .line 1175
    add-int v12, v0, v1

    #@6d
    .line 1181
    :goto_1
    if-nez v10, :cond_2

    #@6f
    .line 1182
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
    .line 1183
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@7c
    move-result v1

    #@7d
    mul-int/lit8 v1, v1, 0x2

    #@7f
    .line 1182
    add-int v4, v0, v1

    #@81
    .line 1186
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
    .line 1188
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    #@8b
    move-result v4

    #@8c
    .line 1191
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    #@8f
    .line 1193
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    #@91
    .line 1142
    return-void

    #@92
    .line 1155
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@94
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@97
    move-result v0

    #@98
    goto :goto_0

    #@99
    .line 1178
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
    .line 1125
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@5
    move-result v5

    #@6
    if-lez v5, :cond_1

    #@8
    .line 1126
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    .line 1127
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    #@e
    .line 1128
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    #@10
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    #@13
    move-result v6

    #@14
    add-int v1, v5, v6

    #@16
    .line 1129
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@19
    move-result v0

    #@1a
    .line 1130
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
    .line 1131
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@27
    move-result v5

    #@28
    sub-int v4, v5, v3

    #@2a
    .line 1132
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 1133
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    #@30
    invoke-direct {v5, p0, v7}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector;)V

    #@33
    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@35
    .line 1135
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    #@37
    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    #@3e
    .line 1138
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    #@41
    .line 1124
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
    .line 2332
    const/16 v3, 0x21

    #@4
    if-ne p1, v3, :cond_3

    #@6
    .line 2333
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
    .line 2334
    .local v1, "nextPage":I
    const/4 v0, 0x0

    #@14
    .line 2342
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_5

    #@16
    .line 2343
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@18
    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    #@1b
    move-result v2

    #@1c
    .line 2344
    .local v2, "position":I
    if-ltz v2, :cond_5

    #@1e
    .line 2345
    const/4 v3, 0x4

    #@1f
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@21
    .line 2346
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
    .line 2348
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
    .line 2349
    const/4 v3, 0x3

    #@36
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@38
    .line 2352
    :cond_0
    if-nez v0, :cond_1

    #@3a
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3d
    move-result v3

    #@3e
    if-ge v2, v3, :cond_1

    #@40
    .line 2353
    iput v7, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@42
    .line 2356
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    #@45
    .line 2357
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    #@48
    .line 2358
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_2

    #@4e
    .line 2359
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@51
    .line 2362
    :cond_2
    return v7

    #@52
    .line 2335
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_3
    const/16 v3, 0x82

    #@54
    if-ne p1, v3, :cond_4

    #@56
    .line 2336
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
    .line 2337
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    #@68
    .restart local v0    # "down":Z
    goto :goto_0

    #@69
    .line 2339
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    :cond_4
    return v6

    #@6a
    .line 2366
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
    .line 3923
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 3924
    return v5

    #@9
    .line 3927
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 3940
    :cond_1
    return v4

    #@d
    .line 3929
    :pswitch_0
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    #@10
    const/4 v3, -0x1

    #@11
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@14
    move-result v1

    #@15
    .line 3930
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
    .line 3931
    .local v0, "position":I
    if-ltz v1, :cond_1

    #@21
    .line 3934
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    #@24
    .line 3935
    return v5

    #@25
    .line 3927
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
    .line 1228
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
    .line 416
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_2

    #@9
    .line 417
    const/4 v0, 0x0

    #@a
    .line 418
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
    .line 419
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 420
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1e
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@21
    .line 422
    :cond_0
    const/4 v0, 0x1

    #@22
    .line 424
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@24
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    #@27
    .line 425
    return v0

    #@28
    .line 427
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
    .line 322
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_2

    #@9
    .line 323
    const/4 v0, 0x0

    #@a
    .line 324
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
    .line 325
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 326
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1e
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    #@21
    .line 328
    :cond_0
    const/4 v0, 0x1

    #@22
    .line 330
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@24
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    #@27
    .line 331
    return v0

    #@28
    .line 333
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
    .line 577
    move-object/from16 v0, p2

    #@2
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@4
    .line 580
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
    .line 581
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
    .line 583
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    #@23
    move-result v6

    #@24
    .line 584
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    #@27
    move-result v8

    #@28
    .line 585
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    #@2a
    .line 586
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    #@2d
    move-result v5

    #@2e
    .line 588
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    #@31
    move-result v13

    #@32
    if-eqz v13, :cond_1

    #@34
    .line 590
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@36
    if-gtz v13, :cond_0

    #@38
    if-le v9, v5, :cond_1

    #@3a
    .line 591
    :cond_0
    add-int/2addr v8, v5

    #@3b
    .line 595
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    #@3e
    move-result v2

    #@3f
    .line 596
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
    .line 598
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    #@4c
    move-result v13

    #@4d
    if-eqz v13, :cond_3

    #@4f
    .line 600
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@51
    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    #@53
    add-int/lit8 v14, v14, -0x1

    #@55
    if-lt v13, v14, :cond_2

    #@57
    .line 601
    move-object/from16 v0, p2

    #@59
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@5b
    sub-int v14, v1, v5

    #@5d
    if-ge v13, v14, :cond_3

    #@5f
    .line 602
    :cond_2
    sub-int/2addr v7, v5

    #@60
    .line 606
    :cond_3
    const/4 v11, 0x0

    #@61
    .line 608
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
    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@70
    move-result v13

    #@71
    if-le v13, v6, :cond_6

    #@73
    .line 615
    move-object/from16 v0, p2

    #@75
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@77
    sub-int/2addr v13, v8

    #@78
    add-int/lit8 v11, v13, 0x0

    #@7a
    .line 622
    :goto_0
    sub-int v4, v1, v7

    #@7c
    .line 623
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    #@7f
    move-result v11

    #@80
    .line 643
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    #@82
    const/4 v10, 0x1

    #@83
    .line 644
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    #@85
    .line 645
    neg-int v13, v11

    #@86
    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    #@89
    .line 646
    const/4 v13, -0x1

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    #@8f
    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@92
    move-result v13

    #@93
    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    #@95
    .line 648
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@98
    .line 650
    :cond_5
    return v10

    #@99
    .line 618
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
    .line 624
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
    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@b0
    move-result v13

    #@b1
    if-le v13, v6, :cond_8

    #@b3
    .line 631
    move-object/from16 v0, p2

    #@b5
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    #@b7
    sub-int v13, v7, v13

    #@b9
    rsub-int/lit8 v11, v13, 0x0

    #@bb
    .line 638
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
    .line 639
    .local v12, "top":I
    sub-int v3, v12, v8

    #@c6
    .line 640
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    #@c9
    move-result v11

    #@ca
    goto :goto_1

    #@cb
    .line 634
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
    .line 643
    :cond_9
    const/4 v10, 0x0

    #@d5
    .restart local v10    # "scroll":Z
    goto :goto_2
.end method

.method resetList()V
    .locals 1

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    #@5
    .line 530
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    #@7
    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    #@a
    .line 532
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    #@d
    .line 534
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    #@10
    .line 526
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
    .line 469
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 470
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@c
    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@e
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@11
    .line 473
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    #@14
    .line 474
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@16
    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    #@19
    .line 476
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
    .line 477
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
    .line 482
    :goto_0
    const/4 v1, -0x1

    #@35
    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    #@37
    .line 483
    const-wide/high16 v2, -0x8000000000000000L

    #@39
    iput-wide v2, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    #@3b
    .line 486
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3e
    .line 488
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@40
    if-eqz v1, :cond_5

    #@42
    .line 489
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@44
    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@47
    move-result v1

    #@48
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@4a
    .line 490
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@4c
    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    #@4e
    .line 491
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@50
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@53
    move-result v1

    #@54
    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@56
    .line 492
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    #@59
    .line 494
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@5b
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    #@5e
    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@60
    .line 495
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@62
    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@64
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@67
    .line 497
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
    .line 500
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    #@74
    if-eqz v1, :cond_4

    #@76
    .line 501
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@78
    add-int/lit8 v1, v1, -0x1

    #@7a
    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@7d
    move-result v0

    #@7e
    .line 505
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    #@81
    .line 506
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@84
    .line 508
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    #@86
    if-nez v1, :cond_2

    #@88
    .line 510
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@8b
    .line 519
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@8e
    .line 468
    return-void

    #@8f
    .line 479
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@91
    goto :goto_0

    #@92
    .line 503
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    #@95
    move-result v0

    #@96
    .restart local v0    # "position":I
    goto :goto_1

    #@97
    .line 513
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    #@99
    .line 514
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    #@9c
    .line 516
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    #@9f
    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    .line 3201
    ushr-int/lit8 v1, p1, 0x18

    #@2
    const/16 v2, 0xff

    #@4
    if-ne v1, v2, :cond_2

    #@6
    const/4 v0, 0x1

    #@7
    .line 3202
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    #@9
    .line 3203
    if-eqz v0, :cond_1

    #@b
    .line 3204
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 3205
    new-instance v1, Landroid/graphics/Paint;

    #@11
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@14
    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@16
    .line 3207
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    #@18
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@1b
    .line 3209
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    #@1e
    .line 3200
    return-void

    #@1f
    .line 3201
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    #@20
    .restart local v0    # "opaque":Z
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
    .line 3461
    if-eqz p1, :cond_1

    #@4
    .line 3462
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v2

    #@8
    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@a
    .line 3466
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    #@c
    .line 3467
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
    .line 3468
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@1a
    .line 3469
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@1d
    .line 3460
    return-void

    #@1e
    .line 3464
    :cond_1
    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@20
    goto :goto_0

    #@21
    :cond_2
    move v0, v1

    #@22
    .line 3467
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 3486
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    #@2
    .line 3487
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    #@5
    .line 3488
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@8
    .line 3485
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    #@0
    .prologue
    .line 3524
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    #@2
    .line 3525
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@5
    .line 3523
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    #@0
    .prologue
    .line 3501
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    #@2
    .line 3502
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@5
    .line 3500
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    #@0
    .prologue
    .line 3164
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    #@2
    .line 3165
    if-nez p1, :cond_0

    #@4
    .line 3166
    const/high16 v0, 0x60000

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    #@9
    .line 3163
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3565
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    #@2
    .line 3566
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@5
    .line 3564
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3544
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    #@2
    .line 3545
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    #@4
    if-gez v0, :cond_0

    #@6
    .line 3546
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    #@9
    .line 3543
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
    .line 451
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    #@3
    .line 450
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 2000
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@4
    .line 1999
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2124
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 2125
    .local v0, "count":I
    if-lez v0, :cond_0

    #@9
    .line 2126
    iput v2, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@b
    .line 2127
    return-void

    #@c
    .line 2130
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2131
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    #@13
    .line 2123
    :goto_0
    return-void

    #@14
    .line 2133
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    #@16
    .line 2134
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
    .line 2010
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    #@3
    .line 2011
    const/4 v0, 0x0

    #@4
    .line 2013
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    #@6
    .line 2015
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    #@8
    .line 2016
    add-int/lit8 v2, v1, -0x1

    #@a
    if-ne p1, v2, :cond_3

    #@c
    .line 2017
    const/4 v0, 0x1

    #@d
    .line 2023
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 2024
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@13
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@16
    .line 2027
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    #@19
    .line 2029
    if-eqz v0, :cond_2

    #@1b
    .line 2030
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    #@1e
    .line 2009
    :cond_2
    return-void

    #@1f
    .line 2018
    :cond_3
    add-int/lit8 v2, v1, 0x1

    #@21
    if-ne p1, v2, :cond_0

    #@23
    .line 2019
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
    .line 937
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    #@3
    .line 936
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    #@3
    .line 926
    return-void
.end method

.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field greylist-max-o mActivity:Landroid/app/Activity;

.field greylist-max-o mContainer:Landroid/widget/LinearLayout;

.field private greylist-max-o mGravity:I

.field greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayoutResId:I

.field greylist-max-o mMaxVisible:I

.field private greylist-max-o mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private greylist-max-o mOnClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mParentClickListener:Landroid/view/View$OnClickListener;

.field greylist-max-o mParentEntry:Landroid/app/BackStackRecord;

.field private greylist-max-o mTextColor:I

.field greylist-max-o mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .registers 1

    iget-object p0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 92
    const v0, 0x1120058

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 359
    new-instance v0, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const v1, 0x800013

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    .line 111
    const/4 v1, 0x2

    const v3, 0x1090084

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method private greylist-max-o createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 177
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_4
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 180
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 181
    .local v0, "entry":Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 182
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 183
    return-object v0
.end method

.method private greylist-max-o getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3
    .param p1, "index"    # I

    .line 298
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_c

    .line 299
    if-nez p1, :cond_9

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    :goto_b
    return-object v0

    .line 301
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    return-object v0
.end method

.method private greylist-max-o getPreEntryCount()I
    .registers 5

    .line 287
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist onBackStackChanged()V
    .registers 1

    .line 279
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 280
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 200
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v0

    .line 201
    .local v0, "childCount":I
    if-nez v0, :cond_7

    .line 202
    return-void

    .line 205
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "child":Landroid/view/View;
    iget v2, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    .line 208
    .local v2, "childTop":I
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 213
    .local v3, "childBottom":I
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    move-result v4

    .line 214
    .local v4, "layoutDirection":I
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v6, 0x800007

    and-int/2addr v5, v6

    .line 215
    .local v5, "horizontalGravity":I
    invoke-static {v5, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    sparse-switch v6, :sswitch_data_72

    .line 228
    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 229
    .local v7, "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v7

    .local v6, "childRight":I
    goto :goto_55

    .line 217
    .end local v6    # "childRight":I
    .end local v7    # "childLeft":I
    :sswitch_31
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 218
    .restart local v6    # "childRight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    .line 219
    .restart local v7    # "childLeft":I
    goto :goto_55

    .line 222
    .end local v6    # "childRight":I
    .end local v7    # "childLeft":I
    :sswitch_40
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 223
    .restart local v7    # "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v7

    .line 224
    .restart local v6    # "childRight":I
    nop

    .line 233
    :goto_55
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    if-ge v7, v8, :cond_5b

    .line 234
    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 237
    :cond_5b
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_6e

    .line 238
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v6, v8, v9

    .line 241
    :cond_6e
    invoke-virtual {v1, v7, v2, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 242
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_40
        0x5 -> :sswitch_31
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 246
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v0

    .line 248
    .local v0, "count":I
    const/4 v1, 0x0

    .line 249
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 250
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .line 253
    .local v3, "measuredChildState":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_35

    .line 254
    invoke-virtual {p0, v4}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 255
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_32

    .line 256
    invoke-virtual {p0, v5, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 257
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 258
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 259
    nop

    .line 260
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 259
    invoke-static {v3, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v3

    .line 253
    .end local v5    # "child":Landroid/view/View;
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 265
    .end local v4    # "i":I
    :cond_35
    iget v4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 266
    iget v4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 269
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 270
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 272
    invoke-static {v2, p1, v3}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v5, v3, 0x10

    .line 273
    invoke-static {v1, p2, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v5

    .line 272
    invoke-virtual {p0, v4, v5}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 275
    return-void
.end method

.method public whitelist setActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "a"    # Landroid/app/Activity;

    .line 126
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 127
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 134
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 135
    return-void
.end method

.method public whitelist setMaxVisible(I)V
    .registers 4
    .param p1, "visibleCrumbs"    # I

    .line 142
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 145
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 146
    return-void

    .line 143
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 173
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 174
    return-void
.end method

.method public whitelist setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 162
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 163
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 164
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 193
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 194
    return-void
.end method

.method greylist-max-o updateCrumbs()V
    .registers 15

    .line 306
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 307
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 308
    .local v1, "numEntries":I
    invoke-direct {p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v2

    .line 309
    .local v2, "numPreEntries":I
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 310
    .local v3, "numViews":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    add-int v5, v1, v2

    const v6, 0x10203bc

    const v7, 0x1020016

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ge v4, v5, :cond_7f

    .line 311
    if-ge v4, v2, :cond_29

    .line 312
    invoke-direct {p0, v4}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v5

    goto :goto_2f

    .line 313
    :cond_29
    sub-int v5, v4, v2

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v5

    :goto_2f
    nop

    .line 314
    .local v5, "bse":Landroid/app/FragmentManager$BackStackEntry;
    if-ge v4, v3, :cond_4a

    .line 315
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 316
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 317
    .local v11, "tag":Ljava/lang/Object;
    if-eq v11, v5, :cond_4a

    .line 318
    move v12, v4

    .local v12, "j":I
    :goto_3f
    if-ge v12, v3, :cond_49

    .line 319
    iget-object v13, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 318
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 321
    .end local v12    # "j":I
    :cond_49
    move v3, v4

    .line 324
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "tag":Ljava/lang/Object;
    :cond_4a
    if-lt v4, v3, :cond_7c

    .line 325
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    invoke-virtual {v10, v11, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 326
    .local v9, "item":Landroid/view/View;
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 327
    .local v7, "text":Landroid/widget/TextView;
    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 329
    iget v10, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    if-nez v4, :cond_72

    .line 331
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_72
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .end local v5    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    .end local v7    # "text":Landroid/widget/TextView;
    .end local v9    # "item":Landroid/view/View;
    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 337
    .end local v4    # "i":I
    :cond_7f
    add-int v4, v1, v2

    .line 338
    .local v4, "viewI":I
    iget-object v5, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 339
    :goto_87
    if-le v3, v4, :cond_93

    .line 340
    iget-object v5, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 341
    add-int/lit8 v3, v3, -0x1

    goto :goto_87

    .line 344
    :cond_93
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_94
    if-ge v5, v3, :cond_cf

    .line 345
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 347
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    add-int/lit8 v12, v3, -0x1

    if-ge v5, v12, :cond_a6

    const/4 v12, 0x1

    goto :goto_a7

    :cond_a6
    move v12, v9

    :goto_a7
    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    if-lez v11, :cond_cc

    .line 350
    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v11, v3, v11

    if-ge v5, v11, :cond_b6

    move v11, v8

    goto :goto_b7

    :cond_b6
    move v11, v9

    :goto_b7
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 353
    .local v11, "leftIcon":Landroid/view/View;
    iget v12, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v12, v3, v12

    if-le v5, v12, :cond_c8

    if-eqz v5, :cond_c8

    move v12, v9

    goto :goto_c9

    .line 354
    :cond_c8
    move v12, v8

    .line 353
    :goto_c9
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "leftIcon":Landroid/view/View;
    :cond_cc
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 357
    .end local v5    # "i":I
    :cond_cf
    return-void
.end method

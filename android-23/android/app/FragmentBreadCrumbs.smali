.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;,
        Landroid/app/FragmentBreadCrumbs$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field private mGravity:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field private mTextColor:I

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method static synthetic -get0(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 89
    const v0, 0x116001d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 92
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
    const/4 v3, 0x0

    #@1
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 49
    const/4 v1, -0x1

    #@5
    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    #@7
    .line 356
    new-instance v1, Landroid/app/FragmentBreadCrumbs$1;

    #@9
    invoke-direct {v1, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    #@c
    iput-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@e
    .line 104
    sget-object v1, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    #@10
    .line 103
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const v1, 0x800013

    #@17
    .line 106
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    #@1d
    .line 109
    const/4 v1, 0x1

    #@1e
    .line 110
    const v2, 0x109005f

    #@21
    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    #@27
    .line 112
    const/4 v1, 0x2

    #@28
    .line 111
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    #@2e
    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@31
    .line 100
    return-void
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 174
    if-nez p1, :cond_0

    #@3
    return-object v1

    #@4
    .line 176
    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    #@6
    .line 177
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/app/FragmentManagerImpl;

    #@e
    .line 176
    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@11
    .line 178
    .local v0, "entry":Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    #@14
    .line 179
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    #@17
    .line 180
    return-object v0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 296
    if-nez p1, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    #@b
    goto :goto_0

    #@c
    .line 298
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    #@e
    return-object v0
.end method

.method private getPreEntryCount()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 284
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    #@9
    if-eqz v3, :cond_1

    #@b
    :goto_1
    add-int/2addr v0, v1

    #@c
    return v0

    #@d
    :cond_0
    move v0, v2

    #@e
    goto :goto_0

    #@f
    :cond_1
    move v1, v2

    #@10
    goto :goto_1
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    #@3
    .line 275
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    #@3
    move-result v2

    #@4
    .line 198
    .local v2, "childCount":I
    if-nez v2, :cond_0

    #@6
    .line 199
    return-void

    #@7
    .line 202
    :cond_0
    const/4 v8, 0x0

    #@8
    invoke-virtual {p0, v8}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 204
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    #@e
    .line 205
    .local v5, "childTop":I
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@13
    move-result v9

    #@14
    add-int/2addr v8, v9

    #@15
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    #@17
    sub-int v1, v8, v9

    #@19
    .line 210
    .local v1, "childBottom":I
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    #@1c
    move-result v7

    #@1d
    .line 211
    .local v7, "layoutDirection":I
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    #@1f
    const v9, 0x800007

    #@22
    and-int v6, v8, v9

    #@24
    .line 212
    .local v6, "horizontalGravity":I
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@27
    move-result v8

    #@28
    sparse-switch v8, :sswitch_data_0

    #@2b
    .line 225
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    #@2d
    .line 226
    .local v3, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@30
    move-result v8

    #@31
    add-int v4, v3, v8

    #@33
    .line 230
    .local v4, "childRight":I
    :goto_0
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    #@35
    if-ge v3, v8, :cond_1

    #@37
    .line 231
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    #@39
    .line 234
    :cond_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    #@3b
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    #@3d
    sub-int/2addr v8, v9

    #@3e
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    #@40
    sub-int/2addr v8, v9

    #@41
    if-le v4, v8, :cond_2

    #@43
    .line 235
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    #@45
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    #@47
    sub-int/2addr v8, v9

    #@48
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    #@4a
    sub-int v4, v8, v9

    #@4c
    .line 238
    :cond_2
    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    #@4f
    .line 194
    return-void

    #@50
    .line 214
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    :sswitch_0
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    #@52
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    #@54
    sub-int/2addr v8, v9

    #@55
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    #@57
    sub-int v4, v8, v9

    #@59
    .line 215
    .restart local v4    # "childRight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@5c
    move-result v8

    #@5d
    sub-int v3, v4, v8

    #@5f
    .line 216
    .restart local v3    # "childLeft":I
    goto :goto_0

    #@60
    .line 219
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    :sswitch_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    #@62
    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    #@64
    iget v10, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    #@66
    sub-int/2addr v9, v10

    #@67
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@6a
    move-result v10

    #@6b
    sub-int/2addr v9, v10

    #@6c
    div-int/lit8 v9, v9, 0x2

    #@6e
    add-int v3, v8, v9

    #@70
    .line 220
    .restart local v3    # "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@73
    move-result v8

    #@74
    add-int v4, v3, v8

    #@76
    .line 221
    .restart local v4    # "childRight":I
    goto :goto_0

    #@77
    .line 212
    nop

    #@78
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 245
    .local v1, "count":I
    const/4 v3, 0x0

    #@5
    .line 246
    .local v3, "maxHeight":I
    const/4 v4, 0x0

    #@6
    .line 247
    .local v4, "maxWidth":I
    const/4 v5, 0x0

    #@7
    .line 250
    .local v5, "measuredChildState":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 251
    invoke-virtual {p0, v2}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 252
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v6

    #@12
    const/16 v7, 0x8

    #@14
    if-eq v6, v7, :cond_0

    #@16
    .line 253
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    #@19
    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@1c
    move-result v6

    #@1d
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v4

    #@21
    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@24
    move-result v6

    #@25
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v3

    #@29
    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    #@2c
    move-result v6

    #@2d
    .line 256
    invoke-static {v5, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    #@30
    move-result v5

    #@31
    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 262
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    #@36
    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    #@38
    add-int/2addr v6, v7

    #@39
    add-int/2addr v4, v6

    #@3a
    .line 263
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    #@3c
    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    #@3e
    add-int/2addr v6, v7

    #@3f
    add-int/2addr v3, v6

    #@40
    .line 266
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    #@43
    move-result v6

    #@44
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v3

    #@48
    .line 267
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    #@4b
    move-result v6

    #@4c
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    #@4f
    move-result v4

    #@50
    .line 269
    invoke-static {v4, p1, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    #@53
    move-result v6

    #@54
    .line 271
    shl-int/lit8 v7, v5, 0x10

    #@56
    .line 270
    invoke-static {v3, p2, v7}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    #@59
    move-result v7

    #@5a
    .line 269
    invoke-virtual {p0, v6, v7}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    #@5d
    .line 242
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    #@2
    .line 124
    const-string/jumbo v0, "layout_inflater"

    #@5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/LayoutInflater;

    #@b
    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    #@d
    .line 125
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    #@f
    .line 126
    const v1, 0x1090061

    #@12
    .line 127
    const/4 v2, 0x0

    #@13
    .line 125
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/LinearLayout;

    #@19
    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@1b
    .line 128
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@1d
    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    #@20
    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    #@27
    .line 130
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    #@2a
    .line 131
    new-instance v0, Landroid/animation/LayoutTransition;

    #@2c
    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    #@2f
    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    #@32
    .line 122
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .param p1, "visibleCrumbs"    # I

    #@0
    .prologue
    .line 139
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 142
    :cond_0
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    #@e
    .line 138
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    #@0
    .prologue
    .line 170
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    #@2
    .line 169
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    #@6
    .line 159
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    #@8
    .line 160
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    #@b
    .line 157
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    #@6
    .line 190
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    #@9
    .line 188
    return-void
.end method

.method updateCrumbs()V
    .locals 21

    #@0
    .prologue
    .line 303
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    #@4
    move-object/from16 v18, v0

    #@6
    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@9
    move-result-object v6

    #@a
    .line 304
    .local v6, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    #@d
    move-result v11

    #@e
    .line 305
    .local v11, "numEntries":I
    invoke-direct/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    #@11
    move-result v12

    #@12
    .line 306
    .local v12, "numPreEntries":I
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@16
    move-object/from16 v18, v0

    #@18
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    #@1b
    move-result v13

    #@1c
    .line 307
    .local v13, "numViews":I
    const/4 v7, 0x0

    #@1d
    .local v7, "i":I
    :goto_0
    add-int v18, v11, v12

    #@1f
    move/from16 v0, v18

    #@21
    if-ge v7, v0, :cond_5

    #@23
    .line 308
    if-ge v7, v12, :cond_0

    #@25
    .line 309
    move-object/from16 v0, p0

    #@27
    invoke-direct {v0, v7}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    #@2a
    move-result-object v4

    #@2b
    .line 311
    .local v4, "bse":Landroid/app/FragmentManager$BackStackEntry;
    :goto_1
    if-ge v7, v13, :cond_2

    #@2d
    .line 312
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@31
    move-object/from16 v18, v0

    #@33
    move-object/from16 v0, v18

    #@35
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@38
    move-result-object v16

    #@39
    .line 313
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3c
    move-result-object v14

    #@3d
    .line 314
    .local v14, "tag":Ljava/lang/Object;
    if-eq v14, v4, :cond_2

    #@3f
    .line 315
    move v9, v7

    #@40
    .local v9, "j":I
    :goto_2
    if-ge v9, v13, :cond_1

    #@42
    .line 316
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@46
    move-object/from16 v18, v0

    #@48
    move-object/from16 v0, v18

    #@4a
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    #@4d
    .line 315
    add-int/lit8 v9, v9, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 310
    .end local v4    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    .end local v9    # "j":I
    .end local v14    # "tag":Ljava/lang/Object;
    .end local v16    # "v":Landroid/view/View;
    :cond_0
    sub-int v18, v7, v12

    #@52
    move/from16 v0, v18

    #@54
    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    #@57
    move-result-object v4

    #@58
    .restart local v4    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    goto :goto_1

    #@59
    .line 318
    .restart local v9    # "j":I
    .restart local v14    # "tag":Ljava/lang/Object;
    .restart local v16    # "v":Landroid/view/View;
    :cond_1
    move v13, v7

    #@5a
    .line 321
    .end local v9    # "j":I
    .end local v14    # "tag":Ljava/lang/Object;
    .end local v16    # "v":Landroid/view/View;
    :cond_2
    if-lt v7, v13, :cond_4

    #@5c
    .line 322
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    #@60
    move-object/from16 v18, v0

    #@62
    move-object/from16 v0, p0

    #@64
    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    #@66
    move/from16 v19, v0

    #@68
    const/16 v20, 0x0

    #@6a
    move-object/from16 v0, v18

    #@6c
    move/from16 v1, v19

    #@6e
    move-object/from16 v2, p0

    #@70
    move/from16 v3, v20

    #@72
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@75
    move-result-object v8

    #@76
    .line 323
    .local v8, "item":Landroid/view/View;
    const v18, 0x1020016

    #@79
    move/from16 v0, v18

    #@7b
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@7e
    move-result-object v15

    #@7f
    check-cast v15, Landroid/widget/TextView;

    #@81
    .line 324
    .local v15, "text":Landroid/widget/TextView;
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    #@84
    move-result-object v18

    #@85
    move-object/from16 v0, v18

    #@87
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8a
    .line 325
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@8d
    .line 326
    move-object/from16 v0, p0

    #@8f
    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    #@91
    move/from16 v18, v0

    #@93
    move/from16 v0, v18

    #@95
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@98
    .line 327
    if-nez v7, :cond_3

    #@9a
    .line 328
    const v18, 0x102003e

    #@9d
    move/from16 v0, v18

    #@9f
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@a2
    move-result-object v18

    #@a3
    const/16 v19, 0x8

    #@a5
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    #@a8
    .line 330
    :cond_3
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@ac
    move-object/from16 v18, v0

    #@ae
    move-object/from16 v0, v18

    #@b0
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@b3
    .line 331
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@b7
    move-object/from16 v18, v0

    #@b9
    move-object/from16 v0, v18

    #@bb
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@be
    .line 307
    .end local v8    # "item":Landroid/view/View;
    .end local v15    # "text":Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@c0
    goto/16 :goto_0

    #@c2
    .line 334
    .end local v4    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_5
    add-int v17, v11, v12

    #@c4
    .line 335
    .local v17, "viewI":I
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@c8
    move-object/from16 v18, v0

    #@ca
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    #@cd
    move-result v13

    #@ce
    .line 336
    :goto_3
    move/from16 v0, v17

    #@d0
    if-le v13, v0, :cond_6

    #@d2
    .line 337
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@d6
    move-object/from16 v18, v0

    #@d8
    add-int/lit8 v19, v13, -0x1

    #@da
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    #@dd
    .line 338
    add-int/lit8 v13, v13, -0x1

    #@df
    goto :goto_3

    #@e0
    .line 341
    :cond_6
    const/4 v7, 0x0

    #@e1
    :goto_4
    if-ge v7, v13, :cond_b

    #@e3
    .line 342
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    #@e7
    move-object/from16 v18, v0

    #@e9
    move-object/from16 v0, v18

    #@eb
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@ee
    move-result-object v5

    #@ef
    .line 344
    .local v5, "child":Landroid/view/View;
    const v18, 0x1020016

    #@f2
    move/from16 v0, v18

    #@f4
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@f7
    move-result-object v19

    #@f8
    add-int/lit8 v18, v13, -0x1

    #@fa
    move/from16 v0, v18

    #@fc
    if-ge v7, v0, :cond_8

    #@fe
    const/16 v18, 0x1

    #@100
    :goto_5
    move-object/from16 v0, v19

    #@102
    move/from16 v1, v18

    #@104
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    #@107
    .line 345
    move-object/from16 v0, p0

    #@109
    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    #@10b
    move/from16 v18, v0

    #@10d
    if-lez v18, :cond_7

    #@10f
    .line 347
    move-object/from16 v0, p0

    #@111
    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    #@113
    move/from16 v18, v0

    #@115
    sub-int v18, v13, v18

    #@117
    move/from16 v0, v18

    #@119
    if-ge v7, v0, :cond_9

    #@11b
    const/16 v18, 0x8

    #@11d
    :goto_6
    move/from16 v0, v18

    #@11f
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    #@122
    .line 348
    const v18, 0x102003e

    #@125
    move/from16 v0, v18

    #@127
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@12a
    move-result-object v10

    #@12b
    .line 350
    .local v10, "leftIcon":Landroid/view/View;
    move-object/from16 v0, p0

    #@12d
    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    #@12f
    move/from16 v18, v0

    #@131
    sub-int v18, v13, v18

    #@133
    move/from16 v0, v18

    #@135
    if-le v7, v0, :cond_a

    #@137
    if-eqz v7, :cond_a

    #@139
    const/16 v18, 0x0

    #@13b
    :goto_7
    move/from16 v0, v18

    #@13d
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    #@140
    .line 341
    .end local v10    # "leftIcon":Landroid/view/View;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@142
    goto :goto_4

    #@143
    .line 344
    :cond_8
    const/16 v18, 0x0

    #@145
    goto :goto_5

    #@146
    .line 347
    :cond_9
    const/16 v18, 0x0

    #@148
    goto :goto_6

    #@149
    .line 351
    .restart local v10    # "leftIcon":Landroid/view/View;
    :cond_a
    const/16 v18, 0x8

    #@14b
    goto :goto_7

    #@14c
    .line 302
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "leftIcon":Landroid/view/View;
    :cond_b
    return-void
.end method

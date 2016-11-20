.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$1;,
        Lcom/android/internal/widget/ActionBarView$2;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private final mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private final mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 86
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@8
    .line 135
    const v0, 0x10404c5

    #@b
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    #@d
    .line 139
    new-instance v0, Lcom/android/internal/widget/ActionBarView$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    #@14
    .line 149
    new-instance v0, Lcom/android/internal/widget/ActionBarView$2;

    #@16
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    #@1b
    .line 162
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    #@1e
    .line 164
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@20
    .line 165
    const v1, 0x10102ce

    #@23
    .line 164
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@26
    move-result-object v7

    #@27
    .line 167
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    #@28
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@2e
    .line 169
    const/4 v0, 0x5

    #@2f
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@35
    .line 170
    const/16 v0, 0x9

    #@37
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@3d
    .line 171
    const/4 v0, 0x6

    #@3e
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    #@44
    .line 172
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4a
    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@4d
    move-result-object v10

    #@4e
    .line 177
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/16 v0, 0x10

    #@50
    .line 178
    const v1, 0x1090018

    #@53
    .line 176
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@56
    move-result v9

    #@57
    .line 181
    .local v9, "homeResId":I
    const v0, 0x109001b

    #@5a
    .line 180
    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/view/ViewGroup;

    #@60
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@62
    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@64
    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    #@6a
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@6c
    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@6e
    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    #@74
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@76
    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@78
    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    #@7b
    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@7d
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    #@7f
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@82
    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@87
    move-result-object v1

    #@88
    .line 188
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    #@8a
    .line 187
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@91
    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@93
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@96
    move-result-object v11

    #@97
    .line 193
    .local v11, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_0

    #@99
    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@9b
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@a6
    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@a8
    invoke-virtual {v0, v12}, Landroid/view/View;->setEnabled(Z)V

    #@ab
    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@ad
    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusable(Z)V

    #@b0
    .line 199
    const/16 v0, 0xb

    #@b2
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b5
    move-result v0

    #@b6
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    #@b8
    .line 200
    const/16 v0, 0xc

    #@ba
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@bd
    move-result v0

    #@be
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    #@c0
    .line 201
    invoke-virtual {v7, v12, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c3
    move-result v0

    #@c4
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    #@c6
    .line 203
    const/16 v0, 0xe

    #@c8
    .line 202
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@cb
    move-result v0

    #@cc
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    #@ce
    .line 205
    const/16 v0, 0xf

    #@d0
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@d3
    move-result v0

    #@d4
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    #@d6
    .line 206
    const/16 v0, 0x11

    #@d8
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@db
    move-result v0

    #@dc
    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@de
    .line 208
    const/16 v0, 0x8

    #@e0
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e3
    move-result v0

    #@e4
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    #@e7
    .line 210
    const/16 v0, 0xa

    #@e9
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ec
    move-result v8

    #@ed
    .line 211
    .local v8, "customNavId":I
    if-eqz v8, :cond_1

    #@ef
    .line 212
    invoke-virtual {v10, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@f2
    move-result-object v0

    #@f3
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@f5
    .line 213
    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@f7
    .line 214
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@f9
    or-int/lit8 v0, v0, 0x10

    #@fb
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    #@fe
    .line 217
    :cond_1
    const/4 v0, 0x4

    #@ff
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@102
    move-result v0

    #@103
    iput v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@105
    .line 219
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@108
    .line 221
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    #@10a
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@10c
    const v3, 0x102002c

    #@10f
    move-object v1, p1

    #@110
    move v4, v2

    #@111
    move v5, v2

    #@112
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    #@115
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    #@117
    .line 223
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@119
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    #@11b
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@11e
    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@120
    invoke-virtual {v0, v12}, Landroid/view/View;->setClickable(Z)V

    #@123
    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@125
    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusable(Z)V

    #@128
    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    #@12b
    move-result v0

    #@12c
    if-nez v0, :cond_2

    #@12e
    .line 228
    invoke-virtual {p0, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@131
    .line 158
    :cond_2
    return-void
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 571
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    #@9
    .line 581
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    #@c
    move-result-object v3

    #@d
    .line 582
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    #@10
    move-result-object v2

    #@11
    .line 583
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_3

    #@17
    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v4

    #@21
    const/4 v5, 0x3

    #@22
    new-array v5, v5, [Ljava/lang/Object;

    #@24
    .line 588
    aput-object v3, v5, v6

    #@26
    aput-object v2, v5, v7

    #@28
    aput-object v0, v5, v8

    #@2a
    .line 587
    const v6, 0x10404c8

    #@2d
    .line 586
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 593
    .local v1, "result":Ljava/lang/String;
    :goto_1
    return-object v1

    #@32
    .line 574
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@34
    and-int/lit8 v4, v4, 0x4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 575
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d
    move-result-object v4

    #@3e
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    #@40
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@43
    move-result-object v0

    #@44
    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    #@45
    .line 577
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@47
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v4

    #@4b
    const v5, 0x10404c4

    #@4e
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@51
    move-result-object v0

    #@52
    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    #@53
    .line 590
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@56
    move-result-object v4

    #@57
    new-array v5, v8, [Ljava/lang/Object;

    #@59
    .line 591
    aput-object v3, v5, v6

    #@5b
    aput-object v0, v5, v7

    #@5d
    .line 590
    const v6, 0x10404c7

    #@60
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    #@65
    .line 595
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 437
    if-eqz p1, :cond_0

    #@4
    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@8
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@b
    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@d
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@f
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@12
    .line 436
    :goto_0
    return-void

    #@13
    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@15
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@1a
    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@1c
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@21
    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@23
    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    #@26
    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@28
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    #@2b
    goto :goto_0
.end method

.method private initTitle()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 810
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@3
    if-nez v1, :cond_3

    #@5
    .line 811
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@c
    move-result-object v0

    #@d
    .line 812
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001a

    #@10
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/widget/LinearLayout;

    #@16
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@18
    .line 814
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@1a
    const v2, 0x102031a

    #@1d
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/widget/TextView;

    #@23
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@25
    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@27
    const v2, 0x102031b

    #@2a
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/widget/TextView;

    #@30
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@32
    .line 817
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 818
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@38
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    #@3a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@3d
    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 821
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@43
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@48
    .line 824
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 825
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@4e
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    #@50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@53
    .line 827
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@55
    if-eqz v1, :cond_3

    #@57
    .line 828
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@59
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@5b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5e
    .line 829
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@60
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    #@63
    .line 833
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@65
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@67
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@6a
    .line 834
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@6c
    if-nez v1, :cond_4

    #@6e
    .line 835
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_5

    #@76
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7b
    move-result v1

    #@7c
    .line 834
    if-eqz v1, :cond_5

    #@7e
    .line 837
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@80
    const/16 v2, 0x8

    #@82
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@85
    .line 809
    :goto_0
    return-void

    #@86
    .line 839
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@88
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    #@8b
    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    #@0
    .prologue
    .line 536
    if-eqz p2, :cond_0

    #@2
    .line 537
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    #@4
    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 544
    return-void

    #@9
    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@b
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@e
    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    #@13
    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@16
    .line 535
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 500
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@3
    .line 501
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 502
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@c
    .line 503
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@e
    if-nez v2, :cond_3

    #@10
    .line 504
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@12
    and-int/lit8 v2, v2, 0x8

    #@14
    if-eqz v2, :cond_3

    #@16
    .line 505
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    const/4 v0, 0x0

    #@27
    .line 506
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@29
    if-eqz v0, :cond_4

    #@2b
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    #@2e
    .line 508
    .end local v0    # "visible":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 509
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    #@34
    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@37
    .line 511
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@39
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    #@3c
    move-result v1

    #@3d
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@40
    .line 499
    return-void

    #@41
    .line 505
    :cond_2
    const/4 v0, 0x1

    #@42
    .restart local v0    # "visible":Z
    goto :goto_0

    #@43
    .line 503
    .end local v0    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    #@44
    .restart local v0    # "visible":Z
    goto :goto_0

    #@45
    .line 506
    :cond_4
    const/16 v1, 0x8

    #@47
    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    #@0
    .prologue
    .line 554
    if-nez p1, :cond_0

    #@2
    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@8
    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@e
    .line 553
    :goto_0
    return-void

    #@f
    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@15
    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@17
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    #@0
    .prologue
    .line 345
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public collapseActionView()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 454
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 456
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 457
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    #@a
    .line 453
    :cond_0
    return-void

    #@b
    .line 455
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@d
    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    .line 788
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    #@2
    const v1, 0x800013

    #@5
    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    #@8
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1260
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1265
    if-nez p1, :cond_0

    #@2
    .line 1266
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object p1

    #@6
    .line 1268
    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    #@0
    .prologue
    .line 776
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@2
    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@2
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    #@0
    .prologue
    .line 772
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@2
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    #@0
    .prologue
    .line 781
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    #@0
    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    #@2
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 449
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 450
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@7
    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 449
    :cond_0
    return v0
.end method

.method public hasIcon()Z
    .locals 1

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    #@0
    .prologue
    .line 292
    new-instance v0, Landroid/widget/ProgressBar;

    #@2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    .line 293
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    #@6
    .line 292
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@d
    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@f
    const v1, 0x10203f2

    #@12
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    #@15
    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@17
    const/16 v1, 0x8

    #@19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1c
    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@1e
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@21
    .line 291
    return-void
.end method

.method public initProgress()V
    .locals 5

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/widget/ProgressBar;

    #@2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@d
    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@f
    const v1, 0x10203f3

    #@12
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    #@15
    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@17
    const/16 v1, 0x2710

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    #@1c
    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@1e
    const/16 v1, 0x8

    #@20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@23
    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@28
    .line 283
    return-void
.end method

.method public isSplit()Z
    .locals 1

    #@0
    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    #@2
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 855
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 856
    return v4

    #@6
    .line 859
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@b
    move-result-object v2

    #@c
    .line 860
    .local v2, "titleLayout":Landroid/text/Layout;
    if-nez v2, :cond_1

    #@e
    .line 861
    return v4

    #@f
    .line 864
    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    #@12
    move-result v1

    #@13
    .line 865
    .local v1, "lineCount":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@16
    .line 866
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    #@19
    move-result v3

    #@1a
    if-lez v3, :cond_2

    #@1c
    .line 867
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 865
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 870
    :cond_3
    return v4
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 234
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@4
    .line 236
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@6
    .line 237
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@8
    .line 238
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@14
    if-ne v1, v2, :cond_0

    #@16
    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@18
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@1a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1d
    .line 241
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@1f
    .line 242
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@21
    and-int/lit8 v1, v1, 0x8

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 243
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    #@28
    .line 246
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 247
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    #@2e
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    #@31
    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@33
    if-eqz v1, :cond_4

    #@35
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    #@37
    if-eqz v1, :cond_4

    #@39
    .line 251
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@3b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3e
    move-result-object v0

    #@3f
    .line 252
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    #@41
    .line 253
    const/4 v1, -0x2

    #@42
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@44
    .line 254
    const/4 v1, -0x1

    #@45
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@47
    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@49
    const/4 v2, 0x1

    #@4a
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    #@4d
    .line 233
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 270
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    #@3
    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@e
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@11
    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@13
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    #@16
    .line 269
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 793
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    #@4
    .line 795
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@6
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@b
    .line 796
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@d
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@10
    .line 798
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@12
    if-eqz v1, :cond_1

    #@14
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@16
    and-int/lit8 v1, v1, 0x10

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 799
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1f
    move-result-object v0

    #@20
    .line 800
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    #@22
    .line 801
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 802
    nop

    #@27
    nop

    #@28
    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@2a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@2d
    .line 804
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@2f
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@32
    .line 792
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1095
    sub-int v3, p5, p3

    #@2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@5
    move-result v4

    #@6
    sub-int/2addr v3, v4

    #@7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@a
    move-result v4

    #@b
    sub-int v7, v3, v4

    #@d
    .line 1097
    .local v7, "contentHeight":I
    if-gtz v7, :cond_0

    #@f
    .line 1099
    return-void

    #@10
    .line 1102
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@13
    move-result v8

    #@14
    .line 1103
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_b

    #@16
    const/16 v22, 0x1

    #@18
    .line 1104
    .local v22, "direction":I
    :goto_0
    if-eqz v8, :cond_c

    #@1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@1d
    move-result v11

    #@1e
    .line 1107
    .local v11, "menuStart":I
    :goto_1
    if-eqz v8, :cond_d

    #@20
    sub-int v3, p4, p2

    #@22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@25
    move-result v4

    #@26
    sub-int v5, v3, v4

    #@28
    .local v5, "x":I
    move/from16 v36, v5

    #@2a
    .line 1108
    .end local v5    # "x":I
    .local v36, "x":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@2d
    move-result v6

    #@2e
    .line 1110
    .local v6, "y":I
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@32
    if-eqz v3, :cond_e

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@38
    move-object/from16 v26, v0

    #@3a
    .line 1111
    .local v26, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_3
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@3e
    if-eqz v3, :cond_10

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@44
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@47
    move-result v3

    #@48
    const/16 v4, 0x8

    #@4a
    if-eq v3, v4, :cond_10

    #@4c
    .line 1112
    move-object/from16 v0, p0

    #@4e
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@50
    and-int/lit8 v3, v3, 0x8

    #@52
    if-eqz v3, :cond_f

    #@54
    const/16 v32, 0x1

    #@56
    .line 1113
    .local v32, "showTitle":Z
    :goto_4
    const/16 v33, 0x0

    #@58
    .line 1114
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5b
    move-result-object v3

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@60
    if-ne v3, v4, :cond_1

    #@62
    .line 1115
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    #@65
    move-result v3

    #@66
    const/16 v4, 0x8

    #@68
    if-eq v3, v4, :cond_11

    #@6a
    .line 1116
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    #@6d
    move-result v33

    #@6e
    .line 1123
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    #@70
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@72
    .line 1124
    move/from16 v0, v36

    #@74
    move/from16 v1, v33

    #@76
    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@79
    move-result v5

    #@7a
    move-object/from16 v3, p0

    #@7c
    .line 1123
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    #@7f
    move-result v3

    #@80
    add-int v5, v36, v3

    #@82
    .line 1125
    .end local v36    # "x":I
    .restart local v5    # "x":I
    move/from16 v0, v33

    #@84
    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@87
    move-result v5

    #@88
    .line 1127
    move-object/from16 v0, p0

    #@8a
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@8c
    if-nez v3, :cond_2

    #@8e
    .line 1128
    move-object/from16 v0, p0

    #@90
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@92
    packed-switch v3, :pswitch_data_0

    #@95
    .line 1150
    :cond_2
    :goto_6
    :pswitch_0
    move-object/from16 v0, p0

    #@97
    iget-object v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@99
    if-eqz v3, :cond_3

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@9f
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@a2
    move-result-object v3

    #@a3
    move-object/from16 v0, p0

    #@a5
    if-ne v3, v0, :cond_3

    #@a7
    .line 1151
    move-object/from16 v0, p0

    #@a9
    iget-object v10, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@ab
    if-eqz v8, :cond_14

    #@ad
    const/4 v14, 0x0

    #@ae
    :goto_7
    move-object/from16 v9, p0

    #@b0
    move v12, v6

    #@b1
    move v13, v7

    #@b2
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    #@b5
    .line 1152
    move-object/from16 v0, p0

    #@b7
    iget-object v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@b9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@bc
    move-result v3

    #@bd
    mul-int v3, v3, v22

    #@bf
    add-int/2addr v11, v3

    #@c0
    .line 1155
    :cond_3
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@c4
    if-eqz v3, :cond_4

    #@c6
    .line 1156
    move-object/from16 v0, p0

    #@c8
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@ca
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@cd
    move-result v3

    #@ce
    const/16 v4, 0x8

    #@d0
    if-eq v3, v4, :cond_4

    #@d2
    .line 1157
    move-object/from16 v0, p0

    #@d4
    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@d6
    if-eqz v8, :cond_15

    #@d8
    const/4 v14, 0x0

    #@d9
    :goto_8
    move-object/from16 v9, p0

    #@db
    move v12, v6

    #@dc
    move v13, v7

    #@dd
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    #@e0
    .line 1158
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@e4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@e7
    move-result v3

    #@e8
    mul-int v3, v3, v22

    #@ea
    add-int/2addr v11, v3

    #@eb
    .line 1161
    :cond_4
    const/16 v20, 0x0

    #@ed
    .line 1162
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    #@ef
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@f1
    if-eqz v3, :cond_16

    #@f3
    .line 1163
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@f7
    move-object/from16 v20, v0

    #@f9
    .line 1168
    .end local v20    # "customView":Landroid/view/View;
    :cond_5
    :goto_9
    if-eqz v20, :cond_9

    #@fb
    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    #@fe
    move-result v27

    #@ff
    .line 1170
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@102
    move-result-object v28

    #@103
    .line 1171
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    #@105
    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    #@107
    if-eqz v3, :cond_17

    #@109
    .line 1172
    nop

    #@10a
    nop

    #@10b
    move-object/from16 v15, v28

    #@10d
    .line 1173
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v15, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_a
    if-eqz v15, :cond_18

    #@10f
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@111
    move/from16 v23, v0

    #@113
    .line 1174
    .local v23, "gravity":I
    :goto_b
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    #@116
    move-result v29

    #@117
    .line 1176
    .local v29, "navWidth":I
    const/16 v34, 0x0

    #@119
    .line 1177
    .local v34, "topMargin":I
    const/16 v16, 0x0

    #@11b
    .line 1178
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_6

    #@11d
    .line 1179
    invoke-virtual {v15}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    #@120
    move-result v3

    #@121
    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@124
    move-result v5

    #@125
    .line 1180
    invoke-virtual {v15}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@128
    move-result v3

    #@129
    mul-int v3, v3, v22

    #@12b
    add-int/2addr v11, v3

    #@12c
    .line 1181
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@12e
    move/from16 v34, v0

    #@130
    .line 1182
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@132
    move/from16 v16, v0

    #@134
    .line 1185
    :cond_6
    const v3, 0x800007

    #@137
    and-int v25, v23, v3

    #@139
    .line 1187
    .local v25, "hgravity":I
    const/4 v3, 0x1

    #@13a
    move/from16 v0, v25

    #@13c
    if-ne v0, v3, :cond_1c

    #@13e
    .line 1188
    move-object/from16 v0, p0

    #@140
    iget v3, v0, Landroid/view/View;->mRight:I

    #@142
    move-object/from16 v0, p0

    #@144
    iget v4, v0, Landroid/view/View;->mLeft:I

    #@146
    sub-int/2addr v3, v4

    #@147
    sub-int v3, v3, v29

    #@149
    div-int/lit8 v18, v3, 0x2

    #@14b
    .line 1189
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1a

    #@14d
    .line 1190
    add-int v19, v18, v29

    #@14f
    .line 1191
    .local v19, "centeredStart":I
    move/from16 v17, v18

    #@151
    .line 1192
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    #@153
    if-le v0, v5, :cond_19

    #@155
    .line 1193
    const/16 v25, 0x5

    #@157
    .line 1210
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_7
    :goto_c
    const/16 v37, 0x0

    #@159
    .line 1211
    .local v37, "xpos":I
    move/from16 v0, v25

    #@15b
    move/from16 v1, v27

    #@15d
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@160
    move-result v3

    #@161
    packed-switch v3, :pswitch_data_1

    #@164
    .line 1223
    :goto_d
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    #@166
    .line 1225
    .local v35, "vgravity":I
    if-nez v23, :cond_8

    #@168
    .line 1226
    const/16 v35, 0x10

    #@16a
    .line 1229
    :cond_8
    const/16 v38, 0x0

    #@16c
    .line 1230
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_0

    #@16f
    .line 1244
    :goto_e
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    #@172
    move-result v21

    #@173
    .line 1245
    .local v21, "customWidth":I
    add-int v3, v37, v21

    #@175
    .line 1246
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@178
    move-result v4

    #@179
    add-int v4, v4, v38

    #@17b
    .line 1245
    move-object/from16 v0, v20

    #@17d
    move/from16 v1, v37

    #@17f
    move/from16 v2, v38

    #@181
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@184
    .line 1247
    move/from16 v0, v21

    #@186
    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@189
    move-result v5

    #@18a
    .line 1250
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_9
    move-object/from16 v0, p0

    #@18c
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@18e
    if-eqz v3, :cond_a

    #@190
    .line 1251
    move-object/from16 v0, p0

    #@192
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@194
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    #@197
    .line 1252
    move-object/from16 v0, p0

    #@199
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@19b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@19e
    move-result v3

    #@19f
    div-int/lit8 v24, v3, 0x2

    #@1a1
    .line 1253
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    #@1a3
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    #@1a9
    move/from16 v0, v24

    #@1ab
    neg-int v9, v0

    #@1ac
    .line 1254
    move-object/from16 v0, p0

    #@1ae
    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@1b4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    #@1b7
    move-result v12

    #@1b8
    add-int/2addr v10, v12

    #@1b9
    .line 1253
    move/from16 v0, v24

    #@1bb
    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/view/View;->layout(IIII)V

    #@1be
    .line 1094
    .end local v24    # "halfProgressHeight":I
    :cond_a
    return-void

    #@1bf
    .line 1103
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v22    # "direction":I
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_b
    const/16 v22, -0x1

    #@1c1
    .restart local v22    # "direction":I
    goto/16 :goto_0

    #@1c3
    .line 1104
    :cond_c
    sub-int v3, p4, p2

    #@1c5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@1c8
    move-result v4

    #@1c9
    sub-int v11, v3, v4

    #@1cb
    .restart local v11    # "menuStart":I
    goto/16 :goto_1

    #@1cd
    .line 1107
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@1d0
    move-result v5

    #@1d1
    .restart local v5    # "x":I
    move/from16 v36, v5

    #@1d3
    .end local v5    # "x":I
    .restart local v36    # "x":I
    goto/16 :goto_2

    #@1d5
    .line 1110
    .restart local v6    # "y":I
    :cond_e
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@1d9
    move-object/from16 v26, v0

    #@1db
    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    goto/16 :goto_3

    #@1dd
    .line 1112
    :cond_f
    const/16 v32, 0x0

    #@1df
    .restart local v32    # "showTitle":Z
    goto/16 :goto_4

    #@1e1
    .line 1111
    .end local v32    # "showTitle":Z
    :cond_10
    const/16 v32, 0x0

    #@1e3
    .restart local v32    # "showTitle":Z
    goto/16 :goto_4

    #@1e5
    .line 1117
    .restart local v33    # "startOffset":I
    :cond_11
    if-eqz v32, :cond_1

    #@1e7
    .line 1118
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    #@1ea
    move-result v33

    #@1eb
    goto/16 :goto_5

    #@1ed
    .line 1132
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    #@1ef
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@1f1
    if-eqz v3, :cond_2

    #@1f3
    .line 1133
    if-eqz v32, :cond_12

    #@1f5
    .line 1134
    move-object/from16 v0, p0

    #@1f7
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@1f9
    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@1fc
    move-result v5

    #@1fd
    .line 1136
    :cond_12
    move-object/from16 v0, p0

    #@1ff
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@201
    move-object/from16 v3, p0

    #@203
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    #@206
    move-result v3

    #@207
    add-int/2addr v5, v3

    #@208
    .line 1137
    move-object/from16 v0, p0

    #@20a
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@20c
    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@20f
    move-result v5

    #@210
    goto/16 :goto_6

    #@212
    .line 1141
    :pswitch_3
    move-object/from16 v0, p0

    #@214
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@216
    if-eqz v3, :cond_2

    #@218
    .line 1142
    if-eqz v32, :cond_13

    #@21a
    move-object/from16 v0, p0

    #@21c
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@21e
    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@221
    move-result v5

    #@222
    .line 1143
    :cond_13
    move-object/from16 v0, p0

    #@224
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@226
    move-object/from16 v3, p0

    #@228
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    #@22b
    move-result v3

    #@22c
    add-int/2addr v5, v3

    #@22d
    .line 1144
    move-object/from16 v0, p0

    #@22f
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@231
    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    #@234
    move-result v5

    #@235
    goto/16 :goto_6

    #@237
    .line 1151
    :cond_14
    const/4 v14, 0x1

    #@238
    goto/16 :goto_7

    #@23a
    .line 1157
    :cond_15
    const/4 v14, 0x1

    #@23b
    goto/16 :goto_8

    #@23d
    .line 1164
    .restart local v20    # "customView":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    #@23f
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@241
    and-int/lit8 v3, v3, 0x10

    #@243
    if-eqz v3, :cond_5

    #@245
    .line 1165
    move-object/from16 v0, p0

    #@247
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@249
    if-eqz v3, :cond_5

    #@24b
    .line 1166
    move-object/from16 v0, p0

    #@24d
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@24f
    move-object/from16 v20, v0

    #@251
    .local v20, "customView":Landroid/view/View;
    goto/16 :goto_9

    #@253
    .line 1172
    .end local v20    # "customView":Landroid/view/View;
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v15, 0x0

    #@254
    goto/16 :goto_a

    #@256
    .line 1173
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_18
    const v23, 0x800013

    #@259
    .restart local v23    # "gravity":I
    goto/16 :goto_b

    #@25b
    .line 1194
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_19
    move/from16 v0, v18

    #@25d
    if-ge v0, v11, :cond_7

    #@25f
    .line 1195
    const/16 v25, 0x3

    #@261
    goto/16 :goto_c

    #@263
    .line 1198
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1a
    move/from16 v19, v18

    #@265
    .line 1199
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    #@267
    .line 1200
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v18

    #@269
    if-ge v0, v5, :cond_1b

    #@26b
    .line 1201
    const/16 v25, 0x3

    #@26d
    goto/16 :goto_c

    #@26f
    .line 1202
    :cond_1b
    move/from16 v0, v17

    #@271
    if-le v0, v11, :cond_7

    #@273
    .line 1203
    const/16 v25, 0x5

    #@275
    goto/16 :goto_c

    #@277
    .line 1206
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1c
    if-nez v23, :cond_7

    #@279
    .line 1207
    const v25, 0x800003

    #@27c
    goto/16 :goto_c

    #@27e
    .line 1213
    .restart local v37    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    #@280
    iget v3, v0, Landroid/view/View;->mRight:I

    #@282
    move-object/from16 v0, p0

    #@284
    iget v4, v0, Landroid/view/View;->mLeft:I

    #@286
    sub-int/2addr v3, v4

    #@287
    sub-int v3, v3, v29

    #@289
    div-int/lit8 v37, v3, 0x2

    #@28b
    goto/16 :goto_d

    #@28d
    .line 1216
    :pswitch_5
    if-eqz v8, :cond_1d

    #@28f
    move/from16 v37, v11

    #@291
    goto/16 :goto_d

    #@293
    :cond_1d
    move/from16 v37, v5

    #@295
    goto/16 :goto_d

    #@297
    .line 1219
    :pswitch_6
    if-eqz v8, :cond_1e

    #@299
    sub-int v37, v5, v29

    #@29b
    goto/16 :goto_d

    #@29d
    :cond_1e
    sub-int v37, v11, v29

    #@29f
    goto/16 :goto_d

    #@2a1
    .line 1232
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@2a4
    move-result v31

    #@2a5
    .line 1233
    .local v31, "paddedTop":I
    move-object/from16 v0, p0

    #@2a7
    iget v3, v0, Landroid/view/View;->mBottom:I

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget v4, v0, Landroid/view/View;->mTop:I

    #@2ad
    sub-int/2addr v3, v4

    #@2ae
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@2b1
    move-result v4

    #@2b2
    sub-int v30, v3, v4

    #@2b4
    .line 1234
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    #@2b6
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@2b9
    move-result v4

    #@2ba
    sub-int/2addr v3, v4

    #@2bb
    div-int/lit8 v38, v3, 0x2

    #@2bd
    goto/16 :goto_e

    #@2bf
    .line 1237
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@2c2
    move-result v3

    #@2c3
    add-int v38, v3, v34

    #@2c5
    .line 1238
    goto/16 :goto_e

    #@2c7
    .line 1240
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    #@2ca
    move-result v3

    #@2cb
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@2ce
    move-result v4

    #@2cf
    sub-int/2addr v3, v4

    #@2d0
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@2d3
    move-result v4

    #@2d4
    sub-int/2addr v3, v4

    #@2d5
    sub-int v38, v3, v16

    #@2d7
    .line 1242
    goto/16 :goto_e

    #@2d9
    .line 1128
    nop

    #@2da
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@2e4
    .line 1211
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    #@2f2
    .line 1230
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v8

    #@4
    .line 876
    .local v8, "childCount":I
    move-object/from16 v0, p0

    #@6
    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    #@8
    move/from16 v45, v0

    #@a
    if-eqz v45, :cond_5

    #@c
    .line 877
    const/16 v43, 0x0

    #@e
    .line 878
    .local v43, "visibleChildren":I
    const/16 v26, 0x0

    #@10
    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    #@12
    if-ge v0, v8, :cond_2

    #@14
    .line 879
    move-object/from16 v0, p0

    #@16
    move/from16 v1, v26

    #@18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v7

    #@1c
    .line 880
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@1f
    move-result v45

    #@20
    const/16 v46, 0x8

    #@22
    move/from16 v0, v45

    #@24
    move/from16 v1, v46

    #@26
    if-eq v0, v1, :cond_1

    #@28
    .line 881
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@2c
    move-object/from16 v45, v0

    #@2e
    move-object/from16 v0, v45

    #@30
    if-ne v7, v0, :cond_0

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@36
    move-object/from16 v45, v0

    #@38
    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    #@3b
    move-result v45

    #@3c
    if-eqz v45, :cond_1

    #@3e
    .line 882
    :cond_0
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@42
    move-object/from16 v45, v0

    #@44
    move-object/from16 v0, v45

    #@46
    if-eq v7, v0, :cond_1

    #@48
    .line 883
    add-int/lit8 v43, v43, 0x1

    #@4a
    .line 878
    :cond_1
    add-int/lit8 v26, v26, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 887
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@51
    move-object/from16 v45, v0

    #@53
    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    #@56
    move-result v39

    #@57
    .line 888
    .local v39, "upChildCount":I
    const/16 v26, 0x0

    #@59
    :goto_1
    move/from16 v0, v26

    #@5b
    move/from16 v1, v39

    #@5d
    if-ge v0, v1, :cond_4

    #@5f
    .line 889
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@63
    move-object/from16 v45, v0

    #@65
    move-object/from16 v0, v45

    #@67
    move/from16 v1, v26

    #@69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@6c
    move-result-object v7

    #@6d
    .line 890
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@70
    move-result v45

    #@71
    const/16 v46, 0x8

    #@73
    move/from16 v0, v45

    #@75
    move/from16 v1, v46

    #@77
    if-eq v0, v1, :cond_3

    #@79
    .line 891
    add-int/lit8 v43, v43, 0x1

    #@7b
    .line 888
    :cond_3
    add-int/lit8 v26, v26, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 895
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v43, :cond_5

    #@80
    .line 897
    const/16 v45, 0x0

    #@82
    const/16 v46, 0x0

    #@84
    move-object/from16 v0, p0

    #@86
    move/from16 v1, v45

    #@88
    move/from16 v2, v46

    #@8a
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    #@8d
    .line 898
    return-void

    #@8e
    .line 902
    .end local v26    # "i":I
    .end local v39    # "upChildCount":I
    .end local v43    # "visibleChildren":I
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@91
    move-result v44

    #@92
    .line 903
    .local v44, "widthMode":I
    const/high16 v45, 0x40000000    # 2.0f

    #@94
    move/from16 v0, v44

    #@96
    move/from16 v1, v45

    #@98
    if-eq v0, v1, :cond_6

    #@9a
    .line 904
    new-instance v45, Ljava/lang/IllegalStateException;

    #@9c
    new-instance v46, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a4
    move-result-object v47

    #@a5
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a8
    move-result-object v47

    #@a9
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v46

    #@ad
    const-string/jumbo v47, " can only be used "

    #@b0
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v46

    #@b4
    .line 905
    const-string/jumbo v47, "with android:layout_width=\"match_parent\" (or fill_parent)"

    #@b7
    .line 904
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v46

    #@bb
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v46

    #@bf
    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v45

    #@c3
    .line 908
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c6
    move-result v18

    #@c7
    .line 909
    .local v18, "heightMode":I
    const/high16 v45, -0x80000000

    #@c9
    move/from16 v0, v18

    #@cb
    move/from16 v1, v45

    #@cd
    if-eq v0, v1, :cond_7

    #@cf
    .line 910
    new-instance v45, Ljava/lang/IllegalStateException;

    #@d1
    new-instance v46, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d9
    move-result-object v47

    #@da
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@dd
    move-result-object v47

    #@de
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v46

    #@e2
    const-string/jumbo v47, " can only be used "

    #@e5
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v46

    #@e9
    .line 911
    const-string/jumbo v47, "with android:layout_height=\"wrap_content\""

    #@ec
    .line 910
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v46

    #@f0
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v46

    #@f4
    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v45

    #@f8
    .line 914
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@fb
    move-result v10

    #@fc
    .line 916
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    #@fe
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@100
    move/from16 v45, v0

    #@102
    if-ltz v45, :cond_13

    #@104
    .line 917
    move-object/from16 v0, p0

    #@106
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@108
    move/from16 v31, v0

    #@10a
    .line 919
    .local v31, "maxHeight":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@10d
    move-result v45

    #@10e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@111
    move-result v46

    #@112
    add-int v42, v45, v46

    #@114
    .line 920
    .local v42, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@117
    move-result v34

    #@118
    .line 921
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@11b
    move-result v35

    #@11c
    .line 922
    .local v35, "paddingRight":I
    sub-int v17, v31, v42

    #@11e
    .line 923
    .local v17, "height":I
    const/high16 v45, -0x80000000

    #@120
    move/from16 v0, v17

    #@122
    move/from16 v1, v45

    #@124
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@127
    move-result v9

    #@128
    .line 924
    .local v9, "childSpecHeight":I
    const/high16 v45, 0x40000000    # 2.0f

    #@12a
    move/from16 v0, v17

    #@12c
    move/from16 v1, v45

    #@12e
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@131
    move-result v16

    #@132
    .line 926
    .local v16, "exactHeightSpec":I
    sub-int v45, v10, v34

    #@134
    sub-int v6, v45, v35

    #@136
    .line 927
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    #@138
    .line 928
    .local v28, "leftOfCenter":I
    move/from16 v36, v28

    #@13a
    .line 930
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@13e
    move-object/from16 v45, v0

    #@140
    if-eqz v45, :cond_15

    #@142
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@146
    move-object/from16 v45, v0

    #@148
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getVisibility()I

    #@14b
    move-result v45

    #@14c
    const/16 v46, 0x8

    #@14e
    move/from16 v0, v45

    #@150
    move/from16 v1, v46

    #@152
    if-eq v0, v1, :cond_15

    #@154
    .line 931
    move-object/from16 v0, p0

    #@156
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@158
    move/from16 v45, v0

    #@15a
    and-int/lit8 v45, v45, 0x8

    #@15c
    if-eqz v45, :cond_14

    #@15e
    const/16 v37, 0x1

    #@160
    .line 933
    .local v37, "showTitle":Z
    :goto_3
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@164
    move-object/from16 v45, v0

    #@166
    if-eqz v45, :cond_16

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@16c
    move-object/from16 v20, v0

    #@16e
    .line 935
    .local v20, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@171
    move-result-object v21

    #@172
    .line 937
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    #@174
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@176
    move/from16 v45, v0

    #@178
    if-gez v45, :cond_17

    #@17a
    .line 938
    const/high16 v45, -0x80000000

    #@17c
    move/from16 v0, v45

    #@17e
    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@181
    move-result v24

    #@182
    .line 951
    .local v24, "homeWidthSpec":I
    :goto_5
    move-object/from16 v0, v20

    #@184
    move/from16 v1, v24

    #@186
    move/from16 v2, v16

    #@188
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@18b
    .line 953
    const/16 v23, 0x0

    #@18d
    .line 954
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    #@190
    move-result v45

    #@191
    const/16 v46, 0x8

    #@193
    move/from16 v0, v45

    #@195
    move/from16 v1, v46

    #@197
    if-eq v0, v1, :cond_18

    #@199
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@19c
    move-result-object v45

    #@19d
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@1a1
    move-object/from16 v46, v0

    #@1a3
    move-object/from16 v0, v45

    #@1a5
    move-object/from16 v1, v46

    #@1a7
    if-ne v0, v1, :cond_18

    #@1a9
    .line 956
    :goto_6
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    #@1ac
    move-result v23

    #@1ad
    .line 957
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    #@1b0
    move-result v45

    #@1b1
    add-int v22, v23, v45

    #@1b3
    .line 958
    .local v22, "homeOffsetWidth":I
    sub-int v45, v6, v22

    #@1b5
    const/16 v46, 0x0

    #@1b7
    move/from16 v0, v46

    #@1b9
    move/from16 v1, v45

    #@1bb
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1be
    move-result v6

    #@1bf
    .line 959
    sub-int v45, v6, v22

    #@1c1
    const/16 v46, 0x0

    #@1c3
    move/from16 v0, v46

    #@1c5
    move/from16 v1, v45

    #@1c7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1ca
    move-result v28

    #@1cb
    .line 962
    .end local v22    # "homeOffsetWidth":I
    :cond_8
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1cf
    move-object/from16 v45, v0

    #@1d1
    if-eqz v45, :cond_9

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1d7
    move-object/from16 v45, v0

    #@1d9
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1dc
    move-result-object v45

    #@1dd
    move-object/from16 v0, v45

    #@1df
    move-object/from16 v1, p0

    #@1e1
    if-ne v0, v1, :cond_9

    #@1e3
    .line 963
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1e7
    move-object/from16 v45, v0

    #@1e9
    const/16 v46, 0x0

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    move-object/from16 v1, v45

    #@1ef
    move/from16 v2, v16

    #@1f1
    move/from16 v3, v46

    #@1f3
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    #@1f6
    move-result v6

    #@1f7
    .line 964
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1fb
    move-object/from16 v45, v0

    #@1fd
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredWidth()I

    #@200
    move-result v45

    #@201
    sub-int v45, v36, v45

    #@203
    const/16 v46, 0x0

    #@205
    move/from16 v0, v46

    #@207
    move/from16 v1, v45

    #@209
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@20c
    move-result v36

    #@20d
    .line 967
    :cond_9
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@211
    move-object/from16 v45, v0

    #@213
    if-eqz v45, :cond_a

    #@215
    .line 968
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@219
    move-object/from16 v45, v0

    #@21b
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getVisibility()I

    #@21e
    move-result v45

    #@21f
    const/16 v46, 0x8

    #@221
    move/from16 v0, v45

    #@223
    move/from16 v1, v46

    #@225
    if-eq v0, v1, :cond_a

    #@227
    .line 969
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@22b
    move-object/from16 v45, v0

    #@22d
    .line 970
    const/16 v46, 0x0

    #@22f
    .line 969
    move-object/from16 v0, p0

    #@231
    move-object/from16 v1, v45

    #@233
    move/from16 v2, v46

    #@235
    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    #@238
    move-result v6

    #@239
    .line 972
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    #@23d
    move-object/from16 v45, v0

    #@23f
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredWidth()I

    #@242
    move-result v45

    #@243
    sub-int v45, v36, v45

    #@245
    .line 971
    const/16 v46, 0x0

    #@247
    move/from16 v0, v46

    #@249
    move/from16 v1, v45

    #@24b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@24e
    move-result v36

    #@24f
    .line 975
    :cond_a
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@253
    move-object/from16 v45, v0

    #@255
    if-nez v45, :cond_b

    #@257
    .line 976
    move-object/from16 v0, p0

    #@259
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@25b
    move/from16 v45, v0

    #@25d
    packed-switch v45, :pswitch_data_0

    #@260
    .line 1006
    :cond_b
    :goto_7
    const/4 v15, 0x0

    #@261
    .line 1007
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@265
    move-object/from16 v45, v0

    #@267
    if-eqz v45, :cond_1b

    #@269
    .line 1008
    move-object/from16 v0, p0

    #@26b
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@26d
    .line 1014
    .end local v15    # "customView":Landroid/view/View;
    :cond_c
    :goto_8
    if-eqz v15, :cond_10

    #@26f
    .line 1015
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@272
    move-result-object v45

    #@273
    move-object/from16 v0, p0

    #@275
    move-object/from16 v1, v45

    #@277
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@27a
    move-result-object v30

    #@27b
    .line 1016
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    #@27d
    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    #@27f
    move/from16 v45, v0

    #@281
    if-eqz v45, :cond_1c

    #@283
    move-object/from16 v45, v30

    #@285
    .line 1017
    check-cast v45, Landroid/app/ActionBar$LayoutParams;

    #@287
    move-object/from16 v5, v45

    #@289
    .line 1019
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    #@28b
    .line 1020
    .local v25, "horizontalMargin":I
    const/16 v41, 0x0

    #@28d
    .line 1021
    .local v41, "verticalMargin":I
    if-eqz v5, :cond_d

    #@28f
    .line 1022
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@291
    move/from16 v45, v0

    #@293
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@295
    move/from16 v46, v0

    #@297
    add-int v25, v45, v46

    #@299
    .line 1023
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@29b
    move/from16 v45, v0

    #@29d
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@29f
    move/from16 v46, v0

    #@2a1
    add-int v41, v45, v46

    #@2a3
    .line 1029
    :cond_d
    move-object/from16 v0, p0

    #@2a5
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@2a7
    move/from16 v45, v0

    #@2a9
    if-gtz v45, :cond_1d

    #@2ab
    .line 1030
    const/high16 v12, -0x80000000

    #@2ad
    .line 1036
    .local v12, "customNavHeightMode":I
    :goto_a
    move-object/from16 v0, v30

    #@2af
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2b1
    move/from16 v45, v0

    #@2b3
    if-ltz v45, :cond_e

    #@2b5
    move-object/from16 v0, v30

    #@2b7
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2b9
    move/from16 v45, v0

    #@2bb
    move/from16 v0, v45

    #@2bd
    move/from16 v1, v17

    #@2bf
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@2c2
    move-result v17

    #@2c3
    .end local v17    # "height":I
    :cond_e
    sub-int v45, v17, v41

    #@2c5
    .line 1035
    const/16 v46, 0x0

    #@2c7
    move/from16 v0, v46

    #@2c9
    move/from16 v1, v45

    #@2cb
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2ce
    move-result v11

    #@2cf
    .line 1038
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    #@2d1
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@2d3
    move/from16 v45, v0

    #@2d5
    const/16 v46, -0x2

    #@2d7
    move/from16 v0, v45

    #@2d9
    move/from16 v1, v46

    #@2db
    if-eq v0, v1, :cond_1f

    #@2dd
    .line 1039
    const/high16 v14, 0x40000000    # 2.0f

    #@2df
    .line 1041
    .local v14, "customNavWidthMode":I
    :goto_b
    move-object/from16 v0, v30

    #@2e1
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@2e3
    move/from16 v45, v0

    #@2e5
    if-ltz v45, :cond_20

    #@2e7
    move-object/from16 v0, v30

    #@2e9
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@2eb
    move/from16 v45, v0

    #@2ed
    move/from16 v0, v45

    #@2ef
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    #@2f2
    move-result v45

    #@2f3
    :goto_c
    sub-int v45, v45, v25

    #@2f5
    .line 1040
    const/16 v46, 0x0

    #@2f7
    move/from16 v0, v46

    #@2f9
    move/from16 v1, v45

    #@2fb
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2fe
    move-result v13

    #@2ff
    .line 1043
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_21

    #@301
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@303
    move/from16 v45, v0

    #@305
    :goto_d
    and-int/lit8 v19, v45, 0x7

    #@307
    .line 1048
    .local v19, "hgrav":I
    const/16 v45, 0x1

    #@309
    move/from16 v0, v19

    #@30b
    move/from16 v1, v45

    #@30d
    if-ne v0, v1, :cond_f

    #@30f
    move-object/from16 v0, v30

    #@311
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@313
    move/from16 v45, v0

    #@315
    const/16 v46, -0x1

    #@317
    move/from16 v0, v45

    #@319
    move/from16 v1, v46

    #@31b
    if-ne v0, v1, :cond_f

    #@31d
    .line 1049
    move/from16 v0, v28

    #@31f
    move/from16 v1, v36

    #@321
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@324
    move-result v45

    #@325
    mul-int/lit8 v13, v45, 0x2

    #@327
    .line 1053
    :cond_f
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@32a
    move-result v45

    #@32b
    .line 1054
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@32e
    move-result v46

    #@32f
    .line 1052
    move/from16 v0, v45

    #@331
    move/from16 v1, v46

    #@333
    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    #@336
    .line 1055
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    #@339
    move-result v45

    #@33a
    add-int v45, v45, v25

    #@33c
    sub-int v6, v6, v45

    #@33e
    .line 1062
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    :cond_10
    move-object/from16 v0, p0

    #@340
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@342
    move-object/from16 v45, v0

    #@344
    add-int v46, v6, v23

    #@346
    .line 1063
    move-object/from16 v0, p0

    #@348
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@34a
    move/from16 v47, v0

    #@34c
    const/high16 v48, 0x40000000    # 2.0f

    #@34e
    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@351
    move-result v47

    #@352
    const/16 v48, 0x0

    #@354
    .line 1062
    move-object/from16 v0, p0

    #@356
    move-object/from16 v1, v45

    #@358
    move/from16 v2, v46

    #@35a
    move/from16 v3, v47

    #@35c
    move/from16 v4, v48

    #@35e
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    #@361
    move-result v6

    #@362
    .line 1064
    move-object/from16 v0, p0

    #@364
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@366
    move-object/from16 v45, v0

    #@368
    if-eqz v45, :cond_11

    #@36a
    .line 1065
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@36e
    move-object/from16 v45, v0

    #@370
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredWidth()I

    #@373
    move-result v45

    #@374
    sub-int v45, v28, v45

    #@376
    const/16 v46, 0x0

    #@378
    move/from16 v0, v46

    #@37a
    move/from16 v1, v45

    #@37c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@37f
    move-result v28

    #@380
    .line 1068
    :cond_11
    move-object/from16 v0, p0

    #@382
    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    #@384
    move/from16 v45, v0

    #@386
    if-gtz v45, :cond_25

    #@388
    .line 1069
    const/16 v32, 0x0

    #@38a
    .line 1070
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    #@38c
    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    #@38e
    if-ge v0, v8, :cond_22

    #@390
    .line 1071
    move-object/from16 v0, p0

    #@392
    move/from16 v1, v26

    #@394
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@397
    move-result-object v40

    #@398
    .line 1072
    .local v40, "v":Landroid/view/View;
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredHeight()I

    #@39b
    move-result v45

    #@39c
    add-int v33, v45, v42

    #@39e
    .line 1073
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    #@3a0
    move/from16 v1, v32

    #@3a2
    if-le v0, v1, :cond_12

    #@3a4
    .line 1074
    move/from16 v32, v33

    #@3a6
    .line 1070
    :cond_12
    add-int/lit8 v26, v26, 0x1

    #@3a8
    goto :goto_e

    #@3a9
    .line 917
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v40    # "v":Landroid/view/View;
    .end local v42    # "verticalPadding":I
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3ac
    move-result v31

    #@3ad
    .restart local v31    # "maxHeight":I
    goto/16 :goto_2

    #@3af
    .line 931
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v42    # "verticalPadding":I
    :cond_14
    const/16 v37, 0x0

    #@3b1
    .restart local v37    # "showTitle":Z
    goto/16 :goto_3

    #@3b3
    .line 930
    .end local v37    # "showTitle":Z
    :cond_15
    const/16 v37, 0x0

    #@3b5
    .restart local v37    # "showTitle":Z
    goto/16 :goto_3

    #@3b7
    .line 933
    :cond_16
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@3bb
    move-object/from16 v20, v0

    #@3bd
    goto/16 :goto_4

    #@3bf
    .line 940
    .restart local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    move-object/from16 v0, v21

    #@3c1
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@3c3
    move/from16 v45, v0

    #@3c5
    const/high16 v46, 0x40000000    # 2.0f

    #@3c7
    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3ca
    move-result v24

    #@3cb
    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_5

    #@3cd
    .line 954
    .restart local v23    # "homeWidth":I
    :cond_18
    if-eqz v37, :cond_8

    #@3cf
    goto/16 :goto_6

    #@3d1
    .line 978
    :pswitch_0
    move-object/from16 v0, p0

    #@3d3
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@3d5
    move-object/from16 v45, v0

    #@3d7
    if-eqz v45, :cond_b

    #@3d9
    .line 979
    if-eqz v37, :cond_19

    #@3db
    move-object/from16 v0, p0

    #@3dd
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@3df
    move/from16 v45, v0

    #@3e1
    mul-int/lit8 v27, v45, 0x2

    #@3e3
    .line 980
    .local v27, "itemPaddingSize":I
    :goto_f
    sub-int v45, v6, v27

    #@3e5
    const/16 v46, 0x0

    #@3e7
    move/from16 v0, v46

    #@3e9
    move/from16 v1, v45

    #@3eb
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@3ee
    move-result v6

    #@3ef
    .line 981
    sub-int v45, v28, v27

    #@3f1
    const/16 v46, 0x0

    #@3f3
    move/from16 v0, v46

    #@3f5
    move/from16 v1, v45

    #@3f7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@3fa
    move-result v28

    #@3fb
    .line 982
    move-object/from16 v0, p0

    #@3fd
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@3ff
    move-object/from16 v45, v0

    #@401
    .line 983
    const/high16 v46, -0x80000000

    #@403
    move/from16 v0, v46

    #@405
    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@408
    move-result v46

    #@409
    .line 984
    const/high16 v47, 0x40000000    # 2.0f

    #@40b
    move/from16 v0, v17

    #@40d
    move/from16 v1, v47

    #@40f
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@412
    move-result v47

    #@413
    .line 982
    invoke-virtual/range {v45 .. v47}, Landroid/view/View;->measure(II)V

    #@416
    .line 985
    move-object/from16 v0, p0

    #@418
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@41a
    move-object/from16 v45, v0

    #@41c
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredWidth()I

    #@41f
    move-result v29

    #@420
    .line 986
    .local v29, "listNavWidth":I
    sub-int v45, v6, v29

    #@422
    const/16 v46, 0x0

    #@424
    move/from16 v0, v46

    #@426
    move/from16 v1, v45

    #@428
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@42b
    move-result v6

    #@42c
    .line 987
    sub-int v45, v28, v29

    #@42e
    const/16 v46, 0x0

    #@430
    move/from16 v0, v46

    #@432
    move/from16 v1, v45

    #@434
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@437
    move-result v28

    #@438
    goto/16 :goto_7

    #@43a
    .line 979
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_19
    move-object/from16 v0, p0

    #@43c
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@43e
    move/from16 v27, v0

    #@440
    goto :goto_f

    #@441
    .line 991
    :pswitch_1
    move-object/from16 v0, p0

    #@443
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@445
    move-object/from16 v45, v0

    #@447
    if-eqz v45, :cond_b

    #@449
    .line 992
    if-eqz v37, :cond_1a

    #@44b
    move-object/from16 v0, p0

    #@44d
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@44f
    move/from16 v45, v0

    #@451
    mul-int/lit8 v27, v45, 0x2

    #@453
    .line 993
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    sub-int v45, v6, v27

    #@455
    const/16 v46, 0x0

    #@457
    move/from16 v0, v46

    #@459
    move/from16 v1, v45

    #@45b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@45e
    move-result v6

    #@45f
    .line 994
    sub-int v45, v28, v27

    #@461
    const/16 v46, 0x0

    #@463
    move/from16 v0, v46

    #@465
    move/from16 v1, v45

    #@467
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@46a
    move-result v28

    #@46b
    .line 995
    move-object/from16 v0, p0

    #@46d
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@46f
    move-object/from16 v45, v0

    #@471
    .line 996
    const/high16 v46, -0x80000000

    #@473
    move/from16 v0, v46

    #@475
    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@478
    move-result v46

    #@479
    .line 997
    const/high16 v47, 0x40000000    # 2.0f

    #@47b
    move/from16 v0, v17

    #@47d
    move/from16 v1, v47

    #@47f
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@482
    move-result v47

    #@483
    .line 995
    invoke-virtual/range {v45 .. v47}, Landroid/view/View;->measure(II)V

    #@486
    .line 998
    move-object/from16 v0, p0

    #@488
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@48a
    move-object/from16 v45, v0

    #@48c
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredWidth()I

    #@48f
    move-result v38

    #@490
    .line 999
    .local v38, "tabWidth":I
    sub-int v45, v6, v38

    #@492
    const/16 v46, 0x0

    #@494
    move/from16 v0, v46

    #@496
    move/from16 v1, v45

    #@498
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@49b
    move-result v6

    #@49c
    .line 1000
    sub-int v45, v28, v38

    #@49e
    const/16 v46, 0x0

    #@4a0
    move/from16 v0, v46

    #@4a2
    move/from16 v1, v45

    #@4a4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@4a7
    move-result v28

    #@4a8
    goto/16 :goto_7

    #@4aa
    .line 992
    .end local v27    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    :cond_1a
    move-object/from16 v0, p0

    #@4ac
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    #@4ae
    move/from16 v27, v0

    #@4b0
    goto :goto_10

    #@4b1
    .line 1009
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    #@4b3
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@4b5
    move/from16 v45, v0

    #@4b7
    and-int/lit8 v45, v45, 0x10

    #@4b9
    if-eqz v45, :cond_c

    #@4bb
    .line 1010
    move-object/from16 v0, p0

    #@4bd
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@4bf
    move-object/from16 v45, v0

    #@4c1
    if-eqz v45, :cond_c

    #@4c3
    .line 1011
    move-object/from16 v0, p0

    #@4c5
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@4c7
    .local v15, "customView":Landroid/view/View;
    goto/16 :goto_8

    #@4c9
    .line 1017
    .end local v15    # "customView":Landroid/view/View;
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    const/4 v5, 0x0

    #@4ca
    goto/16 :goto_9

    #@4cc
    .line 1032
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v41    # "verticalMargin":I
    :cond_1d
    move-object/from16 v0, v30

    #@4ce
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@4d0
    move/from16 v45, v0

    #@4d2
    const/16 v46, -0x2

    #@4d4
    move/from16 v0, v45

    #@4d6
    move/from16 v1, v46

    #@4d8
    if-eq v0, v1, :cond_1e

    #@4da
    .line 1033
    const/high16 v12, 0x40000000    # 2.0f

    #@4dc
    .restart local v12    # "customNavHeightMode":I
    goto/16 :goto_a

    #@4de
    .end local v12    # "customNavHeightMode":I
    :cond_1e
    const/high16 v12, -0x80000000

    #@4e0
    .restart local v12    # "customNavHeightMode":I
    goto/16 :goto_a

    #@4e2
    .line 1039
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    :cond_1f
    const/high16 v14, -0x80000000

    #@4e4
    .restart local v14    # "customNavWidthMode":I
    goto/16 :goto_b

    #@4e6
    :cond_20
    move/from16 v45, v6

    #@4e8
    .line 1041
    goto/16 :goto_c

    #@4ea
    .line 1043
    .restart local v13    # "customNavWidth":I
    :cond_21
    const v45, 0x800013

    #@4ed
    goto/16 :goto_d

    #@4ef
    .line 1077
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_22
    move-object/from16 v0, p0

    #@4f1
    move/from16 v1, v32

    #@4f3
    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    #@4f6
    .line 1082
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_11
    move-object/from16 v0, p0

    #@4f8
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@4fa
    move-object/from16 v45, v0

    #@4fc
    if-eqz v45, :cond_23

    #@4fe
    .line 1083
    move-object/from16 v0, p0

    #@500
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@502
    move-object/from16 v45, v0

    #@504
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    #@507
    move-result v46

    #@508
    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    #@50b
    .line 1086
    :cond_23
    move-object/from16 v0, p0

    #@50d
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@50f
    move-object/from16 v45, v0

    #@511
    if-eqz v45, :cond_24

    #@513
    move-object/from16 v0, p0

    #@515
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@517
    move-object/from16 v45, v0

    #@519
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getVisibility()I

    #@51c
    move-result v45

    #@51d
    const/16 v46, 0x8

    #@51f
    move/from16 v0, v45

    #@521
    move/from16 v1, v46

    #@523
    if-eq v0, v1, :cond_24

    #@525
    .line 1087
    move-object/from16 v0, p0

    #@527
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    #@529
    move-object/from16 v45, v0

    #@52b
    .line 1088
    move-object/from16 v0, p0

    #@52d
    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    #@52f
    move/from16 v46, v0

    #@531
    mul-int/lit8 v46, v46, 0x2

    #@533
    sub-int v46, v10, v46

    #@535
    const/high16 v47, 0x40000000    # 2.0f

    #@537
    .line 1087
    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@53a
    move-result v46

    #@53b
    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    #@53e
    move-result v47

    #@53f
    const/high16 v48, -0x80000000

    #@541
    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@544
    move-result v47

    #@545
    .line 1087
    invoke-virtual/range {v45 .. v47}, Landroid/view/View;->measure(II)V

    #@548
    .line 874
    :cond_24
    return-void

    #@549
    .line 1079
    :cond_25
    move-object/from16 v0, p0

    #@54b
    move/from16 v1, v31

    #@54d
    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    #@550
    goto :goto_11

    #@551
    .line 976
    nop

    #@552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 1287
    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    #@3
    .line 1289
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v2

    #@7
    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1291
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1292
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@10
    if-eqz v2, :cond_0

    #@12
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 1293
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@18
    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@1d
    move-result-object v0

    #@1e
    .line 1294
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    #@20
    .line 1295
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    #@23
    .line 1299
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    #@2a
    .line 1286
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1273
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1274
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    #@6
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1276
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@b
    if-eqz v2, :cond_0

    #@d
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@f
    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1277
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@15
    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    #@1a
    move-result v2

    #@1b
    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    #@1d
    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    #@20
    move-result v2

    #@21
    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    #@23
    .line 1282
    return-object v0
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    #@0
    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    #@2
    .line 847
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    #@0
    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    .line 843
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 462
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@2
    and-int/lit8 v1, v1, 0x10

    #@4
    if-eqz v1, :cond_2

    #@6
    const/4 v0, 0x1

    #@7
    .line 463
    .local v0, "showCustom":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@9
    if-eqz v1, :cond_0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@f
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@12
    .line 466
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@14
    .line 467
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@16
    if-eqz v1, :cond_1

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@1c
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1f
    .line 461
    :cond_1
    return-void

    #@20
    .line 462
    .end local v0    # "showCustom":Z
    :cond_2
    const/4 v0, 0x0

    #@21
    .restart local v0    # "showCustom":Z
    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    #@0
    .prologue
    .line 1330
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1331
    return-void

    #@5
    .line 1333
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    #@7
    .line 1334
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@c
    move-result v0

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@10
    .line 1329
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 1309
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 599
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@4
    const/4 v8, -0x1

    #@5
    if-ne v7, v8, :cond_6

    #@7
    const/4 v0, -0x1

    #@8
    .line 600
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@a
    .line 602
    and-int/lit8 v7, v0, 0x3f

    #@c
    if-eqz v7, :cond_11

    #@e
    .line 604
    and-int/lit8 v7, v0, 0x4

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 605
    and-int/lit8 v7, p1, 0x4

    #@14
    if-eqz v7, :cond_7

    #@16
    const/4 v4, 0x1

    #@17
    .line 606
    .local v4, "setUp":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@19
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    #@1c
    .line 612
    if-eqz v4, :cond_0

    #@1e
    .line 613
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    #@21
    .line 617
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v7, v0, 0x1

    #@23
    if-eqz v7, :cond_1

    #@25
    .line 618
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    #@27
    if-eqz v7, :cond_8

    #@29
    and-int/lit8 v7, p1, 0x1

    #@2b
    if-eqz v7, :cond_8

    #@2d
    const/4 v3, 0x1

    #@2e
    .line 619
    .local v3, "logoVis":Z
    :goto_2
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@30
    if-eqz v3, :cond_9

    #@32
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    #@34
    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@37
    .line 622
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v7, v0, 0x8

    #@39
    if-eqz v7, :cond_2

    #@3b
    .line 623
    and-int/lit8 v7, p1, 0x8

    #@3d
    if-eqz v7, :cond_a

    #@3f
    .line 624
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    #@42
    .line 630
    :cond_2
    :goto_4
    and-int/lit8 v7, p1, 0x2

    #@44
    if-eqz v7, :cond_b

    #@46
    const/4 v5, 0x1

    #@47
    .line 631
    .local v5, "showHome":Z
    :goto_5
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@49
    and-int/lit8 v7, v7, 0x4

    #@4b
    if-eqz v7, :cond_c

    #@4d
    const/4 v1, 0x1

    #@4e
    .line 632
    .local v1, "homeAsUp":Z
    :goto_6
    if-nez v5, :cond_d

    #@50
    move v6, v1

    #@51
    .line 633
    :goto_7
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@53
    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    #@56
    .line 635
    if-nez v5, :cond_3

    #@58
    if-eqz v6, :cond_e

    #@5a
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@5c
    if-nez v7, :cond_e

    #@5e
    .line 636
    const/4 v2, 0x0

    #@5f
    .line 637
    .local v2, "homeVis":I
    :goto_8
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@61
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    #@64
    .line 639
    and-int/lit8 v7, v0, 0x10

    #@66
    if-eqz v7, :cond_4

    #@68
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@6a
    if-eqz v7, :cond_4

    #@6c
    .line 640
    and-int/lit8 v7, p1, 0x10

    #@6e
    if-eqz v7, :cond_f

    #@70
    .line 641
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@72
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@75
    .line 647
    :cond_4
    :goto_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@77
    if-eqz v7, :cond_5

    #@79
    .line 648
    and-int/lit8 v7, v0, 0x20

    #@7b
    if-eqz v7, :cond_5

    #@7d
    .line 649
    and-int/lit8 v7, p1, 0x20

    #@7f
    if-eqz v7, :cond_10

    #@81
    .line 650
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@83
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@86
    .line 651
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@88
    const/4 v8, 0x2

    #@89
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    #@8c
    .line 658
    :cond_5
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@8f
    .line 664
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    :goto_b
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@91
    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    #@94
    move-result v7

    #@95
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@98
    .line 598
    return-void

    #@99
    .line 599
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@9b
    xor-int v0, p1, v7

    #@9d
    .restart local v0    # "flagsChanged":I
    goto/16 :goto_0

    #@9f
    .line 605
    :cond_7
    const/4 v4, 0x0

    #@a0
    .restart local v4    # "setUp":Z
    goto/16 :goto_1

    #@a2
    .line 618
    .end local v4    # "setUp":Z
    :cond_8
    const/4 v3, 0x0

    #@a3
    .restart local v3    # "logoVis":Z
    goto :goto_2

    #@a4
    .line 619
    :cond_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@a6
    goto :goto_3

    #@a7
    .line 626
    .end local v3    # "logoVis":Z
    :cond_a
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@a9
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@ab
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@ae
    goto :goto_4

    #@af
    .line 630
    :cond_b
    const/4 v5, 0x0

    #@b0
    .restart local v5    # "showHome":Z
    goto :goto_5

    #@b1
    .line 631
    :cond_c
    const/4 v1, 0x0

    #@b2
    .restart local v1    # "homeAsUp":Z
    goto :goto_6

    #@b3
    .line 632
    :cond_d
    const/4 v6, 0x0

    #@b4
    .local v6, "titleUp":Z
    goto :goto_7

    #@b5
    .line 636
    .end local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    #@b7
    .restart local v2    # "homeVis":I
    goto :goto_8

    #@b8
    .line 643
    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    #@ba
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@bd
    goto :goto_9

    #@be
    .line 653
    :cond_10
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@c0
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    #@c3
    .line 654
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    #@c5
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@c8
    goto :goto_a

    #@c9
    .line 660
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@cc
    goto :goto_b
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    .line 748
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@4
    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 750
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@a
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@d
    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@f
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@12
    .line 746
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    #@5
    .line 759
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 354
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 355
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@a
    .line 357
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@c
    .line 358
    if-eqz p1, :cond_2

    #@e
    move v1, v2

    #@f
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    #@11
    .line 359
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@17
    const/4 v3, 0x2

    #@18
    if-ne v1, v3, :cond_1

    #@1a
    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@1c
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1f
    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24
    move-result-object v0

    #@25
    .line 362
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    #@26
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@28
    .line 363
    const/4 v1, -0x1

    #@29
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2b
    .line 364
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    #@2e
    .line 353
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    #@2f
    .line 358
    :cond_2
    const/4 v1, 0x0

    #@30
    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 532
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    #@4
    .line 531
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 679
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 678
    return-void

    #@c
    .line 679
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 669
    if-eqz p1, :cond_1

    #@4
    .line 670
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@6
    and-int/lit8 v0, v0, 0x1

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 674
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@19
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@2a
    .line 667
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 694
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 693
    return-void

    #@c
    .line 694
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    #@2
    .line 688
    if-eqz p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@6
    and-int/lit8 v0, v0, 0x1

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 686
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, -0x2

    #@2
    const/4 v6, 0x0

    #@3
    .line 373
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    if-ne p1, v4, :cond_0

    #@7
    return-void

    #@8
    .line 375
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 376
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@10
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@13
    .line 377
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@17
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@1a
    :cond_1
    move-object v0, p1

    #@1b
    .line 380
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@1d
    .line 381
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1f
    .line 382
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 383
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@25
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/view/ViewGroup;

    #@2b
    .line 384
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    #@2d
    .line 385
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@2f
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@32
    .line 388
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@34
    if-nez v4, :cond_3

    #@36
    .line 389
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    #@38
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@3a
    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@3d
    iput-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@3f
    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@41
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@44
    .line 391
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@46
    const v5, 0x102004f

    #@49
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setId(I)V

    #@4c
    .line 392
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@4e
    invoke-direct {v4, p0, v6}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V

    #@51
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@53
    .line 396
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@55
    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@58
    .line 398
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    #@5a
    if-nez v4, :cond_5

    #@5c
    .line 399
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@5e
    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@61
    move-result-object v5

    #@62
    .line 401
    const v6, 0x1120007

    #@65
    .line 400
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@68
    move-result v5

    #@69
    .line 399
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@6c
    .line 402
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@6f
    .line 403
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@71
    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@74
    move-result-object v2

    #@75
    check-cast v2, Landroid/widget/ActionMenuView;

    #@77
    .line 404
    .local v2, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7a
    move-result-object v3

    #@7b
    check-cast v3, Landroid/view/ViewGroup;

    #@7d
    .line 405
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    #@7f
    if-eq v3, p0, :cond_4

    #@81
    .line 406
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@84
    .line 408
    :cond_4
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@87
    .line 433
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@89
    .line 372
    return-void

    #@8a
    .line 410
    .end local v2    # "menuView":Landroid/widget/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@8c
    const/4 v5, 0x0

    #@8d
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@90
    .line 412
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@92
    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9d
    move-result-object v5

    #@9e
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    #@a0
    const/4 v6, 0x1

    #@a1
    .line 412
    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    #@a4
    .line 415
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@a6
    const v5, 0x7fffffff

    #@a9
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    #@ac
    .line 417
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@ae
    .line 418
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b0
    .line 419
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@b3
    .line 420
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@b5
    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@b8
    move-result-object v2

    #@b9
    check-cast v2, Landroid/widget/ActionMenuView;

    #@bb
    .line 421
    .restart local v2    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@bd
    if-eqz v4, :cond_7

    #@bf
    .line 422
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@c2
    move-result-object v3

    #@c3
    check-cast v3, Landroid/view/ViewGroup;

    #@c5
    .line 423
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    #@c7
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@c9
    if-eq v3, v4, :cond_6

    #@cb
    .line 424
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@ce
    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    #@d1
    move-result v4

    #@d2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    #@d5
    .line 427
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@d7
    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@da
    goto :goto_0

    #@db
    .line 430
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@de
    goto :goto_0
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1341
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@9
    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1344
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@12
    .line 1339
    :cond_1
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    #@0
    .prologue
    .line 369
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    #@3
    .line 368
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1323
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    #@2
    .line 1324
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    #@e
    .line 1325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@17
    .line 1322
    return-void

    #@18
    .line 1324
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    #@2
    .line 1319
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@4
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@b
    .line 1317
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    #@5
    .line 1313
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 1304
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 702
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@3
    .line 703
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    #@5
    .line 704
    packed-switch v0, :pswitch_data_0

    #@8
    .line 716
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    #@b
    .line 741
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    #@d
    .line 742
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@10
    .line 701
    :cond_2
    return-void

    #@11
    .line 706
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 707
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@17
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1a
    goto :goto_0

    #@1b
    .line 711
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@1d
    if-eqz v2, :cond_0

    #@1f
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 712
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@28
    goto :goto_0

    #@29
    .line 718
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@2b
    if-nez v2, :cond_3

    #@2d
    .line 719
    new-instance v2, Landroid/widget/Spinner;

    #@2f
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@31
    .line 720
    const v4, 0x10102d7

    #@34
    .line 719
    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@37
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@39
    .line 721
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@3b
    const v3, 0x1020052

    #@3e
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    #@41
    .line 722
    new-instance v2, Landroid/widget/LinearLayout;

    #@43
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@45
    .line 723
    const v4, 0x10102f4

    #@48
    .line 722
    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4b
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@4d
    .line 724
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    #@4f
    .line 725
    const/4 v2, -0x2

    #@50
    const/4 v3, -0x1

    #@51
    .line 724
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@54
    .line 726
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    #@56
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@58
    .line 727
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@5a
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@5c
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5f
    .line 729
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@61
    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@64
    move-result-object v2

    #@65
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    #@67
    if-eq v2, v3, :cond_4

    #@69
    .line 730
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@6b
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    #@6d
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@70
    .line 732
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    #@72
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@74
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@77
    .line 733
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    #@79
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@7c
    goto :goto_1

    #@7d
    .line 736
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@7f
    if-eqz v2, :cond_1

    #@81
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    #@83
    if-eqz v2, :cond_1

    #@85
    .line 737
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@87
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@8a
    goto :goto_1

    #@8b
    .line 704
    nop

    #@8c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@94
    .line 716
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 4
    .param p1, "splitActionBar"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    #@3
    if-eq v1, p1, :cond_5

    #@5
    .line 302
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 303
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/ViewGroup;

    #@11
    .line 304
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@13
    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@18
    .line 307
    :cond_0
    if-eqz p1, :cond_6

    #@1a
    .line 308
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@20
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@22
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@25
    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@27
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a
    move-result-object v1

    #@2b
    const/4 v3, -0x1

    #@2c
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@2e
    .line 316
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@30
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    #@33
    .line 318
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 319
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    #@39
    if-eqz p1, :cond_7

    #@3b
    move v1, v2

    #@3c
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    #@3f
    .line 322
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@41
    if-eqz v1, :cond_4

    #@43
    .line 323
    if-nez p1, :cond_8

    #@45
    .line 324
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@47
    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v2

    #@4b
    .line 326
    const v3, 0x1120007

    #@4e
    .line 325
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@51
    move-result v2

    #@52
    .line 324
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@55
    .line 336
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    #@58
    .line 300
    :cond_5
    return-void

    #@59
    .line 313
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@5b
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@5e
    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    #@60
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@63
    move-result-object v1

    #@64
    const/4 v3, -0x2

    #@65
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@67
    goto :goto_0

    #@68
    .line 319
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    #@6a
    goto :goto_1

    #@6b
    .line 328
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6d
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@70
    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@72
    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7d
    move-result-object v2

    #@7e
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@80
    const/4 v3, 0x1

    #@81
    .line 330
    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    #@84
    .line 333
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@86
    const v2, 0x7fffffff

    #@89
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    #@8c
    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 519
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@5
    .line 520
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 521
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@e
    .line 522
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    #@10
    if-eqz p1, :cond_1

    #@12
    move v1, v2

    #@13
    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    #@16
    .line 523
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 524
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    #@1c
    and-int/lit8 v1, v1, 0x8

    #@1e
    if-eqz v1, :cond_3

    #@20
    .line 525
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    #@22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    #@2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    const/4 v0, 0x0

    #@31
    .line 526
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@33
    if-eqz v0, :cond_4

    #@35
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@38
    .line 528
    .end local v0    # "visible":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    #@3a
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    #@3d
    move-result v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    #@41
    .line 518
    return-void

    #@42
    :cond_1
    move v1, v3

    #@43
    .line 522
    goto :goto_0

    #@44
    .line 525
    :cond_2
    const/4 v0, 0x1

    #@45
    .restart local v0    # "visible":Z
    goto :goto_1

    #@46
    .line 523
    .end local v0    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    #@47
    .restart local v0    # "visible":Z
    goto :goto_1

    #@48
    :cond_4
    move v2, v3

    #@49
    .line 526
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 483
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    #@3
    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    #@6
    .line 482
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    #@2
    .line 264
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 495
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    #@7
    .line 493
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 280
    const/4 v0, 0x0

    #@1
    return v0
.end method

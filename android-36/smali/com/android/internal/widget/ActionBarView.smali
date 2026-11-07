.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final blacklist DISPLAY_DEFAULT:I = 0x0

.field private static final blacklist DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final blacklist TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private blacklist mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mCustomNavView:Landroid/view/View;

.field private blacklist mDefaultUpDescription:I

.field private blacklist mDisplayOptions:I

.field blacklist mExpandedActionView:Landroid/view/View;

.field private final blacklist mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private blacklist mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private blacklist mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private blacklist mHomeDescription:Ljava/lang/CharSequence;

.field private blacklist mHomeDescriptionRes:I

.field private blacklist mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mIncludeTabs:Z

.field private final blacklist mIndeterminateProgressStyle:I

.field private blacklist mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private blacklist mIsCollapsible:Z

.field private blacklist mItemPadding:I

.field private blacklist mListNavLayout:Landroid/widget/LinearLayout;

.field private blacklist mLogo:Landroid/graphics/drawable/Drawable;

.field private blacklist mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private blacklist mMenuPrepared:Z

.field private blacklist mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private blacklist mNavigationMode:I

.field private blacklist mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private blacklist mProgressBarPadding:I

.field private final blacklist mProgressStyle:I

.field private blacklist mProgressView:Landroid/widget/ProgressBar;

.field private blacklist mSpinner:Landroid/widget/Spinner;

.field private blacklist mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mSubtitleStyleRes:I

.field private blacklist mSubtitleView:Landroid/widget/TextView;

.field private blacklist mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private blacklist mTabSelector:Ljava/lang/Runnable;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleLayout:Landroid/widget/LinearLayout;

.field private final blacklist mTitleStyleRes:I

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private final blacklist mUpClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mUpGoerFive:Landroid/view/ViewGroup;

.field private blacklist mUserTitle:Z

.field private blacklist mWasHomeEnabled:Z

.field blacklist mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomNavView(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayOptions(Lcom/android/internal/widget/ActionBarView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandedHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandedMenuPresenter(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHomeLayout(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogoNavItem(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuPrepared(Lcom/android/internal/widget/ActionBarView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpinner(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTabScrollView(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleLayout(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpGoerFive(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWasHomeEnabled(Lcom/android/internal/widget/ActionBarView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitTitle(Lcom/android/internal/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHomeButtonEnabled(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 159
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 135
    const v1, 0x1040127

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 139
    new-instance v1, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v1, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 164
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    move-object/from16 v5, p1

    move-object/from16 v11, p2

    invoke-virtual {v5, v11, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 167
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 169
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 170
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 171
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 176
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109001f

    const/16 v6, 0x10

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 180
    .local v12, "homeResId":I
    const v4, 0x1090022

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 182
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v12, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 184
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v12, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 185
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 186
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 193
    .local v14, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_ac

    .line 194
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_ac
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 197
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 199
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 200
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 201
    invoke-virtual {v2, v13, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 202
    const/16 v4, 0xe

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 205
    const/16 v4, 0xf

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 206
    const/16 v4, 0x11

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 208
    const/16 v4, 0x8

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 210
    const/16 v4, 0xa

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 211
    .local v15, "customNavId":I
    if-eqz v15, :cond_103

    .line 212
    invoke-virtual {v3, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 213
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 214
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 217
    :cond_103
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 219
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const v7, 0x102002c

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 223
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 225
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 227
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_136

    .line 228
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 230
    :cond_136
    return-void
.end method

.method private blacklist buildHomeContentDescription()Ljava/lang/CharSequence;
    .registers 7

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .local v0, "homeDesc":Ljava/lang/CharSequence;
    goto :goto_27

    .line 574
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_27

    .line 577
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 581
    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    :goto_27
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 582
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 583
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040126

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto :goto_5a

    .line 590
    .end local v3    # "result":Ljava/lang/String;
    :cond_4b
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040125

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .restart local v3    # "result":Ljava/lang/String;
    :goto_5a
    return-object v3

    .line 595
    .end local v3    # "result":Ljava/lang/String;
    :cond_5b
    return-object v0
.end method

.method private blacklist configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 437
    if-eqz p1, :cond_11

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_2b

    .line 441
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 446
    :goto_2b
    return-void
.end method

.method private blacklist initTitle()V
    .registers 5

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_63

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 812
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090021

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 814
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x10201e7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 815
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x10201e6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 817
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v2, :cond_3d

    .line 818
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 820
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_48

    .line 821
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :cond_48
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v2, :cond_53

    .line 825
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 827
    :cond_53
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_63

    .line 828
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_63
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_85

    .line 839
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8c

    .line 837
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    :goto_8c
    return-void
.end method

.method private blacklist setHomeButtonEnabled(ZZ)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .line 536
    if-eqz p2, :cond_4

    .line 537
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 544
    return-void

    .line 547
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 551
    return-void
.end method

.method private blacklist setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 500
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 506
    .local v0, "visible":Z
    :goto_2a
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2f

    move v1, v2

    :cond_2f
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    .end local v0    # "visible":Z
    :cond_32
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_3b

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 511
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 512
    return-void
.end method

.method private blacklist updateHomeAccessibility(Z)V
    .registers 4
    .param p1, "homeEnabled"    # Z

    .line 554
    if-nez p1, :cond_f

    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_1e

    .line 558
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    :goto_1e
    return-void
.end method


# virtual methods
.method public blacklist canSplit()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist collapseActionView()V
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 455
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    :goto_a
    nop

    .line 456
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_10

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 459
    :cond_10
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 788
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1260
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1265
    if-nez p1, :cond_6

    .line 1266
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1268
    :cond_6
    return-object p1
.end method

.method public blacklist getCustomView()Landroid/view/View;
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getDisplayOptions()I
    .registers 2

    .line 776
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public blacklist getDropdownItemCount()I
    .registers 2

    .line 756
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist getDropdownSelectedPosition()I
    .registers 2

    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getMenu()Landroid/view/Menu;
    .registers 2

    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public blacklist getNavigationMode()I
    .registers 2

    .line 772
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 1

    .line 781
    return-object p0
.end method

.method public blacklist hasEmbeddedTabs()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public blacklist hasExpandedActionView()Z
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist hasIcon()Z
    .registers 2

    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasLogo()Z
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist initIndeterminateProgress()V
    .registers 6

    .line 292
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020495

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public blacklist initProgress()V
    .registers 6

    .line 284
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020497

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method public blacklist isSplit()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public blacklist isTitleTruncated()Z
    .registers 6

    .line 855
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 856
    return v1

    .line 859
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 860
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_f

    .line 861
    return v1

    .line 864
    :cond_f
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 865
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_21

    .line 866
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1e

    .line 867
    const/4 v1, 0x1

    return v1

    .line 865
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 870
    .end local v3    # "i":I
    :cond_21
    return v1
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 234
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 237
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 238
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_1d

    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_1d
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 242
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_28

    .line 243
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 246
    :cond_28
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v0, :cond_31

    .line 247
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 250
    :cond_31
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_4d

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 252
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_47

    .line 253
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    :cond_47
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 258
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4d
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 270
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_16

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 276
    :cond_16
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 793
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 795
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_33

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 800
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_33

    .line 801
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 802
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 804
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 807
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_33
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 32
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1095
    move-object/from16 v0, p0

    sub-int v1, p5, p3

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v4, v1, v2

    .line 1097
    .local v4, "contentHeight":I
    if-gtz v4, :cond_12

    .line 1099
    return-void

    .line 1102
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v5

    .line 1103
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, -0x1

    :goto_1b
    move v7, v1

    .line 1104
    .local v7, "direction":I
    if-eqz v5, :cond_23

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    goto :goto_2a

    :cond_23
    sub-int v1, p4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_2a
    move v2, v1

    move v8, v2

    .line 1107
    .local v8, "menuStart":I
    if-eqz v5, :cond_36

    sub-int v1, p4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    :goto_3a
    move v9, v1

    .line 1108
    .local v9, "x":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    .line 1110
    .local v3, "y":I
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_48

    :cond_46
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    :goto_48
    move-object v10, v1

    .line 1111
    .local v10, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    if-eqz v1, :cond_5e

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_5e

    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    move v12, v1

    .line 1113
    .local v12, "showTitle":Z
    const/4 v1, 0x0

    .line 1114
    .local v1, "startOffset":I
    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v2, v13, :cond_7d

    .line 1115
    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_75

    .line 1116
    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v1

    move v13, v1

    goto :goto_7e

    .line 1117
    :cond_75
    if-eqz v12, :cond_7d

    .line 1118
    invoke-virtual {v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v1

    move v13, v1

    goto :goto_7e

    .line 1123
    :cond_7d
    move v13, v1

    .end local v1    # "startOffset":I
    .local v13, "startOffset":I
    :goto_7e
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 1124
    invoke-static {v9, v13, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    .line 1123
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v9, v1

    .line 1125
    invoke-static {v9, v13, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    .line 1127
    .end local v9    # "x":I
    .local v1, "x":I
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_da

    .line 1128
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v2, :pswitch_data_262

    move v9, v5

    .end local v5    # "isLayoutRtl":Z
    .local v9, "isLayoutRtl":Z
    goto :goto_db

    .line 1141
    .end local v9    # "isLayoutRtl":Z
    .restart local v5    # "isLayoutRtl":Z
    :pswitch_98
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_b5

    .line 1142
    if-eqz v12, :cond_a4

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v1, v2, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    :cond_a4
    move v2, v1

    .line 1143
    .end local v1    # "x":I
    .local v2, "x":I
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 1144
    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v2, v1, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    move v14, v1

    move v9, v5

    .end local v2    # "x":I
    .restart local v1    # "x":I
    goto :goto_dc

    .line 1141
    :cond_b5
    move v9, v5

    goto :goto_db

    .line 1132
    :pswitch_b7
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d6

    .line 1133
    if-eqz v12, :cond_c5

    .line 1134
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v1, v2, v5}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    move v2, v1

    goto :goto_c6

    .line 1133
    :cond_c5
    move v2, v1

    .line 1136
    .end local v1    # "x":I
    .restart local v2    # "x":I
    :goto_c6
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    move v9, v5

    .end local v5    # "isLayoutRtl":Z
    .restart local v9    # "isLayoutRtl":Z
    add-int/2addr v2, v1

    .line 1137
    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v2, v1, v9}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v1

    move v14, v1

    .end local v2    # "x":I
    .restart local v1    # "x":I
    goto :goto_dc

    .line 1132
    .end local v9    # "isLayoutRtl":Z
    .restart local v5    # "isLayoutRtl":Z
    :cond_d6
    move v9, v5

    .end local v5    # "isLayoutRtl":Z
    .restart local v9    # "isLayoutRtl":Z
    goto :goto_db

    .line 1130
    .end local v9    # "isLayoutRtl":Z
    .restart local v5    # "isLayoutRtl":Z
    :pswitch_d8
    move v9, v5

    .end local v5    # "isLayoutRtl":Z
    .restart local v9    # "isLayoutRtl":Z
    goto :goto_db

    .line 1127
    .end local v9    # "isLayoutRtl":Z
    .restart local v5    # "isLayoutRtl":Z
    :cond_da
    move v9, v5

    .line 1150
    .end local v5    # "isLayoutRtl":Z
    .restart local v9    # "isLayoutRtl":Z
    :goto_db
    move v14, v1

    .end local v1    # "x":I
    .local v14, "x":I
    :goto_dc
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_fb

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_fb

    .line 1151
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    xor-int/lit8 v5, v9, 0x1

    move v2, v8

    .end local v8    # "menuStart":I
    .local v2, "menuStart":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1152
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v1, v7

    add-int v8, v2, v1

    move v2, v8

    .end local v2    # "menuStart":I
    .restart local v8    # "menuStart":I
    goto :goto_fc

    .line 1150
    :cond_fb
    move v2, v8

    .line 1155
    .end local v8    # "menuStart":I
    .restart local v2    # "menuStart":I
    :goto_fc
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_117

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1156
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_117

    .line 1157
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    xor-int/lit8 v5, v9, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1158
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v1, v7

    add-int/2addr v2, v1

    .line 1161
    :cond_117
    const/4 v1, 0x0

    .line 1162
    .local v1, "customView":Landroid/view/View;
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_11f

    .line 1163
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_12b

    .line 1164
    :cond_11f
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_12b

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v5, :cond_12b

    .line 1166
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 1168
    :cond_12b
    :goto_12b
    if-eqz v1, :cond_23b

    .line 1169
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v5

    .line 1170
    .local v5, "layoutDirection":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1171
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v11, v8, Landroid/app/ActionBar$LayoutParams;

    if-eqz v11, :cond_13d

    .line 1172
    move-object v11, v8

    check-cast v11, Landroid/app/ActionBar$LayoutParams;

    goto :goto_13e

    :cond_13d
    const/4 v11, 0x0

    .line 1173
    .local v11, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_13e
    if-eqz v11, :cond_143

    iget v15, v11, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_146

    :cond_143
    const v15, 0x800013

    .line 1174
    .local v15, "gravity":I
    :goto_146
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1176
    .local v16, "navWidth":I
    const/16 v17, 0x0

    .line 1177
    .local v17, "topMargin":I
    const/16 v18, 0x0

    .line 1178
    .local v18, "bottomMargin":I
    if-eqz v11, :cond_16a

    .line 1179
    invoke-virtual {v11}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v6

    invoke-static {v14, v6, v9}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v14

    .line 1180
    invoke-virtual {v11}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v6

    mul-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 1181
    iget v6, v11, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    .line 1182
    .end local v17    # "topMargin":I
    .local v6, "topMargin":I
    move/from16 v20, v2

    .end local v2    # "menuStart":I
    .local v20, "menuStart":I
    iget v2, v11, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v18, v2

    move/from16 v17, v6

    move/from16 v2, v20

    .line 1185
    .end local v6    # "topMargin":I
    .end local v20    # "menuStart":I
    .restart local v2    # "menuStart":I
    .restart local v17    # "topMargin":I
    :cond_16a
    const v6, 0x800007

    and-int/2addr v6, v15

    .line 1187
    .local v6, "hgravity":I
    move/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "y":I
    .local v20, "y":I
    if-ne v6, v3, :cond_1a3

    .line 1188
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v19, v3

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int v3, v19, v3

    sub-int v3, v3, v16

    div-int/lit8 v3, v3, 0x2

    .line 1189
    .local v3, "centeredLeft":I
    if-eqz v9, :cond_195

    .line 1190
    move/from16 v19, v3

    .end local v3    # "centeredLeft":I
    .local v19, "centeredLeft":I
    add-int v3, v19, v16

    .line 1191
    .local v3, "centeredStart":I
    move/from16 v21, v19

    .line 1192
    .local v21, "centeredEnd":I
    if-le v3, v14, :cond_18b

    .line 1193
    const/4 v6, 0x5

    goto :goto_192

    .line 1194
    :cond_18b
    move/from16 v22, v3

    move/from16 v3, v21

    .end local v21    # "centeredEnd":I
    .local v3, "centeredEnd":I
    .local v22, "centeredStart":I
    if-ge v3, v2, :cond_192

    .line 1195
    const/4 v6, 0x3

    .line 1197
    .end local v3    # "centeredEnd":I
    .end local v22    # "centeredStart":I
    :cond_192
    :goto_192
    move/from16 v21, v4

    goto :goto_1ab

    .line 1198
    .end local v19    # "centeredLeft":I
    .local v3, "centeredLeft":I
    :cond_195
    move/from16 v19, v3

    .line 1199
    .local v3, "centeredStart":I
    .restart local v19    # "centeredLeft":I
    move/from16 v21, v4

    .end local v4    # "contentHeight":I
    .local v21, "contentHeight":I
    add-int v4, v19, v16

    .line 1200
    .local v4, "centeredEnd":I
    if-ge v3, v14, :cond_19f

    .line 1201
    const/4 v6, 0x3

    goto :goto_1ab

    .line 1202
    :cond_19f
    if-le v4, v2, :cond_1ab

    .line 1203
    const/4 v6, 0x5

    goto :goto_1ab

    .line 1206
    .end local v3    # "centeredStart":I
    .end local v19    # "centeredLeft":I
    .end local v21    # "contentHeight":I
    .local v4, "contentHeight":I
    :cond_1a3
    move/from16 v21, v4

    .end local v4    # "contentHeight":I
    .restart local v21    # "contentHeight":I
    if-nez v15, :cond_1ab

    .line 1207
    const v6, 0x800003

    goto :goto_1ac

    .line 1206
    :cond_1ab
    :goto_1ab
    nop

    .line 1210
    :goto_1ac
    const/4 v3, 0x0

    .line 1211
    .local v3, "xpos":I
    invoke-static {v6, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    packed-switch v4, :pswitch_data_26c

    :pswitch_1b4
    move/from16 v19, v2

    .end local v2    # "menuStart":I
    .local v19, "menuStart":I
    goto :goto_1d7

    .line 1219
    .end local v19    # "menuStart":I
    .restart local v2    # "menuStart":I
    :pswitch_1b7
    if-eqz v9, :cond_1bc

    sub-int v4, v14, v16

    goto :goto_1be

    :cond_1bc
    sub-int v4, v2, v16

    :goto_1be
    move v3, v4

    move/from16 v19, v2

    goto :goto_1d7

    .line 1216
    :pswitch_1c2
    if-eqz v9, :cond_1c6

    move v4, v2

    goto :goto_1c7

    :cond_1c6
    move v4, v14

    :goto_1c7
    move v3, v4

    .line 1217
    move/from16 v19, v2

    goto :goto_1d7

    .line 1213
    :pswitch_1cb
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v19, v2

    .end local v2    # "menuStart":I
    .restart local v19    # "menuStart":I
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v4, v2

    sub-int v4, v4, v16

    div-int/lit8 v3, v4, 0x2

    .line 1214
    nop

    .line 1223
    :goto_1d7
    and-int/lit8 v2, v15, 0x70

    .line 1225
    .local v2, "vgravity":I
    if-nez v15, :cond_1dd

    .line 1226
    const/16 v2, 0x10

    .line 1229
    :cond_1dd
    const/4 v4, 0x0

    .line 1230
    .local v4, "ypos":I
    sparse-switch v2, :sswitch_data_27a

    move/from16 v23, v2

    .end local v2    # "vgravity":I
    .local v23, "vgravity":I
    goto :goto_221

    .line 1240
    .end local v23    # "vgravity":I
    .restart local v2    # "vgravity":I
    :sswitch_1e4
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v22

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v4, v22, v18

    move/from16 v23, v2

    goto :goto_221

    .line 1237
    :sswitch_1f9
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v22

    add-int v4, v22, v17

    .line 1238
    move/from16 v23, v2

    goto :goto_221

    .line 1232
    :sswitch_202
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v22

    .line 1233
    .local v22, "paddedTop":I
    move/from16 v23, v2

    .end local v2    # "vgravity":I
    .restart local v23    # "vgravity":I
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move/from16 v24, v2

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int v2, v24, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v24

    sub-int v2, v2, v24

    .line 1234
    .local v2, "paddedBottom":I
    sub-int v24, v2, v22

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v4, v24, 0x2

    .line 1235
    nop

    .line 1244
    .end local v2    # "paddedBottom":I
    .end local v22    # "paddedTop":I
    :goto_221
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1245
    .local v2, "customWidth":I
    move/from16 v22, v5

    .end local v5    # "layoutDirection":I
    .local v22, "layoutDirection":I
    add-int v5, v3, v2

    .line 1246
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    move/from16 v25, v6

    .end local v6    # "hgravity":I
    .local v25, "hgravity":I
    add-int v6, v4, v24

    .line 1245
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1247
    invoke-static {v14, v2, v9}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v14

    move/from16 v2, v19

    goto :goto_23f

    .line 1168
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v15    # "gravity":I
    .end local v16    # "navWidth":I
    .end local v17    # "topMargin":I
    .end local v18    # "bottomMargin":I
    .end local v19    # "menuStart":I
    .end local v20    # "y":I
    .end local v21    # "contentHeight":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "vgravity":I
    .end local v25    # "hgravity":I
    .local v2, "menuStart":I
    .local v3, "y":I
    .local v4, "contentHeight":I
    :cond_23b
    move/from16 v20, v3

    move/from16 v21, v4

    .line 1250
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    .restart local v20    # "y":I
    .restart local v21    # "contentHeight":I
    :goto_23f
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_261

    .line 1251
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1252
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1253
    .local v3, "halfProgressHeight":I
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v6, v3

    iget v8, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    iget-object v11, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1254
    invoke-virtual {v11}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v8, v11

    .line 1253
    invoke-virtual {v4, v5, v6, v8, v3}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1256
    .end local v3    # "halfProgressHeight":I
    :cond_261
    return-void

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_b7
        :pswitch_98
    .end packed-switch

    :pswitch_data_26c
    .packed-switch 0x1
        :pswitch_1cb
        :pswitch_1b4
        :pswitch_1c2
        :pswitch_1b4
        :pswitch_1b7
    .end packed-switch

    :sswitch_data_27a
    .sparse-switch
        0x10 -> :sswitch_202
        0x30 -> :sswitch_1f9
        0x50 -> :sswitch_1e4
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 36
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 875
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    .line 876
    .local v1, "childCount":I
    iget-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_50

    .line 877
    const/4 v2, 0x0

    .line 878
    .local v2, "visibleChildren":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    if-ge v5, v1, :cond_30

    .line 879
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 880
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_2d

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne v6, v7, :cond_27

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 881
    invoke-virtual {v7}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_2d

    :cond_27
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v6, v7, :cond_2d

    .line 883
    add-int/lit8 v2, v2, 0x1

    .line 878
    .end local v6    # "child":Landroid/view/View;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 887
    .end local v5    # "i":I
    :cond_30
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 888
    .local v5, "upChildCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    if-ge v6, v5, :cond_4a

    .line 889
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 890
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_47

    .line 891
    add-int/lit8 v2, v2, 0x1

    .line 888
    .end local v7    # "child":Landroid/view/View;
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 895
    .end local v6    # "i":I
    :cond_4a
    if-nez v2, :cond_50

    .line 897
    invoke-virtual {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 898
    return-void

    .line 902
    .end local v2    # "visibleChildren":I
    .end local v5    # "upChildCount":I
    :cond_50
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 903
    .local v2, "widthMode":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_378

    .line 908
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 909
    .local v6, "heightMode":I
    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_355

    .line 914
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 916
    .local v8, "contentWidth":I
    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-ltz v9, :cond_6b

    .line 917
    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    goto :goto_6f

    :cond_6b
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 919
    .local v9, "maxHeight":I
    :goto_6f
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    .line 920
    .local v10, "verticalPadding":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 921
    .local v11, "paddingLeft":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v12

    .line 922
    .local v12, "paddingRight":I
    sub-int v13, v9, v10

    .line 923
    .local v13, "height":I
    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 924
    .local v14, "childSpecHeight":I
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 926
    .local v15, "exactHeightSpec":I
    sub-int v16, v8, v11

    sub-int v4, v16, v12

    .line 927
    .local v4, "availableWidth":I
    div-int/lit8 v16, v4, 0x2

    .line 928
    .local v16, "leftOfCenter":I
    move/from16 v17, v16

    .line 930
    .local v17, "rightOfCenter":I
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_a5

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_a5

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_a5

    const/4 v5, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v5, 0x0

    .line 933
    .local v5, "showTitle":Z
    :goto_a6
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v7, :cond_ad

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_af

    :cond_ad
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 935
    .local v7, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_af
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 937
    .local v3, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v19, v2

    .end local v2    # "widthMode":I
    .local v19, "widthMode":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_c4

    .line 938
    const/high16 v2, -0x80000000

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move/from16 v2, v20

    move-object/from16 v20, v3

    .local v20, "homeWidthSpec":I
    goto :goto_ce

    .line 940
    .end local v20    # "homeWidthSpec":I
    :cond_c4
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v20, v3

    const/high16 v3, 0x40000000    # 2.0f

    .end local v3    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 951
    .local v2, "homeWidthSpec":I
    :goto_ce
    invoke-virtual {v7, v2, v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 953
    const/4 v3, 0x0

    .line 954
    .local v3, "homeWidth":I
    move/from16 v21, v2

    .end local v2    # "homeWidthSpec":I
    .local v21, "homeWidthSpec":I
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    const/16 v3, 0x8

    .end local v3    # "homeWidth":I
    .local v22, "homeWidth":I
    if-eq v2, v3, :cond_e6

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_e8

    :cond_e6
    if-eqz v5, :cond_105

    .line 956
    :cond_e8
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v3

    .line 957
    .end local v22    # "homeWidth":I
    .restart local v3    # "homeWidth":I
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int/2addr v2, v3

    .line 958
    .local v2, "homeOffsetWidth":I
    move/from16 v22, v2

    .end local v2    # "homeOffsetWidth":I
    .local v22, "homeOffsetWidth":I
    sub-int v2, v4, v22

    move/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "homeWidth":I
    .local v23, "homeWidth":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 959
    sub-int v2, v4, v22

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v3, v23

    goto :goto_107

    .line 954
    .end local v23    # "homeWidth":I
    .local v22, "homeWidth":I
    :cond_105
    move/from16 v3, v22

    .line 962
    .end local v22    # "homeWidth":I
    .restart local v3    # "homeWidth":I
    :goto_107
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v2, :cond_129

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_129

    .line 963
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "homeWidth":I
    .restart local v22    # "homeWidth":I
    invoke-virtual {v0, v2, v4, v15, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 964
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v17, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_12b

    .line 962
    .end local v22    # "homeWidth":I
    .restart local v3    # "homeWidth":I
    :cond_129
    move/from16 v22, v3

    .line 967
    .end local v3    # "homeWidth":I
    .restart local v22    # "homeWidth":I
    :goto_12b
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_14f

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 968
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14f

    .line 969
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v14, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 971
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 972
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v17, v2

    .line 971
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v2, v17

    goto :goto_151

    .line 975
    :cond_14f
    move/from16 v2, v17

    .end local v17    # "rightOfCenter":I
    .local v2, "rightOfCenter":I
    :goto_151
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_1fd

    .line 976
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_39c

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v4    # "availableWidth":I
    .end local v5    # "showTitle":Z
    .end local v6    # "heightMode":I
    .local v23, "availableWidth":I
    .local v24, "showTitle":Z
    .local v25, "heightMode":I
    goto/16 :goto_203

    .line 991
    .end local v23    # "availableWidth":I
    .end local v24    # "showTitle":Z
    .end local v25    # "heightMode":I
    .restart local v4    # "availableWidth":I
    .restart local v5    # "showTitle":Z
    .restart local v6    # "heightMode":I
    :pswitch_162
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_1ac

    .line 992
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    if-eqz v5, :cond_16c

    mul-int/lit8 v3, v3, 0x2

    .line 993
    .local v3, "itemPaddingSize":I
    :cond_16c
    move/from16 v17, v3

    .end local v3    # "itemPaddingSize":I
    .local v17, "itemPaddingSize":I
    sub-int v3, v4, v17

    move/from16 v23, v4

    const/4 v4, 0x0

    .end local v4    # "availableWidth":I
    .restart local v23    # "availableWidth":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 994
    .end local v23    # "availableWidth":I
    .local v3, "availableWidth":I
    move/from16 v24, v5

    .end local v5    # "showTitle":Z
    .restart local v24    # "showTitle":Z
    sub-int v5, v16, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 995
    .end local v16    # "leftOfCenter":I
    .local v5, "leftOfCenter":I
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 996
    move/from16 v16, v5

    move/from16 v25, v6

    const/high16 v5, -0x80000000

    .end local v5    # "leftOfCenter":I
    .end local v6    # "heightMode":I
    .restart local v16    # "leftOfCenter":I
    .restart local v25    # "heightMode":I
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 997
    move/from16 v23, v3

    const/high16 v5, 0x40000000    # 2.0f

    .end local v3    # "availableWidth":I
    .restart local v23    # "availableWidth":I
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 995
    invoke-virtual {v4, v6, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 998
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 999
    .local v3, "tabWidth":I
    sub-int v4, v23, v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1000
    .end local v23    # "availableWidth":I
    .restart local v4    # "availableWidth":I
    sub-int v6, v16, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v3, v16

    goto :goto_207

    .line 991
    .end local v3    # "tabWidth":I
    .end local v17    # "itemPaddingSize":I
    .end local v24    # "showTitle":Z
    .end local v25    # "heightMode":I
    .local v5, "showTitle":Z
    .restart local v6    # "heightMode":I
    :cond_1ac
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v4    # "availableWidth":I
    .end local v5    # "showTitle":Z
    .end local v6    # "heightMode":I
    .restart local v23    # "availableWidth":I
    .restart local v24    # "showTitle":Z
    .restart local v25    # "heightMode":I
    goto :goto_203

    .line 978
    .end local v23    # "availableWidth":I
    .end local v24    # "showTitle":Z
    .end local v25    # "heightMode":I
    .restart local v4    # "availableWidth":I
    .restart local v5    # "showTitle":Z
    .restart local v6    # "heightMode":I
    :pswitch_1b3
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v4    # "availableWidth":I
    .end local v5    # "showTitle":Z
    .end local v6    # "heightMode":I
    .restart local v23    # "availableWidth":I
    .restart local v24    # "showTitle":Z
    .restart local v25    # "heightMode":I
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_203

    .line 979
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    if-eqz v24, :cond_1c3

    mul-int/lit8 v3, v3, 0x2

    .line 980
    .local v3, "itemPaddingSize":I
    :cond_1c3
    sub-int v4, v23, v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 981
    .end local v23    # "availableWidth":I
    .restart local v4    # "availableWidth":I
    sub-int v6, v16, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 982
    .end local v16    # "leftOfCenter":I
    .local v6, "leftOfCenter":I
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 983
    move/from16 v17, v3

    move/from16 v16, v6

    const/high16 v3, -0x80000000

    .end local v3    # "itemPaddingSize":I
    .end local v6    # "leftOfCenter":I
    .restart local v16    # "leftOfCenter":I
    .restart local v17    # "itemPaddingSize":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 984
    move/from16 v23, v4

    const/high16 v3, 0x40000000    # 2.0f

    .end local v4    # "availableWidth":I
    .restart local v23    # "availableWidth":I
    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 982
    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 985
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 986
    .local v3, "listNavWidth":I
    sub-int v4, v23, v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 987
    .end local v23    # "availableWidth":I
    .restart local v4    # "availableWidth":I
    sub-int v6, v16, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 988
    .end local v3    # "listNavWidth":I
    .end local v17    # "itemPaddingSize":I
    move/from16 v3, v16

    goto :goto_207

    .line 975
    .end local v24    # "showTitle":Z
    .end local v25    # "heightMode":I
    .restart local v5    # "showTitle":Z
    .local v6, "heightMode":I
    :cond_1fd
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .line 1006
    .end local v4    # "availableWidth":I
    .end local v5    # "showTitle":Z
    .end local v6    # "heightMode":I
    .restart local v23    # "availableWidth":I
    .restart local v24    # "showTitle":Z
    .restart local v25    # "heightMode":I
    :cond_203
    :goto_203
    move/from16 v3, v16

    move/from16 v4, v23

    .end local v16    # "leftOfCenter":I
    .end local v23    # "availableWidth":I
    .local v3, "leftOfCenter":I
    .restart local v4    # "availableWidth":I
    :goto_207
    const/4 v5, 0x0

    .line 1007
    .local v5, "customView":Landroid/view/View;
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v6, :cond_20f

    .line 1008
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_21b

    .line 1009
    :cond_20f
    iget v6, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_21b

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v6, :cond_21b

    .line 1011
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 1014
    :cond_21b
    :goto_21b
    if-eqz v5, :cond_2d2

    .line 1015
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1016
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v16, v7

    .end local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .local v16, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    instance-of v7, v6, Landroid/app/ActionBar$LayoutParams;

    if-eqz v7, :cond_22f

    .line 1017
    move-object v7, v6

    check-cast v7, Landroid/app/ActionBar$LayoutParams;

    goto :goto_230

    :cond_22f
    const/4 v7, 0x0

    .line 1019
    .local v7, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_230
    const/16 v17, 0x0

    .line 1020
    .local v17, "horizontalMargin":I
    const/16 v23, 0x0

    .line 1021
    .local v23, "verticalMargin":I
    if-eqz v7, :cond_249

    .line 1022
    move/from16 v26, v10

    .end local v10    # "verticalPadding":I
    .local v26, "verticalPadding":I
    iget v10, v7, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v27, v10

    iget v10, v7, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int v17, v27, v10

    .line 1023
    iget v10, v7, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v27, v10

    iget v10, v7, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int v23, v27, v10

    goto :goto_24b

    .line 1021
    .end local v26    # "verticalPadding":I
    .restart local v10    # "verticalPadding":I
    :cond_249
    move/from16 v26, v10

    .line 1029
    .end local v10    # "verticalPadding":I
    .restart local v26    # "verticalPadding":I
    :goto_24b
    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v27, v10

    const/4 v10, -0x2

    if-gtz v27, :cond_25b

    .line 1030
    const/high16 v27, -0x80000000

    move/from16 v32, v27

    move/from16 v27, v11

    move/from16 v11, v32

    .local v27, "customNavHeightMode":I
    goto :goto_266

    .line 1032
    .end local v27    # "customNavHeightMode":I
    :cond_25b
    move/from16 v27, v11

    .end local v11    # "paddingLeft":I
    .local v27, "paddingLeft":I
    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v11, v10, :cond_264

    .line 1033
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_266

    :cond_264
    const/high16 v11, -0x80000000

    .line 1035
    .local v11, "customNavHeightMode":I
    :goto_266
    nop

    .line 1036
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v10, :cond_272

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_273

    :cond_272
    move v10, v13

    :goto_273
    sub-int v10, v10, v23

    .line 1035
    move/from16 v29, v12

    const/4 v12, 0x0

    .end local v12    # "paddingRight":I
    .local v29, "paddingRight":I
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1038
    .local v10, "customNavHeight":I
    iget v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v13

    const/4 v13, -0x2

    .end local v13    # "height":I
    .local v30, "height":I
    if-eq v12, v13, :cond_286

    .line 1039
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_288

    :cond_286
    const/high16 v12, -0x80000000

    .line 1040
    .local v12, "customNavWidthMode":I
    :goto_288
    nop

    .line 1041
    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v13, :cond_294

    iget v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_295

    :cond_294
    move v13, v4

    :goto_295
    sub-int v13, v13, v17

    .line 1040
    move/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "availableWidth":I
    .local v28, "availableWidth":I
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1043
    .local v13, "customNavWidth":I
    if-eqz v7, :cond_2a3

    iget v4, v7, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_2a6

    :cond_2a3
    const v4, 0x800013

    :goto_2a6
    and-int/lit8 v4, v4, 0x7

    .line 1048
    .local v4, "hgrav":I
    move-object/from16 v31, v7

    const/4 v7, 0x1

    .end local v7    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .local v31, "ablp":Landroid/app/ActionBar$LayoutParams;
    if-ne v4, v7, :cond_2bb

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v4

    .end local v4    # "hgrav":I
    .local v18, "hgrav":I
    const/4 v4, -0x1

    if-ne v7, v4, :cond_2bd

    .line 1049
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v13, v4, 0x2

    goto :goto_2bd

    .line 1048
    .end local v18    # "hgrav":I
    .restart local v4    # "hgrav":I
    :cond_2bb
    move/from16 v18, v4

    .line 1052
    .end local v4    # "hgrav":I
    .restart local v18    # "hgrav":I
    :cond_2bd
    :goto_2bd
    nop

    .line 1053
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1054
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1052
    invoke-virtual {v5, v4, v7}, Landroid/view/View;->measure(II)V

    .line 1055
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v4, v17, v4

    sub-int v4, v28, v4

    .end local v28    # "availableWidth":I
    .local v4, "availableWidth":I
    goto :goto_2de

    .line 1014
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v17    # "horizontalMargin":I
    .end local v18    # "hgrav":I
    .end local v23    # "verticalMargin":I
    .end local v26    # "verticalPadding":I
    .end local v27    # "paddingLeft":I
    .end local v29    # "paddingRight":I
    .end local v30    # "height":I
    .end local v31    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .local v7, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .local v10, "verticalPadding":I
    .local v11, "paddingLeft":I
    .local v12, "paddingRight":I
    .local v13, "height":I
    :cond_2d2
    move/from16 v28, v4

    move-object/from16 v16, v7

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v29, v12

    move/from16 v30, v13

    .line 1062
    .end local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v10    # "verticalPadding":I
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .end local v13    # "height":I
    .restart local v16    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v26    # "verticalPadding":I
    .restart local v27    # "paddingLeft":I
    .restart local v29    # "paddingRight":I
    .restart local v30    # "height":I
    :goto_2de
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    add-int v7, v4, v22

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 1063
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1062
    const/4 v12, 0x0

    invoke-virtual {v0, v6, v7, v10, v12}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 1064
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2ff

    .line 1065
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v3, v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1068
    :cond_2ff
    iget v6, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v6, :cond_31b

    .line 1069
    const/4 v6, 0x0

    .line 1070
    .local v6, "measuredHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_305
    if-ge v7, v1, :cond_317

    .line 1071
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1072
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v11, v11, v26

    .line 1073
    .local v11, "paddedViewHeight":I
    if-le v11, v6, :cond_314

    .line 1074
    move v6, v11

    .line 1070
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "paddedViewHeight":I
    :cond_314
    add-int/lit8 v7, v7, 0x1

    goto :goto_305

    .line 1077
    .end local v7    # "i":I
    :cond_317
    invoke-virtual {v0, v8, v6}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1078
    .end local v6    # "measuredHeight":I
    goto :goto_31e

    .line 1079
    :cond_31b
    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1082
    :goto_31e
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v6, :cond_32b

    .line 1083
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1086
    :cond_32b
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v6, :cond_354

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_354

    .line 1087
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v8, v7

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1089
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1087
    invoke-virtual {v6, v7, v10}, Landroid/widget/ProgressBar;->measure(II)V

    .line 1091
    :cond_354
    return-void

    .line 910
    .end local v3    # "leftOfCenter":I
    .end local v4    # "availableWidth":I
    .end local v5    # "customView":Landroid/view/View;
    .end local v8    # "contentWidth":I
    .end local v9    # "maxHeight":I
    .end local v14    # "childSpecHeight":I
    .end local v15    # "exactHeightSpec":I
    .end local v16    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v19    # "widthMode":I
    .end local v20    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "homeWidthSpec":I
    .end local v22    # "homeWidth":I
    .end local v24    # "showTitle":Z
    .end local v25    # "heightMode":I
    .end local v26    # "verticalPadding":I
    .end local v27    # "paddingLeft":I
    .end local v29    # "paddingRight":I
    .end local v30    # "height":I
    .local v2, "widthMode":I
    .local v6, "heightMode":I
    :cond_355
    move/from16 v19, v2

    .end local v2    # "widthMode":I
    .restart local v19    # "widthMode":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 904
    .end local v6    # "heightMode":I
    .end local v19    # "widthMode":I
    .restart local v2    # "widthMode":I
    :cond_378
    move/from16 v19, v2

    .end local v2    # "widthMode":I
    .restart local v19    # "widthMode":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_39c
    .packed-switch 0x1
        :pswitch_1b3
        :pswitch_162
    .end packed-switch
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 1287
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1289
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1291
    iget v1, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_23

    .line 1293
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1294
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_23

    .line 1295
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1299
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_23
    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v1, :cond_2a

    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1302
    :cond_2a
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1273
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1274
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1276
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1d

    .line 1277
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1280
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1282
    return-object v1
.end method

.method public blacklist setCollapsible(Z)V
    .registers 2
    .param p1, "collapsible"    # Z

    .line 848
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 849
    return-void
.end method

.method public blacklist setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .line 844
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 845
    return-void
.end method

.method public blacklist setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 462
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 463
    .local v0, "showCustom":Z
    :goto_9
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 466
    :cond_14
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 467
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 470
    :cond_21
    return-void
.end method

.method public blacklist setDefaultNavigationContentDescription(I)V
    .registers 3
    .param p1, "defaultNavigationContentDescription"    # I

    .line 1330
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_5

    .line 1331
    return-void

    .line 1333
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1334
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1335
    return-void
.end method

.method public blacklist setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    return-void
.end method

.method public blacklist setDisplayOptions(I)V
    .registers 10
    .param p1, "options"    # I

    .line 599
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_a

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v1, p1, v0

    .line 600
    .local v1, "flagsChanged":I
    :goto_a
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 602
    and-int/lit8 v0, v1, 0x3f

    if-eqz v0, :cond_bf

    .line 604
    and-int/lit8 v0, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_27

    .line 605
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 606
    .local v0, "setUp":Z
    :goto_1d
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 612
    if-eqz v0, :cond_27

    .line 613
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 617
    .end local v0    # "setUp":Z
    :cond_27
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_42

    .line 618
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_35

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_35

    move v0, v3

    goto :goto_36

    :cond_35
    move v0, v2

    .line 619
    .local v0, "logoVis":Z
    :goto_36
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_3d

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    :cond_3d
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_3f
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 622
    .end local v0    # "logoVis":Z
    :cond_42
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_55

    .line 623
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4e

    .line 624
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    goto :goto_55

    .line 626
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    :cond_55
    :goto_55
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5b

    move v0, v3

    goto :goto_5c

    :cond_5b
    move v0, v2

    .line 631
    .local v0, "showHome":Z
    :goto_5c
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_64

    move v4, v3

    goto :goto_65

    :cond_64
    move v4, v2

    .line 632
    .local v4, "homeAsUp":Z
    :goto_65
    if-nez v0, :cond_6b

    if-eqz v4, :cond_6b

    move v5, v3

    goto :goto_6c

    :cond_6b
    move v5, v2

    .line 633
    .local v5, "titleUp":Z
    :goto_6c
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 635
    if-nez v0, :cond_75

    if-eqz v5, :cond_7b

    :cond_75
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_7b

    .line 636
    move v6, v2

    goto :goto_7d

    :cond_7b
    const/16 v6, 0x8

    .line 637
    .local v6, "homeVis":I
    :goto_7d
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 639
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_99

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_99

    .line 640
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_94

    .line 641
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_99

    .line 643
    :cond_94
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 647
    :cond_99
    :goto_99
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_bb

    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_bb

    .line 649
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_b1

    .line 650
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 651
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_bb

    .line 653
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 654
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 658
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 659
    .end local v0    # "showHome":Z
    .end local v4    # "homeAsUp":Z
    .end local v5    # "titleUp":Z
    .end local v6    # "homeVis":I
    goto :goto_c2

    .line 660
    :cond_bf
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    .line 664
    :goto_c2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 665
    return-void
.end method

.method public blacklist setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 747
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 748
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_12

    .line 750
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 753
    :cond_12
    return-void
.end method

.method public blacklist setDropdownSelectedPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 761
    return-void
.end method

.method public blacklist setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 5
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 357
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 358
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 359
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 362
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 366
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_30
    return-void
.end method

.method public blacklist setHomeButtonEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 533
    return-void
.end method

.method public blacklist setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 679
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 668
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 669
    if-eqz p1, :cond_13

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 671
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 673
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 674
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 676
    :cond_2a
    return-void
.end method

.method public blacklist setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 694
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 695
    return-void
.end method

.method public blacklist setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 687
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 688
    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 691
    :cond_f
    return-void
.end method

.method public blacklist setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_17

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 380
    :cond_17
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 381
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 382
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_2f

    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 384
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2f

    .line 385
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 388
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v1, :cond_51

    .line 389
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v2, 0x10201eb

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 392
    new-instance v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 396
    :cond_51
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 398
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_88

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 399
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 402
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 403
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 404
    .local v2, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 405
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_84

    if-eq v3, p0, :cond_84

    .line 406
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    :cond_84
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_dc

    .line 410
    .end local v2    # "menuView":Landroid/widget/ActionMenuView;
    :cond_88
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 412
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 415
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 417
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 420
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 421
    .restart local v2    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_d9

    .line 422
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 423
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_cc

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_cc

    .line 424
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    :cond_cc
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 427
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_dc

    .line 430
    :cond_d9
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :goto_dc
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 434
    return-void
.end method

.method public blacklist setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 1340
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 1341
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1343
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    .line 1344
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1346
    :cond_12
    return-void
.end method

.method public blacklist setMenuPrepared()V
    .registers 2

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 370
    return-void
.end method

.method public blacklist setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1323
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1324
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1326
    return-void
.end method

.method public blacklist setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1318
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1319
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1320
    return-void
.end method

.method public blacklist setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1314
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1315
    return-void
.end method

.method public blacklist setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 1305
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    return-void
.end method

.method public blacklist setNavigationMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .line 702
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 703
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_8b

    .line 704
    packed-switch v0, :pswitch_data_8c

    goto :goto_1f

    .line 711
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1f

    .line 712
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_1f

    .line 706
    :pswitch_16
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1f

    .line 707
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 716
    :cond_1f
    :goto_1f
    packed-switch p1, :pswitch_data_94

    goto :goto_86

    .line 736
    :pswitch_23
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_86

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_86

    .line 737
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_86

    .line 718
    :pswitch_31
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_68

    .line 719
    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102d7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 721
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v2, 0x10201e5

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setId(I)V

    .line 722
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102f4

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 724
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 726
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 727
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_68
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v1, v2, :cond_79

    .line 730
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 732
    :cond_79
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 733
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 734
    nop

    .line 741
    :cond_86
    :goto_86
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 744
    :cond_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_8
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_31
        :pswitch_23
    .end packed-switch
.end method

.method public blacklist setSplitToolbar(Z)V
    .registers 5
    .param p1, "splitActionBar"    # Z

    .line 301
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8c

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_41

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_17

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_17
    if-eqz p1, :cond_2e

    .line 308
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_24

    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3c

    .line 313
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    :goto_3c
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 318
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_41
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4c

    move v2, v1

    goto :goto_4e

    :cond_4c
    const/16 v2, 0x8

    :goto_4e
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    :cond_51
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_89

    .line 323
    if-nez p1, :cond_68

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_89

    .line 328
    :cond_68
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 330
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 336
    :cond_89
    :goto_89
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 338
    :cond_8c
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 519
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 521
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_33

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_31
    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    move v0, v1

    .line 526
    .local v0, "visible":Z
    :goto_34
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    .end local v0    # "visible":Z
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 529
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method public blacklist setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 265
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 266
    return-void
.end method

.method public blacklist setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 494
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_7

    .line 495
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 497
    :cond_7
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method

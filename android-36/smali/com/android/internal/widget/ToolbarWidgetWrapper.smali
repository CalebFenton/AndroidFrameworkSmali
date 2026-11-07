.class public Lcom/android/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# static fields
.field private static final greylist-max-o AFFECTS_LOGO_MASK:I = 0x3

.field private static final greylist-max-o DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private greylist-max-o mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private greylist-max-o mCustomView:Landroid/view/View;

.field private greylist-max-o mDefaultNavigationContentDescription:I

.field private greylist-max-o mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDisplayOpts:I

.field private greylist-max-o mHomeDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mLogo:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMenuPrepared:Z

.field private greylist-max-o mNavIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mNavigationMode:I

.field private greylist-max-o mSpinner:Landroid/widget/Spinner;

.field private greylist-max-o mSubtitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTabView:Landroid/view/View;

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleSet:Z

.field private greylist-max-o mToolbar:Landroid/widget/Toolbar;

.field private greylist-max-o mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenuPrepared(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolbar(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowCallback(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/Toolbar;Z)V
    .registers 4
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z

    .line 91
    const v0, 0x1040127

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V

    .line 92
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/Toolbar;ZI)V
    .registers 20
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    .line 95
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 87
    iput v1, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 96
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    .line 98
    invoke-virtual {v2}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {v2}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 100
    iget-object v3, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    iput-boolean v3, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 101
    iget-object v3, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {v2}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 104
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p2, :cond_111

    .line 106
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 107
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 108
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_51
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 112
    .local v5, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 113
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_60
    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 117
    .local v6, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6a

    .line 118
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_6a
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 122
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_73

    .line 123
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_73
    iget-object v8, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_80

    iget-object v8, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_80

    .line 126
    iget-object v8, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_80
    const/16 v8, 0x8

    invoke-virtual {v3, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    const/16 v8, 0xa

    invoke-virtual {v3, v8, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 132
    .local v8, "customNavId":I
    if-eqz v8, :cond_ab

    .line 133
    iget-object v9, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v9}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v9, v8, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 135
    iget v9, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    :cond_ab
    const/4 v9, 0x4

    invoke-virtual {v3, v9, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 139
    .local v9, "height":I
    if-lez v9, :cond_bf

    .line 140
    iget-object v10, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v10}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 141
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v11, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v11, v10}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_bf
    const/16 v10, 0x16

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 147
    .local v10, "contentInsetStart":I
    const/16 v12, 0x17

    invoke-virtual {v3, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 149
    .local v11, "contentInsetEnd":I
    if-gez v10, :cond_d0

    if-ltz v11, :cond_dd

    .line 150
    :cond_d0
    iget-object v12, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 151
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 150
    invoke-virtual {v12, v13, v14}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_dd
    const/16 v12, 0xb

    invoke-virtual {v3, v12, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 155
    .local v12, "titleTextStyle":I
    if-eqz v12, :cond_f0

    .line 156
    iget-object v13, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v14, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v14}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_f0
    const/16 v13, 0xc

    invoke-virtual {v3, v13, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 161
    .local v13, "subtitleTextStyle":I
    if-eqz v13, :cond_103

    .line 162
    iget-object v14, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v15, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v15}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroid/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_103
    const/16 v14, 0x1a

    invoke-virtual {v3, v14, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 166
    .local v1, "popupTheme":I
    if-eqz v1, :cond_110

    .line 167
    iget-object v14, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v14, v1}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 169
    .end local v1    # "popupTheme":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v6    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "contentInsetStart":I
    .end local v11    # "contentInsetEnd":I
    .end local v12    # "titleTextStyle":I
    .end local v13    # "subtitleTextStyle":I
    :cond_110
    goto :goto_117

    .line 170
    :cond_111
    invoke-direct {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 172
    :goto_117
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 175
    iget-object v4, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 177
    iget-object v4, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    new-instance v5, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v5, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method private greylist-max-o detectDisplayOptions()I
    .registers 3

    .line 201
    const/16 v0, 0xb

    .line 203
    .local v0, "opts":I
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 204
    or-int/lit8 v0, v0, 0x4

    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_14
    return v0
.end method

.method private greylist-max-o ensureSpinner()V
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_21

    .line 525
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 526
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 528
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_21
    return-void
.end method

.method private greylist-max-o setTitleInt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 260
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_d
    return-void
.end method

.method private greylist-max-o updateHomeAccessibility()V
    .registers 3

    .line 657
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_1d

    .line 661
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 664
    :cond_1d
    :goto_1d
    return-void
.end method

.method private greylist-max-o updateNavigationIcon()V
    .registers 3

    .line 638
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    .line 641
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 643
    :goto_1b
    return-void
.end method

.method private greylist-max-o updateToolbarLogo()V
    .registers 3

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1a

    .line 345
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    .line 346
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_14
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_16
    move-object v0, v1

    goto :goto_1a

    .line 348
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 352
    return-void
.end method


# virtual methods
.method public greylist-max-o animateToVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 577
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 578
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_b

    .line 579
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 581
    :cond_b
    return-void
.end method

.method public greylist-max-o canShowOverflowMenu()Z
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o canSplit()Z
    .registers 2

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o collapseActionView()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    .line 233
    return-void
.end method

.method public greylist-max-o dismissPopupMenus()V
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 397
    return-void
.end method

.method public greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCustomView()Landroid/view/View;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o getDisplayOptions()I
    .registers 2

    .line 401
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public greylist-max-o getDropdownItemCount()I
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o getDropdownSelectedPosition()I
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getMenu()Landroid/view/Menu;
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNavigationMode()I
    .registers 2

    .line 479
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public greylist-max-o getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method public greylist-max-o getVisibility()I
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public greylist-max-o hasEmbeddedTabs()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hasExpandedActionView()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasIcon()Z
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hasLogo()Z
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hideOverflowMenu()Z
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o initIndeterminateProgress()V
    .registers 3

    .line 286
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public greylist-max-o initProgress()V
    .registers 3

    .line 281
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isOverflowMenuShowing()Z
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSplit()Z
    .registers 2

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isTitleTruncated()Z
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 673
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 674
    return-void
.end method

.method public greylist-max-o saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 668
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 669
    return-void
.end method

.method public greylist-max-o setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method public greylist-max-o setCollapsible(Z)V
    .registers 3
    .param p1, "collapsible"    # Z

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setCollapsible(Z)V

    .line 470
    return-void
.end method

.method public greylist-max-o setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 564
    :cond_11
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 565
    if-eqz p1, :cond_22

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_22

    .line 566
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 568
    :cond_22
    return-void
.end method

.method public greylist-max-o setDefaultNavigationContentDescription(I)V
    .registers 3
    .param p1, "defaultNavigationContentDescription"    # I

    .line 191
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_5

    .line 192
    return-void

    .line 194
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 196
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 198
    :cond_18
    return-void
.end method

.method public greylist-max-o setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 632
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 633
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 635
    :cond_9
    return-void
.end method

.method public greylist-max-o setDisplayOptions(I)V
    .registers 6
    .param p1, "newOpts"    # I

    .line 406
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 407
    .local v0, "oldOpts":I
    xor-int v1, v0, p1

    .line 408
    .local v1, "changed":I
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 409
    if-eqz v1, :cond_5a

    .line 410
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_16

    .line 411
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_13

    .line 412
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 414
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 417
    :cond_16
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1d

    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 421
    :cond_1d
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3f

    .line 422
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_34

    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 426
    :cond_34
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 431
    :cond_3f
    :goto_3f
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_5a

    .line 432
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_53

    .line 433
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_5a

    .line 435
    :cond_53
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 439
    :cond_5a
    :goto_5a
    return-void
.end method

.method public greylist-max-o setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 535
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 536
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 538
    return-void
.end method

.method public greylist-max-o setDropdownSelectedPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_a

    .line 546
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 547
    return-void

    .line 543
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 5
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v0, v1, :cond_15

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 446
    :cond_15
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 447
    if-eqz p1, :cond_3c

    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 450
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    .line 451
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    .line 452
    const v1, 0x800053

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 453
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 455
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_3c
    return-void
.end method

.method public greylist-max-o setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 475
    return-void
.end method

.method public greylist-max-o setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 322
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 323
    return-void
.end method

.method public greylist-max-o setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 327
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 329
    return-void
.end method

.method public greylist-max-o setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 333
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public greylist-max-o setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 338
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 339
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 340
    return-void
.end method

.method public greylist-max-o setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v0, :cond_19

    .line 387
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x10201eb

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 390
    :cond_19
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V

    .line 392
    return-void
.end method

.method public greylist-max-o setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 701
    return-void
.end method

.method public greylist-max-o setMenuPrepared()V
    .registers 2

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 382
    return-void
.end method

.method public greylist-max-o setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 653
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method

.method public greylist-max-o setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 647
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 648
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 649
    return-void
.end method

.method public greylist-max-o setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 626
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method public greylist-max-o setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 620
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 622
    return-void
.end method

.method public greylist-max-o setNavigationMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 484
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 485
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_7c

    .line 486
    packed-switch v0, :pswitch_data_7e

    goto :goto_33

    .line 493
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v1, v2, :cond_33

    .line 494
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_33

    .line 488
    :pswitch_1e
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    if-ne v1, v2, :cond_33

    .line 489
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 499
    :cond_33
    :goto_33
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 501
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_86

    .line 518
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid navigation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :pswitch_52
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_7c

    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 511
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 512
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->width:I

    .line 513
    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->height:I

    .line 514
    const v2, 0x800053

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 515
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_7c

    .line 505
    :pswitch_70
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 506
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 507
    goto :goto_7c

    .line 503
    :pswitch_7b
    nop

    .line 521
    :cond_7c
    :goto_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_8
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_70
        :pswitch_52
    .end packed-switch
.end method

.method public greylist-max-o setSplitToolbar(Z)V
    .registers 4
    .param p1, "split"    # Z

    .line 300
    if-nez p1, :cond_3

    .line 303
    return-void

    .line 301
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setSplitView(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .line 296
    return-void
.end method

.method public greylist-max-o setSplitWhenNarrow(Z)V
    .registers 2
    .param p1, "splitWhenNarrow"    # Z

    .line 308
    return-void
.end method

.method public greylist-max-o setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 273
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 274
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    :cond_d
    return-void
.end method

.method public greylist-max-o setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public greylist-max-o setVisibility(I)V
    .registers 3
    .param p1, "visible"    # I

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 690
    return-void
.end method

.method public greylist-max-o setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 237
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public greylist-max-o setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 243
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_7

    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 246
    :cond_7
    return-void
.end method

.method public greylist-max-o setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .registers 7
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 586
    const/16 v0, 0x8

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1e

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_3c

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 588
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 589
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    return-object v0

    .line 604
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1e
    if-nez p1, :cond_39

    .line 605
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_44

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 606
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 607
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    return-object v0

    .line 615
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_39
    const/4 v0, 0x0

    return-object v0

    nop

    :array_3c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o showOverflowMenu()Z
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.class public Lcom/android/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/widget/Toolbar;Z)V
    .locals 1
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z

    #@0
    .prologue
    .line 91
    const v0, 0x104047c

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V

    #@6
    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar;ZI)V
    .locals 23
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    #@0
    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    const/16 v18, 0x0

    #@5
    move/from16 v0, v18

    #@7
    move-object/from16 v1, p0

    #@9
    iput v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@b
    .line 87
    const/16 v18, 0x0

    #@d
    move/from16 v0, v18

    #@f
    move-object/from16 v1, p0

    #@11
    iput v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@13
    .line 96
    move-object/from16 v0, p1

    #@15
    move-object/from16 v1, p0

    #@17
    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@19
    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@1c
    move-result-object v18

    #@1d
    move-object/from16 v0, v18

    #@1f
    move-object/from16 v1, p0

    #@21
    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@23
    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@26
    move-result-object v18

    #@27
    move-object/from16 v0, v18

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    #@2d
    .line 100
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@31
    move-object/from16 v18, v0

    #@33
    if-eqz v18, :cond_c

    #@35
    const/16 v18, 0x1

    #@37
    :goto_0
    move/from16 v0, v18

    #@39
    move-object/from16 v1, p0

    #@3b
    iput-boolean v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@3d
    .line 101
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@41
    move-object/from16 v18, v0

    #@43
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v18

    #@47
    move-object/from16 v0, v18

    #@49
    move-object/from16 v1, p0

    #@4b
    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@4d
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@50
    move-result-object v18

    #@51
    .line 103
    sget-object v19, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@53
    .line 102
    const/16 v20, 0x0

    #@55
    .line 103
    const v21, 0x10102ce

    #@58
    const/16 v22, 0x0

    #@5a
    .line 102
    move-object/from16 v0, v18

    #@5c
    move-object/from16 v1, v20

    #@5e
    move-object/from16 v2, v19

    #@60
    move/from16 v3, v21

    #@62
    move/from16 v4, v22

    #@64
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@67
    move-result-object v5

    #@68
    .line 104
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v18, 0xd

    #@6a
    move/from16 v0, v18

    #@6c
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@6f
    move-result-object v18

    #@70
    move-object/from16 v0, v18

    #@72
    move-object/from16 v1, p0

    #@74
    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@76
    .line 105
    if-eqz p2, :cond_d

    #@78
    .line 106
    const/16 v18, 0x5

    #@7a
    move/from16 v0, v18

    #@7c
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@7f
    move-result-object v16

    #@80
    .line 107
    .local v16, "title":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@83
    move-result v18

    #@84
    if-nez v18, :cond_0

    #@86
    .line 108
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, v16

    #@8a
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    #@8d
    .line 111
    :cond_0
    const/16 v18, 0x9

    #@8f
    move/from16 v0, v18

    #@91
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@94
    move-result-object v14

    #@95
    .line 112
    .local v14, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@98
    move-result v18

    #@99
    if-nez v18, :cond_1

    #@9b
    .line 113
    move-object/from16 v0, p0

    #@9d
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    #@a0
    .line 116
    :cond_1
    const/16 v18, 0x6

    #@a2
    move/from16 v0, v18

    #@a4
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a7
    move-result-object v11

    #@a8
    .line 117
    .local v11, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_2

    #@aa
    .line 118
    move-object/from16 v0, p0

    #@ac
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@af
    .line 121
    :cond_2
    const/16 v18, 0x0

    #@b1
    move/from16 v0, v18

    #@b3
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@b6
    move-result-object v10

    #@b7
    .line 122
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    #@b9
    .line 123
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@be
    .line 125
    :cond_3
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@c2
    move-object/from16 v18, v0

    #@c4
    if-nez v18, :cond_4

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@ca
    move-object/from16 v18, v0

    #@cc
    if-eqz v18, :cond_4

    #@ce
    .line 126
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@d2
    move-object/from16 v18, v0

    #@d4
    move-object/from16 v0, p0

    #@d6
    move-object/from16 v1, v18

    #@d8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@db
    .line 128
    :cond_4
    const/16 v18, 0x8

    #@dd
    const/16 v19, 0x0

    #@df
    move/from16 v0, v18

    #@e1
    move/from16 v1, v19

    #@e3
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e6
    move-result v18

    #@e7
    move-object/from16 v0, p0

    #@e9
    move/from16 v1, v18

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    #@ee
    .line 131
    const/16 v18, 0xa

    #@f0
    const/16 v19, 0x0

    #@f2
    .line 130
    move/from16 v0, v18

    #@f4
    move/from16 v1, v19

    #@f6
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f9
    move-result v8

    #@fa
    .line 132
    .local v8, "customNavId":I
    if-eqz v8, :cond_5

    #@fc
    .line 133
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@100
    move-object/from16 v18, v0

    #@102
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@105
    move-result-object v18

    #@106
    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@109
    move-result-object v18

    #@10a
    .line 134
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@10e
    move-object/from16 v19, v0

    #@110
    const/16 v20, 0x0

    #@112
    .line 133
    move-object/from16 v0, v18

    #@114
    move-object/from16 v1, v19

    #@116
    move/from16 v2, v20

    #@118
    invoke-virtual {v0, v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@11b
    move-result-object v18

    #@11c
    move-object/from16 v0, p0

    #@11e
    move-object/from16 v1, v18

    #@120
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    #@123
    .line 135
    move-object/from16 v0, p0

    #@125
    iget v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@127
    move/from16 v18, v0

    #@129
    or-int/lit8 v18, v18, 0x10

    #@12b
    move-object/from16 v0, p0

    #@12d
    move/from16 v1, v18

    #@12f
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    #@132
    .line 138
    :cond_5
    const/16 v18, 0x4

    #@134
    const/16 v19, 0x0

    #@136
    move/from16 v0, v18

    #@138
    move/from16 v1, v19

    #@13a
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@13d
    move-result v9

    #@13e
    .line 139
    .local v9, "height":I
    if-lez v9, :cond_6

    #@140
    .line 140
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@144
    move-object/from16 v18, v0

    #@146
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@149
    move-result-object v12

    #@14a
    .line 141
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@14c
    .line 142
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@150
    move-object/from16 v18, v0

    #@152
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v12}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@157
    .line 146
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/16 v18, 0x16

    #@159
    const/16 v19, -0x1

    #@15b
    .line 145
    move/from16 v0, v18

    #@15d
    move/from16 v1, v19

    #@15f
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@162
    move-result v7

    #@163
    .line 148
    .local v7, "contentInsetStart":I
    const/16 v18, 0x17

    #@165
    const/16 v19, -0x1

    #@167
    .line 147
    move/from16 v0, v18

    #@169
    move/from16 v1, v19

    #@16b
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@16e
    move-result v6

    #@16f
    .line 149
    .local v6, "contentInsetEnd":I
    if-gez v7, :cond_7

    #@171
    if-ltz v6, :cond_8

    #@173
    .line 150
    :cond_7
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@177
    move-object/from16 v18, v0

    #@179
    const/16 v19, 0x0

    #@17b
    move/from16 v0, v19

    #@17d
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@180
    move-result v19

    #@181
    .line 151
    const/16 v20, 0x0

    #@183
    move/from16 v0, v20

    #@185
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@188
    move-result v20

    #@189
    .line 150
    invoke-virtual/range {v18 .. v20}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    #@18c
    .line 154
    :cond_8
    const/16 v18, 0xb

    #@18e
    const/16 v19, 0x0

    #@190
    move/from16 v0, v18

    #@192
    move/from16 v1, v19

    #@194
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@197
    move-result v17

    #@198
    .line 155
    .local v17, "titleTextStyle":I
    if-eqz v17, :cond_9

    #@19a
    .line 156
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@19e
    move-object/from16 v18, v0

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@1a4
    move-object/from16 v19, v0

    #@1a6
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@1a9
    move-result-object v19

    #@1aa
    move-object/from16 v0, v18

    #@1ac
    move-object/from16 v1, v19

    #@1ae
    move/from16 v2, v17

    #@1b0
    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    #@1b3
    .line 160
    :cond_9
    const/16 v18, 0xc

    #@1b5
    const/16 v19, 0x0

    #@1b7
    .line 159
    move/from16 v0, v18

    #@1b9
    move/from16 v1, v19

    #@1bb
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1be
    move-result v15

    #@1bf
    .line 161
    .local v15, "subtitleTextStyle":I
    if-eqz v15, :cond_a

    #@1c1
    .line 162
    move-object/from16 v0, p0

    #@1c3
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@1c5
    move-object/from16 v18, v0

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@1cb
    move-object/from16 v19, v0

    #@1cd
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@1d0
    move-result-object v19

    #@1d1
    move-object/from16 v0, v18

    #@1d3
    move-object/from16 v1, v19

    #@1d5
    invoke-virtual {v0, v1, v15}, Landroid/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    #@1d8
    .line 165
    :cond_a
    const/16 v18, 0x1a

    #@1da
    const/16 v19, 0x0

    #@1dc
    move/from16 v0, v18

    #@1de
    move/from16 v1, v19

    #@1e0
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e3
    move-result v13

    #@1e4
    .line 166
    .local v13, "popupTheme":I
    if-eqz v13, :cond_b

    #@1e6
    .line 167
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@1ea
    move-object/from16 v18, v0

    #@1ec
    move-object/from16 v0, v18

    #@1ee
    invoke-virtual {v0, v13}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    #@1f1
    .line 172
    .end local v6    # "contentInsetEnd":I
    .end local v7    # "contentInsetStart":I
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v13    # "popupTheme":I
    .end local v14    # "subtitle":Ljava/lang/CharSequence;
    .end local v15    # "subtitleTextStyle":I
    .end local v16    # "title":Ljava/lang/CharSequence;
    .end local v17    # "titleTextStyle":I
    :cond_b
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@1f4
    .line 174
    move-object/from16 v0, p0

    #@1f6
    move/from16 v1, p3

    #@1f8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    #@1fb
    .line 175
    move-object/from16 v0, p0

    #@1fd
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@1ff
    move-object/from16 v18, v0

    #@201
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    #@204
    move-result-object v18

    #@205
    move-object/from16 v0, v18

    #@207
    move-object/from16 v1, p0

    #@209
    iput-object v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@20b
    .line 177
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@20f
    move-object/from16 v18, v0

    #@211
    new-instance v19, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    #@213
    move-object/from16 v0, v19

    #@215
    move-object/from16 v1, p0

    #@217
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    #@21a
    invoke-virtual/range {v18 .. v19}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    #@21d
    .line 95
    return-void

    #@21e
    .line 100
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_c
    const/16 v18, 0x0

    #@220
    goto/16 :goto_0

    #@222
    .line 170
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    #@225
    move-result v18

    #@226
    move/from16 v0, v18

    #@228
    move-object/from16 v1, p0

    #@22a
    iput v0, v1, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@22c
    goto :goto_1
.end method

.method private detectDisplayOptions()I
    .locals 2

    #@0
    .prologue
    .line 201
    const/16 v0, 0xb

    #@2
    .line 203
    .local v0, "opts":I
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@4
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 204
    const/16 v0, 0xf

    #@c
    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@e
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@14
    .line 207
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x2

    #@2
    .line 524
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 525
    new-instance v1, Landroid/widget/Spinner;

    #@8
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@b
    move-result-object v2

    #@c
    const v3, 0x10102d7

    #@f
    invoke-direct {v1, v2, v5, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@12
    iput-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@14
    .line 526
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@16
    .line 527
    const v1, 0x800013

    #@19
    .line 526
    invoke-direct {v0, v4, v4, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    #@1c
    .line 528
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@1e
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@21
    .line 523
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 261
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@4
    and-int/lit8 v0, v0, 0x8

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@a
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@d
    .line 259
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    #@0
    .prologue
    .line 657
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@10
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    #@15
    .line 656
    :cond_0
    :goto_0
    return-void

    #@16
    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@18
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@1d
    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 638
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@3
    and-int/lit8 v0, v0, 0x4

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@9
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@f
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@12
    .line 637
    :goto_1
    return-void

    #@13
    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@15
    goto :goto_0

    #@16
    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@1b
    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 2

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    .line 344
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 345
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@9
    and-int/lit8 v1, v1, 0x1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 346
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    #@13
    .line 351
    .end local v0    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@15
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 342
    return-void

    #@19
    .line 346
    .restart local v0    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@1b
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@1c
    .line 348
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@1e
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 577
    const-wide/16 v2, 0xc8

    #@2
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@5
    move-result-object v0

    #@6
    .line 578
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    #@8
    .line 579
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@b
    .line 576
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->canShowOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canSplit()Z
    .locals 1

    #@0
    .prologue
    .line 291
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    #@5
    .line 231
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    #@5
    .line 395
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    #@0
    .prologue
    .line 401
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@2
    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@6
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

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
    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@6
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

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

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    #@0
    .prologue
    .line 479
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@2
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    #@0
    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getVisibility()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

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

.method public hasExpandedActionView()Z
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasIcon()Z
    .locals 1

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

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
    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

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

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    #@0
    .prologue
    .line 286
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    #@3
    const-string/jumbo v1, "Progress display unsupported"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 285
    return-void
.end method

.method public initProgress()V
    .locals 2

    #@0
    .prologue
    .line 281
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    #@3
    const-string/jumbo v1, "Progress display unsupported"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 280
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowPending()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSplit()Z
    .locals 1

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->isTitleTruncated()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 673
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@5
    .line 672
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 668
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@5
    .line 667
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 677
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setCollapsible(Z)V

    #@5
    .line 468
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@6
    and-int/lit8 v0, v0, 0x10

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@11
    .line 564
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@13
    .line 565
    if-eqz p1, :cond_1

    #@15
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@17
    and-int/lit8 v0, v0, 0x10

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 566
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@1d
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    #@22
    .line 560
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    #@0
    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 192
    return-void

    #@5
    .line 194
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@7
    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@9
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 196
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    #@15
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    #@18
    .line 190
    :cond_1
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 632
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    #@6
    .line 633
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    #@9
    .line 630
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 406
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@3
    .line 407
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    #@5
    .line 408
    .local v0, "changed":I
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@7
    .line 409
    if-eqz v0, :cond_4

    #@9
    .line 410
    and-int/lit8 v2, v0, 0x4

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 411
    and-int/lit8 v2, p1, 0x4

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 412
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    #@14
    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    #@17
    .line 417
    :cond_1
    and-int/lit8 v2, v0, 0x3

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    #@1e
    .line 421
    :cond_2
    and-int/lit8 v2, v0, 0x8

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 422
    and-int/lit8 v2, p1, 0x8

    #@24
    if-eqz v2, :cond_5

    #@26
    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@28
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@2d
    .line 424
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2f
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    #@31
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@34
    .line 431
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    #@36
    if-eqz v2, :cond_4

    #@38
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@3a
    if-eqz v2, :cond_4

    #@3c
    .line 432
    and-int/lit8 v2, p1, 0x10

    #@3e
    if-eqz v2, :cond_6

    #@40
    .line 433
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@42
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@44
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    #@47
    .line 405
    :cond_4
    :goto_1
    return-void

    #@48
    .line 426
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@4a
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@4d
    .line 427
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@4f
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@52
    goto :goto_0

    #@53
    .line 435
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@55
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    #@57
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@5a
    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    #@3
    .line 536
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@8
    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@a
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@d
    .line 534
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 544
    const-string/jumbo v1, "Can\'t set dropdown selected position without an adapter"

    #@9
    .line 543
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    #@12
    .line 541
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    .line 443
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@7
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@11
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@13
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@16
    .line 446
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@18
    .line 447
    if-eqz p1, :cond_1

    #@1a
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@1c
    const/4 v2, 0x2

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    .line 448
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@21
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    #@27
    .line 449
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@29
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    #@2f
    .line 450
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    #@31
    .line 451
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    #@33
    .line 452
    const v1, 0x800053

    #@36
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@38
    .line 453
    const/4 v1, 0x1

    #@39
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    #@3c
    .line 442
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 473
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 322
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 321
    return-void

    #@e
    .line 322
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 328
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    #@5
    .line 326
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 333
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 332
    return-void

    #@e
    .line 333
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    #@2
    .line 339
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    #@5
    .line 337
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 387
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@8
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@11
    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@13
    const v1, 0x102004b

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    #@19
    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@1b
    invoke-virtual {v0, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@1e
    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@20
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    #@22
    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@24
    invoke-virtual {v0, p1, v1}, Landroid/widget/Toolbar;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V

    #@27
    .line 385
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@5
    .line 699
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    #@0
    .prologue
    .line 381
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    #@3
    .line 380
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 653
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@6
    .line 652
    return-void

    #@7
    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    #@2
    .line 648
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    #@5
    .line 646
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 626
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@4
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 625
    return-void

    #@10
    .line 626
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 621
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    #@5
    .line 619
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x2

    #@2
    .line 484
    iget v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@4
    .line 485
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    #@6
    .line 486
    packed-switch v1, :pswitch_data_0

    #@9
    .line 499
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    #@b
    .line 501
    packed-switch p1, :pswitch_data_1

    #@e
    .line 518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Invalid navigation mode "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 488
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2a
    if-eqz v2, :cond_0

    #@2c
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@2e
    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@34
    if-ne v2, v3, :cond_0

    #@36
    .line 489
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@38
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@3a
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@3d
    goto :goto_0

    #@3e
    .line 493
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@40
    if-eqz v2, :cond_0

    #@42
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@44
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@47
    move-result-object v2

    #@48
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@4a
    if-ne v2, v3, :cond_0

    #@4c
    .line 494
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@4e
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@50
    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@53
    goto :goto_0

    #@54
    .line 505
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    #@57
    .line 506
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@59
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    #@5b
    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    #@5e
    .line 483
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    #@5f
    .line 509
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@61
    if-eqz v2, :cond_1

    #@63
    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@65
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@67
    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    #@6a
    .line 511
    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    #@6c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    #@72
    .line 512
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    #@74
    .line 513
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    #@76
    .line 514
    const v2, 0x800053

    #@79
    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@7b
    goto :goto_1

    #@7c
    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@84
    .line 501
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 2
    .param p1, "split"    # Z

    #@0
    .prologue
    .line 300
    if-eqz p1, :cond_0

    #@2
    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4
    const-string/jumbo v1, "Cannot split an android.widget.Toolbar"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 299
    :cond_0
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 295
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    #@0
    .prologue
    .line 306
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    .line 274
    iget v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    #@4
    and-int/lit8 v0, v0, 0x8

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@a
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@d
    .line 272
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 255
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@3
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    #@6
    .line 254
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    #@5
    .line 688
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    #@2
    .line 236
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    #@7
    .line 241
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 8
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/high16 v6, 0x3f800000    # 1.0f

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    .line 586
    const/16 v1, 0x8

    #@8
    if-ne p1, v1, :cond_0

    #@a
    .line 587
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@c
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@e
    new-array v3, v3, [F

    #@10
    aput v6, v3, v4

    #@12
    aput v5, v3, v7

    #@14
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@17
    move-result-object v0

    #@18
    .line 588
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1b
    .line 589
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    #@20
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@23
    .line 603
    return-object v0

    #@24
    .line 604
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p1, :cond_1

    #@26
    .line 605
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@28
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@2a
    new-array v3, v3, [F

    #@2c
    aput v5, v3, v4

    #@2e
    aput v6, v3, v7

    #@30
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@33
    move-result-object v0

    #@34
    .line 606
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@37
    .line 607
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;

    #@39
    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    #@3c
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3f
    .line 613
    return-object v0

    #@40
    .line 615
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v1, 0x0

    #@41
    return-object v1
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

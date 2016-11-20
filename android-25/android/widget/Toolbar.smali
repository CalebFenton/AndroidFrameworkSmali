.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$1;,
        Landroid/widget/Toolbar$2;,
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;,
        Landroid/widget/Toolbar$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static synthetic -get0(Landroid/widget/Toolbar;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Toolbar;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 214
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 218
    const v0, 0x10104aa

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 226
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 168
    const v20, 0x800013

    #@6
    move/from16 v0, v20

    #@8
    move-object/from16 v1, p0

    #@a
    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    #@c
    .line 179
    new-instance v20, Ljava/util/ArrayList;

    #@e
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@11
    move-object/from16 v0, v20

    #@13
    move-object/from16 v1, p0

    #@15
    iput-object v0, v1, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@17
    .line 182
    new-instance v20, Ljava/util/ArrayList;

    #@19
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@1c
    move-object/from16 v0, v20

    #@1e
    move-object/from16 v1, p0

    #@20
    iput-object v0, v1, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@22
    .line 184
    const/16 v20, 0x2

    #@24
    move/from16 v0, v20

    #@26
    new-array v0, v0, [I

    #@28
    move-object/from16 v20, v0

    #@2a
    move-object/from16 v0, v20

    #@2c
    move-object/from16 v1, p0

    #@2e
    iput-object v0, v1, Landroid/widget/Toolbar;->mTempMargins:[I

    #@30
    .line 189
    new-instance v20, Landroid/widget/Toolbar$1;

    #@32
    move-object/from16 v0, v20

    #@34
    move-object/from16 v1, p0

    #@36
    invoke-direct {v0, v1}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    #@39
    .line 188
    move-object/from16 v0, v20

    #@3b
    move-object/from16 v1, p0

    #@3d
    iput-object v0, v1, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@3f
    .line 207
    new-instance v20, Landroid/widget/Toolbar$2;

    #@41
    move-object/from16 v0, v20

    #@43
    move-object/from16 v1, p0

    #@45
    invoke-direct {v0, v1}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    #@48
    move-object/from16 v0, v20

    #@4a
    move-object/from16 v1, p0

    #@4c
    iput-object v0, v1, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@4e
    .line 228
    sget-object v20, Lcom/android/internal/R$styleable;->Toolbar:[I

    #@50
    move-object/from16 v0, p1

    #@52
    move-object/from16 v1, p2

    #@54
    move-object/from16 v2, v20

    #@56
    move/from16 v3, p3

    #@58
    move/from16 v4, p4

    #@5a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5d
    move-result-object v5

    #@5e
    .line 231
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x4

    #@60
    const/16 v21, 0x0

    #@62
    move/from16 v0, v20

    #@64
    move/from16 v1, v21

    #@66
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@69
    move-result v20

    #@6a
    move/from16 v0, v20

    #@6c
    move-object/from16 v1, p0

    #@6e
    iput v0, v1, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@70
    .line 232
    const/16 v20, 0x5

    #@72
    const/16 v21, 0x0

    #@74
    move/from16 v0, v20

    #@76
    move/from16 v1, v21

    #@78
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7b
    move-result v20

    #@7c
    move/from16 v0, v20

    #@7e
    move-object/from16 v1, p0

    #@80
    iput v0, v1, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@82
    .line 233
    const/16 v20, 0x1b

    #@84
    const/16 v21, 0x0

    #@86
    move/from16 v0, v20

    #@88
    move/from16 v1, v21

    #@8a
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8d
    move-result v20

    #@8e
    move/from16 v0, v20

    #@90
    move-object/from16 v1, p0

    #@92
    iput v0, v1, Landroid/widget/Toolbar;->mNavButtonStyle:I

    #@94
    .line 234
    move-object/from16 v0, p0

    #@96
    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    #@98
    move/from16 v20, v0

    #@9a
    const/16 v21, 0x0

    #@9c
    move/from16 v0, v21

    #@9e
    move/from16 v1, v20

    #@a0
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@a3
    move-result v20

    #@a4
    move/from16 v0, v20

    #@a6
    move-object/from16 v1, p0

    #@a8
    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    #@aa
    .line 235
    const/16 v20, 0x17

    #@ac
    const/16 v21, 0x30

    #@ae
    move/from16 v0, v20

    #@b0
    move/from16 v1, v21

    #@b2
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@b5
    move-result v20

    #@b6
    move/from16 v0, v20

    #@b8
    move-object/from16 v1, p0

    #@ba
    iput v0, v1, Landroid/widget/Toolbar;->mButtonGravity:I

    #@bc
    .line 237
    const/16 v20, 0x11

    #@be
    const/16 v21, 0x0

    #@c0
    move/from16 v0, v20

    #@c2
    move/from16 v1, v21

    #@c4
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@c7
    move-result v20

    #@c8
    .line 236
    move/from16 v0, v20

    #@ca
    move-object/from16 v1, p0

    #@cc
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@ce
    move/from16 v0, v20

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@d4
    move/from16 v0, v20

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@da
    move/from16 v0, v20

    #@dc
    move-object/from16 v1, p0

    #@de
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@e0
    .line 239
    const/16 v20, 0x12

    #@e2
    const/16 v21, -0x1

    #@e4
    move/from16 v0, v20

    #@e6
    move/from16 v1, v21

    #@e8
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@eb
    move-result v14

    #@ec
    .line 240
    .local v14, "marginStart":I
    if-ltz v14, :cond_0

    #@ee
    .line 241
    move-object/from16 v0, p0

    #@f0
    iput v14, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@f2
    .line 244
    :cond_0
    const/16 v20, 0x13

    #@f4
    const/16 v21, -0x1

    #@f6
    move/from16 v0, v20

    #@f8
    move/from16 v1, v21

    #@fa
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@fd
    move-result v13

    #@fe
    .line 245
    .local v13, "marginEnd":I
    if-ltz v13, :cond_1

    #@100
    .line 246
    move-object/from16 v0, p0

    #@102
    iput v13, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@104
    .line 249
    :cond_1
    const/16 v20, 0x14

    #@106
    const/16 v21, -0x1

    #@108
    move/from16 v0, v20

    #@10a
    move/from16 v1, v21

    #@10c
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@10f
    move-result v15

    #@110
    .line 250
    .local v15, "marginTop":I
    if-ltz v15, :cond_2

    #@112
    .line 251
    move-object/from16 v0, p0

    #@114
    iput v15, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@116
    .line 254
    :cond_2
    const/16 v20, 0x15

    #@118
    .line 255
    const/16 v21, -0x1

    #@11a
    .line 254
    move/from16 v0, v20

    #@11c
    move/from16 v1, v21

    #@11e
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@121
    move-result v12

    #@122
    .line 256
    .local v12, "marginBottom":I
    if-ltz v12, :cond_3

    #@124
    .line 257
    move-object/from16 v0, p0

    #@126
    iput v12, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@128
    .line 260
    :cond_3
    const/16 v20, 0x16

    #@12a
    const/16 v21, -0x1

    #@12c
    move/from16 v0, v20

    #@12e
    move/from16 v1, v21

    #@130
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@133
    move-result v20

    #@134
    move/from16 v0, v20

    #@136
    move-object/from16 v1, p0

    #@138
    iput v0, v1, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@13a
    .line 263
    const/16 v20, 0x6

    #@13c
    .line 264
    const/high16 v21, -0x80000000

    #@13e
    .line 263
    move/from16 v0, v20

    #@140
    move/from16 v1, v21

    #@142
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@145
    move-result v9

    #@146
    .line 266
    .local v9, "contentInsetStart":I
    const/16 v20, 0x7

    #@148
    .line 267
    const/high16 v21, -0x80000000

    #@14a
    .line 266
    move/from16 v0, v20

    #@14c
    move/from16 v1, v21

    #@14e
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@151
    move-result v6

    #@152
    .line 269
    .local v6, "contentInsetEnd":I
    const/16 v20, 0x8

    #@154
    const/16 v21, 0x0

    #@156
    move/from16 v0, v20

    #@158
    move/from16 v1, v21

    #@15a
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@15d
    move-result v7

    #@15e
    .line 271
    .local v7, "contentInsetLeft":I
    const/16 v20, 0x9

    #@160
    const/16 v21, 0x0

    #@162
    move/from16 v0, v20

    #@164
    move/from16 v1, v21

    #@166
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@169
    move-result v8

    #@16a
    .line 273
    .local v8, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    #@16d
    .line 274
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@171
    move-object/from16 v20, v0

    #@173
    move-object/from16 v0, v20

    #@175
    invoke-virtual {v0, v7, v8}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    #@178
    .line 276
    const/high16 v20, -0x80000000

    #@17a
    move/from16 v0, v20

    #@17c
    if-ne v9, v0, :cond_4

    #@17e
    .line 277
    const/high16 v20, -0x80000000

    #@180
    move/from16 v0, v20

    #@182
    if-eq v6, v0, :cond_5

    #@184
    .line 278
    :cond_4
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@188
    move-object/from16 v20, v0

    #@18a
    move-object/from16 v0, v20

    #@18c
    invoke-virtual {v0, v9, v6}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    #@18f
    .line 282
    :cond_5
    const/16 v20, 0x19

    #@191
    const/high16 v21, -0x80000000

    #@193
    .line 281
    move/from16 v0, v20

    #@195
    move/from16 v1, v21

    #@197
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@19a
    move-result v20

    #@19b
    move/from16 v0, v20

    #@19d
    move-object/from16 v1, p0

    #@19f
    iput v0, v1, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@1a1
    .line 284
    const/16 v20, 0x1a

    #@1a3
    const/high16 v21, -0x80000000

    #@1a5
    .line 283
    move/from16 v0, v20

    #@1a7
    move/from16 v1, v21

    #@1a9
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@1ac
    move-result v20

    #@1ad
    move/from16 v0, v20

    #@1af
    move-object/from16 v1, p0

    #@1b1
    iput v0, v1, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    #@1b3
    .line 286
    const/16 v20, 0x18

    #@1b5
    move/from16 v0, v20

    #@1b7
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1ba
    move-result-object v20

    #@1bb
    move-object/from16 v0, v20

    #@1bd
    move-object/from16 v1, p0

    #@1bf
    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@1c1
    .line 287
    const/16 v20, 0xd

    #@1c3
    move/from16 v0, v20

    #@1c5
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1c8
    move-result-object v20

    #@1c9
    move-object/from16 v0, v20

    #@1cb
    move-object/from16 v1, p0

    #@1cd
    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    #@1cf
    .line 289
    const/16 v20, 0x1

    #@1d1
    move/from16 v0, v20

    #@1d3
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1d6
    move-result-object v19

    #@1d7
    .line 290
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1da
    move-result v20

    #@1db
    if-nez v20, :cond_6

    #@1dd
    .line 291
    move-object/from16 v0, p0

    #@1df
    move-object/from16 v1, v19

    #@1e1
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@1e4
    .line 294
    :cond_6
    const/16 v20, 0x3

    #@1e6
    move/from16 v0, v20

    #@1e8
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1eb
    move-result-object v18

    #@1ec
    .line 295
    .local v18, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1ef
    move-result v20

    #@1f0
    if-nez v20, :cond_7

    #@1f2
    .line 296
    move-object/from16 v0, p0

    #@1f4
    move-object/from16 v1, v18

    #@1f6
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@1f9
    .line 300
    :cond_7
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    #@1fd
    move-object/from16 v20, v0

    #@1ff
    move-object/from16 v0, v20

    #@201
    move-object/from16 v1, p0

    #@203
    iput-object v0, v1, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@205
    .line 301
    const/16 v20, 0xa

    #@207
    const/16 v21, 0x0

    #@209
    move/from16 v0, v20

    #@20b
    move/from16 v1, v21

    #@20d
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@210
    move-result v20

    #@211
    move-object/from16 v0, p0

    #@213
    move/from16 v1, v20

    #@215
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    #@218
    .line 303
    const/16 v20, 0xb

    #@21a
    move/from16 v0, v20

    #@21c
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@21f
    move-result-object v17

    #@220
    .line 304
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_8

    #@222
    .line 305
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, v17

    #@226
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@229
    .line 309
    :cond_8
    const/16 v20, 0xc

    #@22b
    .line 308
    move/from16 v0, v20

    #@22d
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@230
    move-result-object v16

    #@231
    .line 310
    .local v16, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@234
    move-result v20

    #@235
    if-nez v20, :cond_9

    #@237
    .line 311
    move-object/from16 v0, p0

    #@239
    move-object/from16 v1, v16

    #@23b
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@23e
    .line 314
    :cond_9
    const/16 v20, 0x2

    #@240
    move/from16 v0, v20

    #@242
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@245
    move-result-object v10

    #@246
    .line 315
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_a

    #@248
    .line 316
    move-object/from16 v0, p0

    #@24a
    invoke-virtual {v0, v10}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@24d
    .line 319
    :cond_a
    const/16 v20, 0x10

    #@24f
    move/from16 v0, v20

    #@251
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@254
    move-result-object v11

    #@255
    .line 320
    .local v11, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@258
    move-result v20

    #@259
    if-nez v20, :cond_b

    #@25b
    .line 321
    move-object/from16 v0, p0

    #@25d
    invoke-virtual {v0, v11}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    #@260
    .line 324
    :cond_b
    const/16 v20, 0xe

    #@262
    move/from16 v0, v20

    #@264
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@267
    move-result v20

    #@268
    if-eqz v20, :cond_c

    #@26a
    .line 325
    const/16 v20, 0xe

    #@26c
    const/16 v21, -0x1

    #@26e
    move/from16 v0, v20

    #@270
    move/from16 v1, v21

    #@272
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@275
    move-result v20

    #@276
    move-object/from16 v0, p0

    #@278
    move/from16 v1, v20

    #@27a
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    #@27d
    .line 328
    :cond_c
    const/16 v20, 0xf

    #@27f
    move/from16 v0, v20

    #@281
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@284
    move-result v20

    #@285
    if-eqz v20, :cond_d

    #@287
    .line 329
    const/16 v20, 0xf

    #@289
    const/16 v21, -0x1

    #@28b
    move/from16 v0, v20

    #@28d
    move/from16 v1, v21

    #@28f
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@292
    move-result v20

    #@293
    move-object/from16 v0, p0

    #@295
    move/from16 v1, v20

    #@297
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    #@29a
    .line 331
    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@29d
    .line 225
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 8
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1991
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@3
    move-result v6

    #@4
    const/4 v7, 0x1

    #@5
    if-ne v6, v7, :cond_1

    #@7
    const/4 v4, 0x1

    #@8
    .line 1992
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@b
    move-result v2

    #@c
    .line 1993
    .local v2, "childCount":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@f
    move-result v6

    #@10
    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@13
    move-result v0

    #@14
    .line 1995
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@17
    .line 1997
    if-eqz v4, :cond_2

    #@19
    .line 1998
    add-int/lit8 v3, v2, -0x1

    #@1b
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    #@1d
    .line 1999
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    .line 2000
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    #@27
    .line 2001
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@29
    if-nez v6, :cond_0

    #@2b
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 2002
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@33
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    #@36
    move-result v6

    #@37
    if-ne v6, v0, :cond_0

    #@39
    .line 2003
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    .line 1998
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 1991
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    #@40
    .restart local v4    # "isRtl":Z
    goto :goto_0

    #@41
    .line 2007
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    :cond_2
    const/4 v3, 0x0

    #@42
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    #@44
    .line 2008
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v1

    #@48
    .line 2009
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    #@4e
    .line 2010
    .restart local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@50
    if-nez v6, :cond_3

    #@52
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_3

    #@58
    .line 2011
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@5a
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    #@5d
    move-result v6

    #@5e
    if-ne v6, v0, :cond_3

    #@60
    .line 2012
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@63
    .line 2007
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@65
    goto :goto_2

    #@66
    .line 1990
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    #@0
    .prologue
    .line 1379
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    .line 1381
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    #@6
    .line 1382
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@9
    move-result-object v0

    #@a
    .line 1388
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    #@b
    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@d
    .line 1390
    if-eqz p2, :cond_2

    #@f
    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 1391
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 1392
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 1378
    :goto_1
    return-void

    #@1c
    .line 1383
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_1

    #@22
    .line 1384
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    #@25
    move-result-object v0

    #@26
    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    #@27
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v0, v1

    #@28
    .line 1386
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    #@2a
    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    #@2b
    .line 1394
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2e
    goto :goto_1
.end method

.method private ensureCollapseButtonView()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1361
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1362
    new-instance v1, Landroid/widget/ImageButton;

    #@7
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@a
    move-result-object v2

    #@b
    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    #@d
    const/4 v4, 0x0

    #@e
    invoke-direct {v1, v2, v5, v4, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@11
    iput-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@13
    .line 1363
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@15
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 1364
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@1c
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@21
    .line 1365
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@24
    move-result-object v0

    #@25
    .line 1366
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    #@27
    and-int/lit8 v1, v1, 0x70

    #@29
    const v2, 0x800003

    #@2c
    or-int/2addr v1, v2

    #@2d
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@2f
    .line 1367
    const/4 v1, 0x2

    #@30
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@32
    .line 1368
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@34
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@37
    .line 1369
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@39
    new-instance v2, Landroid/widget/Toolbar$3;

    #@3b
    invoke-direct {v2, p0}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    #@3e
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@41
    .line 1360
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    #@0
    .prologue
    .line 2135
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2136
    new-instance v0, Landroid/widget/RtlSpacingHelper;

    #@6
    invoke-direct {v0}, Landroid/widget/RtlSpacingHelper;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@b
    .line 2134
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 668
    new-instance v0, Landroid/widget/ImageView;

    #@6
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    .line 666
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1024
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    #@4
    .line 1025
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 1027
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@e
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    .line 1028
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1029
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1a
    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V

    #@1d
    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1f
    .line 1031
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    #@25
    .line 1032
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@27
    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@29
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@2c
    .line 1023
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    #@0
    .prologue
    .line 1037
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1038
    new-instance v1, Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@f
    .line 1039
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@11
    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@13
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    #@16
    .line 1040
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@18
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@1a
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    #@1d
    .line 1041
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@1f
    iget-object v2, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@21
    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@26
    .line 1042
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@29
    move-result-object v0

    #@2a
    .line 1043
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    #@2c
    and-int/lit8 v1, v1, 0x70

    #@2e
    const v2, 0x800005

    #@31
    or-int/2addr v1, v2

    #@32
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@34
    .line 1044
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@36
    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@39
    .line 1045
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@3b
    const/4 v2, 0x0

    #@3c
    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@3f
    .line 1036
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1352
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1353
    new-instance v1, Landroid/widget/ImageButton;

    #@7
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@a
    move-result-object v2

    #@b
    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    #@d
    const/4 v4, 0x0

    #@e
    invoke-direct {v1, v2, v5, v4, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@11
    iput-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@13
    .line 1354
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@16
    move-result-object v0

    #@17
    .line 1355
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    #@19
    and-int/lit8 v1, v1, 0x70

    #@1b
    const v2, 0x800003

    #@1e
    or-int/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@21
    .line 1356
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@23
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@26
    .line 1351
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 2019
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@3
    move-result v2

    #@4
    .line 2020
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    .line 2021
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    #@a
    .line 2022
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    #@d
    .line 2028
    :pswitch_0
    const/4 v3, 0x1

    #@e
    if-ne v2, v3, :cond_0

    #@10
    const/4 v3, 0x5

    #@11
    :goto_0
    return v3

    #@12
    .line 2026
    :pswitch_1
    return v1

    #@13
    .line 2028
    :cond_0
    const/4 v3, 0x3

    #@14
    goto :goto_0

    #@15
    .line 2022
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1940
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v3

    #@5
    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    #@7
    .line 1941
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@a
    move-result v1

    #@b
    .line 1942
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    #@d
    sub-int v9, v1, p2

    #@f
    div-int/lit8 v0, v9, 0x2

    #@11
    .line 1943
    .local v0, "alignmentOffset":I
    :goto_0
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@13
    invoke-direct {p0, v9}, Landroid/widget/Toolbar;->getChildVerticalGravity(I)I

    #@16
    move-result v9

    #@17
    sparse-switch v9, :sswitch_data_0

    #@1a
    .line 1953
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@1d
    move-result v5

    #@1e
    .line 1954
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    #@21
    move-result v4

    #@22
    .line 1955
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    #@25
    move-result v2

    #@26
    .line 1956
    .local v2, "height":I
    sub-int v9, v2, v5

    #@28
    sub-int v6, v9, v4

    #@2a
    .line 1957
    .local v6, "space":I
    sub-int v9, v6, v1

    #@2c
    div-int/lit8 v7, v9, 0x2

    #@2e
    .line 1958
    .local v7, "spaceAbove":I
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@30
    if-ge v7, v9, :cond_2

    #@32
    .line 1959
    iget v7, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@34
    .line 1967
    :cond_0
    :goto_1
    add-int v9, v5, v7

    #@36
    return v9

    #@37
    .line 1942
    .end local v0    # "alignmentOffset":I
    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :cond_1
    const/4 v0, 0x0

    #@38
    .restart local v0    # "alignmentOffset":I
    goto :goto_0

    #@39
    .line 1945
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@3c
    move-result v9

    #@3d
    sub-int/2addr v9, v0

    #@3e
    return v9

    #@3f
    .line 1948
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    #@42
    move-result v9

    #@43
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    #@46
    move-result v10

    #@47
    sub-int/2addr v9, v10

    #@48
    sub-int/2addr v9, v1

    #@49
    .line 1949
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@4b
    .line 1948
    sub-int/2addr v9, v10

    #@4c
    sub-int/2addr v9, v0

    #@4d
    return v9

    #@4e
    .line 1961
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v9, v2, v4

    #@50
    sub-int/2addr v9, v1

    #@51
    sub-int/2addr v9, v7

    #@52
    sub-int v8, v9, v5

    #@54
    .line 1963
    .local v8, "spaceBelow":I
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@56
    if-ge v8, v9, :cond_0

    #@58
    .line 1964
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@5a
    sub-int/2addr v9, v8

    #@5b
    sub-int v9, v7, v9

    #@5d
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    #@60
    move-result v7

    #@61
    goto :goto_1

    #@62
    .line 1943
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1972
    and-int/lit8 v0, p1, 0x70

    #@2
    .line 1973
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 1979
    iget v1, p0, Landroid/widget/Toolbar;->mGravity:I

    #@7
    and-int/lit8 v1, v1, 0x70

    #@9
    return v1

    #@a
    .line 1977
    :sswitch_0
    return v0

    #@b
    .line 1973
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 2038
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 1050
    new-instance v0, Landroid/view/MenuInflater;

    #@2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@9
    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 2042
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 2043
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@8
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@a
    add-int/2addr v1, v2

    #@b
    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    #@1
    .line 1895
    aget v0, p2, v12

    #@3
    .line 1896
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    #@4
    aget v1, p2, v11

    #@6
    .line 1897
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    #@7
    .line 1898
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 1899
    .local v2, "count":I
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@e
    .line 1900
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v9

    #@12
    check-cast v9, Landroid/view/View;

    #@14
    .line 1901
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    #@1a
    .line 1902
    .local v6, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    #@1c
    sub-int v4, v11, v0

    #@1e
    .line 1903
    .local v4, "l":I
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    #@20
    sub-int v7, v11, v1

    #@22
    .line 1904
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v5

    #@26
    .line 1905
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v8

    #@2a
    .line 1906
    .local v8, "rightMargin":I
    neg-int v11, v4

    #@2b
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v0

    #@2f
    .line 1907
    neg-int v11, v7

    #@30
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v1

    #@34
    .line 1908
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    #@37
    move-result v11

    #@38
    add-int/2addr v11, v5

    #@39
    add-int/2addr v11, v8

    #@3a
    add-int/2addr v10, v11

    #@3b
    .line 1899
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1910
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 2109
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2075
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    #@7
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@9
    if-nez v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1915
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    #@7
    .line 1916
    .local v2, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    #@9
    aget v5, p3, v6

    #@b
    sub-int v1, v4, v5

    #@d
    .line 1917
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v4

    #@11
    add-int/2addr p2, v4

    #@12
    .line 1918
    neg-int v4, v1

    #@13
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v4

    #@17
    aput v4, p3, v6

    #@19
    .line 1919
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    #@1c
    move-result v3

    #@1d
    .line 1920
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@20
    move-result v0

    #@21
    .line 1921
    .local v0, "childWidth":I
    add-int v4, p2, v0

    #@23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@26
    move-result v5

    #@27
    add-int/2addr v5, v3

    #@28
    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    #@2b
    .line 1922
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    #@2d
    add-int/2addr v4, v0

    #@2e
    add-int/2addr p2, v4

    #@2f
    .line 1923
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1928
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    #@8
    .line 1929
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    #@a
    aget v5, p3, v7

    #@c
    sub-int v2, v4, v5

    #@e
    .line 1930
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v4

    #@12
    sub-int/2addr p2, v4

    #@13
    .line 1931
    neg-int v4, v2

    #@14
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v4

    #@18
    aput v4, p3, v7

    #@1a
    .line 1932
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    #@1d
    move-result v3

    #@1e
    .line 1933
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@21
    move-result v0

    #@22
    .line 1934
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    #@24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@27
    move-result v5

    #@28
    add-int/2addr v5, v3

    #@29
    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    #@2c
    .line 1935
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    #@2e
    add-int/2addr v4, v0

    #@2f
    sub-int/2addr p2, v4

    #@30
    .line 1936
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    #@0
    .prologue
    .line 1511
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v5

    #@4
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1513
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@8
    const/4 v9, 0x0

    #@9
    aget v9, p6, v9

    #@b
    sub-int v3, v8, v9

    #@d
    .line 1514
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@f
    const/4 v9, 0x1

    #@10
    aget v9, p6, v9

    #@12
    sub-int v6, v8, v9

    #@14
    .line 1515
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    #@15
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v4

    #@19
    .line 1516
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    #@1a
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v7

    #@1e
    .line 1517
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    #@20
    .line 1518
    .local v2, "hMargins":I
    neg-int v8, v3

    #@21
    const/4 v9, 0x0

    #@22
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v8

    #@26
    const/4 v9, 0x0

    #@27
    aput v8, p6, v9

    #@29
    .line 1519
    neg-int v8, v6

    #@2a
    const/4 v9, 0x0

    #@2b
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v8

    #@2f
    const/4 v9, 0x1

    #@30
    aput v8, p6, v9

    #@32
    .line 1522
    iget v8, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    #@34
    iget v9, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    #@36
    add-int/2addr v8, v9

    #@37
    add-int/2addr v8, v2

    #@38
    add-int/2addr v8, p3

    #@39
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@3b
    .line 1521
    invoke-static {p2, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@3e
    move-result v1

    #@3f
    .line 1524
    .local v1, "childWidthMeasureSpec":I
    iget v8, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    #@41
    iget v9, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    #@43
    add-int/2addr v8, v9

    #@44
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@46
    add-int/2addr v8, v9

    #@47
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@49
    add-int/2addr v8, v9

    #@4a
    add-int/2addr v8, p5

    #@4b
    .line 1525
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@4d
    .line 1523
    invoke-static {p4, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@50
    move-result v0

    #@51
    .line 1527
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@54
    .line 1528
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@57
    move-result v8

    #@58
    add-int/2addr v8, v2

    #@59
    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    #@0
    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    #@2
    .line 1486
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    .line 1489
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    #@a
    iget v6, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    #@c
    add-int/2addr v5, v6

    #@d
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@f
    add-int/2addr v5, v6

    #@10
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@12
    add-int/2addr v5, v6

    #@13
    add-int/2addr v5, p3

    #@14
    .line 1490
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@16
    .line 1488
    invoke-static {p2, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@19
    move-result v2

    #@1a
    .line 1492
    .local v2, "childWidthSpec":I
    iget v5, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    #@1c
    iget v6, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    #@1e
    add-int/2addr v5, v6

    #@1f
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@21
    add-int/2addr v5, v6

    #@22
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@24
    add-int/2addr v5, v6

    #@25
    add-int/2addr v5, p5

    #@26
    .line 1493
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@28
    .line 1491
    invoke-static {p4, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@2b
    move-result v1

    #@2c
    .line 1495
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@2f
    move-result v0

    #@30
    .line 1496
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    #@32
    if-ltz p6, :cond_0

    #@34
    .line 1497
    if-eqz v0, :cond_1

    #@36
    .line 1498
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@39
    move-result v5

    #@3a
    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v4

    #@3e
    .line 1500
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@41
    move-result v1

    #@42
    .line 1502
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    #@45
    .line 1485
    return-void

    #@46
    :cond_1
    move v4, p6

    #@47
    .line 1499
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    #@0
    .prologue
    .line 1430
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 1431
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 1429
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1535
    iget-boolean v3, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    #@3
    if-nez v3, :cond_0

    #@5
    return v4

    #@6
    .line 1537
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 1538
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@d
    .line 1539
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 1540
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@1a
    move-result v3

    #@1b
    if-lez v3, :cond_1

    #@1d
    .line 1541
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@20
    move-result v3

    #@21
    if-lez v3, :cond_1

    #@23
    .line 1542
    return v4

    #@24
    .line 1538
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1545
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    #@28
    return v3
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2033
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v1

    #@7
    if-ne v1, p0, :cond_0

    #@9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@c
    move-result v1

    #@d
    const/16 v2, 0x8

    #@f
    if-eq v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    #@0
    .prologue
    .line 2100
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 2102
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 2103
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/view/View;

    #@12
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    #@15
    .line 2102
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 2105
    :cond_0
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 2099
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 492
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@d
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    #@10
    move-result v0

    #@11
    :cond_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2071
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 697
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 699
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 700
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    #@a
    .line 696
    :cond_0
    return-void

    #@b
    .line 698
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@d
    iget-object v0, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 569
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    #@9
    .line 567
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 2065
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 2066
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2052
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2048
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2053
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2054
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@6
    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 2055
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2056
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@12
    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    #@14
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 2057
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 2058
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@1e
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@20
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@23
    return-object v0

    #@24
    .line 2060
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@26
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    #@0
    .prologue
    .line 1137
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@6
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

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

.method public getContentInsetEndWithActions()I
    .locals 2

    #@0
    .prologue
    .line 1259
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1260
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    #@8
    .line 1259
    :goto_0
    return v0

    #@9
    .line 1261
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 1

    #@0
    .prologue
    .line 1180
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@6
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

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

.method public getContentInsetRight()I
    .locals 1

    #@0
    .prologue
    .line 1200
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@6
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

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

.method public getContentInsetStart()I
    .locals 1

    #@0
    .prologue
    .line 1117
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@6
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

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

.method public getContentInsetStartWithNavigation()I
    .locals 2

    #@0
    .prologue
    .line 1216
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1217
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@8
    .line 1216
    :goto_0
    return v0

    #@9
    .line 1218
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 5

    #@0
    .prologue
    .line 1311
    const/4 v0, 0x0

    #@1
    .line 1312
    .local v0, "hasActions":Z
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1313
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@7
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    move-result-object v1

    #@b
    .line 1314
    .local v1, "mb":Lcom/android/internal/view/menu/MenuBuilder;
    if-eqz v1, :cond_1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    #@10
    move-result v0

    #@11
    .line 1316
    .end local v0    # "hasActions":Z
    .end local v1    # "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@13
    .line 1317
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    #@16
    move-result v2

    #@17
    iget v3, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v3

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v2

    #@22
    .line 1316
    :goto_1
    return v2

    #@23
    .line 1314
    .restart local v0    # "hasActions":Z
    .restart local v1    # "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    const/4 v0, 0x0

    #@24
    goto :goto_0

    #@25
    .line 1318
    .end local v0    # "hasActions":Z
    .end local v1    # "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    #@28
    move-result v2

    #@29
    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 1

    #@0
    .prologue
    .line 1331
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1332
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    #@9
    move-result v0

    #@a
    .line 1331
    :goto_0
    return v0

    #@b
    .line 1333
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 1

    #@0
    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1347
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    #@9
    move-result v0

    #@a
    .line 1346
    :goto_0
    return v0

    #@b
    .line 1348
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    #@0
    .prologue
    .line 1297
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1298
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v1

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    .line 1297
    :goto_0
    return v0

    #@16
    .line 1299
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    #@19
    move-result v0

    #@1a
    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 625
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 663
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 998
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    #@3
    .line 999
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 871
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 963
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 986
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2
    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 1

    #@0
    .prologue
    .line 2144
    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1019
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    #@3
    .line 1020
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 2148
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@2
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    #@0
    .prologue
    .line 455
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@2
    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    #@0
    .prologue
    .line 433
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@2
    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    #@0
    .prologue
    .line 389
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@2
    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    #@0
    .prologue
    .line 411
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@2
    return v0
.end method

.method public getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .locals 2

    #@0
    .prologue
    .line 2080
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2081
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    #@a
    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@c
    .line 2083
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@e
    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 683
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 684
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@7
    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 683
    :cond_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

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

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1062
    invoke-direct {p0}, Landroid/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@b
    .line 1061
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

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

.method public isTitleTruncated()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 575
    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 576
    return v4

    #@6
    .line 579
    :cond_0
    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@b
    move-result-object v2

    #@c
    .line 580
    .local v2, "titleLayout":Landroid/text/Layout;
    if-nez v2, :cond_1

    #@e
    .line 581
    return v4

    #@f
    .line 584
    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    #@12
    move-result v1

    #@13
    .line 585
    .local v1, "lineCount":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@16
    .line 586
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    #@19
    move-result v3

    #@1a
    if-lez v3, :cond_2

    #@1c
    .line 587
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 585
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 590
    :cond_3
    return v4
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 1436
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 1437
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    .line 1435
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1678
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@3
    move-result v48

    #@4
    const/16 v49, 0x1

    #@6
    move/from16 v0, v48

    #@8
    move/from16 v1, v49

    #@a
    if-ne v0, v1, :cond_c

    #@c
    const/16 v18, 0x1

    #@e
    .line 1679
    .local v18, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getWidth()I

    #@11
    move-result v47

    #@12
    .line 1680
    .local v47, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    #@15
    move-result v16

    #@16
    .line 1681
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    #@19
    move-result v26

    #@1a
    .line 1682
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    #@1d
    move-result v27

    #@1e
    .line 1683
    .local v27, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@21
    move-result v28

    #@22
    .line 1684
    .local v28, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    #@25
    move-result v25

    #@26
    .line 1685
    .local v25, "paddingBottom":I
    move/from16 v22, v26

    #@28
    .line 1686
    .local v22, "left":I
    sub-int v31, v47, v27

    #@2a
    .line 1688
    .local v31, "right":I
    move-object/from16 v0, p0

    #@2c
    iget-object v12, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    #@2e
    .line 1689
    .local v12, "collapsingMargins":[I
    const/16 v48, 0x0

    #@30
    const/16 v49, 0x1

    #@32
    aput v48, v12, v49

    #@34
    const/16 v48, 0x0

    #@36
    const/16 v49, 0x0

    #@38
    aput v48, v12, v49

    #@3a
    .line 1692
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    #@3d
    move-result v5

    #@3e
    .line 1694
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@42
    move-object/from16 v48, v0

    #@44
    move-object/from16 v0, p0

    #@46
    move-object/from16 v1, v48

    #@48
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@4b
    move-result v48

    #@4c
    if-eqz v48, :cond_0

    #@4e
    .line 1695
    if-eqz v18, :cond_d

    #@50
    .line 1696
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@54
    move-object/from16 v48, v0

    #@56
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, v48

    #@5a
    move/from16 v2, v31

    #@5c
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@5f
    move-result v31

    #@60
    .line 1704
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@64
    move-object/from16 v48, v0

    #@66
    move-object/from16 v0, p0

    #@68
    move-object/from16 v1, v48

    #@6a
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@6d
    move-result v48

    #@6e
    if-eqz v48, :cond_1

    #@70
    .line 1705
    if-eqz v18, :cond_e

    #@72
    .line 1706
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@76
    move-object/from16 v48, v0

    #@78
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, v48

    #@7c
    move/from16 v2, v31

    #@7e
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@81
    move-result v31

    #@82
    .line 1714
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@86
    move-object/from16 v48, v0

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v48

    #@8c
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@8f
    move-result v48

    #@90
    if-eqz v48, :cond_2

    #@92
    .line 1715
    if-eqz v18, :cond_f

    #@94
    .line 1716
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@98
    move-object/from16 v48, v0

    #@9a
    move-object/from16 v0, p0

    #@9c
    move-object/from16 v1, v48

    #@9e
    move/from16 v2, v22

    #@a0
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@a3
    move-result v22

    #@a4
    .line 1724
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetLeft()I

    #@a7
    move-result v13

    #@a8
    .line 1725
    .local v13, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetRight()I

    #@ab
    move-result v14

    #@ac
    .line 1726
    .local v14, "contentInsetRight":I
    sub-int v48, v13, v22

    #@ae
    const/16 v49, 0x0

    #@b0
    move/from16 v0, v49

    #@b2
    move/from16 v1, v48

    #@b4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b7
    move-result v48

    #@b8
    const/16 v49, 0x0

    #@ba
    aput v48, v12, v49

    #@bc
    .line 1727
    sub-int v48, v47, v27

    #@be
    sub-int v48, v48, v31

    #@c0
    sub-int v48, v14, v48

    #@c2
    const/16 v49, 0x0

    #@c4
    move/from16 v0, v49

    #@c6
    move/from16 v1, v48

    #@c8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@cb
    move-result v48

    #@cc
    const/16 v49, 0x1

    #@ce
    aput v48, v12, v49

    #@d0
    .line 1728
    move/from16 v0, v22

    #@d2
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    #@d5
    move-result v22

    #@d6
    .line 1729
    sub-int v48, v47, v27

    #@d8
    sub-int v48, v48, v14

    #@da
    move/from16 v0, v31

    #@dc
    move/from16 v1, v48

    #@de
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@e1
    move-result v31

    #@e2
    .line 1731
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@e6
    move-object/from16 v48, v0

    #@e8
    move-object/from16 v0, p0

    #@ea
    move-object/from16 v1, v48

    #@ec
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@ef
    move-result v48

    #@f0
    if-eqz v48, :cond_3

    #@f2
    .line 1732
    if-eqz v18, :cond_10

    #@f4
    .line 1733
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@f8
    move-object/from16 v48, v0

    #@fa
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, v48

    #@fe
    move/from16 v2, v31

    #@100
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@103
    move-result v31

    #@104
    .line 1741
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@108
    move-object/from16 v48, v0

    #@10a
    move-object/from16 v0, p0

    #@10c
    move-object/from16 v1, v48

    #@10e
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@111
    move-result v48

    #@112
    if-eqz v48, :cond_4

    #@114
    .line 1742
    if-eqz v18, :cond_11

    #@116
    .line 1743
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@11a
    move-object/from16 v48, v0

    #@11c
    move-object/from16 v0, p0

    #@11e
    move-object/from16 v1, v48

    #@120
    move/from16 v2, v31

    #@122
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@125
    move-result v31

    #@126
    .line 1751
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    #@128
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@12a
    move-object/from16 v48, v0

    #@12c
    move-object/from16 v0, p0

    #@12e
    move-object/from16 v1, v48

    #@130
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@133
    move-result v20

    #@134
    .line 1752
    .local v20, "layoutTitle":Z
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@138
    move-object/from16 v48, v0

    #@13a
    move-object/from16 v0, p0

    #@13c
    move-object/from16 v1, v48

    #@13e
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@141
    move-result v19

    #@142
    .line 1753
    .local v19, "layoutSubtitle":Z
    const/16 v41, 0x0

    #@144
    .line 1754
    .local v41, "titleHeight":I
    if-eqz v20, :cond_5

    #@146
    .line 1755
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@14a
    move-object/from16 v48, v0

    #@14c
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14f
    move-result-object v24

    #@150
    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    #@152
    .line 1756
    .local v24, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    #@154
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@156
    move/from16 v48, v0

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@15c
    move-object/from16 v49, v0

    #@15e
    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@161
    move-result v49

    #@162
    add-int v48, v48, v49

    #@164
    move-object/from16 v0, v24

    #@166
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@168
    move/from16 v49, v0

    #@16a
    add-int v48, v48, v49

    #@16c
    add-int/lit8 v41, v48, 0x0

    #@16e
    .line 1758
    .end local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_5
    if-eqz v19, :cond_6

    #@170
    .line 1759
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@174
    move-object/from16 v48, v0

    #@176
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@179
    move-result-object v24

    #@17a
    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    #@17c
    .line 1760
    .restart local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    #@17e
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@180
    move/from16 v48, v0

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@186
    move-object/from16 v49, v0

    #@188
    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@18b
    move-result v49

    #@18c
    add-int v48, v48, v49

    #@18e
    move-object/from16 v0, v24

    #@190
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@192
    move/from16 v49, v0

    #@194
    add-int v48, v48, v49

    #@196
    add-int v41, v41, v48

    #@198
    .line 1763
    .end local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_6
    if-nez v20, :cond_7

    #@19a
    if-eqz v19, :cond_b

    #@19c
    .line 1765
    :cond_7
    if-eqz v20, :cond_12

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1a2
    move-object/from16 v45, v0

    #@1a4
    .line 1766
    .local v45, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v19, :cond_13

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1aa
    .line 1767
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1ad
    move-result-object v46

    #@1ae
    check-cast v46, Landroid/widget/Toolbar$LayoutParams;

    #@1b0
    .line 1768
    .local v46, "toplp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b3
    move-result-object v7

    #@1b4
    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    #@1b6
    .line 1769
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    if-eqz v20, :cond_14

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1bc
    move-object/from16 v48, v0

    #@1be
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@1c1
    move-result v48

    #@1c2
    if-lez v48, :cond_14

    #@1c4
    const/16 v40, 0x1

    #@1c6
    .line 1772
    .local v40, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    #@1c8
    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    #@1ca
    move/from16 v48, v0

    #@1cc
    and-int/lit8 v48, v48, 0x70

    #@1ce
    sparse-switch v48, :sswitch_data_0

    #@1d1
    .line 1778
    :sswitch_0
    sub-int v48, v16, v28

    #@1d3
    sub-int v33, v48, v25

    #@1d5
    .line 1779
    .local v33, "space":I
    sub-int v48, v33, v41

    #@1d7
    div-int/lit8 v34, v48, 0x2

    #@1d9
    .line 1780
    .local v34, "spaceAbove":I
    move-object/from16 v0, v46

    #@1db
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@1dd
    move/from16 v48, v0

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@1e3
    move/from16 v49, v0

    #@1e5
    add-int v48, v48, v49

    #@1e7
    move/from16 v0, v34

    #@1e9
    move/from16 v1, v48

    #@1eb
    if-ge v0, v1, :cond_16

    #@1ed
    .line 1781
    move-object/from16 v0, v46

    #@1ef
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@1f1
    move/from16 v48, v0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@1f7
    move/from16 v49, v0

    #@1f9
    add-int v34, v48, v49

    #@1fb
    .line 1790
    :cond_8
    :goto_9
    add-int v44, v28, v34

    #@1fd
    .line 1797
    .end local v33    # "space":I
    .end local v34    # "spaceAbove":I
    .local v44, "titleTop":I
    :goto_a
    if-eqz v18, :cond_18

    #@1ff
    .line 1798
    if-eqz v40, :cond_17

    #@201
    move-object/from16 v0, p0

    #@203
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@205
    move/from16 v48, v0

    #@207
    :goto_b
    const/16 v49, 0x1

    #@209
    aget v49, v12, v49

    #@20b
    sub-int v30, v48, v49

    #@20d
    .line 1799
    .local v30, "rd":I
    const/16 v48, 0x0

    #@20f
    move/from16 v0, v48

    #@211
    move/from16 v1, v30

    #@213
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@216
    move-result v48

    #@217
    sub-int v31, v31, v48

    #@219
    .line 1800
    move/from16 v0, v30

    #@21b
    neg-int v0, v0

    #@21c
    move/from16 v48, v0

    #@21e
    const/16 v49, 0x0

    #@220
    move/from16 v0, v49

    #@222
    move/from16 v1, v48

    #@224
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@227
    move-result v48

    #@228
    const/16 v49, 0x1

    #@22a
    aput v48, v12, v49

    #@22c
    .line 1801
    move/from16 v43, v31

    #@22e
    .line 1802
    .local v43, "titleRight":I
    move/from16 v38, v31

    #@230
    .line 1804
    .local v38, "subtitleRight":I
    if-eqz v20, :cond_9

    #@232
    .line 1805
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@236
    move-object/from16 v48, v0

    #@238
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@23b
    move-result-object v24

    #@23c
    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    #@23e
    .line 1806
    .restart local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@242
    move-object/from16 v48, v0

    #@244
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@247
    move-result v48

    #@248
    sub-int v42, v31, v48

    #@24a
    .line 1807
    .local v42, "titleLeft":I
    move-object/from16 v0, p0

    #@24c
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@24e
    move-object/from16 v48, v0

    #@250
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@253
    move-result v48

    #@254
    add-int v39, v44, v48

    #@256
    .line 1808
    .local v39, "titleBottom":I
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@25a
    move-object/from16 v48, v0

    #@25c
    move-object/from16 v0, v48

    #@25e
    move/from16 v1, v42

    #@260
    move/from16 v2, v44

    #@262
    move/from16 v3, v31

    #@264
    move/from16 v4, v39

    #@266
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@269
    .line 1809
    move-object/from16 v0, p0

    #@26b
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@26d
    move/from16 v48, v0

    #@26f
    sub-int v43, v42, v48

    #@271
    .line 1810
    move-object/from16 v0, v24

    #@273
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@275
    move/from16 v48, v0

    #@277
    add-int v44, v39, v48

    #@279
    .line 1812
    .end local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v39    # "titleBottom":I
    .end local v42    # "titleLeft":I
    :cond_9
    if-eqz v19, :cond_a

    #@27b
    .line 1813
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@27f
    move-object/from16 v48, v0

    #@281
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@284
    move-result-object v24

    #@285
    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    #@287
    .line 1814
    .restart local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    #@289
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@28b
    move/from16 v48, v0

    #@28d
    add-int v44, v44, v48

    #@28f
    .line 1815
    move-object/from16 v0, p0

    #@291
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@293
    move-object/from16 v48, v0

    #@295
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@298
    move-result v48

    #@299
    sub-int v37, v31, v48

    #@29b
    .line 1816
    .local v37, "subtitleLeft":I
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@29f
    move-object/from16 v48, v0

    #@2a1
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@2a4
    move-result v48

    #@2a5
    add-int v36, v44, v48

    #@2a7
    .line 1817
    .local v36, "subtitleBottom":I
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2ab
    move-object/from16 v48, v0

    #@2ad
    move-object/from16 v0, v48

    #@2af
    move/from16 v1, v37

    #@2b1
    move/from16 v2, v44

    #@2b3
    move/from16 v3, v31

    #@2b5
    move/from16 v4, v36

    #@2b7
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@2ba
    .line 1818
    move-object/from16 v0, p0

    #@2bc
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@2be
    move/from16 v48, v0

    #@2c0
    sub-int v38, v31, v48

    #@2c2
    .line 1819
    move-object/from16 v0, v24

    #@2c4
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@2c6
    move/from16 v48, v0

    #@2c8
    add-int v44, v36, v48

    #@2ca
    .line 1821
    .end local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v36    # "subtitleBottom":I
    .end local v37    # "subtitleLeft":I
    :cond_a
    if-eqz v40, :cond_b

    #@2cc
    .line 1822
    move/from16 v0, v43

    #@2ce
    move/from16 v1, v38

    #@2d0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@2d3
    move-result v31

    #@2d4
    .line 1857
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v30    # "rd":I
    .end local v38    # "subtitleRight":I
    .end local v40    # "titleHasWidth":Z
    .end local v43    # "titleRight":I
    .end local v44    # "titleTop":I
    .end local v45    # "topChild":Landroid/view/View;
    .end local v46    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_b
    :goto_c
    move-object/from16 v0, p0

    #@2d6
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2d8
    move-object/from16 v48, v0

    #@2da
    const/16 v49, 0x3

    #@2dc
    move-object/from16 v0, p0

    #@2de
    move-object/from16 v1, v48

    #@2e0
    move/from16 v2, v49

    #@2e2
    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@2e5
    .line 1858
    move-object/from16 v0, p0

    #@2e7
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2e9
    move-object/from16 v48, v0

    #@2eb
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    #@2ee
    move-result v23

    #@2ef
    .line 1859
    .local v23, "leftViewsCount":I
    const/16 v17, 0x0

    #@2f1
    .local v17, "i":I
    :goto_d
    move/from16 v0, v17

    #@2f3
    move/from16 v1, v23

    #@2f5
    if-ge v0, v1, :cond_1c

    #@2f7
    .line 1860
    move-object/from16 v0, p0

    #@2f9
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2fb
    move-object/from16 v48, v0

    #@2fd
    move-object/from16 v0, v48

    #@2ff
    move/from16 v1, v17

    #@301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@304
    move-result-object v48

    #@305
    check-cast v48, Landroid/view/View;

    #@307
    move-object/from16 v0, p0

    #@309
    move-object/from16 v1, v48

    #@30b
    move/from16 v2, v22

    #@30d
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@310
    move-result v22

    #@311
    .line 1859
    add-int/lit8 v17, v17, 0x1

    #@313
    goto :goto_d

    #@314
    .line 1678
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v13    # "contentInsetLeft":I
    .end local v14    # "contentInsetRight":I
    .end local v16    # "height":I
    .end local v17    # "i":I
    .end local v18    # "isRtl":Z
    .end local v19    # "layoutSubtitle":Z
    .end local v20    # "layoutTitle":Z
    .end local v22    # "left":I
    .end local v23    # "leftViewsCount":I
    .end local v25    # "paddingBottom":I
    .end local v26    # "paddingLeft":I
    .end local v27    # "paddingRight":I
    .end local v28    # "paddingTop":I
    .end local v31    # "right":I
    .end local v41    # "titleHeight":I
    .end local v47    # "width":I
    :cond_c
    const/16 v18, 0x0

    #@316
    .restart local v18    # "isRtl":Z
    goto/16 :goto_0

    #@318
    .line 1699
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v16    # "height":I
    .restart local v22    # "left":I
    .restart local v25    # "paddingBottom":I
    .restart local v26    # "paddingLeft":I
    .restart local v27    # "paddingRight":I
    .restart local v28    # "paddingTop":I
    .restart local v31    # "right":I
    .restart local v47    # "width":I
    :cond_d
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@31c
    move-object/from16 v48, v0

    #@31e
    move-object/from16 v0, p0

    #@320
    move-object/from16 v1, v48

    #@322
    move/from16 v2, v26

    #@324
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@327
    move-result v22

    #@328
    goto/16 :goto_1

    #@32a
    .line 1709
    :cond_e
    move-object/from16 v0, p0

    #@32c
    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@32e
    move-object/from16 v48, v0

    #@330
    move-object/from16 v0, p0

    #@332
    move-object/from16 v1, v48

    #@334
    move/from16 v2, v22

    #@336
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@339
    move-result v22

    #@33a
    goto/16 :goto_2

    #@33c
    .line 1719
    :cond_f
    move-object/from16 v0, p0

    #@33e
    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@340
    move-object/from16 v48, v0

    #@342
    move-object/from16 v0, p0

    #@344
    move-object/from16 v1, v48

    #@346
    move/from16 v2, v31

    #@348
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@34b
    move-result v31

    #@34c
    goto/16 :goto_3

    #@34e
    .line 1736
    .restart local v13    # "contentInsetLeft":I
    .restart local v14    # "contentInsetRight":I
    :cond_10
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@352
    move-object/from16 v48, v0

    #@354
    move-object/from16 v0, p0

    #@356
    move-object/from16 v1, v48

    #@358
    move/from16 v2, v22

    #@35a
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@35d
    move-result v22

    #@35e
    goto/16 :goto_4

    #@360
    .line 1746
    :cond_11
    move-object/from16 v0, p0

    #@362
    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@364
    move-object/from16 v48, v0

    #@366
    move-object/from16 v0, p0

    #@368
    move-object/from16 v1, v48

    #@36a
    move/from16 v2, v22

    #@36c
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@36f
    move-result v22

    #@370
    goto/16 :goto_5

    #@372
    .line 1765
    .restart local v19    # "layoutSubtitle":Z
    .restart local v20    # "layoutTitle":Z
    .restart local v41    # "titleHeight":I
    :cond_12
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@376
    move-object/from16 v45, v0

    #@378
    .restart local v45    # "topChild":Landroid/view/View;
    goto/16 :goto_6

    #@37a
    .line 1766
    :cond_13
    move-object/from16 v0, p0

    #@37c
    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@37e
    .restart local v6    # "bottomChild":Landroid/view/View;
    goto/16 :goto_7

    #@380
    .line 1770
    .restart local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v46    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_14
    if-eqz v19, :cond_15

    #@382
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@386
    move-object/from16 v48, v0

    #@388
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@38b
    move-result v48

    #@38c
    if-lez v48, :cond_15

    #@38e
    const/16 v40, 0x1

    #@390
    .restart local v40    # "titleHasWidth":Z
    goto/16 :goto_8

    #@392
    .end local v40    # "titleHasWidth":Z
    :cond_15
    const/16 v40, 0x0

    #@394
    .restart local v40    # "titleHasWidth":Z
    goto/16 :goto_8

    #@396
    .line 1774
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@399
    move-result v48

    #@39a
    move-object/from16 v0, v46

    #@39c
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@39e
    move/from16 v49, v0

    #@3a0
    add-int v48, v48, v49

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@3a6
    move/from16 v49, v0

    #@3a8
    add-int v44, v48, v49

    #@3aa
    .line 1775
    .restart local v44    # "titleTop":I
    goto/16 :goto_a

    #@3ac
    .line 1783
    .end local v44    # "titleTop":I
    .restart local v33    # "space":I
    .restart local v34    # "spaceAbove":I
    :cond_16
    sub-int v48, v16, v25

    #@3ae
    sub-int v48, v48, v41

    #@3b0
    sub-int v48, v48, v34

    #@3b2
    sub-int v35, v48, v28

    #@3b4
    .line 1785
    .local v35, "spaceBelow":I
    move-object/from16 v0, v46

    #@3b6
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@3b8
    move/from16 v48, v0

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@3be
    move/from16 v49, v0

    #@3c0
    add-int v48, v48, v49

    #@3c2
    move/from16 v0, v35

    #@3c4
    move/from16 v1, v48

    #@3c6
    if-ge v0, v1, :cond_8

    #@3c8
    .line 1787
    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@3ca
    move/from16 v48, v0

    #@3cc
    move-object/from16 v0, p0

    #@3ce
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@3d0
    move/from16 v49, v0

    #@3d2
    add-int v48, v48, v49

    #@3d4
    sub-int v48, v48, v35

    #@3d6
    .line 1786
    sub-int v48, v34, v48

    #@3d8
    const/16 v49, 0x0

    #@3da
    move/from16 v0, v49

    #@3dc
    move/from16 v1, v48

    #@3de
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@3e1
    move-result v34

    #@3e2
    goto/16 :goto_9

    #@3e4
    .line 1793
    .end local v33    # "space":I
    .end local v34    # "spaceAbove":I
    .end local v35    # "spaceBelow":I
    :sswitch_2
    sub-int v48, v16, v25

    #@3e6
    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@3e8
    move/from16 v49, v0

    #@3ea
    sub-int v48, v48, v49

    #@3ec
    move-object/from16 v0, p0

    #@3ee
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@3f0
    move/from16 v49, v0

    #@3f2
    sub-int v48, v48, v49

    #@3f4
    sub-int v44, v48, v41

    #@3f6
    .line 1795
    .restart local v44    # "titleTop":I
    goto/16 :goto_a

    #@3f8
    .line 1798
    :cond_17
    const/16 v48, 0x0

    #@3fa
    goto/16 :goto_b

    #@3fc
    .line 1825
    :cond_18
    if-eqz v40, :cond_1b

    #@3fe
    move-object/from16 v0, p0

    #@400
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@402
    move/from16 v48, v0

    #@404
    :goto_e
    const/16 v49, 0x0

    #@406
    aget v49, v12, v49

    #@408
    sub-int v21, v48, v49

    #@40a
    .line 1826
    .local v21, "ld":I
    const/16 v48, 0x0

    #@40c
    move/from16 v0, v48

    #@40e
    move/from16 v1, v21

    #@410
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@413
    move-result v48

    #@414
    add-int v22, v22, v48

    #@416
    .line 1827
    move/from16 v0, v21

    #@418
    neg-int v0, v0

    #@419
    move/from16 v48, v0

    #@41b
    const/16 v49, 0x0

    #@41d
    move/from16 v0, v49

    #@41f
    move/from16 v1, v48

    #@421
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@424
    move-result v48

    #@425
    const/16 v49, 0x0

    #@427
    aput v48, v12, v49

    #@429
    .line 1828
    move/from16 v42, v22

    #@42b
    .line 1829
    .restart local v42    # "titleLeft":I
    move/from16 v37, v22

    #@42d
    .line 1831
    .restart local v37    # "subtitleLeft":I
    if-eqz v20, :cond_19

    #@42f
    .line 1832
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@433
    move-object/from16 v48, v0

    #@435
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@438
    move-result-object v24

    #@439
    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    #@43b
    .line 1833
    .restart local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    #@43d
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@43f
    move-object/from16 v48, v0

    #@441
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@444
    move-result v48

    #@445
    add-int v43, v22, v48

    #@447
    .line 1834
    .restart local v43    # "titleRight":I
    move-object/from16 v0, p0

    #@449
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@44b
    move-object/from16 v48, v0

    #@44d
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@450
    move-result v48

    #@451
    add-int v39, v44, v48

    #@453
    .line 1835
    .restart local v39    # "titleBottom":I
    move-object/from16 v0, p0

    #@455
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@457
    move-object/from16 v48, v0

    #@459
    move-object/from16 v0, v48

    #@45b
    move/from16 v1, v22

    #@45d
    move/from16 v2, v44

    #@45f
    move/from16 v3, v43

    #@461
    move/from16 v4, v39

    #@463
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@466
    .line 1836
    move-object/from16 v0, p0

    #@468
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@46a
    move/from16 v48, v0

    #@46c
    add-int v42, v43, v48

    #@46e
    .line 1837
    move-object/from16 v0, v24

    #@470
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@472
    move/from16 v48, v0

    #@474
    add-int v44, v39, v48

    #@476
    .line 1839
    .end local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v39    # "titleBottom":I
    .end local v43    # "titleRight":I
    :cond_19
    if-eqz v19, :cond_1a

    #@478
    .line 1840
    move-object/from16 v0, p0

    #@47a
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@47c
    move-object/from16 v48, v0

    #@47e
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@481
    move-result-object v24

    #@482
    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    #@484
    .line 1841
    .restart local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    #@486
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@488
    move/from16 v48, v0

    #@48a
    add-int v44, v44, v48

    #@48c
    .line 1842
    move-object/from16 v0, p0

    #@48e
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@490
    move-object/from16 v48, v0

    #@492
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@495
    move-result v48

    #@496
    add-int v38, v22, v48

    #@498
    .line 1843
    .restart local v38    # "subtitleRight":I
    move-object/from16 v0, p0

    #@49a
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@49c
    move-object/from16 v48, v0

    #@49e
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@4a1
    move-result v48

    #@4a2
    add-int v36, v44, v48

    #@4a4
    .line 1844
    .restart local v36    # "subtitleBottom":I
    move-object/from16 v0, p0

    #@4a6
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4a8
    move-object/from16 v48, v0

    #@4aa
    move-object/from16 v0, v48

    #@4ac
    move/from16 v1, v22

    #@4ae
    move/from16 v2, v44

    #@4b0
    move/from16 v3, v38

    #@4b2
    move/from16 v4, v36

    #@4b4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@4b7
    .line 1845
    move-object/from16 v0, p0

    #@4b9
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@4bb
    move/from16 v48, v0

    #@4bd
    add-int v37, v38, v48

    #@4bf
    .line 1846
    move-object/from16 v0, v24

    #@4c1
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@4c3
    move/from16 v48, v0

    #@4c5
    add-int v44, v36, v48

    #@4c7
    .line 1848
    .end local v24    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v36    # "subtitleBottom":I
    .end local v38    # "subtitleRight":I
    :cond_1a
    if-eqz v40, :cond_b

    #@4c9
    .line 1849
    move/from16 v0, v42

    #@4cb
    move/from16 v1, v37

    #@4cd
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@4d0
    move-result v22

    #@4d1
    goto/16 :goto_c

    #@4d3
    .line 1825
    .end local v21    # "ld":I
    .end local v37    # "subtitleLeft":I
    .end local v42    # "titleLeft":I
    :cond_1b
    const/16 v48, 0x0

    #@4d5
    goto/16 :goto_e

    #@4d7
    .line 1864
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v40    # "titleHasWidth":Z
    .end local v44    # "titleTop":I
    .end local v45    # "topChild":Landroid/view/View;
    .end local v46    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v17    # "i":I
    .restart local v23    # "leftViewsCount":I
    :cond_1c
    move-object/from16 v0, p0

    #@4d9
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@4db
    move-object/from16 v48, v0

    #@4dd
    const/16 v49, 0x5

    #@4df
    move-object/from16 v0, p0

    #@4e1
    move-object/from16 v1, v48

    #@4e3
    move/from16 v2, v49

    #@4e5
    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@4e8
    .line 1865
    move-object/from16 v0, p0

    #@4ea
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@4ec
    move-object/from16 v48, v0

    #@4ee
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    #@4f1
    move-result v32

    #@4f2
    .line 1866
    .local v32, "rightViewsCount":I
    const/16 v17, 0x0

    #@4f4
    :goto_f
    move/from16 v0, v17

    #@4f6
    move/from16 v1, v32

    #@4f8
    if-ge v0, v1, :cond_1d

    #@4fa
    .line 1867
    move-object/from16 v0, p0

    #@4fc
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@4fe
    move-object/from16 v48, v0

    #@500
    move-object/from16 v0, v48

    #@502
    move/from16 v1, v17

    #@504
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@507
    move-result-object v48

    #@508
    check-cast v48, Landroid/view/View;

    #@50a
    move-object/from16 v0, p0

    #@50c
    move-object/from16 v1, v48

    #@50e
    move/from16 v2, v31

    #@510
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@513
    move-result v31

    #@514
    .line 1866
    add-int/lit8 v17, v17, 0x1

    #@516
    goto :goto_f

    #@517
    .line 1873
    :cond_1d
    move-object/from16 v0, p0

    #@519
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@51b
    move-object/from16 v48, v0

    #@51d
    const/16 v49, 0x1

    #@51f
    move-object/from16 v0, p0

    #@521
    move-object/from16 v1, v48

    #@523
    move/from16 v2, v49

    #@525
    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@528
    .line 1874
    move-object/from16 v0, p0

    #@52a
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@52c
    move-object/from16 v48, v0

    #@52e
    move-object/from16 v0, p0

    #@530
    move-object/from16 v1, v48

    #@532
    invoke-direct {v0, v1, v12}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    #@535
    move-result v11

    #@536
    .line 1875
    .local v11, "centerViewsWidth":I
    sub-int v48, v47, v26

    #@538
    sub-int v48, v48, v27

    #@53a
    div-int/lit8 v48, v48, 0x2

    #@53c
    add-int v29, v26, v48

    #@53e
    .line 1876
    .local v29, "parentCenter":I
    div-int/lit8 v15, v11, 0x2

    #@540
    .line 1877
    .local v15, "halfCenterViewsWidth":I
    sub-int v8, v29, v15

    #@542
    .line 1878
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    #@544
    .line 1879
    .local v9, "centerRight":I
    move/from16 v0, v22

    #@546
    if-ge v8, v0, :cond_1f

    #@548
    .line 1880
    move/from16 v8, v22

    #@54a
    .line 1885
    :cond_1e
    :goto_10
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@54e
    move-object/from16 v48, v0

    #@550
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    #@553
    move-result v10

    #@554
    .line 1886
    .local v10, "centerViewsCount":I
    const/16 v17, 0x0

    #@556
    :goto_11
    move/from16 v0, v17

    #@558
    if-ge v0, v10, :cond_20

    #@55a
    .line 1887
    move-object/from16 v0, p0

    #@55c
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@55e
    move-object/from16 v48, v0

    #@560
    move-object/from16 v0, v48

    #@562
    move/from16 v1, v17

    #@564
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@567
    move-result-object v48

    #@568
    check-cast v48, Landroid/view/View;

    #@56a
    move-object/from16 v0, p0

    #@56c
    move-object/from16 v1, v48

    #@56e
    invoke-direct {v0, v1, v8, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@571
    move-result v8

    #@572
    .line 1886
    add-int/lit8 v17, v17, 0x1

    #@574
    goto :goto_11

    #@575
    .line 1881
    .end local v10    # "centerViewsCount":I
    :cond_1f
    move/from16 v0, v31

    #@577
    if-le v9, v0, :cond_1e

    #@579
    .line 1882
    sub-int v48, v9, v31

    #@57b
    sub-int v8, v8, v48

    #@57d
    goto :goto_10

    #@57e
    .line 1891
    .restart local v10    # "centerViewsCount":I
    :cond_20
    move-object/from16 v0, p0

    #@580
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@582
    move-object/from16 v48, v0

    #@584
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->clear()V

    #@587
    .line 1677
    return-void

    #@588
    .line 1772
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1550
    const/4 v6, 0x0

    #@1
    .line 1551
    .local v6, "width":I
    const/16 v25, 0x0

    #@3
    .line 1552
    .local v25, "height":I
    const/16 v22, 0x0

    #@5
    .line 1554
    .local v22, "childState":I
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    #@9
    .line 1557
    .local v13, "collapsingMargins":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_6

    #@f
    .line 1558
    const/16 v29, 0x1

    #@11
    .line 1559
    .local v29, "marginStartIndex":I
    const/16 v28, 0x0

    #@13
    .line 1567
    .local v28, "marginEndIndex":I
    :goto_0
    const/16 v33, 0x0

    #@15
    .line 1568
    .local v33, "navWidth":I
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 1569
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@25
    .line 1570
    move-object/from16 v0, p0

    #@27
    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@29
    .line 1569
    const/4 v8, 0x0

    #@2a
    move-object/from16 v3, p0

    #@2c
    move/from16 v5, p1

    #@2e
    move/from16 v7, p2

    #@30
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@33
    .line 1571
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@37
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@3a
    move-result v3

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@44
    move-result v5

    #@45
    add-int v33, v3, v5

    #@47
    .line 1572
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@4b
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@4e
    move-result v3

    #@4f
    .line 1573
    move-object/from16 v0, p0

    #@51
    iget-object v5, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@53
    move-object/from16 v0, p0

    #@55
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@58
    move-result v5

    #@59
    .line 1572
    add-int/2addr v3, v5

    #@5a
    move/from16 v0, v25

    #@5c
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@5f
    move-result v25

    #@60
    .line 1574
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@64
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    #@67
    move-result v3

    #@68
    move/from16 v0, v22

    #@6a
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@6d
    move-result v22

    #@6e
    .line 1577
    :cond_0
    move-object/from16 v0, p0

    #@70
    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@77
    move-result v3

    #@78
    if-eqz v3, :cond_1

    #@7a
    .line 1578
    move-object/from16 v0, p0

    #@7c
    iget-object v4, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@7e
    .line 1579
    move-object/from16 v0, p0

    #@80
    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@82
    const/4 v8, 0x0

    #@83
    move-object/from16 v3, p0

    #@85
    move/from16 v5, p1

    #@87
    move/from16 v7, p2

    #@89
    .line 1578
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@8c
    .line 1580
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@90
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@93
    move-result v3

    #@94
    .line 1581
    move-object/from16 v0, p0

    #@96
    iget-object v5, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@98
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@9d
    move-result v5

    #@9e
    .line 1580
    add-int v33, v3, v5

    #@a0
    .line 1582
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@a4
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@a7
    move-result v3

    #@a8
    .line 1583
    move-object/from16 v0, p0

    #@aa
    iget-object v5, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@b1
    move-result v5

    #@b2
    .line 1582
    add-int/2addr v3, v5

    #@b3
    move/from16 v0, v25

    #@b5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@b8
    move-result v25

    #@b9
    .line 1584
    move-object/from16 v0, p0

    #@bb
    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@bd
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    #@c0
    move-result v3

    #@c1
    move/from16 v0, v22

    #@c3
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@c6
    move-result v22

    #@c7
    .line 1587
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    #@ca
    move-result v24

    #@cb
    .line 1588
    .local v24, "contentInsetStart":I
    move/from16 v0, v24

    #@cd
    move/from16 v1, v33

    #@cf
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d2
    move-result v3

    #@d3
    add-int/lit8 v6, v3, 0x0

    #@d5
    .line 1589
    sub-int v3, v24, v33

    #@d7
    const/4 v5, 0x0

    #@d8
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@db
    move-result v3

    #@dc
    aput v3, v13, v29

    #@de
    .line 1591
    const/16 v32, 0x0

    #@e0
    .line 1592
    .local v32, "menuWidth":I
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@e4
    move-object/from16 v0, p0

    #@e6
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_2

    #@ec
    .line 1593
    move-object/from16 v0, p0

    #@ee
    iget-object v4, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@f0
    .line 1594
    move-object/from16 v0, p0

    #@f2
    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@f4
    .line 1593
    const/4 v8, 0x0

    #@f5
    move-object/from16 v3, p0

    #@f7
    move/from16 v5, p1

    #@f9
    move/from16 v7, p2

    #@fb
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@fe
    .line 1595
    move-object/from16 v0, p0

    #@100
    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@102
    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    #@105
    move-result v3

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v5, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@10a
    move-object/from16 v0, p0

    #@10c
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@10f
    move-result v5

    #@110
    add-int v32, v3, v5

    #@112
    .line 1596
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@116
    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    #@119
    move-result v3

    #@11a
    .line 1597
    move-object/from16 v0, p0

    #@11c
    iget-object v5, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@11e
    move-object/from16 v0, p0

    #@120
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@123
    move-result v5

    #@124
    .line 1596
    add-int/2addr v3, v5

    #@125
    move/from16 v0, v25

    #@127
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@12a
    move-result v25

    #@12b
    .line 1598
    move-object/from16 v0, p0

    #@12d
    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@12f
    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    #@132
    move-result v3

    #@133
    move/from16 v0, v22

    #@135
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@138
    move-result v22

    #@139
    .line 1601
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    #@13c
    move-result v23

    #@13d
    .line 1602
    .local v23, "contentInsetEnd":I
    move/from16 v0, v23

    #@13f
    move/from16 v1, v32

    #@141
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@144
    move-result v3

    #@145
    add-int/2addr v6, v3

    #@146
    .line 1603
    sub-int v3, v23, v32

    #@148
    const/4 v5, 0x0

    #@149
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@14c
    move-result v3

    #@14d
    aput v3, v13, v28

    #@14f
    .line 1605
    move-object/from16 v0, p0

    #@151
    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@153
    move-object/from16 v0, p0

    #@155
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@158
    move-result v3

    #@159
    if-eqz v3, :cond_3

    #@15b
    .line 1606
    move-object/from16 v0, p0

    #@15d
    iget-object v4, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@15f
    .line 1607
    const/4 v8, 0x0

    #@160
    move-object/from16 v3, p0

    #@162
    move/from16 v5, p1

    #@164
    move/from16 v7, p2

    #@166
    move-object v9, v13

    #@167
    .line 1606
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@16a
    move-result v3

    #@16b
    add-int/2addr v6, v3

    #@16c
    .line 1608
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@170
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@173
    move-result v3

    #@174
    .line 1609
    move-object/from16 v0, p0

    #@176
    iget-object v5, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@178
    move-object/from16 v0, p0

    #@17a
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@17d
    move-result v5

    #@17e
    .line 1608
    add-int/2addr v3, v5

    #@17f
    move/from16 v0, v25

    #@181
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@184
    move-result v25

    #@185
    .line 1610
    move-object/from16 v0, p0

    #@187
    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@189
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    #@18c
    move-result v3

    #@18d
    move/from16 v0, v22

    #@18f
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@192
    move-result v22

    #@193
    .line 1613
    :cond_3
    move-object/from16 v0, p0

    #@195
    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@197
    move-object/from16 v0, p0

    #@199
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@19c
    move-result v3

    #@19d
    if-eqz v3, :cond_4

    #@19f
    .line 1614
    move-object/from16 v0, p0

    #@1a1
    iget-object v4, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1a3
    .line 1615
    const/4 v8, 0x0

    #@1a4
    move-object/from16 v3, p0

    #@1a6
    move/from16 v5, p1

    #@1a8
    move/from16 v7, p2

    #@1aa
    move-object v9, v13

    #@1ab
    .line 1614
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@1ae
    move-result v3

    #@1af
    add-int/2addr v6, v3

    #@1b0
    .line 1616
    move-object/from16 v0, p0

    #@1b2
    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1b4
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@1b7
    move-result v3

    #@1b8
    .line 1617
    move-object/from16 v0, p0

    #@1ba
    iget-object v5, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1bc
    move-object/from16 v0, p0

    #@1be
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@1c1
    move-result v5

    #@1c2
    .line 1616
    add-int/2addr v3, v5

    #@1c3
    move/from16 v0, v25

    #@1c5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@1c8
    move-result v25

    #@1c9
    .line 1618
    move-object/from16 v0, p0

    #@1cb
    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1cd
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    #@1d0
    move-result v3

    #@1d1
    move/from16 v0, v22

    #@1d3
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@1d6
    move-result v22

    #@1d7
    .line 1621
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@1da
    move-result v21

    #@1db
    .line 1622
    .local v21, "childCount":I
    const/16 v26, 0x0

    #@1dd
    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    #@1df
    move/from16 v1, v21

    #@1e1
    if-ge v0, v1, :cond_7

    #@1e3
    .line 1623
    move-object/from16 v0, p0

    #@1e5
    move/from16 v1, v26

    #@1e7
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@1ea
    move-result-object v4

    #@1eb
    .line 1624
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1ee
    move-result-object v27

    #@1ef
    check-cast v27, Landroid/widget/Toolbar$LayoutParams;

    #@1f1
    .line 1625
    .local v27, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v27

    #@1f3
    iget v3, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@1f5
    if-nez v3, :cond_5

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    invoke-direct {v0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@1fc
    move-result v3

    #@1fd
    if-eqz v3, :cond_5

    #@1ff
    .line 1631
    const/4 v8, 0x0

    #@200
    move-object/from16 v3, p0

    #@202
    move/from16 v5, p1

    #@204
    move/from16 v7, p2

    #@206
    move-object v9, v13

    #@207
    .line 1630
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@20a
    move-result v3

    #@20b
    add-int/2addr v6, v3

    #@20c
    .line 1632
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@20f
    move-result v3

    #@210
    move-object/from16 v0, p0

    #@212
    invoke-direct {v0, v4}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@215
    move-result v5

    #@216
    add-int/2addr v3, v5

    #@217
    move/from16 v0, v25

    #@219
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@21c
    move-result v25

    #@21d
    .line 1633
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@220
    move-result v3

    #@221
    move/from16 v0, v22

    #@223
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@226
    move-result v22

    #@227
    .line 1622
    :cond_5
    add-int/lit8 v26, v26, 0x1

    #@229
    goto :goto_1

    #@22a
    .line 1561
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "childCount":I
    .end local v23    # "contentInsetEnd":I
    .end local v24    # "contentInsetStart":I
    .end local v26    # "i":I
    .end local v27    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v28    # "marginEndIndex":I
    .end local v29    # "marginStartIndex":I
    .end local v32    # "menuWidth":I
    .end local v33    # "navWidth":I
    :cond_6
    const/16 v29, 0x0

    #@22c
    .line 1562
    .restart local v29    # "marginStartIndex":I
    const/16 v28, 0x1

    #@22e
    .restart local v28    # "marginEndIndex":I
    goto/16 :goto_0

    #@230
    .line 1636
    .restart local v21    # "childCount":I
    .restart local v23    # "contentInsetEnd":I
    .restart local v24    # "contentInsetStart":I
    .restart local v26    # "i":I
    .restart local v32    # "menuWidth":I
    .restart local v33    # "navWidth":I
    :cond_7
    const/16 v36, 0x0

    #@232
    .line 1637
    .local v36, "titleWidth":I
    const/16 v34, 0x0

    #@234
    .line 1638
    .local v34, "titleHeight":I
    move-object/from16 v0, p0

    #@236
    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@238
    move-object/from16 v0, p0

    #@23a
    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@23c
    add-int v12, v3, v5

    #@23e
    .line 1639
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    #@240
    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@242
    move-object/from16 v0, p0

    #@244
    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@246
    add-int v35, v3, v5

    #@248
    .line 1640
    .local v35, "titleHorizMargins":I
    move-object/from16 v0, p0

    #@24a
    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@24c
    move-object/from16 v0, p0

    #@24e
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@251
    move-result v3

    #@252
    if-eqz v3, :cond_8

    #@254
    .line 1641
    move-object/from16 v0, p0

    #@256
    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@258
    .line 1642
    add-int v10, v6, v35

    #@25a
    move-object/from16 v7, p0

    #@25c
    move/from16 v9, p1

    #@25e
    move/from16 v11, p2

    #@260
    .line 1641
    invoke-direct/range {v7 .. v13}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@263
    move-result v36

    #@264
    .line 1644
    move-object/from16 v0, p0

    #@266
    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@268
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@26b
    move-result v3

    #@26c
    move-object/from16 v0, p0

    #@26e
    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@270
    move-object/from16 v0, p0

    #@272
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    #@275
    move-result v5

    #@276
    add-int v36, v3, v5

    #@278
    .line 1645
    move-object/from16 v0, p0

    #@27a
    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@27c
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@27f
    move-result v3

    #@280
    move-object/from16 v0, p0

    #@282
    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@284
    move-object/from16 v0, p0

    #@286
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@289
    move-result v5

    #@28a
    add-int v34, v3, v5

    #@28c
    .line 1646
    move-object/from16 v0, p0

    #@28e
    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@290
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    #@293
    move-result v3

    #@294
    move/from16 v0, v22

    #@296
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@299
    move-result v22

    #@29a
    .line 1648
    :cond_8
    move-object/from16 v0, p0

    #@29c
    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@29e
    move-object/from16 v0, p0

    #@2a0
    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@2a3
    move-result v3

    #@2a4
    if-eqz v3, :cond_9

    #@2a6
    .line 1649
    move-object/from16 v0, p0

    #@2a8
    iget-object v15, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2aa
    .line 1650
    add-int v17, v6, v35

    #@2ac
    .line 1651
    add-int v19, v34, v12

    #@2ae
    move-object/from16 v14, p0

    #@2b0
    move/from16 v16, p1

    #@2b2
    move/from16 v18, p2

    #@2b4
    move-object/from16 v20, v13

    #@2b6
    .line 1649
    invoke-direct/range {v14 .. v20}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@2b9
    move-result v3

    #@2ba
    move/from16 v0, v36

    #@2bc
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@2bf
    move-result v36

    #@2c0
    .line 1653
    move-object/from16 v0, p0

    #@2c2
    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2c4
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@2c7
    move-result v3

    #@2c8
    .line 1654
    move-object/from16 v0, p0

    #@2ca
    iget-object v5, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    #@2d1
    move-result v5

    #@2d2
    .line 1653
    add-int/2addr v3, v5

    #@2d3
    add-int v34, v34, v3

    #@2d5
    .line 1655
    move-object/from16 v0, p0

    #@2d7
    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2d9
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    #@2dc
    move-result v3

    #@2dd
    move/from16 v0, v22

    #@2df
    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    #@2e2
    move-result v22

    #@2e3
    .line 1658
    :cond_9
    add-int v6, v6, v36

    #@2e5
    .line 1659
    move/from16 v0, v25

    #@2e7
    move/from16 v1, v34

    #@2e9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2ec
    move-result v25

    #@2ed
    .line 1663
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    #@2f0
    move-result v3

    #@2f1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    #@2f4
    move-result v5

    #@2f5
    add-int/2addr v3, v5

    #@2f6
    add-int/2addr v6, v3

    #@2f7
    .line 1664
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@2fa
    move-result v3

    #@2fb
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    #@2fe
    move-result v5

    #@2ff
    add-int/2addr v3, v5

    #@300
    add-int v25, v25, v3

    #@302
    .line 1667
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    #@305
    move-result v3

    #@306
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@309
    move-result v3

    #@30a
    .line 1668
    const/high16 v5, -0x1000000

    #@30c
    and-int v5, v5, v22

    #@30e
    .line 1666
    move/from16 v0, p1

    #@310
    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    #@313
    move-result v31

    #@314
    .line 1670
    .local v31, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    #@317
    move-result v3

    #@318
    move/from16 v0, v25

    #@31a
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@31d
    move-result v3

    #@31e
    .line 1671
    shl-int/lit8 v5, v22, 0x10

    #@320
    .line 1669
    move/from16 v0, p2

    #@322
    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    #@325
    move-result v30

    #@326
    .line 1673
    .local v30, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->shouldCollapse()Z

    #@329
    move-result v3

    #@32a
    if-eqz v3, :cond_a

    #@32c
    const/16 v30, 0x0

    #@32e
    .end local v30    # "measuredHeight":I
    :cond_a
    move-object/from16 v0, p0

    #@330
    move/from16 v1, v31

    #@332
    move/from16 v2, v30

    #@334
    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    #@337
    .line 1549
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v2, p1

    #@1
    .line 1413
    check-cast v2, Landroid/widget/Toolbar$SavedState;

    #@3
    .line 1414
    .local v2, "ss":Landroid/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1416
    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@c
    if-eqz v3, :cond_2

    #@e
    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@10
    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@13
    move-result-object v1

    #@14
    .line 1417
    :goto_0
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@16
    if-eqz v3, :cond_0

    #@18
    iget-object v3, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1a
    if-eqz v3, :cond_0

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 1418
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@20
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@23
    move-result-object v0

    #@24
    .line 1419
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    #@26
    .line 1420
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    #@29
    .line 1424
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@2b
    if-eqz v3, :cond_1

    #@2d
    .line 1425
    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    #@30
    .line 1412
    :cond_1
    return-void

    #@31
    .line 1416
    :cond_2
    const/4 v1, 0x0

    #@32
    .local v1, "menu":Landroid/view/Menu;
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 472
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@4
    .line 473
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    #@7
    .line 474
    iget-object v1, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@9
    if-ne p1, v0, :cond_0

    #@b
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    #@e
    .line 471
    return-void

    #@f
    .line 474
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 1400
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1402
    .local v0, "state":Landroid/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@f
    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1403
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@15
    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@1d
    .line 1406
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    #@20
    move-result v1

    #@21
    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@23
    .line 1408
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1479
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1480
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d
    .line 1470
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 1448
    .local v0, "action":I
    if-nez v0, :cond_0

    #@8
    .line 1449
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@a
    .line 1452
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@c
    if-nez v2, :cond_1

    #@e
    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v1

    #@12
    .line 1454
    .local v1, "handled":Z
    if-nez v0, :cond_1

    #@14
    if-eqz v1, :cond_4

    #@16
    .line 1459
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    if-eq v0, v4, :cond_2

    #@18
    const/4 v2, 0x3

    #@19
    if-ne v0, v2, :cond_3

    #@1b
    .line 1460
    :cond_2
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@1d
    .line 1463
    :cond_3
    return v4

    #@1e
    .line 1455
    .restart local v1    # "handled":Z
    :cond_4
    iput-boolean v4, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@20
    goto :goto_0
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    #@0
    .prologue
    .line 2087
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 2089
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    #@6
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@8
    .line 2090
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 2091
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    #@12
    .line 2092
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@14
    const/4 v5, 0x2

    #@15
    if-eq v4, v5, :cond_0

    #@17
    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@19
    if-eq v0, v4, :cond_0

    #@1b
    .line 2093
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->removeViewAt(I)V

    #@1e
    .line 2094
    iget-object v4, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 2089
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_0

    #@26
    .line 2086
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    #@0
    .prologue
    .line 2118
    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    #@2
    .line 2119
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@5
    .line 2117
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    #@0
    .prologue
    .line 1277
    if-gez p1, :cond_0

    #@2
    .line 1278
    const/high16 p1, -0x80000000

    #@4
    .line 1280
    :cond_0
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    #@6
    if-eq p1, v0, :cond_1

    #@8
    .line 1281
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    #@a
    .line 1282
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1283
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@13
    .line 1276
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    #@0
    .prologue
    .line 1235
    if-gez p1, :cond_0

    #@2
    .line 1236
    const/high16 p1, -0x80000000

    #@4
    .line 1238
    :cond_0
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@6
    if-eq p1, v0, :cond_1

    #@8
    .line 1239
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    #@a
    .line 1240
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1241
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@13
    .line 1234
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    #@0
    .prologue
    .line 1159
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    #@3
    .line 1160
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    #@8
    .line 1158
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    #@0
    .prologue
    .line 1096
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    #@3
    .line 1097
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    #@8
    .line 1095
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 486
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 603
    if-eqz p1, :cond_2

    #@2
    .line 604
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    #@5
    .line 605
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@7
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 606
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@13
    .line 612
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 613
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 602
    :cond_1
    return-void

    #@1d
    .line 608
    :cond_2
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@23
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 609
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2b
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@2e
    .line 610
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@30
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@35
    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    #@b
    .line 636
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 650
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    #@9
    .line 652
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 653
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@12
    .line 648
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 530
    if-nez p1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 531
    return-void

    #@9
    .line 534
    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    #@c
    .line 535
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@e
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    move-result-object v0

    #@12
    .line 536
    .local v0, "oldMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    #@14
    .line 537
    return-void

    #@15
    .line 540
    :cond_1
    if-eqz v0, :cond_2

    #@17
    .line 541
    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@1c
    .line 542
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@21
    .line 545
    :cond_2
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@23
    if-nez v1, :cond_3

    #@25
    .line 546
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@27
    invoke-direct {v1, p0, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V

    #@2a
    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@2c
    .line 549
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@2f
    .line 550
    if-eqz p1, :cond_4

    #@31
    .line 551
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@33
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@36
    .line 552
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@38
    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@3a
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@3d
    .line 559
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@3f
    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@41
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    #@44
    .line 560
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@46
    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    #@49
    .line 561
    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@4b
    .line 529
    return-void

    #@4c
    .line 554
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@4e
    invoke-virtual {p2, v1, v3}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@51
    .line 555
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@53
    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@55
    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@58
    .line 556
    invoke-virtual {p2, v4}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    #@5b
    .line 557
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@5d
    invoke-virtual {v1, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    #@60
    goto :goto_0
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 2127
    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 2128
    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@4
    .line 2129
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2130
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@d
    .line 2126
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 885
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@d
    .line 884
    return-void

    #@e
    .line 885
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 900
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    #@9
    .line 902
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 903
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@12
    .line 898
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 921
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 940
    if-eqz p1, :cond_2

    #@2
    .line 941
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    #@5
    .line 942
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@7
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 943
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@13
    .line 949
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 950
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 939
    :cond_1
    return-void

    #@1d
    .line 945
    :cond_2
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@23
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 946
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2b
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@2e
    .line 947
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@30
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@35
    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 976
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    #@3
    .line 977
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8
    .line 975
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@0
    .prologue
    .line 1074
    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@2
    .line 1073
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1008
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    #@3
    .line 1009
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 1007
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 342
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 343
    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@6
    .line 344
    if-nez p1, :cond_1

    #@8
    .line 345
    iget-object v0, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    #@a
    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@c
    .line 341
    :cond_0
    :goto_0
    return-void

    #@d
    .line 347
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@f
    iget-object v1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    #@11
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@14
    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@16
    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@b
    .line 776
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_4

    #@6
    .line 789
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 790
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 791
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    #@10
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@15
    .line 792
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    #@1a
    .line 793
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@21
    .line 794
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 795
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@27
    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@2c
    .line 797
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 798
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@32
    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@37
    .line 801
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@39
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 802
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@41
    const/4 v2, 0x1

    #@42
    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@45
    .line 808
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 809
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4e
    .line 811
    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    #@50
    .line 787
    return-void

    #@51
    .line 804
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@53
    if-eqz v1, :cond_2

    #@55
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@57
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 805
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@5f
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@62
    .line 806
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@64
    iget-object v2, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@69
    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 830
    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@2
    .line 831
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 832
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@b
    .line 829
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 854
    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    #@2
    .line 855
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 856
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@b
    .line 853
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@b
    .line 721
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 734
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_4

    #@6
    .line 735
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 736
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 737
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    #@10
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@15
    .line 738
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    #@1a
    .line 739
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@21
    .line 740
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 741
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@27
    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@2c
    .line 743
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 744
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@32
    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@37
    .line 747
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@39
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 748
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@41
    const/4 v2, 0x1

    #@42
    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@45
    .line 754
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 755
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4e
    .line 757
    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    #@50
    .line 733
    return-void

    #@51
    .line 750
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@53
    if-eqz v1, :cond_2

    #@55
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@57
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 751
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@5f
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@62
    .line 752
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@64
    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@69
    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 375
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@2
    .line 376
    iput p2, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@4
    .line 377
    iput p3, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@6
    .line 378
    iput p4, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@8
    .line 380
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@b
    .line 374
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    #@0
    .prologue
    .line 466
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@2
    .line 467
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@5
    .line 465
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    #@0
    .prologue
    .line 444
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@2
    .line 446
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@5
    .line 443
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    #@0
    .prologue
    .line 400
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@2
    .line 402
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@5
    .line 399
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    #@0
    .prologue
    .line 422
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@2
    .line 424
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@5
    .line 421
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 819
    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@2
    .line 820
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 821
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@b
    .line 818
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 842
    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    #@2
    .line 843
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 844
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@b
    .line 841
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 516
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

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

.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$OnMenuItemClickListener;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$SavedState;,
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$1;,
        Landroid/widget/Toolbar$2;
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

.field private final mContentInsets:Landroid/widget/RtlSpacingHelper;

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
    .line 183
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 187
    const v0, 0x10104aa

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 190
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
    .line 195
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 135
    new-instance v20, Landroid/widget/RtlSpacingHelper;

    #@5
    invoke-direct/range {v20 .. v20}, Landroid/widget/RtlSpacingHelper;-><init>()V

    #@8
    move-object/from16 v0, v20

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@e
    .line 137
    const v20, 0x800013

    #@11
    move/from16 v0, v20

    #@13
    move-object/from16 v1, p0

    #@15
    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    #@17
    .line 148
    new-instance v20, Ljava/util/ArrayList;

    #@19
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@1c
    move-object/from16 v0, v20

    #@1e
    move-object/from16 v1, p0

    #@20
    iput-object v0, v1, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@22
    .line 151
    new-instance v20, Ljava/util/ArrayList;

    #@24
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@27
    move-object/from16 v0, v20

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@2d
    .line 153
    const/16 v20, 0x2

    #@2f
    move/from16 v0, v20

    #@31
    new-array v0, v0, [I

    #@33
    move-object/from16 v20, v0

    #@35
    move-object/from16 v0, v20

    #@37
    move-object/from16 v1, p0

    #@39
    iput-object v0, v1, Landroid/widget/Toolbar;->mTempMargins:[I

    #@3b
    .line 158
    new-instance v20, Landroid/widget/Toolbar$1;

    #@3d
    move-object/from16 v0, v20

    #@3f
    move-object/from16 v1, p0

    #@41
    invoke-direct {v0, v1}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    #@44
    .line 157
    move-object/from16 v0, v20

    #@46
    move-object/from16 v1, p0

    #@48
    iput-object v0, v1, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@4a
    .line 176
    new-instance v20, Landroid/widget/Toolbar$2;

    #@4c
    move-object/from16 v0, v20

    #@4e
    move-object/from16 v1, p0

    #@50
    invoke-direct {v0, v1}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    #@53
    move-object/from16 v0, v20

    #@55
    move-object/from16 v1, p0

    #@57
    iput-object v0, v1, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@59
    .line 197
    sget-object v20, Lcom/android/internal/R$styleable;->Toolbar:[I

    #@5b
    move-object/from16 v0, p1

    #@5d
    move-object/from16 v1, p2

    #@5f
    move-object/from16 v2, v20

    #@61
    move/from16 v3, p3

    #@63
    move/from16 v4, p4

    #@65
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@68
    move-result-object v5

    #@69
    .line 200
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x4

    #@6b
    const/16 v21, 0x0

    #@6d
    move/from16 v0, v20

    #@6f
    move/from16 v1, v21

    #@71
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@74
    move-result v20

    #@75
    move/from16 v0, v20

    #@77
    move-object/from16 v1, p0

    #@79
    iput v0, v1, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@7b
    .line 201
    const/16 v20, 0x5

    #@7d
    const/16 v21, 0x0

    #@7f
    move/from16 v0, v20

    #@81
    move/from16 v1, v21

    #@83
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@86
    move-result v20

    #@87
    move/from16 v0, v20

    #@89
    move-object/from16 v1, p0

    #@8b
    iput v0, v1, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@8d
    .line 202
    const/16 v20, 0x17

    #@8f
    const/16 v21, 0x0

    #@91
    move/from16 v0, v20

    #@93
    move/from16 v1, v21

    #@95
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@98
    move-result v20

    #@99
    move/from16 v0, v20

    #@9b
    move-object/from16 v1, p0

    #@9d
    iput v0, v1, Landroid/widget/Toolbar;->mNavButtonStyle:I

    #@9f
    .line 203
    move-object/from16 v0, p0

    #@a1
    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    #@a3
    move/from16 v20, v0

    #@a5
    const/16 v21, 0x0

    #@a7
    move/from16 v0, v21

    #@a9
    move/from16 v1, v20

    #@ab
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@ae
    move-result v20

    #@af
    move/from16 v0, v20

    #@b1
    move-object/from16 v1, p0

    #@b3
    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    #@b5
    .line 204
    const/16 v20, 0x18

    #@b7
    const/16 v21, 0x30

    #@b9
    move/from16 v0, v20

    #@bb
    move/from16 v1, v21

    #@bd
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@c0
    move-result v20

    #@c1
    move/from16 v0, v20

    #@c3
    move-object/from16 v1, p0

    #@c5
    iput v0, v1, Landroid/widget/Toolbar;->mButtonGravity:I

    #@c7
    .line 206
    const/16 v20, 0x11

    #@c9
    const/16 v21, 0x0

    #@cb
    move/from16 v0, v20

    #@cd
    move/from16 v1, v21

    #@cf
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@d2
    move-result v20

    #@d3
    .line 205
    move/from16 v0, v20

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@d9
    move/from16 v0, v20

    #@db
    move-object/from16 v1, p0

    #@dd
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@df
    move/from16 v0, v20

    #@e1
    move-object/from16 v1, p0

    #@e3
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@e5
    move/from16 v0, v20

    #@e7
    move-object/from16 v1, p0

    #@e9
    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@eb
    .line 208
    const/16 v20, 0x12

    #@ed
    const/16 v21, -0x1

    #@ef
    move/from16 v0, v20

    #@f1
    move/from16 v1, v21

    #@f3
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@f6
    move-result v14

    #@f7
    .line 209
    .local v14, "marginStart":I
    if-ltz v14, :cond_0

    #@f9
    .line 210
    move-object/from16 v0, p0

    #@fb
    iput v14, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@fd
    .line 213
    :cond_0
    const/16 v20, 0x13

    #@ff
    const/16 v21, -0x1

    #@101
    move/from16 v0, v20

    #@103
    move/from16 v1, v21

    #@105
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@108
    move-result v13

    #@109
    .line 214
    .local v13, "marginEnd":I
    if-ltz v13, :cond_1

    #@10b
    .line 215
    move-object/from16 v0, p0

    #@10d
    iput v13, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@10f
    .line 218
    :cond_1
    const/16 v20, 0x14

    #@111
    const/16 v21, -0x1

    #@113
    move/from16 v0, v20

    #@115
    move/from16 v1, v21

    #@117
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@11a
    move-result v15

    #@11b
    .line 219
    .local v15, "marginTop":I
    if-ltz v15, :cond_2

    #@11d
    .line 220
    move-object/from16 v0, p0

    #@11f
    iput v15, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@121
    .line 223
    :cond_2
    const/16 v20, 0x15

    #@123
    .line 224
    const/16 v21, -0x1

    #@125
    .line 223
    move/from16 v0, v20

    #@127
    move/from16 v1, v21

    #@129
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@12c
    move-result v12

    #@12d
    .line 225
    .local v12, "marginBottom":I
    if-ltz v12, :cond_3

    #@12f
    .line 226
    move-object/from16 v0, p0

    #@131
    iput v12, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@133
    .line 229
    :cond_3
    const/16 v20, 0x16

    #@135
    const/16 v21, -0x1

    #@137
    move/from16 v0, v20

    #@139
    move/from16 v1, v21

    #@13b
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@13e
    move-result v20

    #@13f
    move/from16 v0, v20

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@145
    .line 232
    const/16 v20, 0x6

    #@147
    .line 233
    const/high16 v21, -0x80000000

    #@149
    .line 232
    move/from16 v0, v20

    #@14b
    move/from16 v1, v21

    #@14d
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@150
    move-result v9

    #@151
    .line 235
    .local v9, "contentInsetStart":I
    const/16 v20, 0x7

    #@153
    .line 236
    const/high16 v21, -0x80000000

    #@155
    .line 235
    move/from16 v0, v20

    #@157
    move/from16 v1, v21

    #@159
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@15c
    move-result v6

    #@15d
    .line 238
    .local v6, "contentInsetEnd":I
    const/16 v20, 0x8

    #@15f
    const/16 v21, 0x0

    #@161
    move/from16 v0, v20

    #@163
    move/from16 v1, v21

    #@165
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@168
    move-result v7

    #@169
    .line 240
    .local v7, "contentInsetLeft":I
    const/16 v20, 0x9

    #@16b
    const/16 v21, 0x0

    #@16d
    move/from16 v0, v20

    #@16f
    move/from16 v1, v21

    #@171
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@174
    move-result v8

    #@175
    .line 242
    .local v8, "contentInsetRight":I
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@179
    move-object/from16 v20, v0

    #@17b
    move-object/from16 v0, v20

    #@17d
    invoke-virtual {v0, v7, v8}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    #@180
    .line 244
    const/high16 v20, -0x80000000

    #@182
    move/from16 v0, v20

    #@184
    if-ne v9, v0, :cond_4

    #@186
    .line 245
    const/high16 v20, -0x80000000

    #@188
    move/from16 v0, v20

    #@18a
    if-eq v6, v0, :cond_5

    #@18c
    .line 246
    :cond_4
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@190
    move-object/from16 v20, v0

    #@192
    move-object/from16 v0, v20

    #@194
    invoke-virtual {v0, v9, v6}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    #@197
    .line 249
    :cond_5
    const/16 v20, 0x19

    #@199
    move/from16 v0, v20

    #@19b
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19e
    move-result-object v20

    #@19f
    move-object/from16 v0, v20

    #@1a1
    move-object/from16 v1, p0

    #@1a3
    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@1a5
    .line 250
    const/16 v20, 0xd

    #@1a7
    move/from16 v0, v20

    #@1a9
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1ac
    move-result-object v20

    #@1ad
    move-object/from16 v0, v20

    #@1af
    move-object/from16 v1, p0

    #@1b1
    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    #@1b3
    .line 252
    const/16 v20, 0x1

    #@1b5
    move/from16 v0, v20

    #@1b7
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1ba
    move-result-object v19

    #@1bb
    .line 253
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1be
    move-result v20

    #@1bf
    if-nez v20, :cond_6

    #@1c1
    .line 254
    move-object/from16 v0, p0

    #@1c3
    move-object/from16 v1, v19

    #@1c5
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@1c8
    .line 257
    :cond_6
    const/16 v20, 0x3

    #@1ca
    move/from16 v0, v20

    #@1cc
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1cf
    move-result-object v18

    #@1d0
    .line 258
    .local v18, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d3
    move-result v20

    #@1d4
    if-nez v20, :cond_7

    #@1d6
    .line 259
    move-object/from16 v0, p0

    #@1d8
    move-object/from16 v1, v18

    #@1da
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@1dd
    .line 263
    :cond_7
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    #@1e1
    move-object/from16 v20, v0

    #@1e3
    move-object/from16 v0, v20

    #@1e5
    move-object/from16 v1, p0

    #@1e7
    iput-object v0, v1, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@1e9
    .line 264
    const/16 v20, 0xa

    #@1eb
    const/16 v21, 0x0

    #@1ed
    move/from16 v0, v20

    #@1ef
    move/from16 v1, v21

    #@1f1
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1f4
    move-result v20

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    move/from16 v1, v20

    #@1f9
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    #@1fc
    .line 266
    const/16 v20, 0xb

    #@1fe
    move/from16 v0, v20

    #@200
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@203
    move-result-object v17

    #@204
    .line 267
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_8

    #@206
    .line 268
    move-object/from16 v0, p0

    #@208
    move-object/from16 v1, v17

    #@20a
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@20d
    .line 272
    :cond_8
    const/16 v20, 0xc

    #@20f
    .line 271
    move/from16 v0, v20

    #@211
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@214
    move-result-object v16

    #@215
    .line 273
    .local v16, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@218
    move-result v20

    #@219
    if-nez v20, :cond_9

    #@21b
    .line 274
    move-object/from16 v0, p0

    #@21d
    move-object/from16 v1, v16

    #@21f
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@222
    .line 277
    :cond_9
    const/16 v20, 0x2

    #@224
    move/from16 v0, v20

    #@226
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@229
    move-result-object v10

    #@22a
    .line 278
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_a

    #@22c
    .line 279
    move-object/from16 v0, p0

    #@22e
    invoke-virtual {v0, v10}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@231
    .line 282
    :cond_a
    const/16 v20, 0x10

    #@233
    move/from16 v0, v20

    #@235
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@238
    move-result-object v11

    #@239
    .line 283
    .local v11, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23c
    move-result v20

    #@23d
    if-nez v20, :cond_b

    #@23f
    .line 284
    move-object/from16 v0, p0

    #@241
    invoke-virtual {v0, v11}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    #@244
    .line 287
    :cond_b
    const/16 v20, 0xe

    #@246
    move/from16 v0, v20

    #@248
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@24b
    move-result v20

    #@24c
    if-eqz v20, :cond_c

    #@24e
    .line 288
    const/16 v20, 0xe

    #@250
    const/16 v21, -0x1

    #@252
    move/from16 v0, v20

    #@254
    move/from16 v1, v21

    #@256
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@259
    move-result v20

    #@25a
    move-object/from16 v0, p0

    #@25c
    move/from16 v1, v20

    #@25e
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    #@261
    .line 291
    :cond_c
    const/16 v20, 0xf

    #@263
    move/from16 v0, v20

    #@265
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@268
    move-result v20

    #@269
    if-eqz v20, :cond_d

    #@26b
    .line 292
    const/16 v20, 0xf

    #@26d
    const/16 v21, -0x1

    #@26f
    move/from16 v0, v20

    #@271
    move/from16 v1, v21

    #@273
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@276
    move-result v20

    #@277
    move-object/from16 v0, p0

    #@279
    move/from16 v1, v20

    #@27b
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    #@27e
    .line 294
    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@281
    .line 194
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
    .line 1675
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
    .line 1676
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@b
    move-result v2

    #@c
    .line 1677
    .local v2, "childCount":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@f
    move-result v6

    #@10
    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@13
    move-result v0

    #@14
    .line 1679
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@17
    .line 1681
    if-eqz v4, :cond_2

    #@19
    .line 1682
    add-int/lit8 v3, v2, -0x1

    #@1b
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    #@1d
    .line 1683
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    .line 1684
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    #@27
    .line 1685
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
    .line 1686
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@33
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    #@36
    move-result v6

    #@37
    if-ne v6, v0, :cond_0

    #@39
    .line 1687
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    .line 1682
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 1675
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
    .line 1691
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    :cond_2
    const/4 v3, 0x0

    #@42
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    #@44
    .line 1692
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v1

    #@48
    .line 1693
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    #@4e
    .line 1694
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
    .line 1695
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@5a
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    #@5d
    move-result v6

    #@5e
    if-ne v6, v0, :cond_3

    #@60
    .line 1696
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@63
    .line 1691
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@65
    goto :goto_2

    #@66
    .line 1674
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
    .line 1065
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    .line 1067
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    #@6
    .line 1068
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@9
    move-result-object v0

    #@a
    .line 1074
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    #@b
    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@d
    .line 1076
    if-eqz p2, :cond_2

    #@f
    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 1077
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 1078
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 1064
    :goto_1
    return-void

    #@1c
    .line 1069
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_1

    #@22
    .line 1070
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
    .line 1072
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    #@2a
    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    #@2b
    .line 1080
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
    .line 1047
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1048
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
    .line 1049
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@15
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 1050
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@1c
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@21
    .line 1051
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@24
    move-result-object v0

    #@25
    .line 1052
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
    .line 1053
    const/4 v1, 0x2

    #@30
    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@32
    .line 1054
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@34
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@37
    .line 1055
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@39
    new-instance v2, Landroid/widget/Toolbar$3;

    #@3b
    invoke-direct {v2, p0}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    #@3e
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@41
    .line 1046
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 521
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
    .line 519
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 868
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    #@4
    .line 869
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 871
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@e
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    .line 872
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@16
    if-nez v1, :cond_0

    #@18
    .line 873
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1a
    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V

    #@1d
    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1f
    .line 875
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    #@25
    .line 876
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@27
    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@29
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@2c
    .line 867
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    #@0
    .prologue
    .line 881
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 882
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
    .line 883
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@11
    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@13
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    #@16
    .line 884
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@18
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@1a
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    #@1d
    .line 885
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@1f
    iget-object v2, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@21
    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@26
    .line 886
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@29
    move-result-object v0

    #@2a
    .line 887
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
    .line 888
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@36
    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@39
    .line 889
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@3b
    const/4 v2, 0x0

    #@3c
    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@3f
    .line 880
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
    .line 1038
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1039
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
    .line 1040
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    #@16
    move-result-object v0

    #@17
    .line 1041
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
    .line 1042
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@23
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@26
    .line 1037
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1703
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@3
    move-result v2

    #@4
    .line 1704
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    .line 1705
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    #@a
    .line 1706
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    #@d
    .line 1712
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
    .line 1710
    :pswitch_1
    return v1

    #@13
    .line 1712
    :cond_0
    const/4 v3, 0x3

    #@14
    goto :goto_0

    #@15
    .line 1706
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
    .line 1624
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v3

    #@5
    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    #@7
    .line 1625
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@a
    move-result v1

    #@b
    .line 1626
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    #@d
    sub-int v9, v1, p2

    #@f
    div-int/lit8 v0, v9, 0x2

    #@11
    .line 1627
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
    .line 1637
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@1d
    move-result v5

    #@1e
    .line 1638
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    #@21
    move-result v4

    #@22
    .line 1639
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    #@25
    move-result v2

    #@26
    .line 1640
    .local v2, "height":I
    sub-int v9, v2, v5

    #@28
    sub-int v6, v9, v4

    #@2a
    .line 1641
    .local v6, "space":I
    sub-int v9, v6, v1

    #@2c
    div-int/lit8 v7, v9, 0x2

    #@2e
    .line 1642
    .local v7, "spaceAbove":I
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@30
    if-ge v7, v9, :cond_2

    #@32
    .line 1643
    iget v7, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@34
    .line 1651
    :cond_0
    :goto_1
    add-int v9, v5, v7

    #@36
    return v9

    #@37
    .line 1626
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
    .line 1629
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@3c
    move-result v9

    #@3d
    sub-int/2addr v9, v0

    #@3e
    return v9

    #@3f
    .line 1632
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
    .line 1633
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@4b
    .line 1632
    sub-int/2addr v9, v10

    #@4c
    sub-int/2addr v9, v0

    #@4d
    return v9

    #@4e
    .line 1645
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
    .line 1647
    .local v8, "spaceBelow":I
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@56
    if-ge v8, v9, :cond_0

    #@58
    .line 1648
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
    .line 1627
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
    .line 1656
    and-int/lit8 v0, p1, 0x70

    #@2
    .line 1657
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 1663
    iget v1, p0, Landroid/widget/Toolbar;->mGravity:I

    #@7
    and-int/lit8 v1, v1, 0x70

    #@9
    return v1

    #@a
    .line 1661
    :sswitch_0
    return v0

    #@b
    .line 1657
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
    .line 1721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1722
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
    .line 894
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
    .line 1726
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1727
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
    .line 1579
    aget v0, p2, v12

    #@3
    .line 1580
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    #@4
    aget v1, p2, v11

    #@6
    .line 1581
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    #@7
    .line 1582
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 1583
    .local v2, "count":I
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@e
    .line 1584
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v9

    #@12
    check-cast v9, Landroid/view/View;

    #@14
    .line 1585
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    #@1a
    .line 1586
    .local v6, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    #@1c
    sub-int v4, v11, v0

    #@1e
    .line 1587
    .local v4, "l":I
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    #@20
    sub-int v7, v11, v1

    #@22
    .line 1588
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v5

    #@26
    .line 1589
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v8

    #@2a
    .line 1590
    .local v8, "rightMargin":I
    neg-int v11, v4

    #@2b
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v0

    #@2f
    .line 1591
    neg-int v11, v7

    #@30
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v1

    #@34
    .line 1592
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
    .line 1583
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1594
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
    .line 1793
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
    .line 1759
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
    .line 1599
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    #@7
    .line 1600
    .local v2, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    #@9
    aget v5, p3, v6

    #@b
    sub-int v1, v4, v5

    #@d
    .line 1601
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v4

    #@11
    add-int/2addr p2, v4

    #@12
    .line 1602
    neg-int v4, v1

    #@13
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v4

    #@17
    aput v4, p3, v6

    #@19
    .line 1603
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    #@1c
    move-result v3

    #@1d
    .line 1604
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@20
    move-result v0

    #@21
    .line 1605
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
    .line 1606
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    #@2d
    add-int/2addr v4, v0

    #@2e
    add-int/2addr p2, v4

    #@2f
    .line 1607
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
    .line 1612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    #@8
    .line 1613
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    #@a
    aget v5, p3, v7

    #@c
    sub-int v2, v4, v5

    #@e
    .line 1614
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v4

    #@12
    sub-int/2addr p2, v4

    #@13
    .line 1615
    neg-int v4, v2

    #@14
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v4

    #@18
    aput v4, p3, v7

    #@1a
    .line 1616
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    #@1d
    move-result v3

    #@1e
    .line 1617
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@21
    move-result v0

    #@22
    .line 1618
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
    .line 1619
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    #@2e
    add-int/2addr v4, v0

    #@2f
    sub-int/2addr p2, v4

    #@30
    .line 1620
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
    .line 1197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v5

    #@4
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1199
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@8
    const/4 v9, 0x0

    #@9
    aget v9, p6, v9

    #@b
    sub-int v3, v8, v9

    #@d
    .line 1200
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@f
    const/4 v9, 0x1

    #@10
    aget v9, p6, v9

    #@12
    sub-int v6, v8, v9

    #@14
    .line 1201
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    #@15
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v4

    #@19
    .line 1202
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    #@1a
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v7

    #@1e
    .line 1203
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    #@20
    .line 1204
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
    .line 1205
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
    .line 1208
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
    .line 1207
    invoke-static {p2, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@3e
    move-result v1

    #@3f
    .line 1210
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
    .line 1211
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@4d
    .line 1209
    invoke-static {p4, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@50
    move-result v0

    #@51
    .line 1213
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    #@54
    .line 1214
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
    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    .line 1175
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
    .line 1176
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@16
    .line 1174
    invoke-static {p2, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@19
    move-result v2

    #@1a
    .line 1178
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
    .line 1179
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@28
    .line 1177
    invoke-static {p4, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    #@2b
    move-result v1

    #@2c
    .line 1181
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@2f
    move-result v0

    #@30
    .line 1182
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    #@32
    if-ltz p6, :cond_0

    #@34
    .line 1183
    if-eqz v0, :cond_1

    #@36
    .line 1184
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@39
    move-result v5

    #@3a
    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v4

    #@3e
    .line 1186
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@41
    move-result v1

    #@42
    .line 1188
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    #@45
    .line 1171
    return-void

    #@46
    .line 1185
    :cond_1
    move v4, p6

    #@47
    .restart local v4    # "size":I
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    #@0
    .prologue
    .line 1116
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 1117
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 1115
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1221
    iget-boolean v3, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    #@3
    if-nez v3, :cond_0

    #@5
    return v4

    #@6
    .line 1223
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 1224
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@d
    .line 1225
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 1226
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
    .line 1227
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@20
    move-result v3

    #@21
    if-lez v3, :cond_1

    #@23
    .line 1228
    return v4

    #@24
    .line 1224
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1231
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
    .line 1717
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
    .line 1784
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1786
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 1787
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
    .line 1786
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1789
    :cond_0
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 1783
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 345
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
    .line 1755
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
    .line 550
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@2
    if-nez v1, :cond_1

    #@4
    const/4 v0, 0x0

    #@5
    .line 552
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 553
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    #@a
    .line 549
    :cond_0
    return-void

    #@b
    .line 551
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@d
    iget-object v0, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 422
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    #@9
    .line 420
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 1749
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
    .line 1750
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
    .line 1731
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
    .line 1736
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
    .line 1732
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
    .line 1737
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1738
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@6
    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 1739
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1740
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@12
    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    #@14
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 1741
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1742
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    #@1e
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@20
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@23
    return-object v0

    #@24
    .line 1744
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
    .line 976
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    #@0
    .prologue
    .line 1015
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    #@0
    .prologue
    .line 957
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 478
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
    .line 516
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
    .line 842
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    #@3
    .line 843
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
    .line 724
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
    .line 816
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

.method getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 1

    #@0
    .prologue
    .line 1819
    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 863
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    #@3
    .line 864
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
    .line 1823
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@2
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .locals 2

    #@0
    .prologue
    .line 1764
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1765
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    #@a
    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@c
    .line 1767
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
    .line 536
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 537
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@7
    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 536
    :cond_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 378
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
    .line 906
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
    .line 905
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 360
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
    .line 355
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
    .line 428
    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 429
    return v4

    #@6
    .line 432
    :cond_0
    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@b
    move-result-object v2

    #@c
    .line 433
    .local v2, "titleLayout":Landroid/text/Layout;
    if-nez v2, :cond_1

    #@e
    .line 434
    return v4

    #@f
    .line 437
    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    #@12
    move-result v1

    #@13
    .line 438
    .local v1, "lineCount":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@16
    .line 439
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    #@19
    move-result v3

    #@1a
    if-lez v3, :cond_2

    #@1c
    .line 440
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 438
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 443
    :cond_3
    return v4
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 1122
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 1123
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@8
    .line 1121
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 48
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1364
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    #@3
    move-result v46

    #@4
    const/16 v47, 0x1

    #@6
    move/from16 v0, v46

    #@8
    move/from16 v1, v47

    #@a
    if-ne v0, v1, :cond_c

    #@c
    const/16 v16, 0x1

    #@e
    .line 1365
    .local v16, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getWidth()I

    #@11
    move-result v45

    #@12
    .line 1366
    .local v45, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    #@15
    move-result v14

    #@16
    .line 1367
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    #@19
    move-result v24

    #@1a
    .line 1368
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    #@1d
    move-result v25

    #@1e
    .line 1369
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@21
    move-result v26

    #@22
    .line 1370
    .local v26, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    #@25
    move-result v23

    #@26
    .line 1371
    .local v23, "paddingBottom":I
    move/from16 v20, v24

    #@28
    .line 1372
    .local v20, "left":I
    sub-int v29, v45, v25

    #@2a
    .line 1374
    .local v29, "right":I
    move-object/from16 v0, p0

    #@2c
    iget-object v12, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    #@2e
    .line 1375
    .local v12, "collapsingMargins":[I
    const/16 v46, 0x0

    #@30
    const/16 v47, 0x1

    #@32
    aput v46, v12, v47

    #@34
    const/16 v46, 0x0

    #@36
    const/16 v47, 0x0

    #@38
    aput v46, v12, v47

    #@3a
    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    #@3d
    move-result v5

    #@3e
    .line 1380
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@42
    move-object/from16 v46, v0

    #@44
    move-object/from16 v0, p0

    #@46
    move-object/from16 v1, v46

    #@48
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@4b
    move-result v46

    #@4c
    if-eqz v46, :cond_0

    #@4e
    .line 1381
    if-eqz v16, :cond_d

    #@50
    .line 1382
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@54
    move-object/from16 v46, v0

    #@56
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, v46

    #@5a
    move/from16 v2, v29

    #@5c
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@5f
    move-result v29

    #@60
    .line 1390
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@64
    move-object/from16 v46, v0

    #@66
    move-object/from16 v0, p0

    #@68
    move-object/from16 v1, v46

    #@6a
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@6d
    move-result v46

    #@6e
    if-eqz v46, :cond_1

    #@70
    .line 1391
    if-eqz v16, :cond_e

    #@72
    .line 1392
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@76
    move-object/from16 v46, v0

    #@78
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, v46

    #@7c
    move/from16 v2, v29

    #@7e
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@81
    move-result v29

    #@82
    .line 1400
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@86
    move-object/from16 v46, v0

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v46

    #@8c
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@8f
    move-result v46

    #@90
    if-eqz v46, :cond_2

    #@92
    .line 1401
    if-eqz v16, :cond_f

    #@94
    .line 1402
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@98
    move-object/from16 v46, v0

    #@9a
    move-object/from16 v0, p0

    #@9c
    move-object/from16 v1, v46

    #@9e
    move/from16 v2, v20

    #@a0
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@a3
    move-result v20

    #@a4
    .line 1410
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetLeft()I

    #@a7
    move-result v46

    #@a8
    sub-int v46, v46, v20

    #@aa
    const/16 v47, 0x0

    #@ac
    move/from16 v0, v47

    #@ae
    move/from16 v1, v46

    #@b0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b3
    move-result v46

    #@b4
    const/16 v47, 0x0

    #@b6
    aput v46, v12, v47

    #@b8
    .line 1411
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetRight()I

    #@bb
    move-result v46

    #@bc
    sub-int v47, v45, v25

    #@be
    sub-int v47, v47, v29

    #@c0
    sub-int v46, v46, v47

    #@c2
    const/16 v47, 0x0

    #@c4
    move/from16 v0, v47

    #@c6
    move/from16 v1, v46

    #@c8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@cb
    move-result v46

    #@cc
    const/16 v47, 0x1

    #@ce
    aput v46, v12, v47

    #@d0
    .line 1412
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetLeft()I

    #@d3
    move-result v46

    #@d4
    move/from16 v0, v20

    #@d6
    move/from16 v1, v46

    #@d8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@db
    move-result v20

    #@dc
    .line 1413
    sub-int v46, v45, v25

    #@de
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetRight()I

    #@e1
    move-result v47

    #@e2
    sub-int v46, v46, v47

    #@e4
    move/from16 v0, v29

    #@e6
    move/from16 v1, v46

    #@e8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@eb
    move-result v29

    #@ec
    .line 1415
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@f0
    move-object/from16 v46, v0

    #@f2
    move-object/from16 v0, p0

    #@f4
    move-object/from16 v1, v46

    #@f6
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@f9
    move-result v46

    #@fa
    if-eqz v46, :cond_3

    #@fc
    .line 1416
    if-eqz v16, :cond_10

    #@fe
    .line 1417
    move-object/from16 v0, p0

    #@100
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@102
    move-object/from16 v46, v0

    #@104
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, v46

    #@108
    move/from16 v2, v29

    #@10a
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@10d
    move-result v29

    #@10e
    .line 1425
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@112
    move-object/from16 v46, v0

    #@114
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, v46

    #@118
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@11b
    move-result v46

    #@11c
    if-eqz v46, :cond_4

    #@11e
    .line 1426
    if-eqz v16, :cond_11

    #@120
    .line 1427
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@124
    move-object/from16 v46, v0

    #@126
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, v46

    #@12a
    move/from16 v2, v29

    #@12c
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@12f
    move-result v29

    #@130
    .line 1435
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@134
    move-object/from16 v46, v0

    #@136
    move-object/from16 v0, p0

    #@138
    move-object/from16 v1, v46

    #@13a
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@13d
    move-result v18

    #@13e
    .line 1436
    .local v18, "layoutTitle":Z
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@142
    move-object/from16 v46, v0

    #@144
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v46

    #@148
    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    #@14b
    move-result v17

    #@14c
    .line 1437
    .local v17, "layoutSubtitle":Z
    const/16 v39, 0x0

    #@14e
    .line 1438
    .local v39, "titleHeight":I
    if-eqz v18, :cond_5

    #@150
    .line 1439
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@154
    move-object/from16 v46, v0

    #@156
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@159
    move-result-object v22

    #@15a
    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    #@15c
    .line 1440
    .local v22, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    #@15e
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@160
    move/from16 v46, v0

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@166
    move-object/from16 v47, v0

    #@168
    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@16b
    move-result v47

    #@16c
    add-int v46, v46, v47

    #@16e
    move-object/from16 v0, v22

    #@170
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@172
    move/from16 v47, v0

    #@174
    add-int v46, v46, v47

    #@176
    add-int/lit8 v39, v46, 0x0

    #@178
    .line 1442
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_5
    if-eqz v17, :cond_6

    #@17a
    .line 1443
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@17e
    move-object/from16 v46, v0

    #@180
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@183
    move-result-object v22

    #@184
    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    #@186
    .line 1444
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    #@188
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@18a
    move/from16 v46, v0

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@190
    move-object/from16 v47, v0

    #@192
    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@195
    move-result v47

    #@196
    add-int v46, v46, v47

    #@198
    move-object/from16 v0, v22

    #@19a
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@19c
    move/from16 v47, v0

    #@19e
    add-int v46, v46, v47

    #@1a0
    add-int v39, v39, v46

    #@1a2
    .line 1447
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_6
    if-nez v18, :cond_7

    #@1a4
    if-eqz v17, :cond_b

    #@1a6
    .line 1449
    :cond_7
    if-eqz v18, :cond_12

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1ac
    move-object/from16 v43, v0

    #@1ae
    .line 1450
    .local v43, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v17, :cond_13

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1b4
    .line 1451
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b7
    move-result-object v44

    #@1b8
    check-cast v44, Landroid/widget/Toolbar$LayoutParams;

    #@1ba
    .line 1452
    .local v44, "toplp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1bd
    move-result-object v7

    #@1be
    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    #@1c0
    .line 1453
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    if-eqz v18, :cond_14

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1c6
    move-object/from16 v46, v0

    #@1c8
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@1cb
    move-result v46

    #@1cc
    if-lez v46, :cond_14

    #@1ce
    const/16 v38, 0x1

    #@1d0
    .line 1456
    .local v38, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    #@1d2
    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    #@1d4
    move/from16 v46, v0

    #@1d6
    and-int/lit8 v46, v46, 0x70

    #@1d8
    sparse-switch v46, :sswitch_data_0

    #@1db
    .line 1462
    :sswitch_0
    sub-int v46, v14, v26

    #@1dd
    sub-int v31, v46, v23

    #@1df
    .line 1463
    .local v31, "space":I
    sub-int v46, v31, v39

    #@1e1
    div-int/lit8 v32, v46, 0x2

    #@1e3
    .line 1464
    .local v32, "spaceAbove":I
    move-object/from16 v0, v44

    #@1e5
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@1e7
    move/from16 v46, v0

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@1ed
    move/from16 v47, v0

    #@1ef
    add-int v46, v46, v47

    #@1f1
    move/from16 v0, v32

    #@1f3
    move/from16 v1, v46

    #@1f5
    if-ge v0, v1, :cond_16

    #@1f7
    .line 1465
    move-object/from16 v0, v44

    #@1f9
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@1fb
    move/from16 v46, v0

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@201
    move/from16 v47, v0

    #@203
    add-int v32, v46, v47

    #@205
    .line 1474
    :cond_8
    :goto_9
    add-int v42, v26, v32

    #@207
    .line 1481
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v42, "titleTop":I
    :goto_a
    if-eqz v16, :cond_18

    #@209
    .line 1482
    if-eqz v38, :cond_17

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@20f
    move/from16 v46, v0

    #@211
    :goto_b
    const/16 v47, 0x1

    #@213
    aget v47, v12, v47

    #@215
    sub-int v28, v46, v47

    #@217
    .line 1483
    .local v28, "rd":I
    const/16 v46, 0x0

    #@219
    move/from16 v0, v46

    #@21b
    move/from16 v1, v28

    #@21d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@220
    move-result v46

    #@221
    sub-int v29, v29, v46

    #@223
    .line 1484
    move/from16 v0, v28

    #@225
    neg-int v0, v0

    #@226
    move/from16 v46, v0

    #@228
    const/16 v47, 0x0

    #@22a
    move/from16 v0, v47

    #@22c
    move/from16 v1, v46

    #@22e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@231
    move-result v46

    #@232
    const/16 v47, 0x1

    #@234
    aput v46, v12, v47

    #@236
    .line 1485
    move/from16 v41, v29

    #@238
    .line 1486
    .local v41, "titleRight":I
    move/from16 v36, v29

    #@23a
    .line 1488
    .local v36, "subtitleRight":I
    if-eqz v18, :cond_9

    #@23c
    .line 1489
    move-object/from16 v0, p0

    #@23e
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@240
    move-object/from16 v46, v0

    #@242
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@245
    move-result-object v22

    #@246
    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    #@248
    .line 1490
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    #@24a
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@24c
    move-object/from16 v46, v0

    #@24e
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@251
    move-result v46

    #@252
    sub-int v40, v41, v46

    #@254
    .line 1491
    .local v40, "titleLeft":I
    move-object/from16 v0, p0

    #@256
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@258
    move-object/from16 v46, v0

    #@25a
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@25d
    move-result v46

    #@25e
    add-int v37, v42, v46

    #@260
    .line 1492
    .local v37, "titleBottom":I
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@264
    move-object/from16 v46, v0

    #@266
    move-object/from16 v0, v46

    #@268
    move/from16 v1, v40

    #@26a
    move/from16 v2, v42

    #@26c
    move/from16 v3, v41

    #@26e
    move/from16 v4, v37

    #@270
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@273
    .line 1493
    move-object/from16 v0, p0

    #@275
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@277
    move/from16 v46, v0

    #@279
    sub-int v41, v40, v46

    #@27b
    .line 1494
    move-object/from16 v0, v22

    #@27d
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@27f
    move/from16 v46, v0

    #@281
    add-int v42, v37, v46

    #@283
    .line 1496
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v40    # "titleLeft":I
    :cond_9
    if-eqz v17, :cond_a

    #@285
    .line 1497
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@289
    move-object/from16 v46, v0

    #@28b
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@28e
    move-result-object v22

    #@28f
    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    #@291
    .line 1498
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    #@293
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@295
    move/from16 v46, v0

    #@297
    add-int v42, v42, v46

    #@299
    .line 1499
    move-object/from16 v0, p0

    #@29b
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@29d
    move-object/from16 v46, v0

    #@29f
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@2a2
    move-result v46

    #@2a3
    sub-int v35, v36, v46

    #@2a5
    .line 1500
    .local v35, "subtitleLeft":I
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2a9
    move-object/from16 v46, v0

    #@2ab
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@2ae
    move-result v46

    #@2af
    add-int v34, v42, v46

    #@2b1
    .line 1501
    .local v34, "subtitleBottom":I
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2b5
    move-object/from16 v46, v0

    #@2b7
    move-object/from16 v0, v46

    #@2b9
    move/from16 v1, v35

    #@2bb
    move/from16 v2, v42

    #@2bd
    move/from16 v3, v36

    #@2bf
    move/from16 v4, v34

    #@2c1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@2c4
    .line 1502
    move-object/from16 v0, p0

    #@2c6
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@2c8
    move/from16 v46, v0

    #@2ca
    sub-int v36, v36, v46

    #@2cc
    .line 1503
    move-object/from16 v0, v22

    #@2ce
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@2d0
    move/from16 v46, v0

    #@2d2
    add-int v42, v34, v46

    #@2d4
    .line 1505
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v35    # "subtitleLeft":I
    :cond_a
    if-eqz v38, :cond_b

    #@2d6
    .line 1506
    move/from16 v0, v41

    #@2d8
    move/from16 v1, v36

    #@2da
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@2dd
    move-result v29

    #@2de
    .line 1541
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v28    # "rd":I
    .end local v36    # "subtitleRight":I
    .end local v38    # "titleHasWidth":Z
    .end local v41    # "titleRight":I
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_b
    :goto_c
    move-object/from16 v0, p0

    #@2e0
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2e2
    move-object/from16 v46, v0

    #@2e4
    const/16 v47, 0x3

    #@2e6
    move-object/from16 v0, p0

    #@2e8
    move-object/from16 v1, v46

    #@2ea
    move/from16 v2, v47

    #@2ec
    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@2ef
    .line 1542
    move-object/from16 v0, p0

    #@2f1
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@2f3
    move-object/from16 v46, v0

    #@2f5
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    #@2f8
    move-result v21

    #@2f9
    .line 1543
    .local v21, "leftViewsCount":I
    const/4 v15, 0x0

    #@2fa
    .local v15, "i":I
    :goto_d
    move/from16 v0, v21

    #@2fc
    if-ge v15, v0, :cond_1c

    #@2fe
    .line 1544
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@302
    move-object/from16 v46, v0

    #@304
    move-object/from16 v0, v46

    #@306
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@309
    move-result-object v46

    #@30a
    check-cast v46, Landroid/view/View;

    #@30c
    move-object/from16 v0, p0

    #@30e
    move-object/from16 v1, v46

    #@310
    move/from16 v2, v20

    #@312
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@315
    move-result v20

    #@316
    .line 1543
    add-int/lit8 v15, v15, 0x1

    #@318
    goto :goto_d

    #@319
    .line 1364
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v14    # "height":I
    .end local v15    # "i":I
    .end local v16    # "isRtl":Z
    .end local v17    # "layoutSubtitle":Z
    .end local v18    # "layoutTitle":Z
    .end local v20    # "left":I
    .end local v21    # "leftViewsCount":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v26    # "paddingTop":I
    .end local v29    # "right":I
    .end local v39    # "titleHeight":I
    .end local v45    # "width":I
    :cond_c
    const/16 v16, 0x0

    #@31b
    .restart local v16    # "isRtl":Z
    goto/16 :goto_0

    #@31d
    .line 1385
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v14    # "height":I
    .restart local v20    # "left":I
    .restart local v23    # "paddingBottom":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "right":I
    .restart local v45    # "width":I
    :cond_d
    move-object/from16 v0, p0

    #@31f
    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@321
    move-object/from16 v46, v0

    #@323
    move-object/from16 v0, p0

    #@325
    move-object/from16 v1, v46

    #@327
    move/from16 v2, v20

    #@329
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@32c
    move-result v20

    #@32d
    goto/16 :goto_1

    #@32f
    .line 1395
    :cond_e
    move-object/from16 v0, p0

    #@331
    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@333
    move-object/from16 v46, v0

    #@335
    move-object/from16 v0, p0

    #@337
    move-object/from16 v1, v46

    #@339
    move/from16 v2, v20

    #@33b
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@33e
    move-result v20

    #@33f
    goto/16 :goto_2

    #@341
    .line 1405
    :cond_f
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@345
    move-object/from16 v46, v0

    #@347
    move-object/from16 v0, p0

    #@349
    move-object/from16 v1, v46

    #@34b
    move/from16 v2, v29

    #@34d
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@350
    move-result v29

    #@351
    goto/16 :goto_3

    #@353
    .line 1420
    :cond_10
    move-object/from16 v0, p0

    #@355
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@357
    move-object/from16 v46, v0

    #@359
    move-object/from16 v0, p0

    #@35b
    move-object/from16 v1, v46

    #@35d
    move/from16 v2, v20

    #@35f
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@362
    move-result v20

    #@363
    goto/16 :goto_4

    #@365
    .line 1430
    :cond_11
    move-object/from16 v0, p0

    #@367
    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@369
    move-object/from16 v46, v0

    #@36b
    move-object/from16 v0, p0

    #@36d
    move-object/from16 v1, v46

    #@36f
    move/from16 v2, v20

    #@371
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@374
    move-result v20

    #@375
    goto/16 :goto_5

    #@377
    .line 1449
    .restart local v17    # "layoutSubtitle":Z
    .restart local v18    # "layoutTitle":Z
    .restart local v39    # "titleHeight":I
    :cond_12
    move-object/from16 v0, p0

    #@379
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@37b
    move-object/from16 v43, v0

    #@37d
    .restart local v43    # "topChild":Landroid/view/View;
    goto/16 :goto_6

    #@37f
    .line 1450
    :cond_13
    move-object/from16 v0, p0

    #@381
    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@383
    .restart local v6    # "bottomChild":Landroid/view/View;
    goto/16 :goto_7

    #@385
    .line 1454
    .restart local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_14
    if-eqz v17, :cond_15

    #@387
    move-object/from16 v0, p0

    #@389
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@38b
    move-object/from16 v46, v0

    #@38d
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@390
    move-result v46

    #@391
    if-lez v46, :cond_15

    #@393
    const/16 v38, 0x1

    #@395
    .restart local v38    # "titleHasWidth":Z
    goto/16 :goto_8

    #@397
    .end local v38    # "titleHasWidth":Z
    :cond_15
    const/16 v38, 0x0

    #@399
    .restart local v38    # "titleHasWidth":Z
    goto/16 :goto_8

    #@39b
    .line 1458
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    #@39e
    move-result v46

    #@39f
    move-object/from16 v0, v44

    #@3a1
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@3a3
    move/from16 v47, v0

    #@3a5
    add-int v46, v46, v47

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    #@3ab
    move/from16 v47, v0

    #@3ad
    add-int v42, v46, v47

    #@3af
    .line 1459
    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    #@3b1
    .line 1467
    .end local v42    # "titleTop":I
    .restart local v31    # "space":I
    .restart local v32    # "spaceAbove":I
    :cond_16
    sub-int v46, v14, v23

    #@3b3
    sub-int v46, v46, v39

    #@3b5
    sub-int v46, v46, v32

    #@3b7
    sub-int v33, v46, v26

    #@3b9
    .line 1469
    .local v33, "spaceBelow":I
    move-object/from16 v0, v44

    #@3bb
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@3bd
    move/from16 v46, v0

    #@3bf
    move-object/from16 v0, p0

    #@3c1
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@3c3
    move/from16 v47, v0

    #@3c5
    add-int v46, v46, v47

    #@3c7
    move/from16 v0, v33

    #@3c9
    move/from16 v1, v46

    #@3cb
    if-ge v0, v1, :cond_8

    #@3cd
    .line 1471
    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@3cf
    move/from16 v46, v0

    #@3d1
    move-object/from16 v0, p0

    #@3d3
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@3d5
    move/from16 v47, v0

    #@3d7
    add-int v46, v46, v47

    #@3d9
    sub-int v46, v46, v33

    #@3db
    .line 1470
    sub-int v46, v32, v46

    #@3dd
    const/16 v47, 0x0

    #@3df
    move/from16 v0, v47

    #@3e1
    move/from16 v1, v46

    #@3e3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@3e6
    move-result v32

    #@3e7
    goto/16 :goto_9

    #@3e9
    .line 1477
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_2
    sub-int v46, v14, v23

    #@3eb
    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@3ed
    move/from16 v47, v0

    #@3ef
    sub-int v46, v46, v47

    #@3f1
    move-object/from16 v0, p0

    #@3f3
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    #@3f5
    move/from16 v47, v0

    #@3f7
    sub-int v46, v46, v47

    #@3f9
    sub-int v42, v46, v39

    #@3fb
    .line 1479
    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    #@3fd
    .line 1482
    :cond_17
    const/16 v46, 0x0

    #@3ff
    goto/16 :goto_b

    #@401
    .line 1509
    :cond_18
    if-eqz v38, :cond_1b

    #@403
    move-object/from16 v0, p0

    #@405
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    #@407
    move/from16 v46, v0

    #@409
    :goto_e
    const/16 v47, 0x0

    #@40b
    aget v47, v12, v47

    #@40d
    sub-int v19, v46, v47

    #@40f
    .line 1510
    .local v19, "ld":I
    const/16 v46, 0x0

    #@411
    move/from16 v0, v46

    #@413
    move/from16 v1, v19

    #@415
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@418
    move-result v46

    #@419
    add-int v20, v20, v46

    #@41b
    .line 1511
    move/from16 v0, v19

    #@41d
    neg-int v0, v0

    #@41e
    move/from16 v46, v0

    #@420
    const/16 v47, 0x0

    #@422
    move/from16 v0, v47

    #@424
    move/from16 v1, v46

    #@426
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@429
    move-result v46

    #@42a
    const/16 v47, 0x0

    #@42c
    aput v46, v12, v47

    #@42e
    .line 1512
    move/from16 v40, v20

    #@430
    .line 1513
    .restart local v40    # "titleLeft":I
    move/from16 v35, v20

    #@432
    .line 1515
    .restart local v35    # "subtitleLeft":I
    if-eqz v18, :cond_19

    #@434
    .line 1516
    move-object/from16 v0, p0

    #@436
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@438
    move-object/from16 v46, v0

    #@43a
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@43d
    move-result-object v22

    #@43e
    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    #@440
    .line 1517
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    #@442
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@444
    move-object/from16 v46, v0

    #@446
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@449
    move-result v46

    #@44a
    add-int v41, v40, v46

    #@44c
    .line 1518
    .restart local v41    # "titleRight":I
    move-object/from16 v0, p0

    #@44e
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@450
    move-object/from16 v46, v0

    #@452
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@455
    move-result v46

    #@456
    add-int v37, v42, v46

    #@458
    .line 1519
    .restart local v37    # "titleBottom":I
    move-object/from16 v0, p0

    #@45a
    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@45c
    move-object/from16 v46, v0

    #@45e
    move-object/from16 v0, v46

    #@460
    move/from16 v1, v40

    #@462
    move/from16 v2, v42

    #@464
    move/from16 v3, v41

    #@466
    move/from16 v4, v37

    #@468
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@46b
    .line 1520
    move-object/from16 v0, p0

    #@46d
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@46f
    move/from16 v46, v0

    #@471
    add-int v40, v41, v46

    #@473
    .line 1521
    move-object/from16 v0, v22

    #@475
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@477
    move/from16 v46, v0

    #@479
    add-int v42, v37, v46

    #@47b
    .line 1523
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v41    # "titleRight":I
    :cond_19
    if-eqz v17, :cond_1a

    #@47d
    .line 1524
    move-object/from16 v0, p0

    #@47f
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@481
    move-object/from16 v46, v0

    #@483
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@486
    move-result-object v22

    #@487
    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    #@489
    .line 1525
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    #@48b
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    #@48d
    move/from16 v46, v0

    #@48f
    add-int v42, v42, v46

    #@491
    .line 1526
    move-object/from16 v0, p0

    #@493
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@495
    move-object/from16 v46, v0

    #@497
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@49a
    move-result v46

    #@49b
    add-int v36, v35, v46

    #@49d
    .line 1527
    .restart local v36    # "subtitleRight":I
    move-object/from16 v0, p0

    #@49f
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4a1
    move-object/from16 v46, v0

    #@4a3
    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@4a6
    move-result v46

    #@4a7
    add-int v34, v42, v46

    #@4a9
    .line 1528
    .restart local v34    # "subtitleBottom":I
    move-object/from16 v0, p0

    #@4ab
    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4ad
    move-object/from16 v46, v0

    #@4af
    move-object/from16 v0, v46

    #@4b1
    move/from16 v1, v35

    #@4b3
    move/from16 v2, v42

    #@4b5
    move/from16 v3, v36

    #@4b7
    move/from16 v4, v34

    #@4b9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@4bc
    .line 1529
    move-object/from16 v0, p0

    #@4be
    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    #@4c0
    move/from16 v46, v0

    #@4c2
    add-int v35, v36, v46

    #@4c4
    .line 1530
    move-object/from16 v0, v22

    #@4c6
    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    #@4c8
    move/from16 v46, v0

    #@4ca
    add-int v42, v34, v46

    #@4cc
    .line 1532
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v36    # "subtitleRight":I
    :cond_1a
    if-eqz v38, :cond_b

    #@4ce
    .line 1533
    move/from16 v0, v40

    #@4d0
    move/from16 v1, v35

    #@4d2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@4d5
    move-result v20

    #@4d6
    goto/16 :goto_c

    #@4d8
    .line 1509
    .end local v19    # "ld":I
    .end local v35    # "subtitleLeft":I
    .end local v40    # "titleLeft":I
    :cond_1b
    const/16 v46, 0x0

    #@4da
    goto/16 :goto_e

    #@4dc
    .line 1548
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v38    # "titleHasWidth":Z
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v15    # "i":I
    .restart local v21    # "leftViewsCount":I
    :cond_1c
    move-object/from16 v0, p0

    #@4de
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@4e0
    move-object/from16 v46, v0

    #@4e2
    const/16 v47, 0x5

    #@4e4
    move-object/from16 v0, p0

    #@4e6
    move-object/from16 v1, v46

    #@4e8
    move/from16 v2, v47

    #@4ea
    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@4ed
    .line 1549
    move-object/from16 v0, p0

    #@4ef
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@4f1
    move-object/from16 v46, v0

    #@4f3
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    #@4f6
    move-result v30

    #@4f7
    .line 1550
    .local v30, "rightViewsCount":I
    const/4 v15, 0x0

    #@4f8
    :goto_f
    move/from16 v0, v30

    #@4fa
    if-ge v15, v0, :cond_1d

    #@4fc
    .line 1551
    move-object/from16 v0, p0

    #@4fe
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@500
    move-object/from16 v46, v0

    #@502
    move-object/from16 v0, v46

    #@504
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@507
    move-result-object v46

    #@508
    check-cast v46, Landroid/view/View;

    #@50a
    move-object/from16 v0, p0

    #@50c
    move-object/from16 v1, v46

    #@50e
    move/from16 v2, v29

    #@510
    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    #@513
    move-result v29

    #@514
    .line 1550
    add-int/lit8 v15, v15, 0x1

    #@516
    goto :goto_f

    #@517
    .line 1557
    :cond_1d
    move-object/from16 v0, p0

    #@519
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@51b
    move-object/from16 v46, v0

    #@51d
    const/16 v47, 0x1

    #@51f
    move-object/from16 v0, p0

    #@521
    move-object/from16 v1, v46

    #@523
    move/from16 v2, v47

    #@525
    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    #@528
    .line 1558
    move-object/from16 v0, p0

    #@52a
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@52c
    move-object/from16 v46, v0

    #@52e
    move-object/from16 v0, p0

    #@530
    move-object/from16 v1, v46

    #@532
    invoke-direct {v0, v1, v12}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    #@535
    move-result v11

    #@536
    .line 1559
    .local v11, "centerViewsWidth":I
    sub-int v46, v45, v24

    #@538
    sub-int v46, v46, v25

    #@53a
    div-int/lit8 v46, v46, 0x2

    #@53c
    add-int v27, v24, v46

    #@53e
    .line 1560
    .local v27, "parentCenter":I
    div-int/lit8 v13, v11, 0x2

    #@540
    .line 1561
    .local v13, "halfCenterViewsWidth":I
    sub-int v8, v27, v13

    #@542
    .line 1562
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    #@544
    .line 1563
    .local v9, "centerRight":I
    move/from16 v0, v20

    #@546
    if-ge v8, v0, :cond_1f

    #@548
    .line 1564
    move/from16 v8, v20

    #@54a
    .line 1569
    :cond_1e
    :goto_10
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@54e
    move-object/from16 v46, v0

    #@550
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    #@553
    move-result v10

    #@554
    .line 1570
    .local v10, "centerViewsCount":I
    const/4 v15, 0x0

    #@555
    :goto_11
    if-ge v15, v10, :cond_20

    #@557
    .line 1571
    move-object/from16 v0, p0

    #@559
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@55b
    move-object/from16 v46, v0

    #@55d
    move-object/from16 v0, v46

    #@55f
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@562
    move-result-object v46

    #@563
    check-cast v46, Landroid/view/View;

    #@565
    move-object/from16 v0, p0

    #@567
    move-object/from16 v1, v46

    #@569
    invoke-direct {v0, v1, v8, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    #@56c
    move-result v8

    #@56d
    .line 1570
    add-int/lit8 v15, v15, 0x1

    #@56f
    goto :goto_11

    #@570
    .line 1565
    .end local v10    # "centerViewsCount":I
    :cond_1f
    move/from16 v0, v29

    #@572
    if-le v9, v0, :cond_1e

    #@574
    .line 1566
    sub-int v46, v9, v29

    #@576
    sub-int v8, v8, v46

    #@578
    goto :goto_10

    #@579
    .line 1575
    .restart local v10    # "centerViewsCount":I
    :cond_20
    move-object/from16 v0, p0

    #@57b
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    #@57d
    move-object/from16 v46, v0

    #@57f
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    #@582
    .line 1363
    return-void

    #@583
    .line 1456
    nop

    #@584
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
    .line 1236
    const/4 v6, 0x0

    #@1
    .line 1237
    .local v6, "width":I
    const/16 v25, 0x0

    #@3
    .line 1238
    .local v25, "height":I
    const/16 v22, 0x0

    #@5
    .line 1240
    .local v22, "childState":I
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    #@9
    .line 1243
    .local v13, "collapsingMargins":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_6

    #@f
    .line 1244
    const/16 v29, 0x1

    #@11
    .line 1245
    .local v29, "marginStartIndex":I
    const/16 v28, 0x0

    #@13
    .line 1253
    .local v28, "marginEndIndex":I
    :goto_0
    const/16 v33, 0x0

    #@15
    .line 1254
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
    .line 1255
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@25
    .line 1256
    move-object/from16 v0, p0

    #@27
    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@29
    .line 1255
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
    .line 1257
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
    .line 1258
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@4b
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@4e
    move-result v3

    #@4f
    .line 1259
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
    .line 1258
    add-int/2addr v3, v5

    #@5a
    move/from16 v0, v25

    #@5c
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@5f
    move-result v25

    #@60
    .line 1260
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
    .line 1263
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
    .line 1264
    move-object/from16 v0, p0

    #@7c
    iget-object v4, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@7e
    .line 1265
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
    .line 1264
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    #@8c
    .line 1266
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@90
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@93
    move-result v3

    #@94
    .line 1267
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
    .line 1266
    add-int v33, v3, v5

    #@a0
    .line 1268
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    #@a4
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@a7
    move-result v3

    #@a8
    .line 1269
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
    .line 1268
    add-int/2addr v3, v5

    #@b3
    move/from16 v0, v25

    #@b5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@b8
    move-result v25

    #@b9
    .line 1270
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
    .line 1273
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    #@ca
    move-result v24

    #@cb
    .line 1274
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
    .line 1275
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
    .line 1277
    const/16 v32, 0x0

    #@e0
    .line 1278
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
    .line 1279
    move-object/from16 v0, p0

    #@ee
    iget-object v4, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@f0
    .line 1280
    move-object/from16 v0, p0

    #@f2
    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    #@f4
    .line 1279
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
    .line 1281
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
    .line 1282
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@116
    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    #@119
    move-result v3

    #@11a
    .line 1283
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
    .line 1282
    add-int/2addr v3, v5

    #@125
    move/from16 v0, v25

    #@127
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@12a
    move-result v25

    #@12b
    .line 1284
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
    .line 1287
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    #@13c
    move-result v23

    #@13d
    .line 1288
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
    .line 1289
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
    .line 1291
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
    .line 1292
    move-object/from16 v0, p0

    #@15d
    iget-object v4, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@15f
    .line 1293
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
    .line 1292
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@16a
    move-result v3

    #@16b
    add-int/2addr v6, v3

    #@16c
    .line 1294
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    #@170
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@173
    move-result v3

    #@174
    .line 1295
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
    .line 1294
    add-int/2addr v3, v5

    #@17f
    move/from16 v0, v25

    #@181
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@184
    move-result v25

    #@185
    .line 1296
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
    .line 1299
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
    .line 1300
    move-object/from16 v0, p0

    #@1a1
    iget-object v4, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1a3
    .line 1301
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
    .line 1300
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@1ae
    move-result v3

    #@1af
    add-int/2addr v6, v3

    #@1b0
    .line 1302
    move-object/from16 v0, p0

    #@1b2
    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@1b4
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@1b7
    move-result v3

    #@1b8
    .line 1303
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
    .line 1302
    add-int/2addr v3, v5

    #@1c3
    move/from16 v0, v25

    #@1c5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@1c8
    move-result v25

    #@1c9
    .line 1304
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
    .line 1307
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@1da
    move-result v21

    #@1db
    .line 1308
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
    .line 1309
    move-object/from16 v0, p0

    #@1e5
    move/from16 v1, v26

    #@1e7
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@1ea
    move-result-object v4

    #@1eb
    .line 1310
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1ee
    move-result-object v27

    #@1ef
    check-cast v27, Landroid/widget/Toolbar$LayoutParams;

    #@1f1
    .line 1311
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
    .line 1317
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
    .line 1316
    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@20a
    move-result v3

    #@20b
    add-int/2addr v6, v3

    #@20c
    .line 1318
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
    .line 1319
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
    .line 1308
    :cond_5
    add-int/lit8 v26, v26, 0x1

    #@229
    goto :goto_1

    #@22a
    .line 1247
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
    .line 1248
    .restart local v29    # "marginStartIndex":I
    const/16 v28, 0x1

    #@22e
    .restart local v28    # "marginEndIndex":I
    goto/16 :goto_0

    #@230
    .line 1322
    .restart local v21    # "childCount":I
    .restart local v23    # "contentInsetEnd":I
    .restart local v24    # "contentInsetStart":I
    .restart local v26    # "i":I
    .restart local v32    # "menuWidth":I
    .restart local v33    # "navWidth":I
    :cond_7
    const/16 v36, 0x0

    #@232
    .line 1323
    .local v36, "titleWidth":I
    const/16 v34, 0x0

    #@234
    .line 1324
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
    .line 1325
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
    .line 1326
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
    .line 1327
    move-object/from16 v0, p0

    #@256
    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@258
    .line 1328
    add-int v10, v6, v35

    #@25a
    move-object/from16 v7, p0

    #@25c
    move/from16 v9, p1

    #@25e
    move/from16 v11, p2

    #@260
    .line 1327
    invoke-direct/range {v7 .. v13}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    #@263
    move-result v36

    #@264
    .line 1330
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
    .line 1331
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
    .line 1332
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
    .line 1334
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
    .line 1335
    move-object/from16 v0, p0

    #@2a8
    iget-object v15, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2aa
    .line 1336
    add-int v17, v6, v35

    #@2ac
    .line 1337
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
    .line 1335
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
    .line 1339
    move-object/from16 v0, p0

    #@2c2
    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@2c4
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@2c7
    move-result v3

    #@2c8
    .line 1340
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
    .line 1339
    add-int/2addr v3, v5

    #@2d3
    add-int v34, v34, v3

    #@2d5
    .line 1341
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
    .line 1344
    :cond_9
    add-int v6, v6, v36

    #@2e5
    .line 1345
    move/from16 v0, v25

    #@2e7
    move/from16 v1, v34

    #@2e9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2ec
    move-result v25

    #@2ed
    .line 1349
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
    .line 1350
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
    .line 1353
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    #@305
    move-result v3

    #@306
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@309
    move-result v3

    #@30a
    .line 1354
    const/high16 v5, -0x1000000

    #@30c
    and-int v5, v5, v22

    #@30e
    .line 1352
    move/from16 v0, p1

    #@310
    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    #@313
    move-result v31

    #@314
    .line 1356
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
    .line 1357
    shl-int/lit8 v5, v22, 0x10

    #@320
    .line 1355
    move/from16 v0, p2

    #@322
    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    #@325
    move-result v30

    #@326
    .line 1359
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
    .line 1235
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v2, p1

    #@1
    .line 1099
    check-cast v2, Landroid/widget/Toolbar$SavedState;

    #@3
    .line 1100
    .local v2, "ss":Landroid/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1102
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
    .line 1103
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
    .line 1104
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@20
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@23
    move-result-object v0

    #@24
    .line 1105
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    #@26
    .line 1106
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    #@29
    .line 1110
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@2b
    if-eqz v3, :cond_1

    #@2d
    .line 1111
    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    #@30
    .line 1098
    :cond_1
    return-void

    #@31
    .line 1102
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
    .line 326
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@4
    .line 327
    iget-object v1, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@6
    if-ne p1, v0, :cond_0

    #@8
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    #@b
    .line 325
    return-void

    #@c
    .line 327
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 1086
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    #@2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1088
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
    .line 1089
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
    .line 1092
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    #@20
    move-result v1

    #@21
    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@23
    .line 1094
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1165
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1166
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d
    .line 1156
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
    .line 1133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 1134
    .local v0, "action":I
    if-nez v0, :cond_0

    #@8
    .line 1135
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@a
    .line 1138
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@c
    if-nez v2, :cond_1

    #@e
    .line 1139
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v1

    #@12
    .line 1140
    .local v1, "handled":Z
    if-nez v0, :cond_1

    #@14
    if-eqz v1, :cond_4

    #@16
    .line 1145
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    if-eq v0, v4, :cond_2

    #@18
    const/4 v2, 0x3

    #@19
    if-ne v0, v2, :cond_3

    #@1b
    .line 1146
    :cond_2
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    #@1d
    .line 1149
    :cond_3
    return v4

    #@1e
    .line 1141
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
    .line 1771
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 1773
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    #@6
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@8
    .line 1774
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 1775
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    #@12
    .line 1776
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
    .line 1777
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->removeViewAt(I)V

    #@1e
    .line 1778
    iget-object v4, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1773
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_0

    #@26
    .line 1770
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
    .line 1802
    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    #@2
    .line 1803
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    #@5
    .line 1801
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    #@0
    .prologue
    .line 996
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    #@5
    .line 995
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    #@0
    .prologue
    .line 938
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    #@5
    .line 937
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 340
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
    .line 339
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 456
    if-eqz p1, :cond_2

    #@2
    .line 457
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    #@5
    .line 458
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@7
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 459
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@13
    .line 465
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 466
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 455
    :cond_1
    return-void

    #@1d
    .line 461
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
    .line 462
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@2b
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@2e
    .line 463
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
    .line 490
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
    .line 489
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 503
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    #@9
    .line 505
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 506
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@12
    .line 501
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
    .line 383
    if-nez p1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 384
    return-void

    #@9
    .line 387
    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    #@c
    .line 388
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@e
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    move-result-object v0

    #@12
    .line 389
    .local v0, "oldMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    #@14
    .line 390
    return-void

    #@15
    .line 393
    :cond_1
    if-eqz v0, :cond_2

    #@17
    .line 394
    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@1c
    .line 395
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@21
    .line 398
    :cond_2
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@23
    if-nez v1, :cond_3

    #@25
    .line 399
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@27
    invoke-direct {v1, p0, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V

    #@2a
    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@2c
    .line 402
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@2f
    .line 403
    if-eqz p1, :cond_4

    #@31
    .line 404
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@33
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@36
    .line 405
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@38
    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@3a
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@3d
    .line 412
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@3f
    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@41
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    #@44
    .line 413
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@46
    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    #@49
    .line 414
    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@4b
    .line 382
    return-void

    #@4c
    .line 407
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@4e
    invoke-virtual {p2, v1, v3}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@51
    .line 408
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@53
    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@55
    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@58
    .line 409
    invoke-virtual {p2, v4}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    #@5b
    .line 410
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    #@5d
    invoke-virtual {v1, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    #@60
    goto :goto_0
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 1811
    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 1812
    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@4
    .line 1810
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 738
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
    .line 737
    return-void

    #@e
    .line 738
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
    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 753
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    #@9
    .line 755
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 756
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@12
    .line 751
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 775
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
    .line 774
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 793
    if-eqz p1, :cond_2

    #@2
    .line 794
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    #@5
    .line 795
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@7
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 796
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@13
    .line 802
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 803
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 792
    :cond_1
    return-void

    #@1d
    .line 798
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
    .line 799
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@2b
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@2e
    .line 800
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
    .line 829
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    #@3
    .line 830
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8
    .line 828
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@0
    .prologue
    .line 918
    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@2
    .line 917
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 852
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    #@3
    .line 853
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 851
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 305
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 306
    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    #@6
    .line 307
    if-nez p1, :cond_1

    #@8
    .line 308
    iget-object v0, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    #@a
    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    #@c
    .line 304
    :cond_0
    :goto_0
    return-void

    #@d
    .line 310
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
    .line 630
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
    .line 629
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 641
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_4

    #@6
    .line 642
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 643
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 644
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    #@10
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@15
    .line 645
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    #@1a
    .line 646
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@1c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@21
    .line 647
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 648
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@27
    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@2c
    .line 650
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 651
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@32
    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@37
    .line 654
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
    .line 655
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@41
    const/4 v2, 0x1

    #@42
    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@45
    .line 661
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 662
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4e
    .line 664
    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    #@50
    .line 640
    return-void

    #@51
    .line 657
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
    .line 658
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@5f
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@62
    .line 659
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
    .line 683
    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    #@2
    .line 684
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 685
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@b
    .line 682
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 707
    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    #@2
    .line 708
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 709
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@b
    .line 706
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 575
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
    .line 574
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_4

    #@6
    .line 588
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 589
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 590
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    #@10
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@15
    .line 591
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    #@1a
    .line 592
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@1c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@21
    .line 593
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 594
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@27
    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@2c
    .line 596
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 597
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@32
    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@37
    .line 600
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
    .line 601
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@41
    const/4 v2, 0x1

    #@42
    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    #@45
    .line 607
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 608
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4e
    .line 610
    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    #@50
    .line 586
    return-void

    #@51
    .line 603
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
    .line 604
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@5f
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    #@62
    .line 605
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    #@64
    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@69
    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 672
    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    #@2
    .line 673
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 674
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@b
    .line 671
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 695
    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    #@2
    .line 696
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 697
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@b
    .line 694
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 369
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

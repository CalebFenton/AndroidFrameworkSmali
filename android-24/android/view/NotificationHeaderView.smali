.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$1;,
        Landroid/view/NotificationHeaderView$2;,
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = -0x1


# instance fields
.field private mAppName:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field final mExpandDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mExpanded:Z

.field private mHeaderBackgroundHeight:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Landroid/view/View;

.field private mIconColor:I

.field private mInfo:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mShowWorkBadgeAtEnd:Z

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method static synthetic -get0(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/NotificationHeaderView;)Landroid/view/View$OnClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/view/NotificationHeaderView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/view/NotificationHeaderView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 46
    new-instance v0, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    #@5
    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    #@8
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    #@a
    .line 58
    new-instance v0, Landroid/view/NotificationHeaderView$1;

    #@c
    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    #@f
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    #@11
    .line 67
    new-instance v0, Landroid/view/NotificationHeaderView$2;

    #@13
    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$2;-><init>(Landroid/view/NotificationHeaderView;)V

    #@16
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandDelegate:Landroid/view/View$AccessibilityDelegate;

    #@18
    .line 109
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v0

    #@1c
    .line 110
    const v1, 0x1050048

    #@1f
    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    #@25
    .line 111
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    #@28
    move-result-object v0

    #@29
    .line 112
    const v1, 0x1050040

    #@2c
    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    #@32
    .line 113
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    #@35
    move-result-object v0

    #@36
    .line 114
    const v1, 0x1050046

    #@39
    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    #@3f
    .line 107
    return-void
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 4

    #@0
    .prologue
    .line 405
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 406
    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 407
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v2

    #@f
    const/16 v3, 0x8

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 408
    return-object v0

    #@14
    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 411
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object p0
.end method

.method private updateExpandButton()V
    .locals 3

    #@0
    .prologue
    .line 294
    iget-boolean v1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 295
    const v0, 0x1080318

    #@7
    .line 299
    .local v0, "drawableId":I
    :goto_0
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@9
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 300
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@16
    iget v2, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    #@18
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    #@1b
    .line 292
    return-void

    #@1c
    .line 297
    .end local v0    # "drawableId":I
    :cond_0
    const v0, 0x1080338

    #@1f
    .restart local v0    # "drawableId":I
    goto :goto_0
.end method

.method private updateTouchListener()V
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 256
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    #@6
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    #@9
    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 250
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    .line 248
    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 214
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .locals 1

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    #@0
    .prologue
    .line 274
    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    #@2
    return v0
.end method

.method public getOriginalNotificationColor()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    #@2
    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    #@0
    .prologue
    .line 420
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isInTouchRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 425
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 427
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    #@8
    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->-wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 236
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 237
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    #@a
    move-result v1

    #@b
    iget v2, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    #@d
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@10
    .line 238
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@15
    .line 235
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    #@0
    .prologue
    .line 119
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    #@3
    .line 120
    const v0, 0x10203a9

    #@6
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    #@c
    .line 121
    const v0, 0x10203ab

    #@f
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    #@15
    .line 122
    const v0, 0x10203ae

    #@18
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/widget/ImageView;

    #@1e
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@20
    .line 123
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 124
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@26
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandDelegate:Landroid/view/View$AccessibilityDelegate;

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@2b
    .line 126
    :cond_0
    const v0, 0x1020006

    #@2e
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Landroid/view/View;

    #@34
    .line 127
    const v0, 0x10203af

    #@37
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    #@3d
    .line 118
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    #@3
    move-result v8

    #@4
    .line 178
    .local v8, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    #@7
    move-result v3

    #@8
    .line 179
    .local v3, "childCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    #@b
    move-result v15

    #@c
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    #@f
    move-result v16

    #@10
    sub-int v15, v15, v16

    #@12
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    #@15
    move-result v16

    #@16
    sub-int v10, v15, v16

    #@18
    .line 180
    .local v10, "ownHeight":I
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    #@1b
    .line 181
    move-object/from16 v0, p0

    #@1d
    invoke-virtual {v0, v5}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    .line 182
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@24
    move-result v15

    #@25
    const/16 v16, 0x8

    #@27
    move/from16 v0, v16

    #@29
    if-ne v15, v0, :cond_0

    #@2b
    .line 180
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 185
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@31
    move-result v4

    #@32
    .line 186
    .local v4, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@35
    move-result-object v12

    #@36
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    #@38
    .line 187
    .local v12, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v12}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    #@3b
    move-result v15

    #@3c
    add-int/2addr v8, v15

    #@3d
    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@40
    move-result v15

    #@41
    add-int v13, v8, v15

    #@43
    .line 189
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    #@46
    move-result v15

    #@47
    int-to-float v15, v15

    #@48
    sub-int v16, v10, v4

    #@4a
    move/from16 v0, v16

    #@4c
    int-to-float v0, v0

    #@4d
    move/from16 v16, v0

    #@4f
    const/high16 v17, 0x40000000    # 2.0f

    #@51
    div-float v16, v16, v17

    #@53
    add-float v15, v15, v16

    #@55
    float-to-int v14, v15

    #@56
    .line 190
    .local v14, "top":I
    add-int v1, v14, v4

    #@58
    .line 191
    .local v1, "bottom":I
    move v6, v8

    #@59
    .line 192
    .local v6, "layoutLeft":I
    move v7, v13

    #@5a
    .line 193
    .local v7, "layoutRight":I
    move-object/from16 v0, p0

    #@5c
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    #@5e
    if-ne v2, v15, :cond_2

    #@60
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    #@63
    move-result v11

    #@64
    .line 195
    .local v11, "paddingEnd":I
    move-object/from16 v0, p0

    #@66
    iget-boolean v15, v0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    #@68
    if-eqz v15, :cond_1

    #@6a
    .line 196
    move-object/from16 v0, p0

    #@6c
    iget v11, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    #@6e
    .line 198
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    #@71
    move-result v15

    #@72
    sub-int v7, v15, v11

    #@74
    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@77
    move-result v15

    #@78
    sub-int v6, v7, v15

    #@7a
    .line 201
    .end local v11    # "paddingEnd":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getLayoutDirection()I

    #@7d
    move-result v15

    #@7e
    const/16 v16, 0x1

    #@80
    move/from16 v0, v16

    #@82
    if-ne v15, v0, :cond_3

    #@84
    .line 202
    move v9, v6

    #@85
    .line 203
    .local v9, "ltrLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    #@88
    move-result v15

    #@89
    sub-int v6, v15, v7

    #@8b
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    #@8e
    move-result v15

    #@8f
    sub-int v7, v15, v9

    #@91
    .line 206
    .end local v9    # "ltrLeft":I
    :cond_3
    invoke-virtual {v2, v6, v14, v7, v1}, Landroid/view/View;->layout(IIII)V

    #@94
    .line 207
    invoke-virtual {v12}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@97
    move-result v15

    #@98
    add-int v8, v13, v15

    #@9a
    goto :goto_1

    #@9b
    .line 209
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v6    # "layoutLeft":I
    .end local v7    # "layoutRight":I
    .end local v12    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    #@9e
    .line 176
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 132
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v6

    #@4
    .line 133
    .local v6, "givenWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v5

    #@8
    .line 135
    .local v5, "givenHeight":I
    const/high16 v15, -0x80000000

    #@a
    .line 134
    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v14

    #@e
    .line 137
    .local v14, "wrapContentWidthSpec":I
    const/high16 v15, -0x80000000

    #@10
    .line 136
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13
    move-result v13

    #@14
    .line 138
    .local v13, "wrapContentHeightSpec":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    #@17
    move-result v15

    #@18
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    #@1b
    move-result v16

    #@1c
    add-int v12, v15, v16

    #@1e
    .line 139
    .local v12, "totalWidth":I
    const/4 v7, 0x0

    #@1f
    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    #@22
    move-result v15

    #@23
    if-ge v7, v15, :cond_1

    #@25
    .line 140
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v7}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    #@2a
    move-result-object v2

    #@2b
    .line 141
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@2e
    move-result v15

    #@2f
    const/16 v16, 0x8

    #@31
    move/from16 v0, v16

    #@33
    if-ne v15, v0, :cond_0

    #@35
    .line 139
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@37
    goto :goto_0

    #@38
    .line 145
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3b
    move-result-object v8

    #@3c
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3e
    .line 147
    .local v8, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@40
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@42
    move/from16 v16, v0

    #@44
    add-int v15, v15, v16

    #@46
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@48
    move/from16 v16, v0

    #@4a
    .line 146
    invoke-static/range {v14 .. v16}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    #@4d
    move-result v4

    #@4e
    .line 149
    .local v4, "childWidthSpec":I
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@50
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@52
    move/from16 v16, v0

    #@54
    add-int v15, v15, v16

    #@56
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@58
    move/from16 v16, v0

    #@5a
    .line 148
    move/from16 v0, v16

    #@5c
    invoke-static {v13, v15, v0}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    #@5f
    move-result v3

    #@60
    .line 150
    .local v3, "childHeightSpec":I
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    #@63
    .line 151
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@65
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@67
    move/from16 v16, v0

    #@69
    add-int v15, v15, v16

    #@6b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@6e
    move-result v16

    #@6f
    add-int v15, v15, v16

    #@71
    add-int/2addr v12, v15

    #@72
    goto :goto_1

    #@73
    .line 153
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    if-le v12, v6, :cond_3

    #@75
    .line 154
    sub-int v10, v12, v6

    #@77
    .line 156
    .local v10, "overFlow":I
    move-object/from16 v0, p0

    #@79
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    #@7b
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    #@7e
    move-result v1

    #@7f
    .line 157
    .local v1, "appWidth":I
    if-lez v10, :cond_2

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    #@85
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    #@88
    move-result v15

    #@89
    const/16 v16, 0x8

    #@8b
    move/from16 v0, v16

    #@8d
    if-eq v15, v0, :cond_2

    #@8f
    move-object/from16 v0, p0

    #@91
    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    #@93
    if-le v1, v15, :cond_2

    #@95
    .line 158
    move-object/from16 v0, p0

    #@97
    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    #@99
    sub-int v15, v1, v15

    #@9b
    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    #@9e
    move-result v15

    #@9f
    sub-int v9, v1, v15

    #@a1
    .line 159
    .local v9, "newSize":I
    const/high16 v15, -0x80000000

    #@a3
    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a6
    move-result v4

    #@a7
    .line 160
    .restart local v4    # "childWidthSpec":I
    move-object/from16 v0, p0

    #@a9
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    #@ab
    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    #@ae
    .line 161
    sub-int v15, v1, v9

    #@b0
    sub-int/2addr v10, v15

    #@b1
    .line 164
    .end local v4    # "childWidthSpec":I
    .end local v9    # "newSize":I
    :cond_2
    if-lez v10, :cond_3

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    #@b7
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    #@ba
    move-result v15

    #@bb
    const/16 v16, 0x8

    #@bd
    move/from16 v0, v16

    #@bf
    if-eq v15, v0, :cond_3

    #@c1
    .line 166
    move-object/from16 v0, p0

    #@c3
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    #@c5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    #@c8
    move-result v11

    #@c9
    .line 167
    .local v11, "textWidth":I
    sub-int v15, v11, v10

    #@cb
    const/16 v16, 0x0

    #@cd
    move/from16 v0, v16

    #@cf
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    #@d2
    move-result v9

    #@d3
    .line 168
    .restart local v9    # "newSize":I
    const/high16 v15, -0x80000000

    #@d5
    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d8
    move-result v4

    #@d9
    .line 169
    .restart local v4    # "childWidthSpec":I
    move-object/from16 v0, p0

    #@db
    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    #@dd
    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    #@e0
    .line 172
    .end local v1    # "appWidth":I
    .end local v4    # "childWidthSpec":I
    .end local v9    # "newSize":I
    .end local v10    # "overFlow":I
    .end local v11    # "textWidth":I
    :cond_3
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v6, v5}, Landroid/view/NotificationHeaderView;->setMeasuredDimension(II)V

    #@e5
    .line 131
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 288
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    #@2
    .line 289
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    #@5
    .line 287
    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 221
    if-eqz p1, :cond_0

    #@3
    .line 222
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    #@7
    .line 223
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    .line 224
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    .line 225
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    #@10
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@13
    .line 231
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    #@16
    .line 220
    return-void

    #@17
    .line 227
    :cond_0
    const/4 v0, 0x1

    #@18
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    #@1b
    .line 228
    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@1d
    .line 229
    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@20
    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 262
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    #@3
    .line 263
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    #@9
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@c
    .line 264
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    #@e
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@13
    .line 265
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    #@16
    .line 261
    return-void
.end method

.method public setOriginalIconColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 270
    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    #@2
    .line 269
    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 279
    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    #@2
    .line 278
    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .locals 1
    .param p1, "showWorkBadgeAtEnd"    # Z

    #@0
    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 305
    if-eqz p1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    #@a
    .line 306
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    #@c
    .line 303
    :cond_0
    return-void

    #@d
    .line 305
    :cond_1
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 244
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

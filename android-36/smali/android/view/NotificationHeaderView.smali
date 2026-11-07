.class public Landroid/view/NotificationHeaderView;
.super Landroid/widget/RelativeLayout;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mAcceptAllTouches:Z

.field private blacklist mAltExpandTarget:Landroid/view/View;

.field private greylist-max-o mBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mEntireHeaderClickable:Z

.field private blacklist mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private blacklist mExpandButtonTranslation:F

.field private greylist-max-o mExpandClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mExpandOnlyOnButton:Z

.field private greylist-max-o mIcon:Lcom/android/internal/widget/CachingIconView;

.field greylist-max-o mProvider:Landroid/view/ViewOutlineProvider;

.field private blacklist mTopLineTranslation:F

.field private blacklist mTopLineView:Landroid/view/NotificationTopLineView;

.field private greylist-max-o mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

.field private final blacklist mTouchableHeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAcceptAllTouches(Landroid/view/NotificationHeaderView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltExpandTarget(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mAltExpandTarget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackground(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandButton(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/NotificationExpandButton;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandOnlyOnButton(Landroid/view/NotificationHeaderView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchableHeight(Landroid/view/NotificationHeaderView;)I
    .registers 1

    iget p0, p0, Landroid/view/NotificationHeaderView;->mTouchableHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance v0, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 67
    new-instance v0, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 93
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10502c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mTouchableHeight:I

    .line 95
    const v1, 0x1110201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    .line 96
    return-void
.end method

.method private blacklist centerExpandButton(Z)V
    .registers 5
    .param p1, "center"    # Z

    .line 203
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationExpandButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 204
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_a

    const/4 v1, -0x1

    goto :goto_b

    :cond_a
    const/4 v1, -0x2

    :goto_b
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p1, :cond_19

    const/16 v2, 0x11

    goto :goto_1c

    :cond_19
    const v2, 0x800035

    :goto_1c
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    .end local v1    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1e
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method

.method private greylist-max-o getFirstChildNotGone()Landroid/view/View;
    .registers 5

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 401
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 402
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 403
    return-object v1

    .line 400
    .end local v1    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    .end local v0    # "i":I
    :cond_17
    return-object p0
.end method

.method private blacklist measureCenterTranslation(Landroid/view/View;)F
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v0

    .line 241
    .local v0, "parentHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 243
    .local v1, "wrapContentHeight":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-float v3, v0

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/MathUtils;->abs(F)F

    move-result v3

    return v3
.end method

.method private greylist-max-o updateTouchListener()V
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_9

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    return-void

    .line 150
    :cond_9
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    .line 152
    return-void
.end method


# virtual methods
.method public blacklist centerTopLine(Z)V
    .registers 4
    .param p1, "center"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 189
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 193
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 194
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_10

    const/4 v1, -0x1

    goto :goto_11

    :cond_10
    const/4 v1, -0x2

    :goto_11
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 195
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    invoke-virtual {v1, v0}, Landroid/view/NotificationTopLineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-direct {p0, p1}, Landroid/view/NotificationHeaderView;->centerExpandButton(Z)V

    .line 199
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 143
    :cond_15
    return-void
.end method

.method public blacklist getExpandButton()Lcom/android/internal/widget/NotificationExpandButton;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    return-object v0
.end method

.method public blacklist getExpandButtonTranslation()F
    .registers 2

    .line 260
    iget v0, p0, Landroid/view/NotificationHeaderView;->mExpandButtonTranslation:F

    return v0
.end method

.method public blacklist getTopLineTranslation()F
    .registers 2

    .line 252
    iget v0, p0, Landroid/view/NotificationHeaderView;->mTopLineTranslation:F

    return v0
.end method

.method public blacklist getTopLineView()Landroid/view/NotificationTopLineView;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isInTouchRect(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 415
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    .line 416
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_6
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 127
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 128
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    :cond_17
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 100
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 101
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 102
    const v0, 0x102043a

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationTopLineView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    .line 103
    const v0, 0x10202ef

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 104
    const v0, 0x102020b

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAltExpandTarget:Landroid/view/View;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    .line 106
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 225
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 228
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    if-eqz v0, :cond_15

    .line 229
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView;->measureCenterTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView;->mTopLineTranslation:F

    .line 231
    :cond_15
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz v0, :cond_21

    .line 232
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView;->measureCenterTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView;->mExpandButtonTranslation:F

    .line 235
    :cond_21
    return-void
.end method

.method public greylist-max-o setAcceptAllTouches(Z)V
    .registers 3
    .param p1, "acceptAllTouches"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 428
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    .line 429
    return-void
.end method

.method public greylist-max-o setExpandOnlyOnButton(Z)V
    .registers 2
    .param p1, "expandOnlyOnButton"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 436
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    .line 437
    return-void
.end method

.method public greylist-max-o setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 112
    if-eqz p1, :cond_13

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 114
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 116
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1d

    .line 118
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 122
    :goto_1d
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 123
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 156
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 157
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAltExpandTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 160
    return-void
.end method

.method public blacklist setTopLineExtraMarginEnd(I)V
    .registers 3
    .param p1, "extraMarginEnd"    # I

    .line 169
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationTopLineView;->setHeaderTextMarginEnd(I)V

    .line 170
    return-void
.end method

.method public blacklist setTopLineExtraMarginEndDp(F)V
    .registers 3
    .param p1, "extraMarginEndDp"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 180
    nop

    .line 181
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 180
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setTopLineExtraMarginEnd(I)V

    .line 182
    return-void
.end method

.method public blacklist styleTextAsTitle(Z)V
    .registers 6
    .param p1, "styleTextAsTitle"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 270
    if-eqz p1, :cond_6

    .line 271
    const v0, 0x103039d

    goto :goto_9

    .line 272
    :cond_6
    const v0, 0x103039a

    :goto_9
    nop

    .line 274
    .local v0, "styleResId":I
    const v1, 0x1020352

    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "headerText":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    .line 276
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 279
    :cond_1b
    const v2, 0x1020219

    invoke-virtual {p0, v2}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 280
    .local v2, "appNameText":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2c

    .line 281
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 283
    :cond_2c
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

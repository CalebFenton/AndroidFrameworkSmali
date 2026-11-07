.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;,
        Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field private blacklist mAlpha:F

.field private blacklist mBlurRadius:I

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field public final blacklist mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

.field private final blacklist mRect:Landroid/graphics/Rect;

.field private final blacklist mRectPath:Landroid/graphics/Path;

.field private final blacklist mRenderNode:Landroid/graphics/RenderNode;

.field private final blacklist mTmpRadii:[F

.field private blacklist mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    const-class v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V
    .registers 6
    .param p1, "aggregator"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 96
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRect:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 97
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 98
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BackgroundBlurDrawable"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    .line 102
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    return-void
.end method

.method private blacklist updatePath()V
    .registers 9

    .line 190
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_5c

    .line 198
    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 199
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 201
    return-void

    .line 196
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 107
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_22

    .line 111
    :cond_15
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 113
    return-void

    .line 108
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 210
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setAlpha(I)V
    .registers 5
    .param p1, "alpha"    # I

    .line 134
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    .line 135
    int-to-float v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 139
    :cond_16
    return-void
.end method

.method public blacklist setBlurRadius(I)V
    .registers 3
    .param p1, "blurRadius"    # I

    .line 145
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    if-eq v0, p1, :cond_e

    .line 146
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 150
    :cond_e
    return-void
.end method

.method public whitelist setBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 186
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->updatePath()V

    .line 187
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 119
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCornerRadius(F)V
    .registers 2
    .param p1, "cornerRadius"    # F

    .line 156
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(FFFF)V

    .line 157
    return-void
.end method

.method public blacklist setCornerRadius(FFFF)V
    .registers 6
    .param p1, "cornerRadiusTL"    # F
    .param p2, "cornerRadiusTR"    # F
    .param p3, "cornerRadiusBL"    # F
    .param p4, "cornerRadiusBR"    # F

    .line 168
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_2b

    .line 172
    :cond_18
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    .line 173
    iput p2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    .line 174
    iput p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    .line 175
    iput p4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    .line 176
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->updatePath()V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 178
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 180
    :cond_2b
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 124
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 125
    .local v0, "changed":Z
    if-eqz v0, :cond_d

    .line 126
    iput-boolean p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    .line 127
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 129
    :cond_d
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundBlurDrawable{blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corners={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoundedRectangleShape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape$ExpansionDirection;
    }
.end annotation


# static fields
.field private static final greylist-max-o PROPERTY_ROUND_RATIO:Ljava/lang/String; = "roundRatio"


# instance fields
.field private final greylist-max-o mBoundingRectangle:Landroid/graphics/RectF;

.field private final greylist-max-o mBoundingWidth:F

.field private final greylist-max-o mClipPath:Landroid/graphics/Path;

.field private final greylist-max-o mDrawRect:Landroid/graphics/RectF;

.field private final greylist-max-o mExpansionDirection:I

.field private final greylist-max-o mInverted:Z

.field private greylist-max-o mLeftBoundary:F

.field private greylist-max-o mRightBoundary:F

.field private greylist-max-o mRoundRatio:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBoundingRectangle(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F
    .registers 1

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setEndBoundary(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setStartBoundary(F)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/RectF;IZ)V
    .registers 8
    .param p1, "boundingRectangle"    # Landroid/graphics/RectF;
    .param p2, "expansionDirection"    # I
    .param p3, "inverted"    # Z

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    .line 120
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    .line 121
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    .line 126
    iput v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    .line 137
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    .line 138
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iput v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    .line 139
    if-eqz p3, :cond_2d

    if-eqz p2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iput-boolean v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    .line 141
    if-eqz p3, :cond_39

    .line 142
    invoke-static {p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->invert(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mExpansionDirection:I

    goto :goto_3b

    .line 144
    :cond_39
    iput p2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mExpansionDirection:I

    .line 147
    :goto_3b
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4b

    .line 148
    invoke-virtual {p0, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setRoundRatio(F)V

    goto :goto_4e

    .line 150
    :cond_4b
    invoke-virtual {p0, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setRoundRatio(F)V

    .line 152
    :goto_4e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZ)V

    return-void
.end method

.method private greylist-max-o getAdjustedCornerRadius()F
    .registers 3

    .line 212
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v0

    iget v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getBoundingWidth()F
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method private greylist-max-o getCornerRadius()F
    .registers 3

    .line 208
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static greylist-max-o invert(I)I
    .registers 2
    .param p0, "expansionDirection"    # I

    .line 113
    mul-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private greylist-max-o setEndBoundary(F)V
    .registers 3
    .param p1, "endBoundary"    # F

    .line 200
    iget-boolean v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz v0, :cond_a

    .line 201
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    goto :goto_c

    .line 203
    :cond_a
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    .line 205
    :goto_c
    return-void
.end method

.method private greylist-max-o setStartBoundary(F)V
    .registers 3
    .param p1, "startBoundary"    # F

    .line 192
    iget-boolean v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz v0, :cond_a

    .line 193
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    goto :goto_c

    .line 195
    :cond_a
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    .line 197
    :goto_c
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 160
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    iget v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 161
    return-void

    .line 164
    :cond_9
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v0

    .line 165
    .local v0, "cornerRadius":F
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getAdjustedCornerRadius()F

    move-result v1

    .line 167
    .local v1, "adjustedCornerRadius":F
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 168
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 169
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    add-float/2addr v3, v5

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 173
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 178
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 179
    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 181
    return-void
.end method

.method greylist-max-o getRoundRatio()F
    .registers 2

    .line 188
    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    return v0
.end method

.method greylist-max-o setRoundRatio(F)V
    .registers 2
    .param p1, "roundRatio"    # F

    .line 184
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    .line 185
    return-void
.end method

.class public Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
.super Landroid/widget/ImageView;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedRectImageView"
.end annotation


# instance fields
.field private blacklist mExtraImageCount:Ljava/lang/String;

.field private blacklist mOverlayPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRadius:I

.field private blacklist mRoundRectPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 4083
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4075
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4076
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4077
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4078
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4079
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4084
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 4087
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4088
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 4091
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4092
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 4096
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4075
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4076
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4077
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4078
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4079
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4097
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4099
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4100
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4102
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4103
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4104
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4105
    const v2, 0x10500ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 4104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4107
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4108
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4109
    const v2, 0x10500cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 4108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4110
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4111
    return-void
.end method

.method private blacklist updatePath(II)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 4114
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4116
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4117
    .local v0, "imageWidth":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4118
    .local v1, "imageHeight":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4120
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4151
    iget v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    if-eqz v1, :cond_9

    .line 4152
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4155
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4157
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v8

    .line 4158
    .local v8, "x":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v9

    .line 4159
    .local v9, "y":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v2

    sub-int v10, v1, v2

    .line 4160
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v2

    sub-int v11, v1, v2

    .line 4161
    .local v11, "height":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 4162
    int-to-float v1, v8

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v11

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 4165
    .local v1, "xPos":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4166
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 4168
    .local v2, "yPos":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4171
    .end local v1    # "xPos":I
    .end local v2    # "yPos":I
    :cond_67
    int-to-float v1, v8

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v11

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 4172
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 4145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 4146
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4147
    return-void
.end method

.method public blacklist setExtraImageCount(I)V
    .registers 4
    .param p1, "count"    # I

    .line 4136
    if-lez p1, :cond_18

    .line 4137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    goto :goto_1b

    .line 4139
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4141
    :goto_1b
    return-void
.end method

.method public blacklist setRadius(I)V
    .registers 4
    .param p1, "radius"    # I

    .line 4128
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4129
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4130
    return-void
.end method

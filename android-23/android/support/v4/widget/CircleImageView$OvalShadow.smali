.class Landroid/support/v4/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid/support/v4/widget/CircleImageView;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/CircleImageView;II)V
    .locals 7
    .param p1, "this$0"    # Landroid/support/v4/widget/CircleImageView;
    .param p2, "shadowRadius"    # I
    .param p3, "circleDiameter"    # I

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    #@2
    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    #@5
    .line 134
    new-instance v0, Landroid/graphics/Paint;

    #@7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    #@c
    .line 135
    invoke-static {p1, p2}, Landroid/support/v4/widget/CircleImageView;->-set0(Landroid/support/v4/widget/CircleImageView;I)I

    #@f
    .line 136
    iput p3, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mCircleDiameter:I

    #@11
    .line 137
    new-instance v0, Landroid/graphics/RadialGradient;

    #@13
    iget v1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mCircleDiameter:I

    #@15
    div-int/lit8 v1, v1, 0x2

    #@17
    int-to-float v1, v1

    #@18
    iget v2, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mCircleDiameter:I

    #@1a
    div-int/lit8 v2, v2, 0x2

    #@1c
    int-to-float v2, v2

    #@1d
    .line 138
    invoke-static {p1}, Landroid/support/v4/widget/CircleImageView;->-get0(Landroid/support/v4/widget/CircleImageView;)I

    #@20
    move-result v3

    #@21
    int-to-float v3, v3

    #@22
    .line 139
    const/high16 v4, 0x3d000000    # 0.03125f

    #@24
    const/4 v5, 0x0

    #@25
    .line 138
    filled-new-array {v4, v5}, [I

    #@28
    move-result-object v4

    #@29
    .line 140
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@2b
    const/4 v5, 0x0

    #@2c
    .line 137
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@2f
    iput-object v0, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    #@31
    .line 141
    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    #@33
    iget-object v1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    #@35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@38
    .line 132
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 146
    iget-object v2, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    #@2
    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getWidth()I

    #@5
    move-result v1

    #@6
    .line 147
    .local v1, "viewWidth":I
    iget-object v2, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    #@8
    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getHeight()I

    #@b
    move-result v0

    #@c
    .line 148
    .local v0, "viewHeight":I
    div-int/lit8 v2, v1, 0x2

    #@e
    int-to-float v2, v2

    #@f
    div-int/lit8 v3, v0, 0x2

    #@11
    int-to-float v3, v3

    #@12
    iget v4, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mCircleDiameter:I

    #@14
    div-int/lit8 v4, v4, 0x2

    #@16
    iget-object v5, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    #@18
    invoke-static {v5}, Landroid/support/v4/widget/CircleImageView;->-get0(Landroid/support/v4/widget/CircleImageView;)I

    #@1b
    move-result v5

    #@1c
    add-int/2addr v4, v5

    #@1d
    int-to-float v4, v4

    #@1e
    .line 149
    iget-object v5, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    #@20
    .line 148
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@23
    .line 150
    div-int/lit8 v2, v1, 0x2

    #@25
    int-to-float v2, v2

    #@26
    div-int/lit8 v3, v0, 0x2

    #@28
    int-to-float v3, v3

    #@29
    iget v4, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mCircleDiameter:I

    #@2b
    div-int/lit8 v4, v4, 0x2

    #@2d
    int-to-float v4, v4

    #@2e
    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@31
    .line 145
    return-void
.end method

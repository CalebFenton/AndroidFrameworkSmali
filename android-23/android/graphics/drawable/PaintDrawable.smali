.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    #@3
    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@a
    .line 35
    return-void
.end method


# virtual methods
.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 75
    const-string/jumbo v6, "corners"

    #@3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v6

    #@7
    if-eqz v6, :cond_3

    #@9
    .line 77
    sget-object v6, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    #@b
    .line 76
    invoke-virtual {p2, p4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    #@10
    const/4 v7, 0x0

    #@11
    .line 78
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@14
    move-result v3

    #@15
    .line 80
    .local v3, "radius":I
    int-to-float v6, v3

    #@16
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    #@19
    .line 85
    const/4 v6, 0x1

    #@1a
    .line 84
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1d
    move-result v4

    #@1e
    .line 87
    .local v4, "topLeftRadius":I
    const/4 v6, 0x2

    #@1f
    .line 86
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@22
    move-result v5

    #@23
    .line 89
    .local v5, "topRightRadius":I
    const/4 v6, 0x3

    #@24
    .line 88
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@27
    move-result v1

    #@28
    .line 91
    .local v1, "bottomLeftRadius":I
    const/4 v6, 0x4

    #@29
    .line 90
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2c
    move-result v2

    #@2d
    .line 93
    .local v2, "bottomRightRadius":I
    if-ne v4, v3, :cond_0

    #@2f
    if-eq v5, v3, :cond_2

    #@31
    .line 95
    :cond_0
    :goto_0
    const/16 v6, 0x8

    #@33
    new-array v6, v6, [F

    #@35
    .line 96
    int-to-float v7, v4

    #@36
    const/4 v8, 0x0

    #@37
    aput v7, v6, v8

    #@39
    int-to-float v7, v4

    #@3a
    const/4 v8, 0x1

    #@3b
    aput v7, v6, v8

    #@3d
    .line 97
    int-to-float v7, v5

    #@3e
    const/4 v8, 0x2

    #@3f
    aput v7, v6, v8

    #@41
    int-to-float v7, v5

    #@42
    const/4 v8, 0x3

    #@43
    aput v7, v6, v8

    #@45
    .line 98
    int-to-float v7, v1

    #@46
    const/4 v8, 0x4

    #@47
    aput v7, v6, v8

    #@49
    int-to-float v7, v1

    #@4a
    const/4 v8, 0x5

    #@4b
    aput v7, v6, v8

    #@4d
    .line 99
    int-to-float v7, v2

    #@4e
    const/4 v8, 0x6

    #@4f
    aput v7, v6, v8

    #@51
    int-to-float v7, v2

    #@52
    const/4 v8, 0x7

    #@53
    aput v7, v6, v8

    #@55
    .line 95
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    #@58
    .line 102
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@5b
    .line 103
    const/4 v6, 0x1

    #@5c
    return v6

    #@5d
    .line 94
    :cond_2
    if-ne v1, v3, :cond_0

    #@5f
    if-eq v2, v3, :cond_1

    #@61
    goto :goto_0

    #@62
    .line 105
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bottomLeftRadius":I
    .end local v2    # "bottomRightRadius":I
    .end local v3    # "radius":I
    .end local v4    # "topLeftRadius":I
    .end local v5    # "topRightRadius":I
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    #@65
    move-result v6

    #@66
    return v6
.end method

.method public setCornerRadii([F)V
    .locals 2
    .param p1, "radii"    # [F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    if-nez p1, :cond_1

    #@3
    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 64
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    #@c
    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    #@f
    .line 61
    return-void

    #@10
    .line 67
    :cond_1
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    #@12
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    #@15
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    #@18
    goto :goto_0
.end method

.method public setCornerRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 45
    const/4 v1, 0x0

    #@3
    .line 46
    .local v1, "radii":[F
    const/4 v2, 0x0

    #@4
    cmpl-float v2, p1, v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 47
    new-array v1, v3, [F

    #@a
    .line 48
    .local v1, "radii":[F
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@d
    .line 49
    aput p1, v1, v0

    #@f
    .line 48
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 52
    .end local v0    # "i":I
    .end local v1    # "radii":[F
    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    #@15
    .line 44
    return-void
.end method

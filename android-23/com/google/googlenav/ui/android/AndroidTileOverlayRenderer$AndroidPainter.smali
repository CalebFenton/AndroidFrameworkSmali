.class Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;
.super Ljava/lang/Object;
.source "AndroidTileOverlayRenderer.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidPainter"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final linePaint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final polygonPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

.field private final vertexPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;)V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 112
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 103
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@9
    .line 104
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    #@b
    .line 105
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@d
    .line 107
    new-instance v0, Landroid/graphics/Path;

    #@f
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@12
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    #@14
    .line 108
    new-instance v0, Landroid/graphics/Paint;

    #@16
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@19
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@1b
    .line 109
    new-instance v0, Landroid/graphics/Paint;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@20
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    #@22
    .line 110
    new-instance v0, Landroid/graphics/Paint;

    #@24
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@27
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@29
    .line 113
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@2b
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@2e
    .line 114
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@30
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@35
    .line 115
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    #@37
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@3a
    .line 116
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    #@3c
    const/high16 v1, 0x40000000    # 2.0f

    #@3e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@41
    .line 117
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@43
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@46
    .line 118
    return-void
.end method

.method private drawPendingLine()V
    .locals 3

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    #@3
    .line 185
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@5
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    #@7
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@c
    .line 186
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    #@e
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@11
    .line 187
    return-void
.end method

.method private ensureCanvas()V
    .locals 3

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    :goto_0
    return-void

    #@5
    .line 137
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@7
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getWidth()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@d
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getHeight()I

    #@10
    move-result v1

    #@11
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@13
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    #@19
    .line 139
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    #@1b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@1d
    # invokes: Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->access$000(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@23
    goto :goto_0
.end method

.method private setColor(ILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 150
    shr-int/lit8 v1, p1, 0x18

    #@2
    and-int/lit16 v0, v1, 0xff

    #@4
    .local v0, "alpha":I
    const v1, 0xffffff

    #@7
    .line 151
    and-int/2addr v1, p1

    #@8
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@b
    .line 152
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@e
    .line 153
    return-void
.end method


# virtual methods
.method public addLineSegment([I[IZ)V
    .locals 5
    .param p1, "endPoint"    # [I
    .param p2, "startPoint"    # [I
    .param p3, "skipTo"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 175
    if-nez p3, :cond_0

    #@4
    .line 180
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    #@6
    aget v1, p1, v3

    #@8
    int-to-float v1, v1

    #@9
    aget v2, p1, v4

    #@b
    int-to-float v2, v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    #@f
    .line 181
    return-void

    #@10
    .line 176
    :cond_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->drawPendingLine()V

    #@13
    .line 177
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    #@15
    aget v1, p2, v3

    #@17
    int-to-float v1, v1

    #@18
    aget v2, p2, v4

    #@1a
    int-to-float v2, v2

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    #@1e
    goto :goto_0
.end method

.method public endLine()V
    .locals 0

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->drawPendingLine()V

    #@3
    .line 171
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public paintEllipse(IIIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "outlineWidth"    # I
    .param p6, "outlineColor"    # I
    .param p7, "fillColor"    # I

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    #@3
    .line 257
    new-instance v0, Landroid/graphics/RectF;

    #@5
    div-int/lit8 v1, p3, 0x2

    #@7
    sub-int v1, p1, v1

    #@9
    int-to-float v1, v1

    #@a
    div-int/lit8 v2, p4, 0x2

    #@c
    sub-int v2, p2, v2

    #@e
    int-to-float v2, v2

    #@f
    int-to-float v3, p3

    #@10
    int-to-float v4, p4

    #@11
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@14
    .line 260
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@16
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@18
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1b
    .line 261
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@21
    .line 262
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@23
    invoke-direct {p0, p7, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    #@26
    .line 263
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@28
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@2a
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@2d
    .line 266
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@2f
    int-to-float v2, p5

    #@30
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@33
    .line 267
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@35
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@3a
    .line 268
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@3c
    invoke-direct {p0, p6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    #@3f
    .line 269
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@41
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@43
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@46
    .line 270
    return-void
.end method

.method public paintPolygon([[JIII)V
    .locals 10
    .param p1, "boundaryPixelXY"    # [[J
    .param p2, "lineColor"    # I
    .param p3, "lineWidth"    # I
    .param p4, "fillColor"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 213
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    #@5
    .line 215
    new-instance v2, Landroid/graphics/Path;

    #@7
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    #@a
    .line 216
    .local v2, "path":Landroid/graphics/Path;
    array-length v1, p1

    #@b
    .local v1, "boundaryCount":I
    const/4 v0, 0x0

    #@c
    .line 217
    .local v0, "boundary":I
    :goto_0
    if-lt v0, v1, :cond_0

    #@e
    .line 234
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@10
    invoke-virtual {v2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@13
    .line 235
    if-eq p4, v8, :cond_2

    #@15
    .line 238
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@17
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@19
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1c
    .line 240
    :goto_1
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@1e
    invoke-direct {p0, p4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    #@21
    .line 241
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@23
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@25
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@28
    .line 244
    if-ne p2, v8, :cond_3

    #@2a
    .line 251
    :goto_2
    return-void

    #@2b
    .line 219
    :cond_0
    aget-object v5, p1, v0

    #@2d
    aget-wide v6, v5, v9

    #@2f
    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@32
    move-result v5

    #@33
    int-to-float v5, v5

    #@34
    aget-object v6, p1, v0

    #@36
    aget-wide v6, v6, v9

    #@38
    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@3b
    move-result v6

    #@3c
    int-to-float v6, v6

    #@3d
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    #@40
    .line 223
    aget-object v5, p1, v0

    #@42
    array-length v4, v5

    #@43
    .local v4, "pointCount":I
    const/4 v3, 0x1

    #@44
    .line 224
    .local v3, "point":I
    :goto_3
    if-lt v3, v4, :cond_1

    #@46
    .line 230
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    #@49
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 225
    :cond_1
    aget-object v5, p1, v0

    #@4e
    aget-wide v6, v5, v3

    #@50
    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@53
    move-result v5

    #@54
    int-to-float v5, v5

    #@55
    aget-object v6, p1, v0

    #@57
    aget-wide v6, v6, v3

    #@59
    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@5c
    move-result v6

    #@5d
    int-to-float v6, v6

    #@5e
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    #@61
    .line 224
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_3

    #@64
    .line 236
    .end local v3    # "point":I
    .end local v4    # "pointCount":I
    :cond_2
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@66
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@68
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@6b
    goto :goto_1

    #@6c
    .line 245
    :cond_3
    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@6e
    invoke-virtual {v2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@71
    .line 246
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@73
    int-to-float v6, p3

    #@74
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@77
    .line 247
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@79
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@7b
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@7e
    .line 248
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@80
    invoke-direct {p0, p2, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    #@83
    .line 249
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@85
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    #@87
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@8a
    goto :goto_2
.end method

.method public setup(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    #@2
    .line 127
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    #@4
    .line 128
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@6
    .line 129
    return-void
.end method

.method public startLine(III)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "width"    # I
    .param p3, "lineStyle"    # I

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    #@3
    .line 158
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    #@5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@8
    .line 160
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@a
    int-to-float v1, p2

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@e
    const/4 v0, 0x1

    #@f
    .line 161
    if-eq p3, v0, :cond_0

    #@11
    .line 164
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@17
    .line 166
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@19
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    #@1c
    .line 167
    return-void

    #@1d
    .line 162
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    #@1f
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->access$100()Landroid/graphics/PathEffect;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@26
    goto :goto_0
.end method

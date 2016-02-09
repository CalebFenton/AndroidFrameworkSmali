.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;


# static fields
.field private static final clipRect:Landroid/graphics/Rect;

.field private static final destRect:Landroid/graphics/Rect;

.field private static final oval:Landroid/graphics/RectF;

.field private static final sourceRect:Landroid/graphics/Rect;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    #@7
    .line 29
    new-instance v0, Landroid/graphics/Rect;

    #@9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    #@e
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    #@15
    .line 31
    new-instance v0, Landroid/graphics/RectF;

    #@17
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->oval:Landroid/graphics/RectF;

    #@1c
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    #@a
    .line 35
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    #@c
    const/high16 v1, 0x3f800000    # 1.0f

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@11
    .line 36
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    #@13
    .line 37
    return-void
.end method


# virtual methods
.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V
    .locals 0
    .param p1, "img"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 121
    if-nez p1, :cond_0

    #@2
    .line 124
    :goto_0
    return-void

    #@3
    .line 122
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V

    #@6
    goto :goto_0
.end method

.method public drawScaledImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IIIIIIII)Z
    .locals 5
    .param p1, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "sx"    # I
    .param p7, "sy"    # I
    .param p8, "sw"    # I
    .param p9, "sh"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 264
    if-eqz p1, :cond_0

    #@4
    .line 267
    check-cast p1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@6
    .end local p1    # "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 268
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    #@c
    .line 271
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    #@e
    add-int v2, p6, p8

    #@10
    add-int v3, p7, p9

    #@12
    invoke-virtual {v1, p6, p7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@15
    .line 272
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    #@17
    add-int v2, p2, p4

    #@19
    add-int v3, p3, p5

    #@1b
    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@1e
    .line 273
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    #@20
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    #@22
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@27
    .line 274
    const/4 v1, 0x1

    #@28
    return v1

    #@29
    .line 265
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_0
    return v1

    #@2a
    .line 269
    .end local p1    # "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return v1
.end method

.method public fillRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    #@2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@7
    .line 91
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    #@9
    int-to-float v1, p1

    #@a
    int-to-float v2, p2

    #@b
    add-int v3, p1, p3

    #@d
    int-to-float v3, v3

    #@e
    add-int v4, p2, p4

    #@10
    int-to-float v4, v4

    #@11
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    #@13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@16
    .line 92
    return-void
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    #@2
    return-object v0
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 40
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    #@2
    .line 41
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    #@2
    const/high16 v1, -0x1000000

    #@4
    or-int/2addr v1, p1

    #@5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@8
    .line 87
    return-void
.end method

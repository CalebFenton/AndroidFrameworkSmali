.class public Landroid/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/Gesture$1;
    }
.end annotation


# static fields
.field private static final BITMAP_RENDERING_ANTIALIAS:Z = true

.field private static final BITMAP_RENDERING_DITHER:Z = true

.field private static final BITMAP_RENDERING_WIDTH:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final GESTURE_ID_BASE:J

.field private static final sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mBoundingBox:Landroid/graphics/RectF;

.field private mGestureID:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Landroid/gesture/Gesture;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    #@2
    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    sput-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    #@6
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@c
    sput-object v0, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    .line 283
    new-instance v0, Landroid/gesture/Gesture$1;

    #@10
    invoke-direct {v0}, Landroid/gesture/Gesture$1;-><init>()V

    #@13
    sput-object v0, Landroid/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Landroid/graphics/RectF;

    #@5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@a
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@11
    .line 60
    sget-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    #@13
    sget-object v2, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@18
    move-result v2

    #@19
    int-to-long v2, v2

    #@1a
    add-long/2addr v0, v2

    #@1b
    iput-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    #@1d
    .line 59
    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    new-instance v1, Landroid/gesture/Gesture;

    #@2
    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    #@5
    .line 272
    .local v1, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    #@8
    move-result-wide v4

    #@9
    iput-wide v4, v1, Landroid/gesture/Gesture;->mGestureID:J

    #@b
    .line 274
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@e
    move-result v0

    #@f
    .line 276
    .local v0, "count":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 277
    invoke-static {p0}, Landroid/gesture/GestureStroke;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v1, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    #@19
    .line 276
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 280
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addStroke(Landroid/gesture/GestureStroke;)V
    .locals 2
    .param p1, "stroke"    # Landroid/gesture/GestureStroke;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 97
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@7
    iget-object v1, p1, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    #@c
    .line 95
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    .line 65
    new-instance v1, Landroid/gesture/Gesture;

    #@2
    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    #@5
    .line 66
    .local v1, "gesture":Landroid/gesture/Gesture;
    iget-object v4, v1, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@7
    iget-object v5, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@9
    iget v5, v5, Landroid/graphics/RectF;->left:F

    #@b
    iget-object v6, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@d
    iget v6, v6, Landroid/graphics/RectF;->top:F

    #@f
    .line 67
    iget-object v7, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@11
    iget v7, v7, Landroid/graphics/RectF;->right:F

    #@13
    iget-object v8, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@15
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    #@17
    .line 66
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    #@1a
    .line 68
    iget-object v4, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v0

    #@20
    .line 69
    .local v0, "count":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@23
    .line 70
    iget-object v4, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/gesture/GestureStroke;

    #@2b
    .line 71
    .local v3, "stroke":Landroid/gesture/GestureStroke;
    iget-object v5, v1, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->clone()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Landroid/gesture/GestureStroke;

    #@33
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 69
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 73
    .end local v3    # "stroke":Landroid/gesture/GestureStroke;
    :cond_0
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBoundingBox()Landroid/graphics/RectF;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    #@2
    return-object v0
.end method

.method public getID()J
    .locals 2

    #@0
    .prologue
    .line 172
    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    #@2
    return-wide v0
.end method

.method public getLength()F
    .locals 6

    #@0
    .prologue
    .line 107
    const/4 v2, 0x0

    #@1
    .line 108
    .local v2, "len":I
    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@3
    .line 109
    .local v3, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 111
    .local v0, "count":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 112
    int-to-float v5, v2

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/gesture/GestureStroke;

    #@11
    iget v4, v4, Landroid/gesture/GestureStroke;->length:F

    #@13
    add-float/2addr v4, v5

    #@14
    float-to-int v2, v4

    #@15
    .line 111
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 115
    :cond_0
    int-to-float v4, v2

    #@19
    return v4
.end method

.method public getStrokes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getStrokesCount()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v2, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@2
    .line 256
    .local v2, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 259
    .local v0, "count":I
    iget-wide v4, p0, Landroid/gesture/Gesture;->mGestureID:J

    #@8
    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@b
    .line 261
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@e
    .line 263
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 264
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/gesture/GestureStroke;

    #@17
    invoke-virtual {v3, p1}, Landroid/gesture/GestureStroke;->serialize(Ljava/io/DataOutputStream;)V

    #@1a
    .line 263
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 254
    :cond_0
    return-void
.end method

.method setID(J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 165
    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    #@2
    .line 164
    return-void
.end method

.method public toBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "inset"    # I
    .param p4, "color"    # I

    #@0
    .prologue
    .line 222
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2
    .line 221
    invoke-static {p1, p2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v1

    #@6
    .line 223
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    #@8
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@b
    .line 225
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    #@d
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@10
    .line 226
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    #@11
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@14
    .line 227
    const/4 v9, 0x1

    #@15
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setDither(Z)V

    #@18
    .line 228
    move/from16 v0, p4

    #@1a
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@1d
    .line 229
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@1f
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@22
    .line 230
    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@24
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@27
    .line 231
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@29
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@2c
    .line 232
    const/high16 v9, 0x40000000    # 2.0f

    #@2e
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@31
    .line 234
    invoke-virtual {p0}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    #@34
    move-result-object v5

    #@35
    .line 235
    .local v5, "path":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    #@37
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@3a
    .line 236
    .local v2, "bounds":Landroid/graphics/RectF;
    const/4 v9, 0x1

    #@3b
    invoke-virtual {v5, v2, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@3e
    .line 238
    mul-int/lit8 v9, p3, 0x2

    #@40
    sub-int v9, p1, v9

    #@42
    int-to-float v9, v9

    #@43
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@46
    move-result v10

    #@47
    div-float v7, v9, v10

    #@49
    .line 239
    .local v7, "sx":F
    mul-int/lit8 v9, p3, 0x2

    #@4b
    sub-int v9, p2, v9

    #@4d
    int-to-float v9, v9

    #@4e
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    #@51
    move-result v10

    #@52
    div-float v8, v9, v10

    #@54
    .line 240
    .local v8, "sy":F
    cmpl-float v9, v7, v8

    #@56
    if-lez v9, :cond_0

    #@58
    move v6, v8

    #@59
    .line 241
    .local v6, "scale":F
    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    #@5b
    div-float/2addr v9, v6

    #@5c
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@5f
    .line 243
    iget v9, v2, Landroid/graphics/RectF;->left:F

    #@61
    neg-float v9, v9

    #@62
    int-to-float v10, p1

    #@63
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@66
    move-result v11

    #@67
    mul-float/2addr v11, v6

    #@68
    sub-float/2addr v10, v11

    #@69
    const/high16 v11, 0x40000000    # 2.0f

    #@6b
    div-float/2addr v10, v11

    #@6c
    add-float/2addr v9, v10

    #@6d
    .line 244
    iget v10, v2, Landroid/graphics/RectF;->top:F

    #@6f
    neg-float v10, v10

    #@70
    int-to-float v11, p2

    #@71
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    #@74
    move-result v12

    #@75
    mul-float/2addr v12, v6

    #@76
    sub-float/2addr v11, v12

    #@77
    const/high16 v12, 0x40000000    # 2.0f

    #@79
    div-float/2addr v11, v12

    #@7a
    add-float/2addr v10, v11

    #@7b
    .line 243
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->offset(FF)V

    #@7e
    .line 246
    move/from16 v0, p3

    #@80
    int-to-float v9, v0

    #@81
    move/from16 v0, p3

    #@83
    int-to-float v10, v0

    #@84
    invoke-virtual {v3, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    #@87
    .line 247
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@8a
    .line 249
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@8d
    .line 251
    return-object v1

    #@8e
    .line 240
    .end local v6    # "scale":F
    :cond_0
    move v6, v7

    #@8f
    .restart local v6    # "scale":F
    goto :goto_0
.end method

.method public toBitmap(IIIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "edge"    # I
    .param p4, "numSample"    # I
    .param p5, "color"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 186
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@3
    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@6
    move-result-object v0

    #@7
    .line 187
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    #@9
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@c
    .line 189
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v7, p3

    #@d
    int-to-float v8, p3

    #@e
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@11
    .line 191
    new-instance v4, Landroid/graphics/Paint;

    #@13
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@16
    .line 192
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@19
    .line 193
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setDither(Z)V

    #@1c
    .line 194
    invoke-virtual {v4, p5}, Landroid/graphics/Paint;->setColor(I)V

    #@1f
    .line 195
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@21
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@24
    .line 196
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@26
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@29
    .line 197
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@2b
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@2e
    .line 198
    const/high16 v7, 0x40000000    # 2.0f

    #@30
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@33
    .line 200
    iget-object v6, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@35
    .line 201
    .local v6, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v2

    #@39
    .line 203
    .local v2, "count":I
    const/4 v3, 0x0

    #@3a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@3c
    .line 204
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v7

    #@40
    check-cast v7, Landroid/gesture/GestureStroke;

    #@42
    mul-int/lit8 v8, p3, 0x2

    #@44
    sub-int v8, p1, v8

    #@46
    int-to-float v8, v8

    #@47
    mul-int/lit8 v9, p3, 0x2

    #@49
    sub-int v9, p2, v9

    #@4b
    int-to-float v9, v9

    #@4c
    invoke-virtual {v7, v8, v9, p4}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    #@4f
    move-result-object v5

    #@50
    .line 205
    .local v5, "path":Landroid/graphics/Path;
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@53
    .line 203
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_0

    #@56
    .line 208
    .end local v5    # "path":Landroid/graphics/Path;
    :cond_0
    return-object v0
.end method

.method public toPath()Landroid/graphics/Path;
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toPath(IIII)Landroid/graphics/Path;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "edge"    # I
    .param p4, "numSample"    # I

    #@0
    .prologue
    .line 143
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 130
    if-nez p1, :cond_0

    #@2
    new-instance p1, Landroid/graphics/Path;

    #@4
    .end local p1    # "path":Landroid/graphics/Path;
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@7
    .line 132
    .restart local p1    # "path":Landroid/graphics/Path;
    :cond_0
    iget-object v2, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@9
    .line 133
    .local v2, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 135
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 136
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/gesture/GestureStroke;

    #@16
    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->getPath()Landroid/graphics/Path;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    #@1d
    .line 135
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 139
    :cond_1
    return-object p1
.end method

.method public toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "edge"    # I
    .param p5, "numSample"    # I

    #@0
    .prologue
    .line 147
    if-nez p1, :cond_0

    #@2
    new-instance p1, Landroid/graphics/Path;

    #@4
    .end local p1    # "path":Landroid/graphics/Path;
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@7
    .line 149
    .restart local p1    # "path":Landroid/graphics/Path;
    :cond_0
    iget-object v2, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    #@9
    .line 150
    .local v2, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 152
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 153
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/gesture/GestureStroke;

    #@16
    mul-int/lit8 v4, p4, 0x2

    #@18
    sub-int v4, p2, v4

    #@1a
    int-to-float v4, v4

    #@1b
    mul-int/lit8 v5, p4, 0x2

    #@1d
    sub-int v5, p3, v5

    #@1f
    int-to-float v5, v5

    #@20
    invoke-virtual {v3, v4, v5, p5}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    #@27
    .line 152
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 156
    :cond_1
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 312
    iget-wide v4, p0, Landroid/gesture/Gesture;->mGestureID:J

    #@2
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 314
    const/4 v3, 0x0

    #@6
    .line 316
    .local v3, "result":Z
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    const v4, 0x8000

    #@b
    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@e
    .line 317
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@10
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 320
    .local v2, "outStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 321
    const/4 v3, 0x1

    #@17
    .line 325
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@1a
    .line 326
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@1d
    .line 329
    :goto_0
    if-eqz v3, :cond_0

    #@1f
    .line 330
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@22
    move-result-object v4

    #@23
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    #@26
    .line 311
    :cond_0
    return-void

    #@27
    .line 322
    :catch_0
    move-exception v1

    #@28
    .line 323
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v4, "Gestures"

    #@2b
    const-string/jumbo v5, "Error writing Gesture to parcel:"

    #@2e
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 325
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@34
    .line 326
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@37
    goto :goto_0

    #@38
    .line 324
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@39
    .line 325
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@3c
    .line 326
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    #@3f
    .line 324
    throw v4
.end method

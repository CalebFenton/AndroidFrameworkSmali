.class public Landroid/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o BITMAP_RENDERING_ANTIALIAS:Z = true

.field private static final greylist-max-o BITMAP_RENDERING_DITHER:Z = true

.field private static final greylist-max-o BITMAP_RENDERING_WIDTH:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o GESTURE_ID_BASE:J

.field private static final greylist-max-o sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o mBoundingBox:Landroid/graphics/RectF;

.field private greylist-max-o mGestureID:J

.field private final greylist-max-o mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmGestureID(Landroid/gesture/Gesture;J)V
    .registers 3

    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 283
    new-instance v0, Landroid/gesture/Gesture$1;

    invoke-direct {v0}, Landroid/gesture/Gesture$1;-><init>()V

    sput-object v0, Landroid/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 60
    sget-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    sget-object v2, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    .line 61
    return-void
.end method

.method static greylist-max-o deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 272
    .local v0, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/gesture/Gesture;->mGestureID:J

    .line 274
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 276
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_1c

    .line 277
    invoke-static {p0}, Landroid/gesture/GestureStroke;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 280
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public whitelist addStroke(Landroid/gesture/GestureStroke;)V
    .registers 4
    .param p1, "stroke"    # Landroid/gesture/GestureStroke;

    .line 96
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v1, p1, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 98
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 7

    .line 65
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 66
    .local v0, "gesture":Landroid/gesture/Gesture;
    iget-object v1, v0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object v1, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v1, :cond_39

    .line 70
    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    .line 71
    .local v3, "stroke":Landroid/gesture/GestureStroke;
    iget-object v4, v0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureStroke;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v3    # "stroke":Landroid/gesture/GestureStroke;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 73
    .end local v2    # "i":I
    :cond_39
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist getID()J
    .registers 3

    .line 172
    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-wide v0
.end method

.method public whitelist getLength()F
    .registers 7

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "len":I
    iget-object v1, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 109
    .local v1, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 111
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_18

    .line 112
    int-to-float v4, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureStroke;

    iget v5, v5, Landroid/gesture/GestureStroke;->length:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 115
    .end local v3    # "i":I
    :cond_18
    int-to-float v3, v0

    return v3
.end method

.method public whitelist getStrokes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStrokesCount()I
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-o serialize(Ljava/io/DataOutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 256
    .local v0, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 259
    .local v1, "count":I
    iget-wide v2, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 261
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 263
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1d

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v3, p1}, Landroid/gesture/GestureStroke;->serialize(Ljava/io/DataOutputStream;)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 266
    .end local v2    # "i":I
    :cond_1d
    return-void
.end method

.method greylist-max-o setID(J)V
    .registers 3
    .param p1, "id"    # J

    .line 165
    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    .line 166
    return-void
.end method

.method public whitelist toBitmap(IIII)Landroid/graphics/Bitmap;
    .registers 22
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "inset"    # I
    .param p4, "color"    # I

    .line 221
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 223
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 226
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 228
    move/from16 v7, p4

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 231
    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 232
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v9

    .line 235
    .local v9, "path":Landroid/graphics/Path;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 236
    .local v10, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v9, v10, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 238
    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v0, v6

    int-to-float v6, v6

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v6, v11

    .line 239
    .local v6, "sx":F
    mul-int/lit8 v11, v2, 0x2

    sub-int v11, v1, v11

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float/2addr v11, v12

    .line 240
    .local v11, "sy":F
    cmpl-float v12, v6, v11

    if-lez v12, :cond_5c

    move v12, v11

    goto :goto_5d

    :cond_5c
    move v12, v6

    .line 241
    .local v12, "scale":F
    :goto_5d
    div-float v13, v8, v12

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    iget v13, v10, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    int-to-float v14, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float/2addr v15, v12

    sub-float/2addr v14, v15

    div-float/2addr v14, v8

    add-float/2addr v13, v14

    iget v14, v10, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    int-to-float v15, v1

    .line 244
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    mul-float v16, v16, v12

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    add-float/2addr v14, v15

    .line 243
    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->offset(FF)V

    .line 246
    int-to-float v8, v2

    int-to-float v13, v2

    invoke-virtual {v4, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    invoke-virtual {v4, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 249
    invoke-virtual {v4, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    return-object v3
.end method

.method public whitelist toBitmap(IIIII)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "edge"    # I
    .param p4, "numSample"    # I
    .param p5, "color"    # I

    .line 186
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v2, p3

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 192
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 197
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 201
    .local v3, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 203
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    if-ge v5, v4, :cond_56

    .line 204
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GestureStroke;

    mul-int/lit8 v7, p3, 0x2

    sub-int v7, p1, v7

    int-to-float v7, v7

    mul-int/lit8 v8, p3, 0x2

    sub-int v8, p2, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8, p4}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v6

    .line 205
    .local v6, "path":Landroid/graphics/Path;
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    .end local v6    # "path":Landroid/graphics/Path;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 208
    .end local v5    # "i":I
    :cond_56
    return-object v0
.end method

.method public whitelist toPath()Landroid/graphics/Path;
    .registers 2

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toPath(IIII)Landroid/graphics/Path;
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "edge"    # I
    .param p4, "numSample"    # I

    .line 143
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "edge":I
    .end local p4    # "numSample":I
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "edge":I
    .local v5, "numSample":I
    invoke-virtual/range {v0 .. v5}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public whitelist toPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 6
    .param p1, "path"    # Landroid/graphics/Path;

    .line 130
    if-nez p1, :cond_8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object p1, v0

    .line 132
    :cond_8
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 133
    .local v0, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 139
    .end local v2    # "i":I
    :cond_21
    return-object p1
.end method

.method public whitelist toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;
    .registers 12
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "edge"    # I
    .param p5, "numSample"    # I

    .line 147
    if-nez p1, :cond_8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object p1, v0

    .line 149
    :cond_8
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 150
    .local v0, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 152
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_2b

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    mul-int/lit8 v4, p4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    mul-int/lit8 v5, p4, 0x2

    sub-int v5, p3, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5, p5}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 156
    .end local v2    # "i":I
    :cond_2b
    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 312
    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "result":Z
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 317
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 320
    .local v2, "outStream":Ljava/io/DataOutputStream;
    :try_start_13
    invoke-virtual {p0, v2}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21
    .catchall {:try_start_13 .. :try_end_16} :catchall_1f

    .line 321
    const/4 v0, 0x1

    .line 325
    nop

    :goto_18
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 327
    goto :goto_2b

    .line 325
    :catchall_1f
    move-exception v3

    goto :goto_35

    .line 322
    :catch_21
    move-exception v3

    .line 323
    .local v3, "e":Ljava/io/IOException;
    :try_start_22
    const-string v4, "Gestures"

    const-string v5, "Error writing Gesture to parcel:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 325
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_18

    .line 329
    :goto_2b
    if-eqz v0, :cond_34

    .line 330
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 332
    :cond_34
    return-void

    .line 325
    :goto_35
    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 327
    throw v3
.end method

.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final greylist-max-o TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final whitelist boundingBox:Landroid/graphics/RectF;

.field public final whitelist length:F

.field private greylist-max-o mCachedPath:Landroid/graphics/Path;

.field public final whitelist points:[F

.field private final greylist-max-o timestamps:[J


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/RectF;F[F[J)V
    .registers 10
    .param p1, "bbx"    # Landroid/graphics/RectF;
    .param p2, "len"    # F
    .param p3, "pts"    # [F
    .param p4, "times"    # [J

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 89
    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    .line 90
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 91
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    .local v0, "count":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    .line 52
    .local v1, "tmpPoints":[F
    new-array v2, v0, [J

    .line 54
    .local v2, "times":[J
    const/4 v3, 0x0

    .line 55
    .local v3, "bx":Landroid/graphics/RectF;
    const/4 v4, 0x0

    .line 56
    .local v4, "len":F
    const/4 v5, 0x0

    .line 58
    .local v5, "index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v0, :cond_70

    .line 59
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GesturePoint;

    .line 60
    .local v7, "p":Landroid/gesture/GesturePoint;
    mul-int/lit8 v8, v6, 0x2

    iget v9, v7, Landroid/gesture/GesturePoint;->x:F

    aput v9, v1, v8

    .line 61
    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    iget v9, v7, Landroid/gesture/GesturePoint;->y:F

    aput v9, v1, v8

    .line 62
    iget-wide v8, v7, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v8, v2, v5

    .line 64
    if-nez v3, :cond_46

    .line 65
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 66
    .end local v3    # "bx":Landroid/graphics/RectF;
    .local v8, "bx":Landroid/graphics/RectF;
    iget v3, v7, Landroid/gesture/GesturePoint;->y:F

    iput v3, v8, Landroid/graphics/RectF;->top:F

    .line 67
    iget v3, v7, Landroid/gesture/GesturePoint;->x:F

    iput v3, v8, Landroid/graphics/RectF;->left:F

    .line 68
    iget v3, v7, Landroid/gesture/GesturePoint;->x:F

    iput v3, v8, Landroid/graphics/RectF;->right:F

    .line 69
    iget v3, v7, Landroid/gesture/GesturePoint;->y:F

    iput v3, v8, Landroid/graphics/RectF;->bottom:F

    .line 70
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v8

    .end local v4    # "len":F
    .local v3, "len":F
    goto :goto_6a

    .line 72
    .end local v8    # "bx":Landroid/graphics/RectF;
    .local v3, "bx":Landroid/graphics/RectF;
    .restart local v4    # "len":F
    :cond_46
    float-to-double v8, v4

    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v11, v6, -0x1

    mul-int/lit8 v11, v11, 0x2

    aget v11, v1, v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, v7, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v13, v6, -0x1

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v13, v1, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v4, v8

    .line 73
    iget v8, v7, Landroid/gesture/GesturePoint;->x:F

    iget v9, v7, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v3, v8, v9}, Landroid/graphics/RectF;->union(FF)V

    .line 75
    :goto_6a
    nop

    .end local v7    # "p":Landroid/gesture/GesturePoint;
    add-int/lit8 v5, v5, 0x1

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 78
    .end local v6    # "i":I
    :cond_70
    iput-object v2, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 79
    iput-object v1, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 80
    iput-object v3, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 81
    iput v4, p0, Landroid/gesture/GestureStroke;->length:F

    .line 82
    return-void
.end method

.method static greylist-max-o deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 222
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_16

    .line 224
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 227
    .end local v2    # "i":I
    :cond_16
    new-instance v2, Landroid/gesture/GestureStroke;

    invoke-direct {v2, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method private greylist-max-o makePath()V
    .registers 14

    .line 121
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 122
    .local v0, "localPoints":[F
    array-length v1, v0

    .line 124
    .local v1, "count":I
    const/4 v2, 0x0

    .line 126
    .local v2, "path":Landroid/graphics/Path;
    const/4 v3, 0x0

    .line 127
    .local v3, "mX":F
    const/4 v4, 0x0

    .line 129
    .local v4, "mY":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v1, :cond_45

    .line 130
    aget v6, v0, v5

    .line 131
    .local v6, "x":F
    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    .line 132
    .local v7, "y":F
    if-nez v2, :cond_1f

    .line 133
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 134
    .end local v2    # "path":Landroid/graphics/Path;
    .local v8, "path":Landroid/graphics/Path;
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    move v2, v6

    .line 136
    .end local v3    # "mX":F
    .local v2, "mX":F
    move v3, v7

    move v4, v3

    move v3, v2

    move-object v2, v8

    .end local v4    # "mY":F
    .local v3, "mY":F
    goto :goto_42

    .line 138
    .end local v8    # "path":Landroid/graphics/Path;
    .local v2, "path":Landroid/graphics/Path;
    .local v3, "mX":F
    .restart local v4    # "mY":F
    :cond_1f
    sub-float v8, v6, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 139
    .local v8, "dx":F
    sub-float v9, v7, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 140
    .local v9, "dy":F
    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v11, v8, v10

    if-gez v11, :cond_35

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_42

    .line 141
    :cond_35
    add-float v10, v6, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v12, v7, v4

    div-float/2addr v12, v11

    invoke-virtual {v2, v3, v4, v10, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 142
    move v3, v6

    .line 143
    move v4, v7

    .line 129
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x2

    goto :goto_7

    .line 148
    .end local v5    # "i":I
    :cond_45
    iput-object v2, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 149
    return-void
.end method


# virtual methods
.method public whitelist clearPath()V
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 235
    :cond_9
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 96
    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public whitelist computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_7

    .line 106
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 109
    :cond_7
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_7

    .line 114
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 117
    :cond_7
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method greylist-max-o serialize(Ljava/io/DataOutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 202
    .local v0, "pts":[F
    iget-object v1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 203
    .local v1, "times":[J
    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v2, v2

    .line 206
    .local v2, "count":I
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_25

    .line 210
    aget v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 212
    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 214
    div-int/lit8 v4, v3, 0x2

    aget-wide v4, v1, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 208
    add-int/lit8 v3, v3, 0x2

    goto :goto_d

    .line 216
    .end local v3    # "i":I
    :cond_25
    return-void
.end method

.method public whitelist toPath(FFI)Landroid/graphics/Path;
    .registers 22
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "numSample"    # I

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v2

    .line 162
    .local v2, "pts":[F
    iget-object v3, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 164
    .local v3, "rect":Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-static {v2, v4, v5}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 166
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, p1, v4

    .line 167
    .local v4, "sx":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, p2, v5

    .line 168
    .local v5, "sy":F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_25

    move v6, v5

    goto :goto_26

    :cond_25
    move v6, v4

    .line 169
    .local v6, "scale":F
    :goto_26
    invoke-static {v2, v6, v6}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, "mX":F
    const/4 v8, 0x0

    .line 174
    .local v8, "mY":F
    const/4 v9, 0x0

    .line 176
    .local v9, "path":Landroid/graphics/Path;
    array-length v10, v2

    .line 178
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2e
    if-ge v11, v10, :cond_72

    .line 179
    aget v12, v2, v11

    .line 180
    .local v12, "x":F
    add-int/lit8 v13, v11, 0x1

    aget v13, v2, v13

    .line 181
    .local v13, "y":F
    if-nez v9, :cond_44

    .line 182
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 183
    .end local v9    # "path":Landroid/graphics/Path;
    .local v14, "path":Landroid/graphics/Path;
    invoke-virtual {v14, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    move v7, v12

    .line 185
    move v8, v13

    move-object v9, v14

    goto :goto_6b

    .line 187
    .end local v14    # "path":Landroid/graphics/Path;
    .restart local v9    # "path":Landroid/graphics/Path;
    :cond_44
    sub-float v14, v12, v7

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 188
    .local v14, "dx":F
    sub-float v15, v13, v8

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 189
    .local v15, "dy":F
    const/high16 v16, 0x40400000    # 3.0f

    cmpl-float v17, v14, v16

    if-gez v17, :cond_5a

    cmpl-float v16, v15, v16

    if-ltz v16, :cond_6b

    .line 190
    :cond_5a
    add-float v16, v12, v7

    const/high16 v17, 0x40000000    # 2.0f

    div-float v0, v16, v17

    add-float v16, v13, v8

    div-float v1, v16, v17

    invoke-virtual {v9, v7, v8, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 191
    move v0, v12

    .line 192
    .end local v7    # "mX":F
    .local v0, "mX":F
    move v1, v13

    move v7, v0

    move v8, v1

    .line 178
    .end local v0    # "mX":F
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "dx":F
    .end local v15    # "dy":F
    .restart local v7    # "mX":F
    :cond_6b
    :goto_6b
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto :goto_2e

    .line 197
    .end local v11    # "i":I
    :cond_72
    return-object v9
.end method

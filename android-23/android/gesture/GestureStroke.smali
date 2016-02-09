.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 5
    .param p1, "bbx"    # Landroid/graphics/RectF;
    .param p2, "len"    # F
    .param p3, "pts"    # [F
    .param p4, "times"    # [J

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    new-instance v0, Landroid/graphics/RectF;

    #@5
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@7
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@9
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@b
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@10
    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    #@12
    .line 89
    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    #@14
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [F

    #@1a
    iput-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    #@1c
    .line 91
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [J

    #@22
    iput-object v0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    #@24
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 51
    .local v1, "count":I
    mul-int/lit8 v8, v1, 0x2

    #@9
    new-array v7, v8, [F

    #@b
    .line 52
    .local v7, "tmpPoints":[F
    new-array v6, v1, [J

    #@d
    .line 54
    .local v6, "times":[J
    const/4 v0, 0x0

    #@e
    .line 55
    .local v0, "bx":Landroid/graphics/RectF;
    const/4 v4, 0x0

    #@f
    .line 56
    .local v4, "len":F
    const/4 v3, 0x0

    #@10
    .line 58
    .local v3, "index":I
    const/4 v2, 0x0

    #@11
    .end local v0    # "bx":Landroid/graphics/RectF;
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@13
    .line 59
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Landroid/gesture/GesturePoint;

    #@19
    .line 60
    .local v5, "p":Landroid/gesture/GesturePoint;
    mul-int/lit8 v8, v2, 0x2

    #@1b
    iget v9, v5, Landroid/gesture/GesturePoint;->x:F

    #@1d
    aput v9, v7, v8

    #@1f
    .line 61
    mul-int/lit8 v8, v2, 0x2

    #@21
    add-int/lit8 v8, v8, 0x1

    #@23
    iget v9, v5, Landroid/gesture/GesturePoint;->y:F

    #@25
    aput v9, v7, v8

    #@27
    .line 62
    iget-wide v8, v5, Landroid/gesture/GesturePoint;->timestamp:J

    #@29
    aput-wide v8, v6, v3

    #@2b
    .line 64
    if-nez v0, :cond_0

    #@2d
    .line 65
    new-instance v0, Landroid/graphics/RectF;

    #@2f
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@32
    .line 66
    .local v0, "bx":Landroid/graphics/RectF;
    iget v8, v5, Landroid/gesture/GesturePoint;->y:F

    #@34
    iput v8, v0, Landroid/graphics/RectF;->top:F

    #@36
    .line 67
    iget v8, v5, Landroid/gesture/GesturePoint;->x:F

    #@38
    iput v8, v0, Landroid/graphics/RectF;->left:F

    #@3a
    .line 68
    iget v8, v5, Landroid/gesture/GesturePoint;->x:F

    #@3c
    iput v8, v0, Landroid/graphics/RectF;->right:F

    #@3e
    .line 69
    iget v8, v5, Landroid/gesture/GesturePoint;->y:F

    #@40
    iput v8, v0, Landroid/graphics/RectF;->bottom:F

    #@42
    .line 70
    const/4 v4, 0x0

    #@43
    .line 75
    .end local v0    # "bx":Landroid/graphics/RectF;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@45
    .line 58
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 72
    :cond_0
    float-to-double v8, v4

    #@49
    iget v10, v5, Landroid/gesture/GesturePoint;->x:F

    #@4b
    add-int/lit8 v11, v2, -0x1

    #@4d
    mul-int/lit8 v11, v11, 0x2

    #@4f
    aget v11, v7, v11

    #@51
    sub-float/2addr v10, v11

    #@52
    float-to-double v10, v10

    #@53
    iget v12, v5, Landroid/gesture/GesturePoint;->y:F

    #@55
    add-int/lit8 v13, v2, -0x1

    #@57
    mul-int/lit8 v13, v13, 0x2

    #@59
    add-int/lit8 v13, v13, 0x1

    #@5b
    aget v13, v7, v13

    #@5d
    sub-float/2addr v12, v13

    #@5e
    float-to-double v12, v12

    #@5f
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    #@62
    move-result-wide v10

    #@63
    add-double/2addr v8, v10

    #@64
    double-to-float v4, v8

    #@65
    .line 73
    iget v8, v5, Landroid/gesture/GesturePoint;->x:F

    #@67
    iget v9, v5, Landroid/gesture/GesturePoint;->y:F

    #@69
    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->union(FF)V

    #@6c
    goto :goto_1

    #@6d
    .line 78
    .end local v5    # "p":Landroid/gesture/GesturePoint;
    :cond_1
    iput-object v6, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    #@6f
    .line 79
    iput-object v7, p0, Landroid/gesture/GestureStroke;->points:[F

    #@71
    .line 80
    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    #@73
    .line 81
    iput v4, p0, Landroid/gesture/GestureStroke;->length:F

    #@75
    .line 49
    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v0

    #@4
    .line 222
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 223
    .local v2, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 224
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 227
    :cond_0
    new-instance v3, Landroid/gesture/GestureStroke;

    #@18
    invoke-direct {v3, v2}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    #@1b
    return-object v3
.end method

.method private makePath()V
    .locals 14

    #@0
    .prologue
    const/high16 v13, 0x40400000    # 3.0f

    #@2
    const/high16 v12, 0x40000000    # 2.0f

    #@4
    .line 121
    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    #@6
    .line 122
    .local v4, "localPoints":[F
    array-length v0, v4

    #@7
    .line 124
    .local v0, "count":I
    const/4 v7, 0x0

    #@8
    .line 126
    .local v7, "path":Landroid/graphics/Path;
    const/4 v5, 0x0

    #@9
    .line 127
    .local v5, "mX":F
    const/4 v6, 0x0

    #@a
    .line 129
    .local v6, "mY":F
    const/4 v3, 0x0

    #@b
    .end local v7    # "path":Landroid/graphics/Path;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@d
    .line 130
    aget v8, v4, v3

    #@f
    .line 131
    .local v8, "x":F
    add-int/lit8 v10, v3, 0x1

    #@11
    aget v9, v4, v10

    #@13
    .line 132
    .local v9, "y":F
    if-nez v7, :cond_1

    #@15
    .line 133
    new-instance v7, Landroid/graphics/Path;

    #@17
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    #@1a
    .line 134
    .local v7, "path":Landroid/graphics/Path;
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@1d
    .line 135
    move v5, v8

    #@1e
    .line 136
    move v6, v9

    #@1f
    .line 129
    .end local v7    # "path":Landroid/graphics/Path;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x2

    #@21
    goto :goto_0

    #@22
    .line 138
    :cond_1
    sub-float v10, v8, v5

    #@24
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@27
    move-result v1

    #@28
    .line 139
    .local v1, "dx":F
    sub-float v10, v9, v6

    #@2a
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@2d
    move-result v2

    #@2e
    .line 140
    .local v2, "dy":F
    cmpl-float v10, v1, v13

    #@30
    if-gez v10, :cond_2

    #@32
    cmpl-float v10, v2, v13

    #@34
    if-ltz v10, :cond_0

    #@36
    .line 141
    :cond_2
    add-float v10, v8, v5

    #@38
    div-float/2addr v10, v12

    #@39
    add-float v11, v9, v6

    #@3b
    div-float/2addr v11, v12

    #@3c
    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@3f
    .line 142
    move v5, v8

    #@40
    .line 143
    move v6, v9

    #@41
    goto :goto_1

    #@42
    .line 148
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_3
    iput-object v7, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@44
    .line 120
    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@9
    .line 233
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/gesture/GestureStroke;

    #@2
    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    #@4
    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    #@6
    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    #@8
    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    #@d
    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    #@2
    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 106
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    #@7
    .line 109
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@9
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@c
    .line 104
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    #@7
    .line 117
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    #@9
    return-object v0
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
    .line 201
    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    #@2
    .line 202
    .local v2, "pts":[F
    iget-object v3, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    #@4
    .line 203
    .local v3, "times":[J
    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    #@6
    array-length v0, v4

    #@7
    .line 206
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    #@9
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@c
    .line 208
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 210
    aget v4, v2, v1

    #@11
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@14
    .line 212
    add-int/lit8 v4, v1, 0x1

    #@16
    aget v4, v2, v4

    #@18
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@1b
    .line 214
    div-int/lit8 v4, v1, 0x2

    #@1d
    aget-wide v4, v3, v4

    #@1f
    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@22
    .line 208
    add-int/lit8 v1, v1, 0x2

    #@24
    goto :goto_0

    #@25
    .line 200
    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 19
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "numSample"    # I

    #@0
    .prologue
    .line 161
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p3

    #@4
    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    #@7
    move-result-object v9

    #@8
    .line 162
    .local v9, "pts":[F
    move-object/from16 v0, p0

    #@a
    iget-object v10, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    #@c
    .line 164
    .local v10, "rect":Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    #@e
    move/from16 v16, v0

    #@10
    move/from16 v0, v16

    #@12
    neg-float v0, v0

    #@13
    move/from16 v16, v0

    #@15
    iget v0, v10, Landroid/graphics/RectF;->top:F

    #@17
    move/from16 v17, v0

    #@19
    move/from16 v0, v17

    #@1b
    neg-float v0, v0

    #@1c
    move/from16 v17, v0

    #@1e
    move/from16 v0, v16

    #@20
    move/from16 v1, v17

    #@22
    invoke-static {v9, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    #@25
    .line 166
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    #@28
    move-result v16

    #@29
    div-float v12, p1, v16

    #@2b
    .line 167
    .local v12, "sx":F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    #@2e
    move-result v16

    #@2f
    div-float v13, p2, v16

    #@31
    .line 168
    .local v13, "sy":F
    cmpl-float v16, v12, v13

    #@33
    if-lez v16, :cond_1

    #@35
    move v11, v13

    #@36
    .line 169
    .local v11, "scale":F
    :goto_0
    invoke-static {v9, v11, v11}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    #@39
    .line 171
    const/4 v6, 0x0

    #@3a
    .line 172
    .local v6, "mX":F
    const/4 v7, 0x0

    #@3b
    .line 174
    .local v7, "mY":F
    const/4 v8, 0x0

    #@3c
    .line 176
    .local v8, "path":Landroid/graphics/Path;
    array-length v2, v9

    #@3d
    .line 178
    .local v2, "count":I
    const/4 v5, 0x0

    #@3e
    .end local v8    # "path":Landroid/graphics/Path;
    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_4

    #@40
    .line 179
    aget v14, v9, v5

    #@42
    .line 180
    .local v14, "x":F
    add-int/lit8 v16, v5, 0x1

    #@44
    aget v15, v9, v16

    #@46
    .line 181
    .local v15, "y":F
    if-nez v8, :cond_2

    #@48
    .line 182
    new-instance v8, Landroid/graphics/Path;

    #@4a
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    #@4d
    .line 183
    .local v8, "path":Landroid/graphics/Path;
    invoke-virtual {v8, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    #@50
    .line 184
    move v6, v14

    #@51
    .line 185
    move v7, v15

    #@52
    .line 178
    .end local v8    # "path":Landroid/graphics/Path;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x2

    #@54
    goto :goto_1

    #@55
    .line 168
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "mX":F
    .end local v7    # "mY":F
    .end local v11    # "scale":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_1
    move v11, v12

    #@56
    .restart local v11    # "scale":F
    goto :goto_0

    #@57
    .line 187
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "mX":F
    .restart local v7    # "mY":F
    .restart local v14    # "x":F
    .restart local v15    # "y":F
    :cond_2
    sub-float v16, v14, v6

    #@59
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    #@5c
    move-result v3

    #@5d
    .line 188
    .local v3, "dx":F
    sub-float v16, v15, v7

    #@5f
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    #@62
    move-result v4

    #@63
    .line 189
    .local v4, "dy":F
    const/high16 v16, 0x40400000    # 3.0f

    #@65
    cmpl-float v16, v3, v16

    #@67
    if-gez v16, :cond_3

    #@69
    const/high16 v16, 0x40400000    # 3.0f

    #@6b
    cmpl-float v16, v4, v16

    #@6d
    if-ltz v16, :cond_0

    #@6f
    .line 190
    :cond_3
    add-float v16, v14, v6

    #@71
    const/high16 v17, 0x40000000    # 2.0f

    #@73
    div-float v16, v16, v17

    #@75
    add-float v17, v15, v7

    #@77
    const/high16 v18, 0x40000000    # 2.0f

    #@79
    div-float v17, v17, v18

    #@7b
    move/from16 v0, v16

    #@7d
    move/from16 v1, v17

    #@7f
    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@82
    .line 191
    move v6, v14

    #@83
    .line 192
    move v7, v15

    #@84
    goto :goto_2

    #@85
    .line 197
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_4
    return-object v8
.end method

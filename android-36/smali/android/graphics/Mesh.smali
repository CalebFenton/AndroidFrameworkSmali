.class public Landroid/graphics/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Mesh$MeshHolder;,
        Landroid/graphics/Mesh$Mode;
    }
.end annotation


# static fields
.field public static final whitelist TRIANGLES:I = 0x0

.field public static final whitelist TRIANGLE_STRIP:I = 0x1


# instance fields
.field private blacklist mIsIndexed:Z

.field private blacklist mNativeMeshWrapper:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Mesh;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/MeshSpecification;ILjava/nio/Buffer;ILandroid/graphics/RectF;)V
    .registers 18
    .param p1, "meshSpec"    # Landroid/graphics/MeshSpecification;
    .param p2, "mode"    # I
    .param p3, "vertexBuffer"    # Ljava/nio/Buffer;
    .param p4, "vertexCount"    # I
    .param p5, "bounds"    # Landroid/graphics/RectF;

    .line 83
    move-object/from16 v11, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p2, :cond_13

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    goto :goto_13

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value passed in for mode parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_13
    :goto_13
    iget-wide v0, p1, Landroid/graphics/MeshSpecification;->mNativeMeshSpec:J

    .line 88
    invoke-virtual {p3}, Ljava/nio/Buffer;->isDirect()Z

    move-result v4

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v6

    iget v7, v11, Landroid/graphics/RectF;->left:F

    iget v8, v11, Landroid/graphics/RectF;->top:F

    iget v9, v11, Landroid/graphics/RectF;->right:F

    iget v10, v11, Landroid/graphics/RectF;->bottom:F

    .line 87
    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v10}, Landroid/graphics/Mesh;->nativeMake(JILjava/nio/Buffer;ZIIFFFF)J

    move-result-wide v0

    .line 90
    .local v0, "nativeMesh":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    .line 94
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/Mesh;->meshSetup(JZ)V

    .line 95
    return-void

    .line 91
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mesh construction failed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor whitelist <init>(Landroid/graphics/MeshSpecification;ILjava/nio/Buffer;ILjava/nio/ShortBuffer;Landroid/graphics/RectF;)V
    .registers 24
    .param p1, "meshSpec"    # Landroid/graphics/MeshSpecification;
    .param p2, "mode"    # I
    .param p3, "vertexBuffer"    # Ljava/nio/Buffer;
    .param p4, "vertexCount"    # I
    .param p5, "indexBuffer"    # Ljava/nio/ShortBuffer;
    .param p6, "bounds"    # Landroid/graphics/RectF;

    .line 117
    move/from16 v4, p2

    move-object/from16 v0, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v1, 0x1

    if-eqz v4, :cond_15

    if-ne v4, v1, :cond_d

    goto :goto_15

    .line 119
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid value passed in for mode parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_15
    :goto_15
    move-object/from16 v2, p1

    iget-wide v5, v2, Landroid/graphics/MeshSpecification;->mNativeMeshSpec:J

    .line 122
    move-wide v2, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->isDirect()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 123
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v10

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ShortBuffer;->position()I

    move-result v12

    iget v13, v0, Landroid/graphics/RectF;->left:F

    iget v14, v0, Landroid/graphics/RectF;->top:F

    iget v15, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 121
    move/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v16, v5

    move-object/from16 v5, p3

    invoke-static/range {v2 .. v16}, Landroid/graphics/Mesh;->nativeMakeIndexed(JILjava/nio/Buffer;ZIILjava/nio/ShortBuffer;ZIIFFFF)J

    move-result-wide v2

    .line 125
    .local v2, "nativeMesh":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4e

    .line 129
    move-object/from16 v4, p0

    invoke-direct {v4, v2, v3, v1}, Landroid/graphics/Mesh;->meshSetup(JZ)V

    .line 130
    return-void

    .line 126
    :cond_4e
    move-object/from16 v4, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mesh construction failed."

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist meshSetup(JZ)V
    .registers 7
    .param p1, "nativeMeshWrapper"    # J
    .param p3, "isIndexed"    # Z

    .line 362
    iput-wide p1, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    .line 363
    iput-boolean p3, p0, Landroid/graphics/Mesh;->mIsIndexed:Z

    .line 364
    sget-object v0, Landroid/graphics/Mesh$MeshHolder;->MESH_SPECIFICATION_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 365
    return-void
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeMake(JILjava/nio/Buffer;ZIIFFFF)J
.end method

.method private static native blacklist nativeMakeIndexed(JILjava/nio/Buffer;ZIILjava/nio/ShortBuffer;ZIIFFFF)J
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;FFFFI)V
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;IIIII)V
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;[FZ)V
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;[I)V
.end method

.method private blacklist setFloatUniform(Ljava/lang/String;FFFFI)V
    .registers 15
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F
    .param p6, "count"    # I

    .line 252
    if-eqz p1, :cond_e

    .line 255
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .end local p4    # "value3":F
    .end local p5    # "value4":F
    .end local p6    # "count":I
    .local v2, "uniformName":Ljava/lang/String;
    .local v3, "value1":F
    .local v4, "value2":F
    .local v5, "value3":F
    .local v6, "value4":F
    .local v7, "count":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    .line 257
    return-void

    .line 253
    .end local v2    # "uniformName":Ljava/lang/String;
    .end local v3    # "value1":F
    .end local v4    # "value2":F
    .end local v5    # "value3":F
    .end local v6    # "value4":F
    .end local v7    # "count":I
    .restart local p1    # "uniformName":Ljava/lang/String;
    .restart local p2    # "value1":F
    .restart local p3    # "value2":F
    .restart local p4    # "value3":F
    .restart local p5    # "value4":F
    .restart local p6    # "count":I
    :cond_e
    move-object v2, p1

    move v3, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .restart local v2    # "uniformName":Ljava/lang/String;
    .restart local v3    # "value1":F
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setIntUniform(Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "value4"    # I
    .param p6, "count"    # I

    .line 353
    if-eqz p1, :cond_e

    .line 357
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .end local p4    # "value3":I
    .end local p5    # "value4":I
    .end local p6    # "count":I
    .local v2, "uniformName":Ljava/lang/String;
    .local v3, "value1":I
    .local v4, "value2":I
    .local v5, "value3":I
    .local v6, "value4":I
    .local v7, "count":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    .line 359
    return-void

    .line 354
    .end local v2    # "uniformName":Ljava/lang/String;
    .end local v3    # "value1":I
    .end local v4    # "value2":I
    .end local v5    # "value3":I
    .end local v6    # "value4":I
    .end local v7    # "count":I
    .restart local p1    # "uniformName":Ljava/lang/String;
    .restart local p2    # "value1":I
    .restart local p3    # "value2":I
    .restart local p4    # "value3":I
    .restart local p5    # "value4":I
    .restart local p6    # "count":I
    :cond_e
    move-object v2, p1

    move v3, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .restart local v2    # "uniformName":Ljava/lang/String;
    .restart local v3    # "value1":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setUniform(Ljava/lang/String;[FZ)V
    .registers 6
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "isColor"    # Z

    .line 260
    if-eqz p1, :cond_12

    .line 263
    if-eqz p2, :cond_a

    .line 267
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    .line 268
    return-void

    .line 264
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniform values parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist getNativeWrapperInstance()J
    .registers 3

    .line 348
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    return-wide v0
.end method

.method public whitelist setColorUniform(Ljava/lang/String;I)V
    .registers 5
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 143
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 144
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;J)V
    .registers 7
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # J

    .line 157
    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    .line 158
    .local v0, "exSRGB":Landroid/graphics/Color;
    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 159
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .registers 6
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "color"    # Landroid/graphics/Color;

    .line 172
    if-eqz p2, :cond_15

    .line 176
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    .line 177
    .local v0, "exSRGB":Landroid/graphics/Color;
    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 178
    return-void

    .line 173
    .end local v0    # "exSRGB":Landroid/graphics/Color;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The color parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;F)V
    .registers 10
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 189
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 190
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FF)V
    .registers 11
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F

    .line 202
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":F
    .local v3, "value2":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 203
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFF)V
    .registers 12
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F

    .line 218
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .end local p4    # "value3":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":F
    .local v3, "value2":F
    .local v4, "value3":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 219
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFFF)V
    .registers 13
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F

    .line 234
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":F
    .end local p3    # "value2":F
    .end local p4    # "value3":F
    .end local p5    # "value4":F
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":F
    .local v3, "value2":F
    .local v4, "value3":F
    .local v5, "value4":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 235
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;[F)V
    .registers 4
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 248
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;I)V
    .registers 10
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 279
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 280
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;II)V
    .registers 11
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .line 292
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":I
    .local v3, "value2":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 293
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;III)V
    .registers 12
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I

    .line 306
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .end local p4    # "value3":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":I
    .local v3, "value2":I
    .local v4, "value3":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 307
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "value4"    # I

    .line 322
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "uniformName":Ljava/lang/String;
    .end local p2    # "value1":I
    .end local p3    # "value2":I
    .end local p4    # "value3":I
    .end local p5    # "value4":I
    .local v1, "uniformName":Ljava/lang/String;
    .local v2, "value1":I
    .local v3, "value2":I
    .local v4, "value3":I
    .local v5, "value4":I
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 323
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;[I)V
    .registers 5
    .param p1, "uniformName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .line 335
    if-eqz p1, :cond_12

    .line 338
    if-eqz p2, :cond_a

    .line 341
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    .line 342
    return-void

    .line 339
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniform values parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Landroid/graphics/RenderEffect;
.super Ljava/lang/Object;
.source "RenderEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderEffect$RenderEffectHolder;
    }
.end annotation


# instance fields
.field private final blacklist mNativeRenderEffect:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RenderEffect;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .registers 6
    .param p1, "nativeRenderEffect"    # J

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-wide p1, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    .line 315
    sget-object v0, Landroid/graphics/RenderEffect$RenderEffectHolder;->RENDER_EFFECT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 317
    return-void
.end method

.method public static whitelist createBitmapEffect(Landroid/graphics/Bitmap;)Landroid/graphics/RenderEffect;
    .registers 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 138
    .local v5, "right":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 139
    .local v6, "bottom":F
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v1

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v5

    move v10, v6

    invoke-static/range {v1 .. v10}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 139
    return-object v0
.end method

.method public static whitelist createBitmapEffect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RenderEffect;
    .registers 20
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 173
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 174
    .local v2, "bitmapHandle":J
    const/4 v4, 0x0

    if-nez v0, :cond_d

    move v5, v4

    goto :goto_f

    :cond_d
    iget v5, v0, Landroid/graphics/Rect;->left:I

    :goto_f
    move v12, v5

    .line 175
    .local v12, "left":I
    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    iget v4, v0, Landroid/graphics/Rect;->top:I

    :goto_15
    move v13, v4

    .line 176
    .local v13, "top":I
    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_1f

    :cond_1d
    iget v4, v0, Landroid/graphics/Rect;->right:I

    :goto_1f
    move v14, v4

    .line 177
    .local v14, "right":I
    if-nez v0, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto :goto_29

    :cond_27
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_29
    move v15, v4

    .line 178
    .local v15, "bottom":I
    new-instance v4, Landroid/graphics/RenderEffect;

    move-object v5, v4

    int-to-float v4, v12

    move-object v6, v5

    int-to-float v5, v13

    move-object v7, v6

    int-to-float v6, v14

    move-object v8, v7

    int-to-float v7, v15

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 179
    move/from16 v16, v11

    move v11, v0

    move-object v0, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v16

    invoke-static/range {v2 .. v11}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 178
    return-object v0
.end method

.method public static whitelist createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;
    .registers 9
    .param p0, "dst"    # Landroid/graphics/RenderEffect;
    .param p1, "src"    # Landroid/graphics/RenderEffect;
    .param p2, "blendMode"    # Landroid/graphics/BlendMode;

    .line 242
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 244
    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 245
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    .line 246
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 243
    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/RenderEffect;->nativeCreateBlendModeEffect(JJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 242
    return-object v0
.end method

.method public static whitelist createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .registers 9
    .param p0, "radiusX"    # F
    .param p1, "radiusY"    # F
    .param p2, "inputEffect"    # Landroid/graphics/RenderEffect;
    .param p3, "edgeTreatment"    # Landroid/graphics/Shader$TileMode;

    .line 92
    if-eqz p2, :cond_5

    iget-wide v0, p2, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "nativeInputEffect":J
    :goto_7
    new-instance v2, Landroid/graphics/RenderEffect;

    iget v3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 94
    invoke-static {p0, p1, v0, v1, v3}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 93
    return-object v2
.end method

.method public static whitelist createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .registers 7
    .param p0, "radiusX"    # F
    .param p1, "radiusY"    # F
    .param p2, "edgeTreatment"    # Landroid/graphics/Shader$TileMode;

    .line 117
    new-instance v0, Landroid/graphics/RenderEffect;

    iget v1, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 118
    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v2, v3, v1}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 117
    return-object v0
.end method

.method public static whitelist createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 7
    .param p0, "outer"    # Landroid/graphics/RenderEffect;
    .param p1, "inner"    # Landroid/graphics/RenderEffect;

    .line 274
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 276
    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 277
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    .line 275
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateChainEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 274
    return-object v0
.end method

.method public static whitelist createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;
    .registers 6
    .param p0, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 219
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 221
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    .line 220
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 219
    return-object v0
.end method

.method public static whitelist createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 7
    .param p0, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p1, "renderEffect"    # Landroid/graphics/RenderEffect;

    .line 204
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 206
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    .line 207
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    .line 205
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 204
    return-object v0
.end method

.method public static whitelist createOffsetEffect(FF)Landroid/graphics/RenderEffect;
    .registers 5
    .param p0, "offsetX"    # F
    .param p1, "offsetY"    # F

    .line 50
    new-instance v0, Landroid/graphics/RenderEffect;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static whitelist createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 6
    .param p0, "offsetX"    # F
    .param p1, "offsetY"    # F
    .param p2, "input"    # Landroid/graphics/RenderEffect;

    .line 65
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 68
    invoke-virtual {p2}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 65
    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static whitelist createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;
    .registers 5
    .param p0, "shader"    # Landroid/graphics/RuntimeShader;
    .param p1, "uniformShaderName"    # Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 306
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->getNativeShaderBuilder()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/graphics/RenderEffect;->nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 305
    return-object v0
.end method

.method public static whitelist createShaderEffect(Landroid/graphics/Shader;)Landroid/graphics/RenderEffect;
    .registers 4
    .param p0, "shader"    # Landroid/graphics/Shader;

    .line 291
    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateShaderEffect(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method private static native blacklist nativeCreateBitmapEffect(JFFFFFFFF)J
.end method

.method private static native blacklist nativeCreateBlendModeEffect(JJI)J
.end method

.method private static native blacklist nativeCreateBlurEffect(FFJI)J
.end method

.method private static native blacklist nativeCreateChainEffect(JJ)J
.end method

.method private static native blacklist nativeCreateColorFilterEffect(JJ)J
.end method

.method private static native blacklist nativeCreateOffsetEffect(FFJ)J
.end method

.method private static native blacklist nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeCreateShaderEffect(J)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method


# virtual methods
.method blacklist getNativeInstance()J
    .registers 3

    .line 324
    iget-wide v0, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    return-wide v0
.end method

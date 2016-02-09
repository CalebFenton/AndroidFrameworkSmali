.class public abstract Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceMaskEffectFilter.java"


# static fields
.field private static final PCA_DATA_SIZE:I = 0xf

.field protected static final RGB_TO_YUV_MATRIX:Ljava/lang/String; = "0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 "

.field protected static final YUV_TO_RGB_MATRIX:Ljava/lang/String; = " 1.0,       1.0,       1.0,   0.0, -0.000001, -0.344135,  1.772, 0.0,  1.401999, -0.714136,  0.0,   0.0, -0.700999,  0.529135, -0.886, 1.000"

.field private static final mRgbToYuvShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgb = vec4(texture2D(tex_sampler_0, v_texcoord).rgb, 1.);\n  gl_FragColor = coeff_yuv * rgb;\n}\n"


# instance fields
.field protected mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

.field protected mHeight:I

.field protected mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

.field protected mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 75
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 67
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mWidth:I

    #@6
    .line 68
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mHeight:I

    #@8
    .line 74
    return-void
.end method


# virtual methods
.method protected computeFaceColorPCA(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;[F[F[F)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "input"    # Landroid/filterfw/core/Frame;
    .param p3, "faceRect"    # Landroid/graphics/Rect;
    .param p4, "mean_vec"    # [F
    .param p5, "eigen_values"    # [F
    .param p6, "eigen_vectors"    # [F

    #@0
    .prologue
    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->cropRectRegion(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/filterfw/core/Frame;

    #@3
    move-result-object v0

    #@4
    .line 192
    .local v0, "faceFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@7
    move-result-object v8

    #@8
    .line 193
    const/4 v9, 0x2

    #@9
    .line 192
    invoke-virtual {v8, v0, v9}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    #@c
    move-result-object v4

    #@d
    .line 195
    .local v4, "nativeFace":Landroid/filterfw/core/Frame;
    const/16 v8, 0xf

    #@f
    const/4 v9, 0x2

    #@10
    .line 194
    invoke-static {v8, v9}, Landroid/filterfw/format/PrimitiveFormat;->createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@13
    move-result-object v6

    #@14
    .line 196
    .local v6, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1b
    move-result-object v5

    #@1c
    .line 198
    .local v5, "output":Landroid/filterfw/core/Frame;
    iget-object v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    #@1e
    const-string/jumbo v9, "width"

    #@21
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@28
    move-result v10

    #@29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@30
    .line 199
    iget-object v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    #@32
    const-string/jumbo v9, "height"

    #@35
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@38
    move-result-object v10

    #@39
    invoke-virtual {v10}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@3c
    move-result v10

    #@3d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v10

    #@41
    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@44
    .line 200
    iget-object v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    #@46
    invoke-virtual {v8, v4, v5}, Landroid/filterfw/core/NativeProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@49
    .line 201
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getFloats()[F

    #@4c
    move-result-object v7

    #@4d
    .line 204
    .local v7, "pcaParams":[F
    const/4 v1, 0x0

    #@4e
    .local v1, "i":I
    :goto_0
    const/4 v8, 0x3

    #@4f
    if-ge v1, v8, :cond_1

    #@51
    .line 205
    aget v8, v7, v1

    #@53
    aput v8, p4, v1

    #@55
    .line 206
    add-int/lit8 v8, v1, 0x3

    #@57
    aget v8, v7, v8

    #@59
    aput v8, p5, v1

    #@5b
    .line 208
    const/4 v3, 0x0

    #@5c
    .local v3, "j":I
    :goto_1
    const/4 v8, 0x3

    #@5d
    if-ge v3, v8, :cond_0

    #@5f
    .line 209
    mul-int/lit8 v8, v1, 0x3

    #@61
    add-int v2, v8, v3

    #@63
    .line 210
    .local v2, "idx":I
    add-int/lit8 v8, v2, 0x6

    #@65
    aget v8, v7, v8

    #@67
    aput v8, p6, v2

    #@69
    .line 208
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_1

    #@6c
    .line 204
    .end local v2    # "idx":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 215
    .end local v3    # "j":I
    :cond_1
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@72
    .line 216
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@75
    .line 186
    return-void
.end method

.method protected createBoundedRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "input"    # Landroid/filterfw/core/Frame;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 139
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@4
    move-result-object v6

    #@5
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@8
    move-result v1

    #@9
    .line 140
    .local v1, "inputWidth":I
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@10
    move-result v0

    #@11
    .line 143
    .local v0, "inputHeight":I
    iget v6, p2, Landroid/graphics/Rect;->left:I

    #@13
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v3

    #@17
    .line 144
    .local v3, "xStart":I
    iget v6, p2, Landroid/graphics/Rect;->top:I

    #@19
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@1c
    move-result v5

    #@1d
    .line 145
    .local v5, "yStart":I
    iget v6, p2, Landroid/graphics/Rect;->right:I

    #@1f
    add-int/lit8 v7, v1, -0x1

    #@21
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v2

    #@25
    .line 146
    .local v2, "xEnd":I
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    #@27
    add-int/lit8 v7, v0, -0x1

    #@29
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result v4

    #@2d
    .line 148
    .local v4, "yEnd":I
    new-instance v6, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v6, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@32
    return-object v6
.end method

.method protected createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "tableSize"    # I
    .param p3, "maxValue"    # F
    .param p4, "offset"    # F
    .param p5, "scale"    # F

    #@0
    .prologue
    .line 117
    const v2, 0x477fff00    # 65535.0f

    #@3
    .line 118
    .local v2, "precision":F
    int-to-float v7, p2

    #@4
    const/high16 v8, 0x3f800000    # 1.0f

    #@6
    sub-float/2addr v7, v8

    #@7
    div-float v3, p3, v7

    #@9
    .line 119
    .local v3, "stepSize":F
    new-array v0, p2, [I

    #@b
    .line 120
    .local v0, "array":[I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@e
    .line 122
    neg-float v7, p5

    #@f
    int-to-float v8, v1

    #@10
    mul-float/2addr v8, v3

    #@11
    sub-float/2addr v8, p4

    #@12
    mul-float/2addr v7, v8

    #@13
    float-to-double v8, v7

    #@14
    invoke-static {v8, v9}, Ljava/lang/Math;->tanh(D)D

    #@17
    move-result-wide v8

    #@18
    double-to-float v7, v8

    #@19
    const/high16 v8, 0x3f000000    # 0.5f

    #@1b
    mul-float/2addr v7, v8

    #@1c
    const/high16 v8, 0x3f000000    # 0.5f

    #@1e
    add-float v6, v7, v8

    #@20
    .line 123
    .local v6, "value":F
    const v7, 0x477fff00    # 65535.0f

    #@23
    mul-float/2addr v7, v6

    #@24
    float-to-int v7, v7

    #@25
    aput v7, v0, v1

    #@27
    .line 120
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 125
    .end local v6    # "value":F
    :cond_0
    const/4 v7, 0x1

    #@2b
    .line 126
    const/4 v8, 0x3

    #@2c
    const/4 v9, 0x3

    #@2d
    .line 125
    invoke-static {p2, v7, v8, v9}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@30
    move-result-object v4

    #@31
    .line 127
    .local v4, "tableFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@38
    move-result-object v5

    #@39
    .line 128
    .local v5, "tableFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v5, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    #@3c
    .line 130
    return-object v5
.end method

.method protected cropRectRegion(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/filterfw/core/Frame;
    .locals 19
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "input"    # Landroid/filterfw/core/Frame;
    .param p3, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 157
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    move-object/from16 v2, p3

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->createBoundedRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@9
    move-result-object v3

    #@a
    .line 158
    .local v3, "cropRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v13

    #@e
    .line 159
    .local v13, "width":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@11
    move-result v4

    #@12
    .line 161
    .local v4, "height":I
    invoke-virtual/range {p2 .. p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@15
    move-result-object v14

    #@16
    invoke-virtual {v14}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@19
    move-result v6

    #@1a
    .line 162
    .local v6, "inputWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1d
    move-result-object v14

    #@1e
    invoke-virtual {v14}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@21
    move-result v5

    #@22
    .line 166
    .local v5, "inputHeight":I
    const/4 v14, 0x3

    #@23
    .line 167
    const/4 v15, 0x3

    #@24
    .line 165
    invoke-static {v13, v4, v14, v15}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@27
    move-result-object v8

    #@28
    .line 168
    .local v8, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@2b
    move-result-object v14

    #@2c
    invoke-virtual {v14, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@2f
    move-result-object v7

    #@30
    .line 170
    .local v7, "output":Landroid/filterfw/core/Frame;
    iget v14, v3, Landroid/graphics/Rect;->left:I

    #@32
    int-to-float v14, v14

    #@33
    int-to-float v15, v6

    #@34
    div-float v11, v14, v15

    #@36
    .line 171
    .local v11, "rectX":F
    iget v14, v3, Landroid/graphics/Rect;->top:I

    #@38
    int-to-float v14, v14

    #@39
    int-to-float v15, v5

    #@3a
    div-float v12, v14, v15

    #@3c
    .line 172
    .local v12, "rectY":F
    int-to-float v14, v13

    #@3d
    int-to-float v15, v6

    #@3e
    div-float v10, v14, v15

    #@40
    .line 173
    .local v10, "rectWidth":F
    int-to-float v14, v4

    #@41
    int-to-float v15, v5

    #@42
    div-float v9, v14, v15

    #@44
    .line 174
    .local v9, "rectHeight":F
    move-object/from16 v0, p0

    #@46
    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@48
    invoke-virtual {v14, v11, v12, v10, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@4b
    .line 175
    move-object/from16 v0, p0

    #@4d
    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@4f
    const/4 v15, 0x0

    #@50
    const/16 v16, 0x0

    #@52
    const/high16 v17, 0x3f800000    # 1.0f

    #@54
    const/high16 v18, 0x3f800000    # 1.0f

    #@56
    invoke-virtual/range {v14 .. v18}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@59
    .line 176
    move-object/from16 v0, p0

    #@5b
    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v14, v0, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@62
    .line 178
    return-object v7
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 90
    return-object p2
.end method

.method protected abstract initPrograms(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgb = vec4(texture2D(tex_sampler_0, v_texcoord).rgb, 1.);\n  gl_FragColor = coeff_yuv * rgb;\n}\n"

    #@5
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    #@a
    .line 96
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@10
    .line 97
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@12
    const-string/jumbo v1, "filterpack_facedetect"

    #@15
    const-string/jumbo v2, "color_pca"

    #@18
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    #@1d
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->initPrograms(Landroid/filterfw/core/FilterContext;)V

    #@20
    .line 94
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 80
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@2
    .line 81
    const/4 v2, 0x2

    #@3
    .line 80
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@6
    move-result-object v0

    #@7
    .line 82
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "faces"

    #@a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@d
    .line 84
    const-string/jumbo v1, "image"

    #@10
    const/4 v2, 0x3

    #@11
    invoke-static {v2}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 85
    const-string/jumbo v1, "image"

    #@1b
    const-string/jumbo v2, "image"

    #@1e
    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 79
    return-void
.end method

.class public Lcom/google/android/filterpacks/facedetect/LipDiffer;
.super Landroid/filterfw/core/Filter;
.source "LipDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
    }
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LipDiffer"


# instance fields
.field private final MOUTH_TO_EYES_HORIZ_RATIO:F

.field private final MOUTH_TO_NOSE_VERT_RATIO:F

.field private final mDenoiseFragShader:Ljava/lang/String;

.field private mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mFragShader:Ljava/lang/String;

.field private mLipDiffProgram:Landroid/filterfw/core/Program;

.field private mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

.field private mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    const v0, 0x3f666666    # 0.9f

    #@6
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->MOUTH_TO_EYES_HORIZ_RATIO:F

    #@8
    .line 45
    const/high16 v0, 0x3f000000    # 0.5f

    #@a
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->MOUTH_TO_NOSE_VERT_RATIO:F

    #@c
    .line 52
    const-string/jumbo v0, "precision mediump float;\nconst mat3 kernel = mat3(0.09, 0.12, 0.09,\n                         0.12, 0.16, 0.12,\n                         0.09, 0.12, 0.09);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 color = vec3(0.0, 0.0, 0.0);\n  for (int i = 0; i < 3; i++) {\n    for (int j = 0; j < 3; j++) {\n      vec2 coord = v_texcoord + vec2(float(i-1) * pix_width,\n                                     float(j-1) * pix_height);\n      color = color + kernel[i][j] * texture2D(tex_sampler_0, coord).rgb;\n    }\n  }\n  gl_FragColor = vec4(color, 1.0);\n}\n"

    #@f
    .line 51
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseFragShader:Ljava/lang/String;

    #@11
    .line 74
    const-string/jumbo v0, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n  v_vertcoord = a_position.xy;\n}\n"

    #@14
    .line 73
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mVertexShader:Ljava/lang/String;

    #@16
    .line 90
    const-string/jumbo v0, "precision mediump float;\nconst float pi = 3.141593;\nconst vec3 band_coefs = vec3(0.299, 0.587, 0.114);\nconst vec4 no_signal = vec4(0.0, 0.0, 0.0, 1.0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  vec3 pix = texture2D(tex_sampler_0, v_texcoord).rgb;\n  float intensity = dot(band_coefs, pix);\n  vec2 next_x = v_texcoord + vec2(pix_width, 0.0);\n  vec3 grad_x = texture2D(tex_sampler_0, next_x).rgb - pix;\n  vec2 next_y = v_texcoord + vec2(0.0, pix_height);\n  vec3 grad_y = texture2D(tex_sampler_0, next_y).rgb - pix;\n  vec3 sign_y = 2.0 * step(0.0, grad_y) - 1.0;\n  vec2 grad = vec2(dot(band_coefs, sign_y * grad_x),\n                   dot(band_coefs, sign_y * grad_y));\n  float grad_mag = length(grad);\n  float grad_dir = grad_mag > 0.0 ? atan(grad.y, grad.x) / pi : 0.0;\n  vec4 signal = vec4(grad_mag, grad_dir, 0.5 * v_vertcoord.y + 0.5, intensity);\n  gl_FragColor = length(v_vertcoord) < 1.0 ? signal : no_signal;\n}\n"

    #@19
    .line 89
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mFragShader:Ljava/lang/String;

    #@1b
    .line 131
    return-void
.end method

.method private computeSourceRegion(Lcom/google/android/filterpacks/facedetect/FaceMeta;ILandroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;
    .locals 11
    .param p1, "faces"    # Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .param p2, "index"    # I
    .param p3, "size"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    #@2
    .line 271
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@4
    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@7
    move-result v8

    #@8
    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@b
    move-result v9

    #@c
    invoke-direct {v0, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@f
    .line 272
    .local v0, "center":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@11
    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@14
    move-result v8

    #@15
    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@18
    move-result v9

    #@19
    invoke-direct {v3, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@1c
    .line 273
    .local v3, "eye_l":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    #@1e
    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@21
    move-result v8

    #@22
    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@25
    move-result v9

    #@26
    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@29
    .line 274
    .local v4, "eye_r":Landroid/filterfw/geometry/Point;
    invoke-virtual {v3, v4}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, v10}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@30
    move-result-object v5

    #@31
    .line 275
    .local v5, "eyes_center":Landroid/filterfw/geometry/Point;
    invoke-virtual {v5, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@34
    move-result-object v7

    #@35
    .line 276
    .local v7, "vert_axis":Landroid/filterfw/geometry/Point;
    invoke-virtual {v3, v4}, Landroid/filterfw/geometry/Point;->distanceTo(Landroid/filterfw/geometry/Point;)F

    #@38
    move-result v8

    #@39
    const v9, 0x3f666666    # 0.9f

    #@3c
    mul-float v1, v9, v8

    #@3e
    .line 277
    .local v1, "dist_h":F
    invoke-virtual {v7}, Landroid/filterfw/geometry/Point;->length()F

    #@41
    move-result v8

    #@42
    mul-float v2, v10, v8

    #@44
    .line 278
    .local v2, "dist_v":F
    invoke-virtual {p3, v1, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@47
    .line 280
    invoke-static {v0, v7, p3}, Landroid/filterfw/geometry/Rectangle;->fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;

    #@4a
    move-result-object v6

    #@4b
    .line 289
    .local v6, "rect":Landroid/filterfw/geometry/Rectangle;
    return-object v6
.end method

.method private lookupFrameSize(IILandroid/filterfw/geometry/Point;)Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
    .locals 5
    .param p1, "inputWidth"    # I
    .param p2, "inputHeight"    # I
    .param p3, "lipSize"    # Landroid/filterfw/geometry/Point;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 167
    iget v2, p3, Landroid/filterfw/geometry/Point;->x:F

    #@3
    cmpg-float v2, v2, v3

    #@5
    if-lez v2, :cond_0

    #@7
    iget v2, p3, Landroid/filterfw/geometry/Point;->y:F

    #@9
    cmpg-float v2, v2, v3

    #@b
    if-gtz v2, :cond_1

    #@d
    .line 168
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Illegal lip size: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget v4, p3, Landroid/filterfw/geometry/Point;->x:F

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, " x "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    iget v4, p3, Landroid/filterfw/geometry/Point;->y:F

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, "!"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 171
    :cond_1
    int-to-float v2, p1

    #@3e
    iget v3, p3, Landroid/filterfw/geometry/Point;->x:F

    #@40
    mul-float/2addr v2, v3

    #@41
    int-to-float v3, p2

    #@42
    mul-float/2addr v2, v3

    #@43
    iget v3, p3, Landroid/filterfw/geometry/Point;->y:F

    #@45
    mul-float v0, v2, v3

    #@47
    .line 172
    .local v0, "areaInPixels":F
    const/4 v1, 0x0

    #@48
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@4a
    array-length v2, v2

    #@4b
    if-ge v1, v2, :cond_3

    #@4d
    .line 173
    iget-object v2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@4f
    aget-object v2, v2, v1

    #@51
    invoke-virtual {v2}, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->area()F

    #@54
    move-result v2

    #@55
    cmpl-float v2, v0, v2

    #@57
    if-lez v2, :cond_2

    #@59
    .line 176
    iget-object v2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@5b
    const/4 v3, 0x0

    #@5c
    aget-object v2, v2, v3

    #@5e
    return-object v2

    #@5f
    .line 172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_0

    #@62
    .line 180
    :cond_3
    const/4 v2, 0x0

    #@63
    return-object v2
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 152
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@3
    const-string/jumbo v1, "precision mediump float;\nconst mat3 kernel = mat3(0.09, 0.12, 0.09,\n                         0.12, 0.16, 0.12,\n                         0.09, 0.12, 0.09);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 color = vec3(0.0, 0.0, 0.0);\n  for (int i = 0; i < 3; i++) {\n    for (int j = 0; j < 3; j++) {\n      vec2 coord = v_texcoord + vec2(float(i-1) * pix_width,\n                                     float(j-1) * pix_height);\n      color = color + kernel[i][j] * texture2D(tex_sampler_0, coord).rgb;\n    }\n  }\n  gl_FragColor = vec4(color, 1.0);\n}\n"

    #@6
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@9
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    #@b
    .line 153
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@d
    const-string/jumbo v1, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n  v_vertcoord = a_position.xy;\n}\n"

    #@10
    const-string/jumbo v2, "precision mediump float;\nconst float pi = 3.141593;\nconst vec3 band_coefs = vec3(0.299, 0.587, 0.114);\nconst vec4 no_signal = vec4(0.0, 0.0, 0.0, 1.0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  vec3 pix = texture2D(tex_sampler_0, v_texcoord).rgb;\n  float intensity = dot(band_coefs, pix);\n  vec2 next_x = v_texcoord + vec2(pix_width, 0.0);\n  vec3 grad_x = texture2D(tex_sampler_0, next_x).rgb - pix;\n  vec2 next_y = v_texcoord + vec2(0.0, pix_height);\n  vec3 grad_y = texture2D(tex_sampler_0, next_y).rgb - pix;\n  vec3 sign_y = 2.0 * step(0.0, grad_y) - 1.0;\n  vec2 grad = vec2(dot(band_coefs, sign_y * grad_x),\n                   dot(band_coefs, sign_y * grad_y));\n  float grad_mag = length(grad);\n  float grad_dir = grad_mag > 0.0 ? atan(grad.y, grad.x) / pi : 0.0;\n  vec4 signal = vec4(grad_mag, grad_dir, 0.5 * v_vertcoord.y + 0.5, intensity);\n  gl_FragColor = length(v_vertcoord) < 1.0 ? signal : no_signal;\n}\n"

    #@13
    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    #@16
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    #@18
    .line 154
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@1a
    const-string/jumbo v1, "filterpack_facedetect"

    #@1d
    const-string/jumbo v2, "lip_differ"

    #@20
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    #@25
    .line 157
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@2b
    .line 158
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@31
    .line 160
    const/4 v0, 0x2

    #@32
    new-array v0, v0, [Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@34
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@36
    .line 162
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@38
    new-instance v1, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@3a
    const/16 v2, 0x3c

    #@3c
    const/16 v3, 0x2d

    #@3e
    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;-><init>(Lcom/google/android/filterpacks/facedetect/LipDiffer;II)V

    #@41
    const/4 v2, 0x0

    #@42
    aput-object v1, v0, v2

    #@44
    .line 163
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@46
    new-instance v1, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@48
    const/16 v2, 0x24

    #@4a
    const/16 v3, 0x1b

    #@4c
    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;-><init>(Lcom/google/android/filterpacks/facedetect/LipDiffer;II)V

    #@4f
    const/4 v2, 0x1

    #@50
    aput-object v1, v0, v2

    #@52
    .line 150
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 26
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v7

    #@4
    .line 187
    .local v7, "frameManager":Landroid/filterfw/core/FrameManager;
    const-string/jumbo v22, "image"

    #@7
    move-object/from16 v0, p0

    #@9
    move-object/from16 v1, v22

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@e
    move-result-object v10

    #@f
    .line 188
    .local v10, "imageFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@12
    move-result-object v22

    #@13
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@16
    move-result v12

    #@17
    .line 189
    .local v12, "inputWidth":I
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1a
    move-result-object v22

    #@1b
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@1e
    move-result v11

    #@1f
    .line 190
    .local v11, "inputHeight":I
    const-string/jumbo v22, "faces"

    #@22
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v22

    #@26
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@29
    move-result-object v5

    #@2a
    .line 192
    .local v5, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@30
    .line 194
    .local v4, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/16 v18, 0x0

    #@32
    .line 195
    .local v18, "lipSignalNativeFrame":Landroid/filterfw/core/Frame;
    const/16 v21, 0x0

    #@34
    .line 196
    .local v21, "outputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@37
    move-result v22

    #@38
    if-nez v22, :cond_1

    #@3a
    .line 197
    const-class v22, Lcom/google/android/filterpacks/facedetect/LipDiff;

    #@3c
    .line 198
    const/16 v23, 0x0

    #@3e
    .line 199
    const/16 v24, 0x2

    #@40
    .line 197
    invoke-static/range {v22 .. v24}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@43
    move-result-object v20

    #@44
    .line 200
    .local v20, "outputFormat":Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, v20

    #@46
    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@49
    move-result-object v21

    #@4a
    .line 266
    .end local v20    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v21    # "outputFrame":Landroid/filterfw/core/Frame;
    :cond_0
    const-string/jumbo v22, "diffs"

    #@4d
    move-object/from16 v0, p0

    #@4f
    move-object/from16 v1, v22

    #@51
    move-object/from16 v2, v21

    #@53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@56
    .line 267
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@59
    .line 183
    return-void

    #@5a
    .line 202
    .restart local v21    # "outputFrame":Landroid/filterfw/core/Frame;
    :cond_1
    const/4 v9, 0x0

    #@5b
    .end local v21    # "outputFrame":Landroid/filterfw/core/Frame;
    .local v9, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@5e
    move-result v22

    #@5f
    move/from16 v0, v22

    #@61
    if-ge v9, v0, :cond_0

    #@63
    .line 204
    new-instance v19, Landroid/filterfw/geometry/Point;

    #@65
    const/16 v22, 0x0

    #@67
    const/16 v23, 0x0

    #@69
    move-object/from16 v0, v19

    #@6b
    move/from16 v1, v22

    #@6d
    move/from16 v2, v23

    #@6f
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@72
    .line 205
    .local v19, "lipSize":Landroid/filterfw/geometry/Point;
    move-object/from16 v0, p0

    #@74
    move-object/from16 v1, v19

    #@76
    invoke-direct {v0, v4, v9, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->computeSourceRegion(Lcom/google/android/filterpacks/facedetect/FaceMeta;ILandroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;

    #@79
    move-result-object v16

    #@7a
    .line 206
    .local v16, "lipRegion":Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, v19

    #@7e
    invoke-direct {v0, v12, v11, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->lookupFrameSize(IILandroid/filterfw/geometry/Point;)Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    #@81
    move-result-object v8

    #@82
    .line 210
    .local v8, "frameSize":Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
    if-eqz v8, :cond_3

    #@84
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/geometry/Quad;->IsInUnitRange()Z

    #@87
    move-result v22

    #@88
    if-eqz v22, :cond_3

    #@8a
    .line 213
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@8e
    move-object/from16 v22, v0

    #@90
    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    #@92
    move/from16 v23, v0

    #@94
    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    #@96
    move/from16 v24, v0

    #@98
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@9b
    .line 214
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@9f
    move-object/from16 v22, v0

    #@a1
    move-object/from16 v0, v22

    #@a3
    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@a6
    move-result-object v15

    #@a7
    .line 215
    .local v15, "lipFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    #@ab
    move-object/from16 v22, v0

    #@ad
    move-object/from16 v0, v22

    #@af
    move-object/from16 v1, v16

    #@b1
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@b4
    .line 216
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    #@b8
    move-object/from16 v22, v0

    #@ba
    const-string/jumbo v23, "pix_width"

    #@bd
    int-to-float v0, v12

    #@be
    move/from16 v24, v0

    #@c0
    const/high16 v25, 0x3f800000    # 1.0f

    #@c2
    div-float v24, v25, v24

    #@c4
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@c7
    move-result-object v24

    #@c8
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@cb
    .line 217
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    #@cf
    move-object/from16 v22, v0

    #@d1
    const-string/jumbo v23, "pix_height"

    #@d4
    int-to-float v0, v11

    #@d5
    move/from16 v24, v0

    #@d7
    const/high16 v25, 0x3f800000    # 1.0f

    #@d9
    div-float v24, v25, v24

    #@db
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@de
    move-result-object v24

    #@df
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@e2
    .line 218
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    #@e6
    move-object/from16 v22, v0

    #@e8
    move-object/from16 v0, v22

    #@ea
    invoke-virtual {v0, v10, v15}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@ed
    .line 221
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@f1
    move-object/from16 v22, v0

    #@f3
    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    #@f5
    move/from16 v23, v0

    #@f7
    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    #@f9
    move/from16 v24, v0

    #@fb
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@fe
    .line 222
    move-object/from16 v0, p0

    #@100
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@102
    move-object/from16 v22, v0

    #@104
    move-object/from16 v0, v22

    #@106
    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@109
    move-result-object v17

    #@10a
    .line 223
    .local v17, "lipSignalFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    #@10e
    move-object/from16 v22, v0

    #@110
    const-string/jumbo v23, "pix_width"

    #@113
    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    #@115
    move/from16 v24, v0

    #@117
    move/from16 v0, v24

    #@119
    int-to-float v0, v0

    #@11a
    move/from16 v24, v0

    #@11c
    const/high16 v25, 0x3f800000    # 1.0f

    #@11e
    div-float v24, v25, v24

    #@120
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@123
    move-result-object v24

    #@124
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@127
    .line 224
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    #@12b
    move-object/from16 v22, v0

    #@12d
    const-string/jumbo v23, "pix_height"

    #@130
    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    #@132
    move/from16 v24, v0

    #@134
    move/from16 v0, v24

    #@136
    int-to-float v0, v0

    #@137
    move/from16 v24, v0

    #@139
    const/high16 v25, 0x3f800000    # 1.0f

    #@13b
    div-float v24, v25, v24

    #@13d
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@140
    move-result-object v24

    #@141
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@144
    .line 225
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    #@148
    move-object/from16 v22, v0

    #@14a
    move-object/from16 v0, v22

    #@14c
    move-object/from16 v1, v17

    #@14e
    invoke-virtual {v0, v15, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@151
    .line 226
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@154
    .line 231
    const/16 v22, 0x2

    #@156
    .line 230
    move-object/from16 v0, v17

    #@158
    move/from16 v1, v22

    #@15a
    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    #@15d
    move-result-object v18

    #@15e
    .line 232
    .local v18, "lipSignalNativeFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@161
    .line 243
    .end local v15    # "lipFrame":Landroid/filterfw/core/Frame;
    .end local v17    # "lipSignalFrame":Landroid/filterfw/core/Frame;
    :goto_1
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    #@165
    move-object/from16 v22, v0

    #@167
    const-string/jumbo v23, "faceId"

    #@16a
    invoke-virtual {v4, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    #@16d
    move-result v24

    #@16e
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@171
    move-result-object v24

    #@172
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@175
    .line 244
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    #@179
    move-object/from16 v22, v0

    #@17b
    const/16 v23, 0x0

    #@17d
    move-object/from16 v0, v22

    #@17f
    move-object/from16 v1, v18

    #@181
    move-object/from16 v2, v23

    #@183
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@186
    .line 247
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    #@18a
    move-object/from16 v22, v0

    #@18c
    const-string/jumbo v23, "num_lipdiffs"

    #@18f
    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    #@192
    move-result-object v14

    #@193
    check-cast v14, Ljava/lang/String;

    #@195
    .line 248
    .local v14, "lipDiffCountStr":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@198
    move-result v13

    #@199
    .line 249
    .local v13, "lipDiffCount":I
    const-class v22, Lcom/google/android/filterpacks/facedetect/LipDiff;

    #@19b
    .line 251
    const/16 v23, 0x2

    #@19d
    .line 249
    move-object/from16 v0, v22

    #@19f
    move/from16 v1, v23

    #@1a1
    invoke-static {v0, v13, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@1a4
    move-result-object v20

    #@1a5
    .line 254
    .restart local v20    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@1a8
    move-result v22

    #@1a9
    add-int/lit8 v23, v9, 0x1

    #@1ab
    sub-int v6, v22, v23

    #@1ad
    .line 255
    .local v6, "facesLeft":I
    if-nez v6, :cond_2

    #@1af
    .line 256
    move-object/from16 v0, v20

    #@1b1
    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1b4
    move-result-object v21

    #@1b5
    .line 257
    .local v21, "outputFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    #@1b9
    move-object/from16 v23, v0

    #@1bb
    const/16 v22, 0x0

    #@1bd
    check-cast v22, Landroid/filterfw/core/Frame;

    #@1bf
    move-object/from16 v0, v23

    #@1c1
    move-object/from16 v1, v22

    #@1c3
    move-object/from16 v2, v21

    #@1c5
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@1c8
    .line 260
    .end local v21    # "outputFrame":Landroid/filterfw/core/Frame;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1cb
    .line 261
    const/16 v18, 0x0

    #@1cd
    .line 202
    .local v18, "lipSignalNativeFrame":Landroid/filterfw/core/Frame;
    add-int/lit8 v9, v9, 0x1

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 237
    .end local v6    # "facesLeft":I
    .end local v13    # "lipDiffCount":I
    .end local v14    # "lipDiffCountStr":Ljava/lang/String;
    .end local v20    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_3
    const/16 v22, 0x0

    #@1d3
    const/16 v23, 0x2

    #@1d5
    invoke-static/range {v22 .. v23}, Landroid/filterfw/format/PrimitiveFormat;->createByteFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@1d8
    move-result-object v3

    #@1d9
    .line 239
    .local v3, "emptyNativeFrameFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v7, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1dc
    move-result-object v18

    #@1dd
    .local v18, "lipSignalNativeFrame":Landroid/filterfw/core/Frame;
    goto :goto_1
.end method

.method public setupPorts()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    .line 138
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@5
    move-result-object v1

    #@6
    .line 140
    .local v1, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@8
    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 142
    .local v0, "faceFormat":Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/LipDiff;

    #@e
    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@11
    move-result-object v2

    #@12
    .line 145
    .local v2, "lipDiffFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v3, "image"

    #@15
    invoke-virtual {p0, v3, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 146
    const-string/jumbo v3, "faces"

    #@1b
    invoke-virtual {p0, v3, v0}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@1e
    .line 147
    const-string/jumbo v3, "diffs"

    #@21
    invoke-virtual {p0, v3, v2}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@24
    .line 136
    return-void
.end method

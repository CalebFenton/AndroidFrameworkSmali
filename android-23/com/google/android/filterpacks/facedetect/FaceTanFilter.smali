.class public Lcom/google/android/filterpacks/facedetect/FaceTanFilter;
.super Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;
.source "FaceTanFilter.java"


# static fields
.field private static final TAN_SKIN_MATRIX:Ljava/lang/String; = "1.0, 0.0, 0.0, 0.0, 0.6043903, -0.7966884, 0.0, 0.7966884, 0.6043903"

.field private static final TAN_SKIN_MEAN:Ljava/lang/String; = "0.50137526, 0.4253831, 0.6052874"

.field private static final TAN_SKIN_SINGULAR_VALUES:Ljava/lang/String; = "0.1549749, 0.05620472, 0.0084233275"

.field private static final mFaceTanShader:Ljava/lang/String; = "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nconst vec3 tan_mean = vec3(0.50137526, 0.4253831, 0.6052874);\nconst vec3 tan_scale = vec3(0.1549749, 0.05620472, 0.0084233275);\nconst mat3 tan_mat = mat3(1.0, 0.0, 0.0, 0.0, 0.6043903, -0.7966884, 0.0, 0.7966884, 0.6043903);\nconst mat4 coeff_rgb = mat4( 1.0,       1.0,       1.0,   0.0, -0.000001, -0.344135,  1.772, 0.0,  1.401999, -0.714136,  0.0,   0.0, -0.700999,  0.529135, -0.886, 1.000);\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tbl_offset;\nuniform float tbl_scale;\nuniform vec2 face_center;\nuniform vec2 face_scale;\nuniform vec2 body_center;\nuniform vec2 body_scale;\nvarying vec2 v_texcoord;\nfloat computeSpatialWeight(sampler2D sampler, float dist) {\n  float value = min(dist * 0.2, 1.0);\n  float tbl_value = tbl_offset + tbl_scale * value;\n  vec4 weight_byte = texture2D(sampler, vec2(tbl_value, 0.5));\n  return weight_byte.g + 0.00390625 * weight_byte.r;\n}\nvoid main() {\n  vec3 yuv = texture2D(tex_sampler_0, v_texcoord).xyz;\n  float gray = yuv.r;\n  vec3 proj = yuv_var * (yuv - yuv_mean);\n  proj = yuv_scale * proj;\n  vec3 scaled_proj = tan_scale * proj;\n  vec3 new_yuv =  tan_mat * scaled_proj + tan_mean;\n  vec4 new_color = coeff_rgb * vec4(new_yuv, 1.0);\n  new_color = min(max(new_color, 0.0), 1.0);\n  float dist = sqrt(0.5 * dot(proj, proj));\n  float color_weight = computeSpatialWeight(tex_sampler_1, dist);\n  vec2 diff = v_texcoord - face_center;\n  dist = length(face_scale * diff);\n  float face_weight = computeSpatialWeight(tex_sampler_2, dist);\n  diff = v_texcoord - body_center;\n  dist = length(body_scale * diff);\n  float body_weight = computeSpatialWeight(tex_sampler_2, dist);\n  float alpha = max(face_weight, body_weight) * color_weight;\n  if (gray < 0.1) {\n    alpha = 0.0;\n  } else {\n    if (gray < 0.5) {\n      alpha *=  2.5 * (gray - 0.1);\n    }\n  }\n  vec4 orig = texture2D(tex_sampler_3, v_texcoord);\n  if (orig.a > alpha) {\n     gl_FragColor = orig;\n  } else { \n    gl_FragColor = vec4(new_color.rgb, alpha);\n  }\n}\n"


# instance fields
.field private mColorTanhFrame:Landroid/filterfw/core/Frame;

.field private mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSpatialTanhFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;-><init>(Ljava/lang/String;)V

    #@3
    .line 114
    return-void
.end method

.method private createBodyRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 13
    .param p1, "faceRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 139
    const/4 v3, 0x0

    #@1
    .line 140
    .local v3, "kFaceToBodyXMove":I
    const/4 v5, 0x2

    #@2
    .line 141
    .local v5, "kFaceToBodyYMove":I
    const/4 v4, 0x3

    #@3
    .line 142
    .local v4, "kFaceToBodyXScale":I
    const/4 v6, 0x3

    #@4
    .line 144
    .local v6, "kFaceToBodyYScale":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@7
    move-result v8

    #@8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@b
    move-result v9

    #@c
    mul-int/lit8 v9, v9, 0x0

    #@e
    add-int v0, v8, v9

    #@10
    .line 145
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@13
    move-result v8

    #@14
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@17
    move-result v9

    #@18
    mul-int/lit8 v9, v9, 0x2

    #@1a
    add-int v1, v8, v9

    #@1c
    .line 146
    .local v1, "centerY":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@1f
    move-result v8

    #@20
    mul-int/lit8 v7, v8, 0x3

    #@22
    .line 147
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@25
    move-result v8

    #@26
    mul-int/lit8 v2, v8, 0x3

    #@28
    .line 149
    .local v2, "height":I
    new-instance v8, Landroid/graphics/Rect;

    #@2a
    div-int/lit8 v9, v7, 0x2

    #@2c
    sub-int v9, v0, v9

    #@2e
    div-int/lit8 v10, v2, 0x2

    #@30
    sub-int v10, v1, v10

    #@32
    .line 150
    div-int/lit8 v11, v7, 0x2

    #@34
    add-int/2addr v11, v0

    #@35
    div-int/lit8 v12, v2, 0x2

    #@37
    add-int/2addr v12, v1

    #@38
    .line 149
    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    #@3b
    return-object v8
.end method

.method private initParameters(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    #@2
    .line 128
    const/16 v2, 0x1f4

    #@4
    .line 130
    .local v2, "tanhTableSize":I
    const v4, 0x3f933333    # 1.15f

    #@7
    const/high16 v5, 0x40200000    # 2.5f

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mColorTanhFrame:Landroid/filterfw/core/Frame;

    #@11
    .line 132
    const/high16 v4, 0x3fa00000    # 1.25f

    #@13
    const/high16 v5, 0x3f400000    # 0.75f

    #@15
    move-object v0, p0

    #@16
    move-object v1, p1

    #@17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mSpatialTanhFrame:Landroid/filterfw/core/Frame;

    #@1d
    .line 134
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@1f
    const-string/jumbo v1, "tbl_offset"

    #@22
    const v3, 0x3a83126f    # 0.001f

    #@25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 135
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@2e
    const-string/jumbo v1, "tbl_scale"

    #@31
    const v3, 0x43f98000    # 499.0f

    #@34
    const/high16 v4, 0x43fa0000    # 500.0f

    #@36
    div-float/2addr v3, v4

    #@37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3e
    .line 127
    return-void
.end method


# virtual methods
.method protected initPrograms(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 124
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nconst vec3 tan_mean = vec3(0.50137526, 0.4253831, 0.6052874);\nconst vec3 tan_scale = vec3(0.1549749, 0.05620472, 0.0084233275);\nconst mat3 tan_mat = mat3(1.0, 0.0, 0.0, 0.0, 0.6043903, -0.7966884, 0.0, 0.7966884, 0.6043903);\nconst mat4 coeff_rgb = mat4( 1.0,       1.0,       1.0,   0.0, -0.000001, -0.344135,  1.772, 0.0,  1.401999, -0.714136,  0.0,   0.0, -0.700999,  0.529135, -0.886, 1.000);\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tbl_offset;\nuniform float tbl_scale;\nuniform vec2 face_center;\nuniform vec2 face_scale;\nuniform vec2 body_center;\nuniform vec2 body_scale;\nvarying vec2 v_texcoord;\nfloat computeSpatialWeight(sampler2D sampler, float dist) {\n  float value = min(dist * 0.2, 1.0);\n  float tbl_value = tbl_offset + tbl_scale * value;\n  vec4 weight_byte = texture2D(sampler, vec2(tbl_value, 0.5));\n  return weight_byte.g + 0.00390625 * weight_byte.r;\n}\nvoid main() {\n  vec3 yuv = texture2D(tex_sampler_0, v_texcoord).xyz;\n  float gray = yuv.r;\n  vec3 proj = yuv_var * (yuv - yuv_mean);\n  proj = yuv_scale * proj;\n  vec3 scaled_proj = tan_scale * proj;\n  vec3 new_yuv =  tan_mat * scaled_proj + tan_mean;\n  vec4 new_color = coeff_rgb * vec4(new_yuv, 1.0);\n  new_color = min(max(new_color, 0.0), 1.0);\n  float dist = sqrt(0.5 * dot(proj, proj));\n  float color_weight = computeSpatialWeight(tex_sampler_1, dist);\n  vec2 diff = v_texcoord - face_center;\n  dist = length(face_scale * diff);\n  float face_weight = computeSpatialWeight(tex_sampler_2, dist);\n  diff = v_texcoord - body_center;\n  dist = length(body_scale * diff);\n  float body_weight = computeSpatialWeight(tex_sampler_2, dist);\n  float alpha = max(face_weight, body_weight) * color_weight;\n  if (gray < 0.1) {\n    alpha = 0.0;\n  } else {\n    if (gray < 0.5) {\n      alpha *=  2.5 * (gray - 0.1);\n    }\n  }\n  vec4 orig = texture2D(tex_sampler_3, v_texcoord);\n  if (orig.a > alpha) {\n     gl_FragColor = orig;\n  } else { \n    gl_FragColor = vec4(new_color.rgb, alpha);\n  }\n}\n"

    #@5
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@a
    .line 123
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 29
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 156
    const-string/jumbo v2, "image"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@8
    move-result-object v20

    #@9
    .line 157
    .local v20, "input":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v21

    #@d
    .line 160
    .local v21, "inputFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "faces"

    #@10
    move-object/from16 v0, p0

    #@12
    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@15
    move-result-object v18

    #@16
    .line 161
    .local v18, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v18 .. v18}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@19
    move-result-object v17

    #@1a
    check-cast v17, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@1c
    .line 162
    .local v17, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@1f
    move-result v15

    #@20
    .line 164
    .local v15, "faceCount":I
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@24
    if-eqz v2, :cond_0

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    #@2a
    if-nez v2, :cond_1

    #@2c
    .line 166
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v3, "programs are missing at process."

    #@31
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 165
    :cond_1
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    #@39
    if-eqz v2, :cond_0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@3f
    if-eqz v2, :cond_0

    #@41
    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@44
    move-result-object v2

    #@45
    move-object/from16 v0, v21

    #@47
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@4a
    move-result-object v4

    #@4b
    .line 171
    .local v4, "yuvFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    #@4f
    move-object/from16 v0, v20

    #@51
    invoke-virtual {v2, v0, v4}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@54
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@57
    move-result-object v2

    #@58
    move-object/from16 v0, v21

    #@5a
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@5d
    move-result-object v12

    #@5e
    .line 175
    .local v12, "bufferOne":Landroid/filterfw/core/Frame;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@61
    move-result-object v2

    #@62
    move-object/from16 v0, v21

    #@64
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@67
    move-result-object v13

    #@68
    .local v13, "bufferTwo":Landroid/filterfw/core/Frame;
    move-object v2, v12

    #@69
    .line 180
    check-cast v2, Landroid/filterfw/core/GLFrame;

    #@6b
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->focus()V

    #@6e
    .line 181
    const/4 v2, 0x0

    #@6f
    const/4 v3, 0x0

    #@70
    const/16 v27, 0x0

    #@72
    const/16 v28, 0x0

    #@74
    move/from16 v0, v27

    #@76
    move/from16 v1, v28

    #@78
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    #@7b
    .line 182
    const/16 v2, 0x4000

    #@7d
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    #@80
    move-object v2, v13

    #@81
    .line 183
    check-cast v2, Landroid/filterfw/core/GLFrame;

    #@83
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->focus()V

    #@86
    .line 184
    const/4 v2, 0x0

    #@87
    const/4 v3, 0x0

    #@88
    const/16 v27, 0x0

    #@8a
    const/16 v28, 0x0

    #@8c
    move/from16 v0, v27

    #@8e
    move/from16 v1, v28

    #@90
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    #@93
    .line 185
    const/16 v2, 0x4000

    #@95
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    #@98
    .line 188
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@9b
    move-result v2

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@a0
    if-ne v2, v3, :cond_2

    #@a2
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@a5
    move-result v2

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@aa
    if-eq v2, v3, :cond_3

    #@ac
    .line 189
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@af
    move-result v2

    #@b0
    move-object/from16 v0, p0

    #@b2
    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@b4
    .line 190
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@b7
    move-result v2

    #@b8
    move-object/from16 v0, p0

    #@ba
    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@bc
    .line 191
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->initParameters(Landroid/filterfw/core/FilterContext;)V

    #@bf
    .line 194
    :cond_3
    move-object/from16 v25, v12

    #@c1
    .line 195
    .local v25, "source":Landroid/filterfw/core/Frame;
    move-object/from16 v26, v13

    #@c3
    .line 196
    .local v26, "target":Landroid/filterfw/core/Frame;
    const/4 v2, 0x3

    #@c4
    new-array v6, v2, [F

    #@c6
    .line 197
    .local v6, "color_mean":[F
    const/4 v2, 0x3

    #@c7
    new-array v7, v2, [F

    #@c9
    .line 198
    .local v7, "eigen_values":[F
    const/16 v2, 0x9

    #@cb
    new-array v8, v2, [F

    #@cd
    .line 199
    .local v8, "eigen_vectors":[F
    new-instance v5, Landroid/graphics/Rect;

    #@cf
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@d2
    .line 200
    .local v5, "faceRect":Landroid/graphics/Rect;
    const/16 v19, 0x0

    #@d4
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@d6
    if-ge v0, v15, :cond_5

    #@d8
    .line 201
    move-object/from16 v25, v26

    #@da
    .line 202
    move-object/from16 v0, v25

    #@dc
    if-ne v0, v12, :cond_4

    #@de
    move-object/from16 v26, v13

    #@e0
    .line 204
    :goto_1
    move-object/from16 v0, p0

    #@e2
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@e4
    int-to-float v2, v2

    #@e5
    move-object/from16 v0, v17

    #@e7
    move/from16 v1, v19

    #@e9
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@ec
    move-result v3

    #@ed
    mul-float/2addr v2, v3

    #@ee
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@f1
    move-result v2

    #@f2
    iput v2, v5, Landroid/graphics/Rect;->left:I

    #@f4
    .line 205
    move-object/from16 v0, p0

    #@f6
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@f8
    int-to-float v2, v2

    #@f9
    move-object/from16 v0, v17

    #@fb
    move/from16 v1, v19

    #@fd
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@100
    move-result v3

    #@101
    mul-float/2addr v2, v3

    #@102
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@105
    move-result v2

    #@106
    iput v2, v5, Landroid/graphics/Rect;->top:I

    #@108
    .line 206
    move-object/from16 v0, p0

    #@10a
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@10c
    int-to-float v2, v2

    #@10d
    move-object/from16 v0, v17

    #@10f
    move/from16 v1, v19

    #@111
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@114
    move-result v3

    #@115
    mul-float/2addr v2, v3

    #@116
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@119
    move-result v2

    #@11a
    iput v2, v5, Landroid/graphics/Rect;->right:I

    #@11c
    .line 207
    move-object/from16 v0, p0

    #@11e
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@120
    int-to-float v2, v2

    #@121
    move-object/from16 v0, v17

    #@123
    move/from16 v1, v19

    #@125
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@128
    move-result v3

    #@129
    mul-float/2addr v2, v3

    #@12a
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@12d
    move-result v2

    #@12e
    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    #@130
    move-object/from16 v2, p0

    #@132
    move-object/from16 v3, p1

    #@134
    .line 209
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->computeFaceColorPCA(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;[F[F[F)V

    #@137
    .line 212
    move-object/from16 v0, p0

    #@139
    invoke-direct {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->createBodyRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@13c
    move-result-object v10

    #@13d
    .line 213
    .local v10, "bodyRect":Landroid/graphics/Rect;
    const/high16 v23, 0x3fe00000    # 1.75f

    #@13f
    .line 215
    .local v23, "kSpatialFactor":F
    const/4 v2, 0x2

    #@140
    new-array v14, v2, [F

    #@142
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    #@145
    move-result v2

    #@146
    int-to-float v2, v2

    #@147
    move-object/from16 v0, p0

    #@149
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@14b
    int-to-float v3, v3

    #@14c
    div-float/2addr v2, v3

    #@14d
    const/4 v3, 0x0

    #@14e
    aput v2, v14, v3

    #@150
    .line 216
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    #@153
    move-result v2

    #@154
    int-to-float v2, v2

    #@155
    move-object/from16 v0, p0

    #@157
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@159
    int-to-float v3, v3

    #@15a
    div-float/2addr v2, v3

    #@15b
    const/4 v3, 0x1

    #@15c
    aput v2, v14, v3

    #@15e
    .line 217
    .local v14, "faceCenter":[F
    const/4 v2, 0x2

    #@15f
    new-array v0, v2, [F

    #@161
    move-object/from16 v16, v0

    #@163
    move-object/from16 v0, p0

    #@165
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@167
    int-to-float v2, v2

    #@168
    const/high16 v3, 0x3fe00000    # 1.75f

    #@16a
    mul-float/2addr v2, v3

    #@16b
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@16e
    move-result v3

    #@16f
    int-to-float v3, v3

    #@170
    div-float/2addr v2, v3

    #@171
    const/4 v3, 0x0

    #@172
    aput v2, v16, v3

    #@174
    .line 218
    move-object/from16 v0, p0

    #@176
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@178
    int-to-float v2, v2

    #@179
    const/high16 v3, 0x3fe00000    # 1.75f

    #@17b
    mul-float/2addr v2, v3

    #@17c
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@17f
    move-result v3

    #@180
    int-to-float v3, v3

    #@181
    div-float/2addr v2, v3

    #@182
    const/4 v3, 0x1

    #@183
    aput v2, v16, v3

    #@185
    .line 220
    .local v16, "faceScale":[F
    const/4 v2, 0x2

    #@186
    new-array v9, v2, [F

    #@188
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    #@18b
    move-result v2

    #@18c
    int-to-float v2, v2

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@191
    int-to-float v3, v3

    #@192
    div-float/2addr v2, v3

    #@193
    const/4 v3, 0x0

    #@194
    aput v2, v9, v3

    #@196
    .line 221
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    #@199
    move-result v2

    #@19a
    int-to-float v2, v2

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@19f
    int-to-float v3, v3

    #@1a0
    div-float/2addr v2, v3

    #@1a1
    const/4 v3, 0x1

    #@1a2
    aput v2, v9, v3

    #@1a4
    .line 222
    .local v9, "bodyCenter":[F
    const/4 v2, 0x2

    #@1a5
    new-array v11, v2, [F

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    #@1ab
    int-to-float v2, v2

    #@1ac
    const/high16 v3, 0x3fe00000    # 1.75f

    #@1ae
    mul-float/2addr v2, v3

    #@1af
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    #@1b2
    move-result v3

    #@1b3
    int-to-float v3, v3

    #@1b4
    div-float/2addr v2, v3

    #@1b5
    const/4 v3, 0x0

    #@1b6
    aput v2, v11, v3

    #@1b8
    .line 223
    move-object/from16 v0, p0

    #@1ba
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    #@1bc
    int-to-float v2, v2

    #@1bd
    const/high16 v3, 0x3fe00000    # 1.75f

    #@1bf
    mul-float/2addr v2, v3

    #@1c0
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    #@1c3
    move-result v3

    #@1c4
    int-to-float v3, v3

    #@1c5
    div-float/2addr v2, v3

    #@1c6
    const/4 v3, 0x1

    #@1c7
    aput v2, v11, v3

    #@1c9
    .line 225
    .local v11, "bodyScale":[F
    const/4 v2, 0x3

    #@1ca
    new-array v0, v2, [F

    #@1cc
    move-object/from16 v24, v0

    #@1ce
    const/4 v2, 0x0

    #@1cf
    aget v2, v7, v2

    #@1d1
    const/high16 v3, 0x3f800000    # 1.0f

    #@1d3
    div-float v2, v3, v2

    #@1d5
    const/4 v3, 0x0

    #@1d6
    aput v2, v24, v3

    #@1d8
    .line 226
    const/4 v2, 0x1

    #@1d9
    aget v2, v7, v2

    #@1db
    const/high16 v3, 0x3f800000    # 1.0f

    #@1dd
    div-float v2, v3, v2

    #@1df
    const/4 v3, 0x1

    #@1e0
    aput v2, v24, v3

    #@1e2
    .line 227
    const/4 v2, 0x2

    #@1e3
    aget v2, v7, v2

    #@1e5
    const/high16 v3, 0x3f800000    # 1.0f

    #@1e7
    div-float v2, v3, v2

    #@1e9
    const/4 v3, 0x2

    #@1ea
    aput v2, v24, v3

    #@1ec
    .line 229
    .local v24, "rgb_scale":[F
    move-object/from16 v0, p0

    #@1ee
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@1f0
    const-string/jumbo v3, "yuv_mean"

    #@1f3
    invoke-virtual {v2, v3, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1f6
    .line 230
    move-object/from16 v0, p0

    #@1f8
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@1fa
    const-string/jumbo v3, "yuv_var"

    #@1fd
    invoke-virtual {v2, v3, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@200
    .line 231
    move-object/from16 v0, p0

    #@202
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@204
    const-string/jumbo v3, "yuv_scale"

    #@207
    move-object/from16 v0, v24

    #@209
    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@20c
    .line 233
    move-object/from16 v0, p0

    #@20e
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@210
    const-string/jumbo v3, "face_center"

    #@213
    invoke-virtual {v2, v3, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@216
    .line 234
    move-object/from16 v0, p0

    #@218
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@21a
    const-string/jumbo v3, "face_scale"

    #@21d
    move-object/from16 v0, v16

    #@21f
    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@222
    .line 236
    move-object/from16 v0, p0

    #@224
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@226
    const-string/jumbo v3, "body_center"

    #@229
    invoke-virtual {v2, v3, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@22c
    .line 237
    move-object/from16 v0, p0

    #@22e
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@230
    const-string/jumbo v3, "body_scale"

    #@233
    move-object/from16 v0, v16

    #@235
    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@238
    .line 239
    const/4 v2, 0x4

    #@239
    new-array v0, v2, [Landroid/filterfw/core/Frame;

    #@23b
    move-object/from16 v22, v0

    #@23d
    const/4 v2, 0x0

    #@23e
    aput-object v4, v22, v2

    #@240
    move-object/from16 v0, p0

    #@242
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mColorTanhFrame:Landroid/filterfw/core/Frame;

    #@244
    const/4 v3, 0x1

    #@245
    aput-object v2, v22, v3

    #@247
    move-object/from16 v0, p0

    #@249
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mSpatialTanhFrame:Landroid/filterfw/core/Frame;

    #@24b
    const/4 v3, 0x2

    #@24c
    aput-object v2, v22, v3

    #@24e
    const/4 v2, 0x3

    #@24f
    aput-object v25, v22, v2

    #@251
    .line 240
    .local v22, "inputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@253
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    #@255
    move-object/from16 v0, v22

    #@257
    move-object/from16 v1, v26

    #@259
    invoke-virtual {v2, v0, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@25c
    .line 200
    add-int/lit8 v19, v19, 0x1

    #@25e
    goto/16 :goto_0

    #@260
    .line 202
    .end local v9    # "bodyCenter":[F
    .end local v10    # "bodyRect":Landroid/graphics/Rect;
    .end local v11    # "bodyScale":[F
    .end local v14    # "faceCenter":[F
    .end local v16    # "faceScale":[F
    .end local v22    # "inputs":[Landroid/filterfw/core/Frame;
    .end local v23    # "kSpatialFactor":F
    .end local v24    # "rgb_scale":[F
    :cond_4
    move-object/from16 v26, v12

    #@262
    goto/16 :goto_1

    #@264
    .line 243
    :cond_5
    const-string/jumbo v2, "image"

    #@267
    move-object/from16 v0, p0

    #@269
    move-object/from16 v1, v26

    #@26b
    invoke-virtual {v0, v2, v1}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@26e
    .line 244
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@271
    .line 245
    invoke-virtual {v13}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@274
    .line 246
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@277
    .line 154
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 119
    return-void
.end method

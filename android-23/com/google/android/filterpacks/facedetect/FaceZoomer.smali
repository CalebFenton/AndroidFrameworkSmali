.class public Lcom/google/android/filterpacks/facedetect/FaceZoomer;
.super Landroid/filterfw/core/Filter;
.source "FaceZoomer.java"


# instance fields
.field private mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mEnableDebugStream:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "enableDebugStream"
    .end annotation
.end field

.field private final mFragShader:Ljava/lang/String;

.field private mMaxOutputSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxOutputSize"
    .end annotation
.end field

.field private mMinFramesPerSpeaker:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minFramesPerSpeaker"
    .end annotation
.end field

.field private mMinFramesPerTransition:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minFramesPerTransition"
    .end annotation
.end field

.field private mMinFramesPerZoomOut:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minFramesPerZoomOut"
    .end annotation
.end field

.field private mMinTransitionMagnitude:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minTransitionMagnitude"
    .end annotation
.end field

.field private mMinTransitionMagnitudeFast:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minTransitionMagnitudeFast"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mOutputTransitionsOnly:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "outputTransitionsOnly"
    .end annotation
.end field

.field private mRegionFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

.field private mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

.field private mTransitionSeconds:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "transitionSeconds"
    .end annotation
.end field

.field private mTransitionSigma:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "transitionSigma"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 99
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 45
    const/16 v0, 0x140

    #@6
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMaxOutputSize:I

    #@8
    .line 51
    const v0, 0x3eb33333    # 0.35f

    #@b
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitudeFast:F

    #@d
    .line 53
    const/high16 v0, 0x3f000000    # 0.5f

    #@f
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitude:F

    #@11
    .line 56
    const/16 v0, 0xa

    #@13
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerSpeaker:I

    #@15
    .line 58
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerTransition:I

    #@17
    .line 60
    const/16 v0, 0x19

    #@19
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerZoomOut:I

    #@1b
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    #@1d
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSeconds:F

    #@1f
    .line 65
    const/high16 v0, 0x40400000    # 3.0f

    #@21
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSigma:F

    #@23
    .line 69
    const/4 v0, 0x0

    #@24
    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    #@26
    .line 71
    iput-boolean v1, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputTransitionsOnly:Z

    #@28
    .line 73
    const/4 v0, 0x0

    #@29
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@2b
    .line 81
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    #@2e
    .line 80
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mFragShader:Ljava/lang/String;

    #@30
    .line 98
    return-void
.end method

.method private getSelectedRegion(Landroid/filterfw/core/Frame;)Landroid/filterfw/geometry/Quad;
    .locals 7
    .param p1, "regionFrame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 229
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Lcom/google/android/filterpacks/facedetect/RectFrame;

    #@7
    .line 230
    .local v2, "rectFrame":Lcom/google/android/filterpacks/facedetect/RectFrame;
    invoke-virtual {v2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->count()I

    #@a
    move-result v0

    #@b
    .line 231
    .local v0, "numRects":I
    const/4 v3, 0x1

    #@c
    if-eq v0, v3, :cond_0

    #@e
    .line 232
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "Illegal RectFrame size: "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 235
    :cond_0
    new-instance v1, Landroid/filterfw/geometry/Rectangle;

    #@2a
    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getX(I)F

    #@2d
    move-result v3

    #@2e
    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getY(I)F

    #@31
    move-result v4

    #@32
    .line 236
    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getWidth(I)F

    #@35
    move-result v5

    #@36
    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getHeight(I)F

    #@39
    move-result v6

    #@3a
    .line 235
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@3d
    .line 237
    .local v1, "rect":Landroid/filterfw/geometry/Rectangle;
    return-object v1
.end method

.method private setOutputFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 6
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 208
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@4
    move-result v3

    #@5
    .line 209
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@8
    move-result v0

    #@9
    .line 210
    .local v0, "h":I
    const/4 v2, 0x0

    #@a
    .line 211
    .local v2, "ow":I
    const/4 v1, 0x0

    #@b
    .line 212
    .local v1, "oh":I
    if-le v3, v0, :cond_1

    #@d
    .line 213
    iget v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMaxOutputSize:I

    #@f
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v2

    #@13
    .line 214
    mul-int v4, v2, v0

    #@15
    div-int v1, v4, v3

    #@17
    .line 219
    :goto_0
    iget-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 220
    invoke-static {v2, v1, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@1e
    move-result-object v4

    #@1f
    iput-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@21
    .line 225
    :cond_0
    iget-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@23
    invoke-virtual {v4, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@26
    .line 207
    return-void

    #@27
    .line 216
    :cond_1
    iget v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMaxOutputSize:I

    #@29
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result v1

    #@2d
    .line 217
    mul-int v4, v1, v3

    #@2f
    div-int v2, v4, v0

    #@31
    goto :goto_0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 124
    return-object p2
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 130
    const-class v0, Lcom/google/android/filterpacks/facedetect/RectFrame;

    #@3
    .line 131
    const/4 v1, 0x1

    #@4
    .line 130
    invoke-static {v0, v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRegionFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@a
    .line 135
    new-array v0, v2, [Landroid/filterfw/core/Frame;

    #@c
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    #@e
    .line 136
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@10
    const-string/jumbo v1, "filterpack_facedetect"

    #@13
    .line 137
    const-string/jumbo v2, "face_zoomer"

    #@16
    .line 136
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@1b
    .line 138
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@1d
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    #@20
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@23
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

    #@25
    .line 141
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@27
    const-string/jumbo v1, "minTransitionMagnitudeFast"

    #@2a
    .line 142
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitudeFast:F

    #@2c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2f
    move-result-object v2

    #@30
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@33
    .line 143
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@35
    const-string/jumbo v1, "minTransitionMagnitude"

    #@38
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitude:F

    #@3a
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@41
    .line 144
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@43
    const-string/jumbo v1, "minFramesPerSpeaker"

    #@46
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerSpeaker:I

    #@48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@4f
    .line 145
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@51
    const-string/jumbo v1, "minFramesPerTransition"

    #@54
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerTransition:I

    #@56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@5d
    .line 146
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@5f
    const-string/jumbo v1, "minFramesPerZoomOut"

    #@62
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerZoomOut:I

    #@64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@6b
    .line 147
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@6d
    const-string/jumbo v1, "transitionSeconds"

    #@70
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSeconds:F

    #@72
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@79
    .line 148
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@7b
    const-string/jumbo v1, "transitionSigma"

    #@7e
    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSigma:F

    #@80
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@87
    .line 149
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@89
    const-string/jumbo v1, "enableDebugStream"

    #@8c
    iget-boolean v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    #@8e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@95
    .line 150
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@97
    const-string/jumbo v1, "outputTransitionsOnly"

    #@9a
    iget-boolean v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputTransitionsOnly:Z

    #@9c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@a3
    .line 128
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 15
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v3

    #@4
    .line 158
    .local v3, "frameManager":Landroid/filterfw/core/FrameManager;
    const-string/jumbo v12, "image"

    #@7
    invoke-virtual {p0, v12}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v4

    #@b
    .line 159
    .local v4, "imageFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@e
    move-result-wide v10

    #@f
    .line 160
    .local v10, "timestamp":J
    const-string/jumbo v12, "faces"

    #@12
    invoke-virtual {p0, v12}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@15
    move-result-object v2

    #@16
    .line 161
    .local v2, "facesFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v12, "lips"

    #@19
    invoke-virtual {p0, v12}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@1c
    move-result-object v6

    #@1d
    .line 162
    .local v6, "lipsFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@20
    move-result-object v5

    #@21
    .line 163
    .local v5, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-direct {p0, v5}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->setOutputFormat(Landroid/filterfw/core/FrameFormat;)V

    #@24
    .line 166
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    #@26
    const/4 v13, 0x0

    #@27
    aput-object v2, v12, v13

    #@29
    .line 167
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    #@2b
    const/4 v13, 0x1

    #@2c
    aput-object v6, v12, v13

    #@2e
    .line 168
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRegionFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@30
    invoke-virtual {v3, v12}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@33
    move-result-object v7

    #@34
    .line 169
    .local v7, "regionFrame":Landroid/filterfw/core/Frame;
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@36
    iget-object v13, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    #@38
    invoke-virtual {v12, v13, v7}, Landroid/filterfw/core/NativeProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@3b
    .line 172
    invoke-direct {p0, v7}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->getSelectedRegion(Landroid/filterfw/core/Frame;)Landroid/filterfw/geometry/Quad;

    #@3e
    move-result-object v8

    #@3f
    .line 173
    .local v8, "selectedRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingWidth()F

    #@42
    move-result v12

    #@43
    const/4 v13, 0x0

    #@44
    cmpg-float v12, v12, v13

    #@46
    if-lez v12, :cond_0

    #@48
    .line 174
    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingHeight()F

    #@4b
    move-result v12

    #@4c
    const/4 v13, 0x0

    #@4d
    cmpg-float v12, v12, v13

    #@4f
    if-gtz v12, :cond_1

    #@51
    .line 175
    :cond_0
    new-instance v12, Ljava/lang/RuntimeException;

    #@53
    .line 176
    new-instance v13, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v14, "Illegal selected region size: "

    #@5b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v13

    #@5f
    .line 177
    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingWidth()F

    #@62
    move-result v14

    #@63
    .line 176
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@66
    move-result-object v13

    #@67
    .line 177
    const-string/jumbo v14, " x "

    #@6a
    .line 176
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v13

    #@6e
    .line 178
    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingHeight()F

    #@71
    move-result v14

    #@72
    .line 176
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@75
    move-result-object v13

    #@76
    .line 178
    const-string/jumbo v14, "!"

    #@79
    .line 176
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v13

    #@7d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v13

    #@81
    .line 175
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@84
    throw v12

    #@85
    .line 182
    :cond_1
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

    #@87
    invoke-virtual {v12, v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@8a
    .line 183
    const-wide/16 v12, -0x1

    #@8c
    cmp-long v12, v10, v12

    #@8e
    if-eqz v12, :cond_2

    #@90
    .line 184
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@92
    const-string/jumbo v13, "timestamp"

    #@95
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@98
    move-result-object v14

    #@99
    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@9c
    .line 186
    :cond_2
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@9e
    invoke-virtual {v3, v12}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@a1
    move-result-object v9

    #@a2
    .line 187
    .local v9, "zoomedImageFrame":Landroid/filterfw/core/Frame;
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

    #@a4
    invoke-virtual {v12, v4, v9}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@a7
    .line 190
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@aa
    .line 191
    const-string/jumbo v12, "image"

    #@ad
    invoke-virtual {p0, v12, v9}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@b0
    .line 192
    invoke-virtual {v9}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@b3
    .line 194
    iget-boolean v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    #@b5
    if-eqz v12, :cond_4

    #@b7
    .line 196
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    #@b9
    const-string/jumbo v13, "debug"

    #@bc
    invoke-virtual {v12, v13}, Landroid/filterfw/core/NativeProgram;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    #@bf
    move-result-object v1

    #@c0
    check-cast v1, Ljava/lang/String;

    #@c2
    .line 197
    .local v1, "debugString":Ljava/lang/String;
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@c4
    invoke-virtual {v3, v12}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@c7
    move-result-object v0

    #@c8
    .line 198
    .local v0, "debugFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@cb
    move-result v12

    #@cc
    if-lez v12, :cond_3

    #@ce
    iget-boolean v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputTransitionsOnly:Z

    #@d0
    if-eqz v12, :cond_3

    #@d2
    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@da
    move-result-object v12

    #@db
    const-string/jumbo v13, ","

    #@de
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v12

    #@e2
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v12

    #@e6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    .line 201
    :cond_3
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    #@ed
    .line 202
    const-string/jumbo v12, "debug"

    #@f0
    invoke-virtual {p0, v12, v0}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@f3
    .line 203
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@f6
    .line 154
    .end local v0    # "debugFrame":Landroid/filterfw/core/Frame;
    .end local v1    # "debugString":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public setupPorts()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    .line 105
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@5
    move-result-object v1

    #@6
    .line 107
    .local v1, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@8
    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 109
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/LipDiff;

    #@e
    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@11
    move-result-object v2

    #@12
    .line 112
    .local v2, "lipsFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v3, "image"

    #@15
    invoke-virtual {p0, v3, v1}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 113
    const-string/jumbo v3, "faces"

    #@1b
    invoke-virtual {p0, v3, v0}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@1e
    .line 114
    const-string/jumbo v3, "lips"

    #@21
    invoke-virtual {p0, v3, v2}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@24
    .line 115
    const-string/jumbo v3, "image"

    #@27
    const-string/jumbo v4, "image"

    #@2a
    invoke-virtual {p0, v3, v4}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 116
    iget-boolean v3, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 117
    const-class v3, Ljava/lang/String;

    #@33
    const/4 v4, 0x1

    #@34
    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@37
    move-result-object v3

    #@38
    iput-object v3, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@3a
    .line 118
    const-string/jumbo v3, "debug"

    #@3d
    iget-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@3f
    invoke-virtual {p0, v3, v4}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@42
    .line 103
    :cond_0
    return-void
.end method

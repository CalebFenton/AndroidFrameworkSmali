.class public Landroid/filterpacks/imageproc/DrawRectFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawRectFilter.java"


# instance fields
.field private mColorBlue:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorBlue"
    .end annotation
.end field

.field private mColorGreen:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorGreen"
    .end annotation
.end field

.field private mColorRed:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorRed"
    .end annotation
.end field

.field private final mFixedColorFragmentShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const v0, 0x3f4ccccd    # 0.8f

    #@3
    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@6
    .line 39
    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    #@8
    .line 42
    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    #@a
    .line 45
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    #@d
    .line 48
    const-string/jumbo v0, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    #@10
    .line 47
    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mVertexShader:Ljava/lang/String;

    #@12
    .line 54
    const-string/jumbo v0, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    #@15
    .line 53
    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mFixedColorFragmentShader:Ljava/lang/String;

    #@17
    .line 63
    return-void
.end method

.method private renderBox(Landroid/filterfw/geometry/Quad;)V
    .locals 9
    .param p1, "box"    # Landroid/filterfw/geometry/Quad;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/high16 v8, 0x3f800000    # 1.0f

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x2

    #@6
    .line 110
    const/4 v0, 0x4

    #@7
    .line 113
    .local v0, "FLOAT_SIZE":I
    new-array v1, v6, [F

    #@9
    iget v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    #@b
    aput v3, v1, v7

    #@d
    iget v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    #@f
    aput v3, v1, v4

    #@11
    iget v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    #@13
    aput v3, v1, v5

    #@15
    const/4 v3, 0x3

    #@16
    aput v8, v1, v3

    #@18
    .line 114
    .local v1, "color":[F
    const/16 v3, 0x8

    #@1a
    new-array v2, v3, [F

    #@1c
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@1e
    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    #@20
    aput v3, v2, v7

    #@22
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@24
    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    #@26
    aput v3, v2, v4

    #@28
    .line 115
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@2a
    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    #@2c
    aput v3, v2, v5

    #@2e
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@30
    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    #@32
    const/4 v4, 0x3

    #@33
    aput v3, v2, v4

    #@35
    .line 116
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@37
    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    #@39
    aput v3, v2, v6

    #@3b
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@3d
    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    #@3f
    const/4 v4, 0x5

    #@40
    aput v3, v2, v4

    #@42
    .line 117
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@44
    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    #@46
    const/4 v4, 0x6

    #@47
    aput v3, v2, v4

    #@49
    iget-object v3, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@4b
    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    #@4d
    const/4 v4, 0x7

    #@4e
    aput v3, v2, v4

    #@50
    .line 120
    .local v2, "vertexValues":[F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@52
    const-string/jumbo v4, "color"

    #@55
    invoke-virtual {v3, v4, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@58
    .line 121
    iget-object v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@5a
    const-string/jumbo v4, "aPosition"

    #@5d
    invoke-virtual {v3, v4, v2, v5}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;[FI)V

    #@60
    .line 122
    iget-object v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@62
    invoke-virtual {v3, v6}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    #@65
    .line 125
    iget-object v3, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@67
    invoke-virtual {v3}, Landroid/filterfw/core/ShaderProgram;->beginDrawing()V

    #@6a
    .line 126
    invoke-static {v8}, Landroid/opengl/GLES20;->glLineWidth(F)V

    #@6d
    .line 127
    invoke-static {v5, v7, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    #@70
    .line 109
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 77
    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    #@5
    const-string/jumbo v2, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    #@8
    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@d
    .line 81
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    #@2
    .line 88
    const-string/jumbo v4, "image"

    #@5
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@8
    move-result-object v2

    #@9
    .line 89
    .local v2, "imageFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v4, "box"

    #@c
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@f
    move-result-object v1

    #@10
    .line 92
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/geometry/Quad;

    #@16
    .line 93
    .local v0, "box":Landroid/filterfw/geometry/Quad;
    const/high16 v4, 0x40000000    # 2.0f

    #@18
    invoke-virtual {v0, v4}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v5, v5}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@1f
    move-result-object v0

    #@20
    .line 96
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v2}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/filterfw/core/GLFrame;

    #@2a
    .line 99
    .local v3, "output":Landroid/filterfw/core/GLFrame;
    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->focus()V

    #@2d
    .line 100
    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->renderBox(Landroid/filterfw/geometry/Quad;)V

    #@30
    .line 103
    const-string/jumbo v4, "image"

    #@33
    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/DrawRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@36
    .line 106
    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@39
    .line 86
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 69
    const-string/jumbo v0, "image"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 71
    const-string/jumbo v0, "box"

    #@e
    const-class v1, Landroid/filterfw/geometry/Quad;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 72
    const-string/jumbo v0, "image"

    #@1b
    const-string/jumbo v1, "image"

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 68
    return-void
.end method

.class public Landroid/filterpacks/imageproc/DrawOverlayFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawOverlayFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 36
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 52
    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 57
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@6
    .line 56
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    .line 63
    const-string/jumbo v5, "source"

    #@5
    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@8
    move-result-object v4

    #@9
    .line 64
    .local v4, "sourceFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v5, "overlay"

    #@c
    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@f
    move-result-object v3

    #@10
    .line 65
    .local v3, "overlayFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v5, "box"

    #@13
    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@16
    move-result-object v1

    #@17
    .line 68
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/filterfw/geometry/Quad;

    #@1d
    .line 69
    .local v0, "box":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v0, v6, v6}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@20
    move-result-object v5

    #@21
    const/high16 v6, 0x40000000    # 2.0f

    #@23
    invoke-virtual {v5, v6}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    #@26
    move-result-object v0

    #@27
    .line 71
    iget-object v5, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@29
    invoke-virtual {v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@2c
    .line 74
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@37
    move-result-object v2

    #@38
    .line 75
    .local v2, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v2, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@3b
    .line 78
    iget-object v5, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@3d
    invoke-virtual {v5, v3, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@40
    .line 81
    const-string/jumbo v5, "image"

    #@43
    invoke-virtual {p0, v5, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@46
    .line 84
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@49
    .line 61
    return-void
.end method

.method public setupPorts()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 42
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    .line 44
    .local v0, "imageFormatMask":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "source"

    #@8
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 45
    const-string/jumbo v1, "overlay"

    #@e
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@11
    .line 46
    const-string/jumbo v1, "box"

    #@14
    const-class v2, Landroid/filterfw/geometry/Quad;

    #@16
    const/4 v3, 0x1

    #@17
    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@1e
    .line 47
    const-string/jumbo v1, "image"

    #@21
    const-string/jumbo v2, "source"

    #@24
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 41
    return-void
.end method

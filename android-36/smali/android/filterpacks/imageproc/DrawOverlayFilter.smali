.class public Landroid/filterpacks/imageproc/DrawOverlayFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawOverlayFilter.java"


# instance fields
.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 52
    return-object p2
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 57
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 58
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 63
    const-string/jumbo v0, "source"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 64
    .local v0, "sourceFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v1, "overlay"

    invoke-virtual {p0, v1}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 65
    .local v1, "overlayFrame":Landroid/filterfw/core/Frame;
    const-string v2, "box"

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 68
    .local v2, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/geometry/Quad;

    .line 69
    .local v3, "box":Landroid/filterfw/geometry/Quad;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    move-result-object v3

    .line 71
    iget-object v4, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v4, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 74
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 75
    .local v4, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v4, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 78
    iget-object v5, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v5, v1, v4}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 81
    const-string/jumbo v5, "image"

    invoke-virtual {p0, v5, v4}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 84
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 85
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 5

    .line 42
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 44
    .local v0, "imageFormatMask":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "source"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 45
    const-string/jumbo v2, "overlay"

    invoke-virtual {p0, v2, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 46
    const-class v2, Landroid/filterfw/geometry/Quad;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    const-string v3, "box"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 47
    const-string/jumbo v2, "image"

    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

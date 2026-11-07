.class public Landroid/filterpacks/base/GLTextureTarget;
.super Landroid/filterfw/core/Filter;
.source "GLTextureTarget.java"


# instance fields
.field private blacklist mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field


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
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 48
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/GLTextureTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 50
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    .line 51
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    .line 50
    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 55
    .local v1, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/base/GLTextureTarget;->mTexId:I

    int-to-long v3, v3

    const/16 v5, 0x64

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 58
    .local v2, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 59
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 60
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 42
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/GLTextureTarget;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 43
    return-void
.end method

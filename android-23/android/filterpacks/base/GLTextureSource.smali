.class public Landroid/filterpacks/base/GLTextureSource;
.super Landroid/filterfw/core/Filter;
.source "GLTextureSource.java"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field

.field private mTimestamp:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timestamp"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    #@6
    .line 51
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    #@a
    .line 55
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 69
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@a
    .line 70
    iput-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@c
    .line 66
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 77
    iget-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 78
    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mWidth:I

    #@7
    iget v2, p0, Landroid/filterpacks/base/GLTextureSource;->mHeight:I

    #@9
    invoke-static {v1, v2, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@c
    move-result-object v0

    #@d
    .line 81
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@10
    move-result-object v1

    #@11
    .line 83
    iget v2, p0, Landroid/filterpacks/base/GLTextureSource;->mTexId:I

    #@13
    int-to-long v2, v2

    #@14
    .line 82
    const/16 v4, 0x64

    #@16
    .line 81
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@1c
    .line 84
    iget-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@1e
    iget-wide v2, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    #@20
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@23
    .line 88
    .end local v0    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_0
    const-string/jumbo v1, "frame"

    #@26
    iget-object v2, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@28
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/GLTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@2b
    .line 90
    iget-boolean v1, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 92
    const-string/jumbo v1, "frame"

    #@32
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/GLTextureSource;->closeOutputPort(Ljava/lang/String;)V

    #@35
    .line 75
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 61
    const-string/jumbo v0, "frame"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/GLTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 60
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@9
    .line 97
    :cond_0
    return-void
.end method

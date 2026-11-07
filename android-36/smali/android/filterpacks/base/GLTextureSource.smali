.class public Landroid/filterpacks/base/GLTextureSource;
.super Landroid/filterfw/core/Filter;
.source "GLTextureSource.java"


# instance fields
.field private blacklist mFrame:Landroid/filterfw/core/Frame;

.field private blacklist mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private blacklist mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field

.field private blacklist mTimestamp:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timestamp"
    .end annotation
.end field

.field private blacklist mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 68
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 72
    :cond_c
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 77
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_23

    .line 78
    iget v0, p0, Landroid/filterpacks/base/GLTextureSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 81
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget v2, p0, Landroid/filterpacks/base/GLTextureSource;->mTexId:I

    int-to-long v2, v2

    const/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 84
    iget-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    iget-wide v2, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 88
    .end local v0    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_23
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/GLTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 90
    iget-boolean v0, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    if-nez v0, :cond_31

    .line 92
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/GLTextureSource;->closeOutputPort(Ljava/lang/String;)V

    .line 94
    :cond_31
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 61
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/GLTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 98
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 101
    :cond_9
    return-void
.end method

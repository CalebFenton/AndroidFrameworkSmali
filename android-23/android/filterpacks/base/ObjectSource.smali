.class public Landroid/filterpacks/base/ObjectSource;
.super Landroid/filterfw/core/Filter;
.source "ObjectSource.java"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mObject:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "object"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@9
    .line 40
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    #@c
    .line 44
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
    .line 83
    const-string/jumbo v0, "object"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 84
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 85
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@10
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@13
    .line 86
    iput-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@15
    .line 81
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 56
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 57
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 58
    new-instance v1, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v2, "ObjectSource producing frame with no object set!"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 60
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    #@17
    move-result-object v0

    #@18
    .line 61
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@22
    .line 62
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@24
    iget-object v2, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    #@26
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    #@29
    .line 63
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@2b
    const-wide/16 v2, -0x1

    #@2d
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@30
    .line 67
    .end local v0    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_1
    const-string/jumbo v1, "frame"

    #@33
    iget-object v2, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@35
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/ObjectSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@38
    .line 70
    iget-boolean v1, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    #@3a
    if-nez v1, :cond_2

    #@3c
    .line 71
    const-string/jumbo v1, "frame"

    #@3f
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/ObjectSource;->closeOutputPort(Ljava/lang/String;)V

    #@42
    .line 54
    :cond_2
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "frame"

    #@3
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@5
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/ObjectSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@8
    .line 49
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@5
    .line 76
    return-void
.end method

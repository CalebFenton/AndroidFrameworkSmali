.class public Landroid/filterpacks/base/FrameSource;
.super Landroid/filterfw/core/Filter;
.source "FrameSource.java"


# instance fields
.field private mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "format"
    .end annotation
.end field

.field private mFrame:Landroid/filterfw/core/Frame;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "frame"
    .end annotation
.end field

.field private mRepeatFrame:Z
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
    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    #@6
    .line 39
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/filterpacks/base/FrameSource;->mRepeatFrame:Z

    #@9
    .line 41
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 54
    const-string/jumbo v0, "frame"

    #@7
    iget-object v1, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/FrameSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@c
    .line 57
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/base/FrameSource;->mRepeatFrame:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 59
    const-string/jumbo v0, "frame"

    #@13
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/FrameSource;->closeOutputPort(Ljava/lang/String;)V

    #@16
    .line 51
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "frame"

    #@3
    iget-object v1, p0, Landroid/filterpacks/base/FrameSource;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@5
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/FrameSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@8
    .line 46
    return-void
.end method

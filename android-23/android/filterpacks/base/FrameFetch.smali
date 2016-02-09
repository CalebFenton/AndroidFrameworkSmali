.class public Landroid/filterpacks/base/FrameFetch;
.super Landroid/filterfw/core/Filter;
.source "FrameFetch.java"


# instance fields
.field private mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
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
    .line 39
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    #@6
    .line 41
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 51
    iget-object v1, p0, Landroid/filterpacks/base/FrameFetch;->mKey:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@5
    move-result-object v0

    #@6
    .line 52
    .local v0, "output":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_1

    #@8
    .line 53
    const-string/jumbo v1, "frame"

    #@b
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@e
    .line 54
    iget-boolean v1, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    #@10
    if-nez v1, :cond_0

    #@12
    .line 55
    const-string/jumbo v1, "frame"

    #@15
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->closeOutputPort(Ljava/lang/String;)V

    #@18
    .line 50
    :cond_0
    :goto_0
    return-void

    #@19
    .line 58
    :cond_1
    const/16 v1, 0xfa

    #@1b
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->delayNextProcess(I)V

    #@1e
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 47
    const-string/jumbo v1, "frame"

    #@3
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@5
    if-nez v0, :cond_0

    #@7
    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v0

    #@b
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@e
    .line 46
    return-void

    #@f
    .line 47
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@11
    goto :goto_0
.end method

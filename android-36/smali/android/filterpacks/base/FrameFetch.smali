.class public Landroid/filterpacks/base/FrameFetch;
.super Landroid/filterfw/core/Filter;
.source "FrameFetch.java"


# instance fields
.field private blacklist mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private blacklist mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field

.field private blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 51
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 52
    .local v0, "output":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_15

    .line 53
    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 54
    iget-boolean v2, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    if-nez v2, :cond_1a

    .line 55
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->closeOutputPort(Ljava/lang/String;)V

    goto :goto_1a

    .line 58
    :cond_15
    const/16 v1, 0xfa

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->delayNextProcess(I)V

    .line 60
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 47
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    :goto_b
    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 48
    return-void
.end method

.class public Landroid/filterpacks/text/StringSource;
.super Landroid/filterfw/core/Filter;
.source "StringSource.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stringValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@6
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@9
    move-result-object v0

    #@a
    .line 50
    .local v0, "output":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/text/StringSource;->mString:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    #@f
    .line 51
    const-wide/16 v2, -0x1

    #@11
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@14
    .line 52
    const-string/jumbo v1, "string"

    #@17
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/text/StringSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@1a
    .line 53
    const-string/jumbo v1, "string"

    #@1d
    invoke-virtual {p0, v1}, Landroid/filterpacks/text/StringSource;->closeOutputPort(Ljava/lang/String;)V

    #@20
    .line 48
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 43
    const-class v0, Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@9
    .line 44
    const-string/jumbo v0, "string"

    #@c
    iget-object v1, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/text/StringSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@11
    .line 42
    return-void
.end method

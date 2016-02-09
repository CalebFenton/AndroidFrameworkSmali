.class public Landroid/filterpacks/text/StringLogger;
.super Landroid/filterfw/core/Filter;
.source "StringLogger.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 44
    const-string/jumbo v2, "string"

    #@3
    invoke-virtual {p0, v2}, Landroid/filterpacks/text/StringLogger;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 45
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 46
    .local v1, "inputString":Ljava/lang/String;
    const-string/jumbo v2, "StringLogger"

    #@12
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 43
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "string"

    #@3
    const-class v1, Ljava/lang/Object;

    #@5
    .line 39
    const/4 v2, 0x1

    #@6
    .line 38
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/text/StringLogger;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@d
    .line 37
    return-void
.end method

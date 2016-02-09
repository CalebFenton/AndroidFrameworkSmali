.class public Landroid/filterpacks/base/NullFilter;
.super Landroid/filterfw/core/Filter;
.source "NullFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 28
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, "frame"

    #@3
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    .line 38
    return-void
.end method

.method public setupPorts()V
    .locals 1

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "frame"

    #@3
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->addInputPort(Ljava/lang/String;)V

    #@6
    .line 33
    return-void
.end method

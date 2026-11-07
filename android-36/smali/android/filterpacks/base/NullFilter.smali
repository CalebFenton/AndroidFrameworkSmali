.class public Landroid/filterpacks/base/NullFilter;
.super Landroid/filterfw/core/Filter;
.source "NullFilter.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 39
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 40
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 2

    .line 34
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->addInputPort(Ljava/lang/String;)V

    .line 35
    return-void
.end method

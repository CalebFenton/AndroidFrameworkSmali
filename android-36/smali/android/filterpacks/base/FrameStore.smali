.class public Landroid/filterpacks/base/FrameStore;
.super Landroid/filterfw/core/Filter;
.source "FrameStore.java"


# instance fields
.field private blacklist mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 44
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/FrameStore;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 47
    .local v0, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/FrameStore;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/FilterContext;->storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 48
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 2

    .line 39
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/FrameStore;->addInputPort(Ljava/lang/String;)V

    .line 40
    return-void
.end method

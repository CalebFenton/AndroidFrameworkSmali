.class public Landroid/filterpacks/base/FrameStore;
.super Landroid/filterfw/core/Filter;
.source "FrameStore.java"


# instance fields
.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 33
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 44
    const-string/jumbo v1, "frame"

    #@3
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameStore;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 47
    .local v0, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/FrameStore;->mKey:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/FilterContext;->storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@c
    .line 42
    return-void
.end method

.method public setupPorts()V
    .locals 1

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, "frame"

    #@3
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/FrameStore;->addInputPort(Ljava/lang/String;)V

    #@6
    .line 38
    return-void
.end method

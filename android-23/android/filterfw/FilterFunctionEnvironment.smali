.class public Landroid/filterfw/FilterFunctionEnvironment;
.super Landroid/filterfw/MffEnvironment;
.source "FilterFunctionEnvironment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 0
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    #@3
    .line 51
    return-void
.end method


# virtual methods
.method public varargs createFunction(Ljava/lang/Class;[Ljava/lang/Object;)Landroid/filterfw/core/FilterFunction;
    .locals 4
    .param p1, "filterClass"    # Ljava/lang/Class;
    .param p2, "parameters"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "FilterFunction("

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ")"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 66
    .local v1, "filterName":Ljava/lang/String;
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1, v1}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@26
    move-result-object v0

    #@27
    .line 67
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0, p2}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    #@2a
    .line 68
    new-instance v2, Landroid/filterfw/core/FilterFunction;

    #@2c
    invoke-virtual {p0}, Landroid/filterfw/FilterFunctionEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3, v0}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    #@33
    return-object v2
.end method

.class Landroid/filterfw/GraphEnvironment$GraphHandle;
.super Ljava/lang/Object;
.source "GraphEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/GraphEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphHandle"
.end annotation


# instance fields
.field private mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

.field private mGraph:Landroid/filterfw/core/FilterGraph;

.field private mSyncRunner:Landroid/filterfw/core/SyncRunner;

.field final synthetic this$0:Landroid/filterfw/GraphEnvironment;


# direct methods
.method public constructor <init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/GraphEnvironment;
    .param p2, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->this$0:Landroid/filterfw/GraphEnvironment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 60
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@7
    .line 59
    return-void
.end method


# virtual methods
.method public getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;
    .locals 2
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 69
    new-instance v0, Landroid/filterfw/core/AsyncRunner;

    #@6
    const-class v1, Landroid/filterfw/core/RoundRobinScheduler;

    #@8
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/AsyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V

    #@b
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    #@d
    .line 70
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    #@f
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@11
    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner;->setGraph(Landroid/filterfw/core/FilterGraph;)V

    #@14
    .line 72
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    #@16
    return-object v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@2
    return-object v0
.end method

.method public getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;
    .locals 3
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    #@6
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@8
    const-class v2, Landroid/filterfw/core/RoundRobinScheduler;

    #@a
    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    #@d
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    #@f
    .line 79
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    #@11
    return-object v0
.end method

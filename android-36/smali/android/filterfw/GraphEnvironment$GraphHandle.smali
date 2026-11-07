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
.field private greylist-max-o mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

.field private greylist-max-o mGraph:Landroid/filterfw/core/FilterGraph;

.field private greylist-max-o mSyncRunner:Landroid/filterfw/core/SyncRunner;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V
    .registers 3
    .param p2, "graph"    # Landroid/filterfw/core/FilterGraph;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 62
    return-void
.end method


# virtual methods
.method public greylist-max-o getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;
    .registers 4
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    .line 69
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    if-nez v0, :cond_14

    .line 70
    new-instance v0, Landroid/filterfw/core/AsyncRunner;

    const-class v1, Landroid/filterfw/core/RoundRobinScheduler;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/AsyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    .line 71
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner;->setGraph(Landroid/filterfw/core/FilterGraph;)V

    .line 73
    :cond_14
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    return-object v0
.end method

.method public greylist-max-o getGraph()Landroid/filterfw/core/FilterGraph;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method public greylist-max-o getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;
    .registers 5
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    .line 77
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    if-nez v0, :cond_f

    .line 78
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-class v2, Landroid/filterfw/core/RoundRobinScheduler;

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    .line 80
    :cond_f
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    return-object v0
.end method

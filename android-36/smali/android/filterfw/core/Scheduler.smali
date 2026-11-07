.class public abstract Landroid/filterfw/core/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private greylist-max-o mGraph:Landroid/filterfw/core/FilterGraph;


# direct methods
.method constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 2
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 33
    return-void
.end method


# virtual methods
.method greylist-max-o finished()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o getGraph()Landroid/filterfw/core/FilterGraph;
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method abstract greylist-max-o reset()V
.end method

.method abstract greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
.end method

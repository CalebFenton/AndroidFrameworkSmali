.class public Landroid/hardware/camera2/dispatch/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mDispatchTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/hardware/camera2/dispatch/BroadcastDispatcher;, "Landroid/hardware/camera2/dispatch/BroadcastDispatcher<TT;>;"
    .local p1, "dispatchTargets":[Landroid/hardware/camera2/dispatch/Dispatchable;, "[Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "dispatchTargets must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Landroid/hardware/camera2/dispatch/Dispatchable;

    #@c
    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;->mDispatchTargets:Ljava/util/List;

    #@12
    .line 43
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p0, "this":Landroid/hardware/camera2/dispatch/BroadcastDispatcher;, "Landroid/hardware/camera2/dispatch/BroadcastDispatcher<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 51
    .local v4, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    #@2
    .line 53
    .local v2, "gotResult":Z
    iget-object v5, p0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;->mDispatchTargets:Ljava/util/List;

    #@4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .end local v4    # "result":Ljava/lang/Object;
    .local v1, "dispatchTarget$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/hardware/camera2/dispatch/Dispatchable;

    #@14
    .line 54
    .local v0, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    .line 56
    .local v3, "localResult":Ljava/lang/Object;
    if-nez v2, :cond_0

    #@1a
    .line 57
    const/4 v2, 0x1

    #@1b
    .line 58
    move-object v4, v3

    #@1c
    .restart local v4    # "result":Ljava/lang/Object;
    goto :goto_0

    #@1d
    .line 62
    .end local v0    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    .end local v3    # "localResult":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    return-object v4
.end method

.class final Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
.super Ljava/lang/Object;
.source "ProfilingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProfilingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfilingRequestCallbackWrapper"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mKey:Ljava/util/UUID;

.field final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/util/UUID;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "key"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 805
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/ProfilingResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-object p1, p0, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 807
    iput-object p2, p0, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    .line 808
    iput-object p3, p0, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mKey:Ljava/util/UUID;

    .line 809
    return-void
.end method

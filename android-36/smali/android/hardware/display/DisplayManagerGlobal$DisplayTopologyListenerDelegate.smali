.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayTopologyListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$d_kmZBm9DHkbfoTYEWz_BtH_doY(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;Landroid/hardware/display/DisplayTopology;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->lambda$onTopologyChanged$0(Landroid/hardware/display/DisplayTopology;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1711
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/display/DisplayTopology;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1712
    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1713
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mListener:Ljava/util/function/Consumer;

    .line 1714
    iput-object p3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mPackageName:Ljava/lang/String;

    .line 1715
    return-void
.end method

.method private synthetic blacklist lambda$onTopologyChanged$0(Landroid/hardware/display/DisplayTopology;)V
    .registers 3
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 1726
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    .registers 4
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 1723
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smextraLogging()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending topology update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_1e
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;Landroid/hardware/display/DisplayTopology;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1727
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayTopologyListener {packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/hardware/display/DisplayTopology;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;Landroid/hardware/display/DisplayTopology;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/DisplayTopology;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/DisplayTopology;

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->$r8$lambda$d_kmZBm9DHkbfoTYEWz_BtH_doY(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;Landroid/hardware/display/DisplayTopology;)V

    return-void
.end method

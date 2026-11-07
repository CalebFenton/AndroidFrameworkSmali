.class public final synthetic Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/SurfaceSyncGroup;

.field public final synthetic blacklist f$1:Landroid/window/ITransactionReadyCallback;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;->f$0:Landroid/window/SurfaceSyncGroup;

    iput-object p2, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;->f$1:Landroid/window/ITransactionReadyCallback;

    iput-object p3, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;->f$0:Landroid/window/SurfaceSyncGroup;

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;->f$1:Landroid/window/ITransactionReadyCallback;

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2, p1}, Landroid/window/SurfaceSyncGroup;->$r8$lambda$RIGQSKCGL_wOT_BLp-LvudtYwpE(Landroid/window/SurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

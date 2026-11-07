.class public final synthetic Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/SurfaceSyncGroup$SurfaceViewFrameCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameStarted()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;->f$1:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0, v1}, Landroid/window/SurfaceSyncGroup;->lambda$add$4(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

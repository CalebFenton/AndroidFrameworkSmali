.class public final synthetic Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl$11;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Landroid/window/SurfaceSyncGroup;

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl$11;JLandroid/window/SurfaceSyncGroup;Z)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewRootImpl$11;

    iput-wide p2, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$2:Landroid/window/SurfaceSyncGroup;

    iput-boolean p5, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewRootImpl$11;

    iget-wide v1, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$2:Landroid/window/SurfaceSyncGroup;

    iget-boolean v4, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;->f$3:Z

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewRootImpl$11;->$r8$lambda$lOIKKNnrcWn9ZndeJebfX4H5mOg(Landroid/view/ViewRootImpl$11;JLandroid/window/SurfaceSyncGroup;ZZ)V

    return-void
.end method

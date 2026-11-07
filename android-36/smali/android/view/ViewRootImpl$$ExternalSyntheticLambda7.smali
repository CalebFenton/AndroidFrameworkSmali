.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;->f$0:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;->f$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->lambda$safeguardOverlappingSyncs$14(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

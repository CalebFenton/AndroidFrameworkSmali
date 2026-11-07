.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

.field public final synthetic blacklist f$2:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;->f$1:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    iput-object p3, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;->f$2:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;->f$1:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    iget-object v2, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;->f$2:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0, v1, v2}, Landroid/view/SurfaceView;->$r8$lambda$fEUJ8AN5zlaEQlBS9kCb2vUfWDI(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

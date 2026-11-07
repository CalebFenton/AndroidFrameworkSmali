.class public final synthetic Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->lambda$updateParams$0(Landroid/view/SurfaceView;)V

    return-void
.end method

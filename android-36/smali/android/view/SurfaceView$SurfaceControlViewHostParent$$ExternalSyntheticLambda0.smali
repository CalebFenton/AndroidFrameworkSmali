.class public final synthetic Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView;

.field public final synthetic blacklist f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iput-object p2, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->lambda$forwardBackKeyToParent$1(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V

    return-void
.end method

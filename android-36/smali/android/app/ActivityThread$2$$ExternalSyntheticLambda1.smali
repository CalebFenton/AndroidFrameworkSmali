.class public final synthetic Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread$2;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic blacklist f$2:Landroid/view/View;

.field public final synthetic blacklist f$3:Landroid/os/IBinder;

.field public final synthetic blacklist f$4:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread$2;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityThread$2;

    iput-object p2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iput-object p4, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$4:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityThread$2;

    iget-object v1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iget-object v3, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda1;->f$4:Landroid/window/SplashScreenView;

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread$2;->$r8$lambda$agWTP8bYGarmZEjQVtdGUFqv2EQ(Landroid/app/ActivityThread$2;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V

    return-void
.end method

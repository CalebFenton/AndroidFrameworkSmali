.class public final synthetic Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread$2;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread$2;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$2;

    iput-object p2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$2:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$2;

    iget-object v1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$2:Landroid/window/SplashScreenView;

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread$2;->$r8$lambda$_hjLLLQQnGPktE8iroJppCIqD1k(Landroid/app/ActivityThread$2;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$OnJankDataListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceControl$OnJankDataListener;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$OnJankDataListener;

    return-void
.end method


# virtual methods
.method public final whitelist onJankDataAvailable(Ljava/util/List;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$OnJankDataListener;

    invoke-static {v0, v1, p1}, Landroid/view/ViewRootImpl;->lambda$registerOnJankDataListener$12(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;Ljava/util/List;)V

    return-void
.end method

.class public final synthetic Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-boolean p2, p0, Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-boolean v1, p0, Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/SurfaceControl$Transaction$1;->lambda$onTrustedPresentationChanged$0(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.class Landroid/view/SurfaceControl$Transaction$1;
.super Landroid/view/SurfaceControl$TrustedPresentationCallback;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/SurfaceControl$Transaction;->setTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceControl$Transaction;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 5190
    iput-object p2, p0, Landroid/view/SurfaceControl$Transaction$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/view/SurfaceControl$Transaction$1;->val$listener:Ljava/util/function/Consumer;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/view/SurfaceControl$TrustedPresentationCallback;-><init>(Landroid/view/SurfaceControl-IA;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$0(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "inTrustedPresentationState"    # Z

    .line 5194
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onTrustedPresentationChanged(Z)V
    .registers 5
    .param p1, "inTrustedPresentationState"    # Z

    .line 5193
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction$1;->val$listener:Ljava/util/function/Consumer;

    new-instance v2, Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/view/SurfaceControl$Transaction$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5195
    return-void
.end method

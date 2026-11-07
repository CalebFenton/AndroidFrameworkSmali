.class public final synthetic Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Landroid/os/CancellationSignal;

.field public final synthetic blacklist f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$2:Landroid/os/CancellationSignal;

    iput-object p4, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$2:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport;->$r8$lambda$o74e8lNvTblt_cOdrUr7jfuaPfY(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V

    return-void
.end method

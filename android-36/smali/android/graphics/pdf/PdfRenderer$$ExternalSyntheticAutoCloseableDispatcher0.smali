.class public final synthetic Landroid/graphics/pdf/PdfRenderer$$ExternalSyntheticAutoCloseableDispatcher0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist m(Ljava/lang/Object;)V
    .registers 2

    .line 0
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_a
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_14

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Landroid/graphics/pdf/PdfRenderer$$ExternalSyntheticAutoCloseableForwarder1;->m(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_14
    invoke-static {p0}, Landroid/graphics/pdf/PdfRenderer$$ExternalSyntheticThrowIAE2;->m(Ljava/lang/Object;)V

    return-void
.end method

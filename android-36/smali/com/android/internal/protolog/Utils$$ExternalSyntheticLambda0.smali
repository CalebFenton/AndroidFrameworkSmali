.class public final synthetic Lcom/android/internal/protolog/Utils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/Utils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    return-void
.end method


# virtual methods
.method public final blacklist trace(Landroid/tracing/perfetto/TracingContext;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/Utils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-static {v0, p1}, Lcom/android/internal/protolog/Utils;->lambda$dumpViewerConfig$0(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

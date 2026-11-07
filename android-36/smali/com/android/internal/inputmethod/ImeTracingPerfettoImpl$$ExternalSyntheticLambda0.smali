.class public final synthetic Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field public final synthetic blacklist f$2:[B


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    iput-object p3, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final blacklist trace(Landroid/tracing/perfetto/TracingContext;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;->f$2:[B

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->lambda$triggerServiceDump$1(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[BLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.class public final synthetic Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/protolog/PerfettoProtoLogImpl;

.field public final synthetic blacklist f$1:Lcom/android/internal/protolog/common/IProtoLogGroup;

.field public final synthetic blacklist f$2:Lcom/android/internal/protolog/common/LogLevel;

.field public final synthetic blacklist f$3:[Ljava/lang/Object;

.field public final synthetic blacklist f$4:Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

.field public final synthetic blacklist f$5:Ljava/lang/String;

.field public final synthetic blacklist f$6:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;J)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/protolog/common/IProtoLogGroup;

    iput-object p3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/internal/protolog/common/LogLevel;

    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$3:[Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    iput-object p6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$6:J

    return-void
.end method


# virtual methods
.method public final blacklist trace(Landroid/tracing/perfetto/TracingContext;)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/protolog/common/IProtoLogGroup;

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/internal/protolog/common/LogLevel;

    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$3:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    iget-object v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$6:J

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->$r8$lambda$oLMGvk9n3jCtLVnANtrX7U02Jos(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

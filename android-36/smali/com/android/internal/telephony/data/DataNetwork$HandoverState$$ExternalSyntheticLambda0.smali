.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;JI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    iput-wide p2, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;->f$1:J

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->$r8$lambda$8deFhA609hzCUVz_8mruLWhDnlc(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;JI)V

    return-void
.end method

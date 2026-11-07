.class public final synthetic Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/metrics/ServiceStateStats;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/ServiceStateStats;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    iput-wide p2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->$r8$lambda$U1TDr_x3xGFEy_kQ0WlTesiws-w(Lcom/android/internal/telephony/metrics/ServiceStateStats;JLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

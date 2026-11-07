.class public final synthetic Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(IJ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;->f$0:I

    iput-wide p2, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;->f$0:I

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->$r8$lambda$2uF6qbq-jxSO_duJdOmtYaI2CbM(IJLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

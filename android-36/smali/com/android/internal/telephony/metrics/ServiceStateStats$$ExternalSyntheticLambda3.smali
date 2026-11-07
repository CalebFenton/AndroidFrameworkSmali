.class public final synthetic Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:J

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(JZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;->f$0:J

    iput-boolean p3, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;->f$0:J

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/ServiceStateStats$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->$r8$lambda$2FfGbpmycSAbjm9lOowU6VIzEkI(JZLcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;)Lcom/android/internal/telephony/metrics/ServiceStateStats$TimestampedServiceState;

    move-result-object p0

    return-object p0
.end method

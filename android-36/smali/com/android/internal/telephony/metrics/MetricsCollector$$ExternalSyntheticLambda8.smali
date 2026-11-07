.class public final synthetic Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->$r8$lambda$5ZvgMB7RGMMKyb3dmpxpnWQ1BWo(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V

    return-void
.end method

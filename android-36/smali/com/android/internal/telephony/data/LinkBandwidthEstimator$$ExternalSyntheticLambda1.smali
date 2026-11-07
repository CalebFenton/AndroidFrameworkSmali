.class public final synthetic Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    check-cast p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->$r8$lambda$Mdgp2VWUKrudS1LXmAOUibjJBaM(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

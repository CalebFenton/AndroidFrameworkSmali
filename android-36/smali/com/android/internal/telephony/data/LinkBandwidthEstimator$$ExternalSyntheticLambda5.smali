.class public final synthetic Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;->f$1:I

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->$r8$lambda$zPWNfvmliL3T63Aed7llUPckHvw(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    return-void
.end method

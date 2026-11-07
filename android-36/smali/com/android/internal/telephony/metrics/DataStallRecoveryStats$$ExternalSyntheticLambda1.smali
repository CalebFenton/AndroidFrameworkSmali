.class public final synthetic Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Z

.field public final synthetic blacklist f$6:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;IZIIZI)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    iput p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$2:Z

    iput p4, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$4:I

    iput-boolean p6, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$5:Z

    iput p7, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$2:Z

    iget v3, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$4:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$5:Z

    iget v6, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;->f$6:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->$r8$lambda$aoGCXJeyDX1zB04MCobYr77fYZ8(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;IZIIZI)V

    return-void
.end method

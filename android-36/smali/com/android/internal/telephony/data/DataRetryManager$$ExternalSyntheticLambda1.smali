.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager;

.field public final synthetic blacklist f$1:Landroid/telephony/data/DataProfile;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/data/DataProfile;

    iput p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iput p5, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$4:I

    iput-wide p6, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$5:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/data/DataProfile;

    iget v2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$4:I

    iget-wide v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;->f$5:J

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$krlQxpUP30gXH2NW73P3oO-AEXQ(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

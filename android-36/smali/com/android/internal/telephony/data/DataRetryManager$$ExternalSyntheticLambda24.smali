.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;IIZJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iput p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$2:I

    iput-boolean p4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$3:Z

    iput-wide p5, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$4:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iget v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$1:I

    iget v2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$2:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$3:Z

    iget-wide v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;->f$4:J

    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$2ZfjGYjcdagJJ0HBYTKQR6waXUI(Lcom/android/internal/telephony/data/DataRetryManager;IIZJLjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:J

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(JLjava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;->f$0:J

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;->f$0:J

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;->f$2:I

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$-rbfxZG7yG1rz-1FDi7sHRQyuFE(JLjava/lang/String;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

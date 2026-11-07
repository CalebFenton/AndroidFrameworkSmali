.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    iput-wide p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;->f$1:J

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$b9yHI4KKiKVH8AbSzldYqImAClU(Lcom/android/internal/telephony/data/DataNetwork;JLcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

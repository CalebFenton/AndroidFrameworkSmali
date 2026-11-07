.class public Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;
.super Ljava/lang/Object;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist mAppliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

.field protected blacklist mRetryDelayMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->mRetryDelayMillis:J

    return-void
.end method


# virtual methods
.method public blacklist setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;",
            ")TT;"
        }
    .end annotation

    .line 698
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->mAppliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    return-object p0
.end method

.method public blacklist setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 686
    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->mRetryDelayMillis:J

    return-object p0
.end method

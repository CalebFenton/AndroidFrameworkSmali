.class public Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;
.super Ljava/lang/Object;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataRetryRule"
.end annotation


# instance fields
.field protected blacklist mFailCauses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mMaxRetries:I

.field protected blacklist mNetworkCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mRetryIntervalsMillis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$aq96Sg2xelk7__4Ohs5B0326jPU(Ljava/lang/Long;)Z
    .registers 5

    .line 361
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 13

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    const/16 v0, 0xa

    .line 299
    iput v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    .line 307
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 315
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "illegal rule "

    if-nez v0, :cond_175

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 324
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_42
    if-ge v4, v2, :cond_12d

    aget-object v5, v0, v4

    .line 326
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s*=\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 327
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_118

    .line 330
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 331
    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 333
    :try_start_61
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const v10, -0x3926d9d9

    if-eq v9, v10, :cond_8c

    const v10, -0x2a0ede95

    if-eq v9, v10, :cond_82

    const v10, 0x16e7707c

    if-eq v9, v10, :cond_75

    goto :goto_96

    :cond_75
    const-string v9, "retry_interval"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    move v6, v8

    goto :goto_97

    :catch_7f
    move-exception p0

    goto/16 :goto_f8

    :cond_82
    const-string v9, "fail_causes"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    move v6, v3

    goto :goto_97

    :cond_8c
    const-string v9, "maximum_retries"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_92} :catch_7f

    if-eqz v6, :cond_96

    move v6, v7

    goto :goto_97

    :cond_96
    :goto_96
    const/4 v6, -0x1

    :goto_97
    const-string v9, "\\s*\\|\\s*"

    if-eqz v6, :cond_ce

    if-eq v6, v8, :cond_a7

    if-eq v6, v7, :cond_a0

    goto :goto_f4

    .line 347
    :cond_a0
    :try_start_a0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    goto :goto_f4

    .line 341
    :cond_a7
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;-><init>()V

    .line 342
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda1;-><init>()V

    .line 343
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 344
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    goto :goto_f4

    .line 335
    :cond_ce
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;-><init>()V

    .line 336
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda0;-><init>()V

    .line 337
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 338
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iput-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_f4} :catch_7f

    :goto_f4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_42

    .line 351
    :goto_f8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_118
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_12d
    iget p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    if-ltz p1, :cond_15c

    .line 361
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_143

    return-void

    .line 362
    :cond_143
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry interval should not be less than 0. mRetryIntervalsMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_15c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max retries should not be less than 0. mMaxRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_175
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getFailCauses()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getMaxRetries()I
    .registers 1

    .line 383
    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    return p0
.end method

.method public blacklist getRetryIntervalsMillis()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    return-object p0
.end method

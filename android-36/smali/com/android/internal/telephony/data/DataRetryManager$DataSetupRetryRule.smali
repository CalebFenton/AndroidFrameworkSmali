.class public Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSetupRetryRule"
.end annotation


# instance fields
.field private blacklist mIsPermanentFailCauseRule:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 13

    .line 444
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 447
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    const/4 v4, -0x1

    const-string v5, "illegal rule "

    if-ge v3, v1, :cond_ca

    aget-object v6, v0, v3

    .line 449
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s*=\\s*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 450
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b5

    .line 453
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 454
    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 456
    :try_start_38
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const v10, -0x58aaf04a

    if-eq v9, v10, :cond_53

    const v10, -0x1019c0a6

    if-eq v9, v10, :cond_47

    goto :goto_5c

    :cond_47
    const-string v9, "permanent_fail_causes"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    move v4, v2

    goto :goto_5c

    :catch_51
    move-exception p0

    goto :goto_95

    :cond_53
    const-string v9, "capabilities"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    move v4, v8

    :cond_5c
    :goto_5c
    if-eqz v4, :cond_68

    if-eq v4, v8, :cond_61

    goto :goto_92

    .line 466
    :cond_61
    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilitiesFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    goto :goto_92

    .line 458
    :cond_68
    const-string v4, "\\s*\\|\\s*"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;-><init>()V

    .line 459
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda0;-><init>()V

    .line 460
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 461
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    .line 462
    iput-boolean v8, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->mIsPermanentFailCauseRule:Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_92} :catch_51

    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 470
    :goto_95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 475
    :cond_ca
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 476
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto :goto_101

    .line 477
    :cond_e7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Should have either valid network capabilities or fail causes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_101
    :goto_101
    return-void
.end method


# virtual methods
.method public blacklist canBeMatched(II)Z
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    return v1

    .line 515
    :cond_16
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2c

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    return v1

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getNetworkCapabilities()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist isPermanentFailCauseRule()Z
    .registers 1

    .line 499
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->mIsPermanentFailCauseRule:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataSetupRetryRule: Network capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 522
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule$$ExternalSyntheticLambda0;-><init>()V

    .line 523
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 522
    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilitiesToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Fail causes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Retry intervals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Maximum retries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

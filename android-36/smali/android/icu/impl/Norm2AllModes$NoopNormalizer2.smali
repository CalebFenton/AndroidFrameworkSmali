.class public final Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;
.super Landroid/icu/text/Normalizer2;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopNormalizer2"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    .line 62
    if-eq p1, p2, :cond_7

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 65
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getDecomposition(I)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # I

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hasBoundaryAfter(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hasBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isInert(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isNormalized(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;

    .line 42
    if-eq p2, p1, :cond_e

    .line 44
    :try_start_2
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 45
    :catch_7
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    .line 33
    if-eq p2, p1, :cond_b

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 37
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    .line 54
    if-eq p1, p2, :cond_7

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 57
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 76
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0
.end method

.method public whitelist test-api spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

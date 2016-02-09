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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 53
    if-eq p1, p2, :cond_0

    #@2
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 73
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 71
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isInert(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 75
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 65
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 33
    if-eq p2, p1, :cond_0

    #@2
    .line 35
    :try_start_0
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 36
    :catch_0
    move-exception v0

    #@8
    .line 37
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@a
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1

    #@e
    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v1
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 24
    if-eq p2, p1, :cond_0

    #@2
    .line 25
    const/4 v0, 0x0

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v0
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 45
    if-eq p1, p2, :cond_0

    #@2
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 67
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@2
    return-object v0
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    return v0
.end method

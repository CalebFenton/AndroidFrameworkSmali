.class Landroid/icu/text/Quantifier;
.super Ljava/lang/Object;
.source "Quantifier.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# static fields
.field public static final MAX:I = 0x7fffffff


# instance fields
.field private matcher:Landroid/icu/text/UnicodeMatcher;

.field private maxCount:I

.field private minCount:I


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeMatcher;II)V
    .locals 1
    .param p1, "theMatcher"    # Landroid/icu/text/UnicodeMatcher;
    .param p2, "theMinCount"    # I
    .param p3, "theMaxCount"    # I

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 25
    :cond_1
    if-ltz p3, :cond_0

    #@f
    if-gt p2, p3, :cond_0

    #@11
    .line 28
    iput-object p1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    #@13
    .line 29
    iput p2, p0, Landroid/icu/text/Quantifier;->minCount:I

    #@15
    .line 30
    iput p3, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@17
    .line 24
    return-void
.end method


# virtual methods
.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 110
    iget-object v0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    #@6
    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    #@9
    .line 108
    :cond_0
    return-void
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 8
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 40
    aget v3, p2, v5

    #@5
    .line 41
    .local v3, "start":I
    const/4 v0, 0x0

    #@6
    .line 42
    .local v0, "count":I
    :cond_0
    iget v4, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@8
    if-ge v0, v4, :cond_1

    #@a
    .line 43
    aget v2, p2, v5

    #@c
    .line 44
    .local v2, "pos":I
    iget-object v4, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    #@e
    invoke-interface {v4, p1, p2, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@11
    move-result v1

    #@12
    .line 45
    .local v1, "m":I
    if-ne v1, v7, :cond_2

    #@14
    .line 46
    add-int/lit8 v0, v0, 0x1

    #@16
    .line 47
    aget v4, p2, v5

    #@18
    if-ne v2, v4, :cond_0

    #@1a
    .line 58
    .end local v1    # "m":I
    .end local v2    # "pos":I
    :cond_1
    if-eqz p4, :cond_3

    #@1c
    aget v4, p2, v5

    #@1e
    if-ne v4, p3, :cond_3

    #@20
    .line 59
    return v6

    #@21
    .line 52
    .restart local v1    # "m":I
    .restart local v2    # "pos":I
    :cond_2
    if-eqz p4, :cond_1

    #@23
    if-ne v1, v6, :cond_1

    #@25
    .line 53
    return v6

    #@26
    .line 61
    .end local v1    # "m":I
    .end local v2    # "pos":I
    :cond_3
    iget v4, p0, Landroid/icu/text/Quantifier;->minCount:I

    #@28
    if-lt v0, v4, :cond_4

    #@2a
    .line 62
    return v7

    #@2b
    .line 64
    :cond_4
    aput v3, p2, v5

    #@2d
    .line 65
    return v5
.end method

.method public matchesIndexValue(I)Z
    .locals 1
    .param p1, "v"    # I

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/icu/text/Quantifier;->minCount:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    #@6
    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 6
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    const v5, 0x7fffffff

    #@3
    const/4 v4, 0x1

    #@4
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 73
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    #@b
    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 74
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    #@14
    if-nez v1, :cond_1

    #@16
    .line 75
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@18
    if-ne v1, v4, :cond_0

    #@1a
    .line 76
    const/16 v1, 0x3f

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 77
    :cond_0
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@27
    if-ne v1, v5, :cond_2

    #@29
    .line 78
    const/16 v1, 0x2a

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 81
    :cond_1
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    #@36
    if-ne v1, v4, :cond_2

    #@38
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@3a
    if-ne v1, v5, :cond_2

    #@3c
    .line 82
    const/16 v1, 0x2b

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 84
    :cond_2
    const/16 v1, 0x7b

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 85
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    #@4e
    int-to-long v2, v1

    #@4f
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 86
    const/16 v1, 0x2c

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    .line 87
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@5d
    if-eq v1, v5, :cond_3

    #@5f
    .line 88
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    #@61
    int-to-long v2, v1

    #@62
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 90
    :cond_3
    const/16 v1, 0x7d

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    return-object v1
.end method

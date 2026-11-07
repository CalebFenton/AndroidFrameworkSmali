.class Landroid/icu/text/Quantifier;
.super Ljava/lang/Object;
.source "Quantifier.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# static fields
.field public static final blacklist MAX:I = 0x7fffffff


# instance fields
.field private blacklist matcher:Landroid/icu/text/UnicodeMatcher;

.field private blacklist maxCount:I

.field private blacklist minCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/UnicodeMatcher;II)V
    .registers 5
    .param p1, "theMatcher"    # Landroid/icu/text/UnicodeMatcher;
    .param p2, "theMinCount"    # I
    .param p3, "theMaxCount"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_12

    if-ltz p2, :cond_12

    if-ltz p3, :cond_12

    if-gt p2, p3, :cond_12

    .line 31
    iput-object p1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    .line 32
    iput p2, p0, Landroid/icu/text/Quantifier;->minCount:I

    .line 33
    iput p3, p0, Landroid/icu/text/Quantifier;->maxCount:I

    .line 34
    return-void

    .line 29
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    .line 112
    iget v0, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-lez v0, :cond_9

    .line 113
    iget-object v0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 115
    :cond_9
    return-void
.end method

.method public whitelist test-api matches(Landroid/icu/text/Replaceable;[IIZ)I
    .registers 13
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    .line 43
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 44
    .local v1, "start":I
    const/4 v2, 0x0

    .line 45
    .local v2, "count":I
    :goto_4
    iget v3, p0, Landroid/icu/text/Quantifier;->maxCount:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_21

    .line 46
    aget v3, p2, v0

    .line 47
    .local v3, "pos":I
    iget-object v6, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v6

    .line 48
    .local v6, "m":I
    if-ne v6, v4, :cond_1c

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    aget v7, p2, v0

    if-ne v3, v7, :cond_1b

    .line 53
    goto :goto_21

    .line 60
    .end local v3    # "pos":I
    .end local v6    # "m":I
    :cond_1b
    goto :goto_4

    .line 55
    .restart local v3    # "pos":I
    .restart local v6    # "m":I
    :cond_1c
    if-eqz p4, :cond_21

    if-ne v6, v5, :cond_21

    .line 56
    return v5

    .line 61
    .end local v3    # "pos":I
    .end local v6    # "m":I
    :cond_21
    :goto_21
    if-eqz p4, :cond_28

    aget v3, p2, v0

    if-ne v3, p3, :cond_28

    .line 62
    return v5

    .line 64
    :cond_28
    iget v3, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-lt v2, v3, :cond_2d

    .line 65
    return v4

    .line 67
    :cond_2d
    aput v1, p2, v0

    .line 68
    return v0
.end method

.method public whitelist test-api matchesIndexValue(I)Z
    .registers 3
    .param p1, "v"    # I

    .line 101
    iget v0, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api toPattern(Z)Ljava/lang/String;
    .registers 8
    .param p1, "escapeUnprintable"    # Z

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-nez v1, :cond_34

    .line 78
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne v1, v3, :cond_25

    .line 79
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    :cond_25
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne v1, v2, :cond_47

    .line 81
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 84
    :cond_34
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-ne v1, v3, :cond_47

    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne v1, v2, :cond_47

    .line 85
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_47
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-eq v1, v2, :cond_69

    .line 91
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_69
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

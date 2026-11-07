.class public Landroid/icu/impl/number/parse/SeriesMatcher;
.super Ljava/lang/Object;
.source "SeriesMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected blacklist frozen:Z

.field protected blacklist matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/number/parse/NumberParseMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 18
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->frozen:Z

    return-void
.end method


# virtual methods
.method public blacklist addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V
    .registers 3
    .param p1, "matcher"    # Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 24
    nop

    .line 25
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    if-nez v0, :cond_c

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    .line 28
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public blacklist freeze()V
    .registers 2

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->frozen:Z

    .line 33
    return-void
.end method

.method public blacklist length()I
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 14
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 41
    nop

    .line 42
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 43
    return v1

    .line 47
    :cond_7
    new-instance v0, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 48
    .local v0, "backup":Landroid/icu/impl/number/parse/ParsedNumber;
    invoke-virtual {v0, p2}, Landroid/icu/impl/number/parse/ParsedNumber;->copyFrom(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 50
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v2

    .line 51
    .local v2, "initialOffset":I
    const/4 v3, 0x1

    .line 52
    .local v3, "maybeMore":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    iget-object v5, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6f

    .line 53
    iget-object v5, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 54
    .local v5, "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v6

    .line 55
    .local v6, "matcherOffset":I
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v7

    if-eqz v7, :cond_34

    .line 56
    invoke-interface {v5, p1, p2}, Landroid/icu/impl/number/parse/NumberParseMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v3

    goto :goto_35

    .line 59
    :cond_34
    const/4 v3, 0x1

    .line 62
    :goto_35
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v7

    if-eq v7, v6, :cond_3d

    const/4 v7, 0x1

    goto :goto_3e

    :cond_3d
    move v7, v1

    .line 63
    .local v7, "success":Z
    :goto_3e
    instance-of v8, v5, Landroid/icu/impl/number/parse/NumberParseMatcher$Flexible;

    .line 64
    .local v8, "isFlexible":Z
    if-eqz v7, :cond_45

    if-eqz v8, :cond_45

    goto :goto_67

    .line 66
    :cond_45
    if-eqz v7, :cond_63

    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 71
    iget-object v9, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_67

    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v9

    iget v10, p2, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    if-eq v9, v10, :cond_67

    iget v9, p2, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    if-le v9, v6, :cond_67

    .line 72
    iget v9, p2, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, v9}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    goto :goto_67

    .line 74
    :cond_63
    if-eqz v8, :cond_68

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 83
    .end local v5    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    .end local v6    # "matcherOffset":I
    .end local v7    # "success":Z
    .end local v8    # "isFlexible":Z
    :cond_67
    :goto_67
    goto :goto_15

    .line 79
    .restart local v5    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    .restart local v6    # "matcherOffset":I
    .restart local v7    # "success":Z
    .restart local v8    # "isFlexible":Z
    :cond_68
    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 80
    invoke-virtual {p2, v0}, Landroid/icu/impl/number/parse/ParsedNumber;->copyFrom(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 81
    return v3

    .line 86
    .end local v4    # "i":I
    .end local v5    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    .end local v6    # "matcherOffset":I
    .end local v7    # "success":Z
    .end local v8    # "isFlexible":Z
    :cond_6f
    return v3
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 4
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 103
    nop

    .line 104
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    if-nez v0, :cond_6

    .line 105
    return-void

    .line 108
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 109
    iget-object v1, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/number/parse/NumberParseMatcher;

    .line 110
    .local v1, "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    invoke-interface {v1, p1}, Landroid/icu/impl/number/parse/NumberParseMatcher;->postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 108
    .end local v1    # "matcher":Landroid/icu/impl/number/parse/NumberParseMatcher;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 112
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 4
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 91
    nop

    .line 92
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 93
    return v1

    .line 97
    :cond_7
    nop

    .line 98
    iget-object v0, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/parse/NumberParseMatcher;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/parse/NumberParseMatcher;->smokeTest(Landroid/icu/impl/StringSegment;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<SeriesMatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

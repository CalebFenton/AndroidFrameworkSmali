.class Landroid/icu/text/PluralRules$RuleList;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private hasExplicitBoundingInfo:Z

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/PluralRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralRules$RuleList;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/icu/text/PluralRules$RuleList;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    #@2
    return p1
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1662
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    #@6
    .line 1664
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@d
    .line 1661
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/PluralRules$RuleList;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/PluralRules$RuleList;-><init>()V

    #@3
    return-void
.end method

.method private selectRule(Landroid/icu/text/PluralRules$FixedDecimal;)Landroid/icu/text/PluralRules$Rule;
    .locals 3
    .param p1, "n"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    .line 1695
    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    #@12
    .line 1696
    .local v0, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1697
    return-object v0

    #@19
    .line 1700
    .end local v0    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method


# virtual methods
.method public addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;
    .locals 6
    .param p1, "nextRule"    # Landroid/icu/text/PluralRules$Rule;

    #@0
    .prologue
    .line 1667
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1668
    .local v0, "keyword":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    #@16
    .line 1669
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 1670
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Duplicate keyword: "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 1673
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_1
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@3c
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3f
    .line 1674
    return-object p0
.end method

.method public computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    .line 1733
    const/4 v0, 0x0

    #@1
    .line 1734
    .local v0, "result":Z
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    #@13
    .line 1735
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1736
    invoke-virtual {v1, p2}, Landroid/icu/text/PluralRules$Rule;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 1737
    const/4 v3, 0x0

    #@24
    return v3

    #@25
    .line 1739
    :cond_1
    const/4 v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1742
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_2
    return v0
.end method

.method public finish()Landroid/icu/text/PluralRules$RuleList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1679
    const/4 v1, 0x0

    #@1
    .line 1680
    .local v1, "otherRule":Landroid/icu/text/PluralRules$Rule;
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v0

    #@7
    .end local v1    # "otherRule":Landroid/icu/text/PluralRules$Rule;
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/text/PluralRules$Rule;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 1681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    #@13
    .line 1682
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    const-string/jumbo v3, "other"

    #@16
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 1683
    move-object v1, v2

    #@21
    .line 1684
    .local v1, "otherRule":Landroid/icu/text/PluralRules$Rule;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@24
    goto :goto_0

    #@25
    .line 1687
    .end local v1    # "otherRule":Landroid/icu/text/PluralRules$Rule;
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_1
    if-nez v1, :cond_2

    #@27
    .line 1688
    const-string/jumbo v3, "other:"

    #@2a
    invoke-static {v3}, Landroid/icu/text/PluralRules;->-wrap0(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    #@2d
    move-result-object v1

    #@2e
    .line 1690
    :cond_2
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@30
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 1691
    return-object p0
.end method

.method public getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    .line 1775
    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    #@12
    .line 1776
    .local v0, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 1777
    sget-object v2, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@1e
    if-ne p2, v2, :cond_1

    #@20
    invoke-static {v0}, Landroid/icu/text/PluralRules$Rule;->-get1(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@23
    move-result-object v2

    #@24
    :goto_0
    return-object v2

    #@25
    :cond_1
    invoke-static {v0}, Landroid/icu/text/PluralRules$Rule;->-get0(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@28
    move-result-object v2

    #@29
    goto :goto_0

    #@2a
    .line 1780
    .end local v0    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_2
    const/4 v2, 0x0

    #@2b
    return-object v2
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1712
    new-instance v0, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 1713
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    #@17
    .line 1714
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 1718
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_0
    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1757
    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    #@12
    .line 1758
    .local v0, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 1759
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getConstraint()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 1762
    .end local v0    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_1
    const/4 v2, 0x0

    #@22
    return-object v2
.end method

.method public isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    .line 1722
    iget-boolean v1, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1723
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@7
    move-result-object v0

    #@8
    .line 1724
    .local v0, "mySamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    iget-boolean v1, v0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    #@e
    goto :goto_0

    #@f
    .line 1727
    .end local v0    # "mySamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    .line 1704
    iget-wide v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@2
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-wide v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@a
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1705
    :cond_0
    const-string/jumbo v1, "other"

    #@13
    return-object v1

    #@14
    .line 1707
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/PluralRules$RuleList;->selectRule(Landroid/icu/text/PluralRules$FixedDecimal;)Landroid/icu/text/PluralRules$Rule;

    #@17
    move-result-object v0

    #@18
    .line 1708
    .local v0, "r":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public select(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .locals 3
    .param p1, "sample"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .param p2, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1766
    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    #@12
    .line 1767
    .local v0, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 1768
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 1771
    .end local v0    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_1
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1747
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    #@17
    .line 1748
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1749
    const-string/jumbo v3, ";  "

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1751
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 1753
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method

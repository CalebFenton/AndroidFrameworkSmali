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
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o hasExplicitBoundingInfo:Z

.field private final greylist-max-o rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/PluralRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgethasExplicitBoundingInfo(Landroid/icu/text/PluralRules$RuleList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputhasExplicitBoundingInfo(Landroid/icu/text/PluralRules$RuleList;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1978
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    .line 1980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/PluralRules-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/PluralRules$RuleList;-><init>()V

    return-void
.end method

.method private greylist-max-o selectRule(Landroid/icu/text/PluralRules$IFixedDecimal;)Landroid/icu/text/PluralRules$Rule;
    .registers 5
    .param p1, "n"    # Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 2011
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    .line 2012
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2013
    return-object v1

    .line 2015
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_19
    goto :goto_6

    .line 2016
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;
    .registers 7
    .param p1, "nextRule"    # Landroid/icu/text/PluralRules$Rule;

    .line 1983
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 1984
    .local v0, "keyword":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 1985
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1988
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    goto :goto_a

    .line 1986
    .restart local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1989
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_3a
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1990
    return-object p0
.end method

.method public greylist-max-o computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 2049
    const/4 v0, 0x0

    .line 2050
    .local v0, "result":Z
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 2051
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2052
    invoke-virtual {v2, p2}, Landroid/icu/text/PluralRules$Rule;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 2053
    const/4 v1, 0x0

    return v1

    .line 2055
    :cond_25
    const/4 v0, 0x1

    .line 2057
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_26
    goto :goto_7

    .line 2058
    :cond_27
    return v0
.end method

.method public greylist-max-o finish()Landroid/icu/text/PluralRules$RuleList;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1995
    const/4 v0, 0x0

    .line 1996
    .local v0, "otherRule":Landroid/icu/text/PluralRules$Rule;
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/text/PluralRules$Rule;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1997
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 1998
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    const-string v3, "other"

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1999
    move-object v0, v2

    .line 2000
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2002
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_23
    goto :goto_7

    .line 2003
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/text/PluralRules$Rule;>;"
    :cond_24
    if-nez v0, :cond_2c

    .line 2004
    const-string v1, "other:"

    invoke-static {v1}, Landroid/icu/text/PluralRules;->-$$Nest$smparseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v0

    .line 2006
    :cond_2c
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    return-object p0
.end method

.method public blacklist getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .registers 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 2092
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    .line 2093
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2094
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne p2, v0, :cond_25

    invoke-static {v1}, Landroid/icu/text/PluralRules$Rule;->-$$Nest$fgetintegerSamples(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v0

    goto :goto_29

    :cond_25
    invoke-static {v1}, Landroid/icu/text/PluralRules$Rule;->-$$Nest$fgetdecimalSamples(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v0

    :goto_29
    return-object v0

    .line 2096
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_2a
    goto :goto_6

    .line 2097
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getKeywords()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2028
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2029
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 2030
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2031
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    goto :goto_b

    .line 2034
    :cond_1f
    return-object v0
.end method

.method public greylist-max-o getRules(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyword"    # Ljava/lang/String;

    .line 2074
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    .line 2075
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2076
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getConstraint()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2078
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_21
    goto :goto_6

    .line 2079
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 2038
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    if-eqz v0, :cond_f

    .line 2039
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v0

    .line 2040
    .local v0, "mySamples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_e

    :cond_c
    iget-boolean v1, v0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->bounded:Z

    :goto_e
    return v1

    .line 2043
    .end local v0    # "mySamples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    :cond_f
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .registers 4
    .param p1, "n"    # Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 2020
    invoke-interface {p1}, Landroid/icu/text/PluralRules$IFixedDecimal;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {p1}, Landroid/icu/text/PluralRules$IFixedDecimal;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 2023
    :cond_d
    invoke-direct {p0, p1}, Landroid/icu/text/PluralRules$RuleList;->selectRule(Landroid/icu/text/PluralRules$IFixedDecimal;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v0

    .line 2024
    .local v0, "r":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2021
    .end local v0    # "r":Landroid/icu/text/PluralRules$Rule;
    :cond_16
    :goto_16
    const-string v0, "other"

    return-object v0
.end method

.method public greylist-max-o select(Landroid/icu/text/PluralRules$IFixedDecimal;Ljava/lang/String;)Z
    .registers 6
    .param p1, "sample"    # Landroid/icu/text/PluralRules$IFixedDecimal;
    .param p2, "keyword"    # Ljava/lang/String;

    .line 2083
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    .line 2084
    .local v1, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2085
    const/4 v0, 0x1

    return v0

    .line 2087
    .end local v1    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_24
    goto :goto_6

    .line 2088
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2064
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 2065
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_22

    .line 2066
    const-string v3, ";  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    :cond_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2069
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    goto :goto_b

    .line 2070
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Landroid/icu/text/PluralRules$FixedDecimalSamples;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimalSamples"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final bounded:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final sampleType:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final samples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .param p3, "bounded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$SampleType;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 975
    .local p2, "samples":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 976
    iput-object p1, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    #@5
    .line 977
    iput-object p2, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    #@7
    .line 978
    iput-boolean p3, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    #@9
    .line 974
    return-void
.end method

.method private static checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 4
    .param p0, "sampleType2"    # Landroid/icu/text/PluralRules$SampleType;
    .param p1, "sample"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1028
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@4
    if-ne p0, v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->getVisibleDecimalDigitCount()I

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_1

    #@d
    :goto_1
    if-eq v0, v1, :cond_2

    #@f
    .line 1029
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Ill-formed number range: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_0
    move v0, v2

    #@2a
    .line 1028
    goto :goto_0

    #@2b
    :cond_1
    move v1, v2

    #@2c
    goto :goto_1

    #@2d
    .line 1027
    :cond_2
    return-void
.end method

.method static parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 14
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 985
    const/4 v0, 0x1

    #@2
    .line 986
    .local v0, "bounded2":Z
    const/4 v2, 0x0

    #@3
    .line 987
    .local v2, "haveBound":Z
    new-instance v7, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    .line 989
    .local v7, "samples2":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;>;"
    const-string/jumbo v9, "integer"

    #@b
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v9

    #@f
    if-eqz v9, :cond_1

    #@11
    .line 990
    sget-object v6, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@13
    .line 996
    .local v6, "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :goto_0
    const/4 v9, 0x7

    #@14
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    .line 998
    sget-object v9, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    #@1e
    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@21
    move-result-object v11

    #@22
    array-length v12, v11

    #@23
    move v9, v10

    #@24
    :goto_1
    if-ge v9, v12, :cond_5

    #@26
    aget-object v3, v11, v9

    #@28
    .line 999
    .local v3, "range":Ljava/lang/String;
    const-string/jumbo v13, "\u2026"

    #@2b
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v13

    #@2f
    if-nez v13, :cond_0

    #@31
    const-string/jumbo v13, "..."

    #@34
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v13

    #@38
    if-eqz v13, :cond_3

    #@3a
    .line 1000
    :cond_0
    const/4 v0, 0x0

    #@3b
    .line 1001
    const/4 v2, 0x1

    #@3c
    .line 998
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 991
    .end local v3    # "range":Ljava/lang/String;
    .end local v6    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :cond_1
    const-string/jumbo v9, "decimal"

    #@42
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_2

    #@48
    .line 992
    sget-object v6, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@4a
    .restart local v6    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    goto :goto_0

    #@4b
    .line 994
    .end local v6    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string/jumbo v10, "Samples must start with \'integer\' or \'decimal\'"

    #@50
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v9

    #@54
    .line 1004
    .restart local v3    # "range":Ljava/lang/String;
    .restart local v6    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :cond_3
    if-eqz v2, :cond_4

    #@56
    .line 1005
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@58
    new-instance v10, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v11, "Can only have \u2026 at the end of samples: "

    #@60
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v10

    #@68
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v9

    #@70
    .line 1007
    :cond_4
    sget-object v13, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    #@72
    invoke-virtual {v13, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    .line 1008
    .local v4, "rangeParts":[Ljava/lang/String;
    array-length v13, v4

    #@77
    packed-switch v13, :pswitch_data_0

    #@7a
    .line 1021
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@7c
    new-instance v10, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v11, "Ill-formed number range: "

    #@84
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v10

    #@90
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@93
    throw v9

    #@94
    .line 1010
    :pswitch_0
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@96
    aget-object v13, v4, v10

    #@98
    invoke-direct {v5, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    #@9b
    .line 1011
    .local v5, "sample":Landroid/icu/text/PluralRules$FixedDecimal;
    invoke-static {v6, v5}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@9e
    .line 1012
    new-instance v13, Landroid/icu/text/PluralRules$FixedDecimalRange;

    #@a0
    invoke-direct {v13, v5, v5}, Landroid/icu/text/PluralRules$FixedDecimalRange;-><init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@a3
    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a6
    goto :goto_2

    #@a7
    .line 1015
    .end local v5    # "sample":Landroid/icu/text/PluralRules$FixedDecimal;
    :pswitch_1
    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    #@a9
    aget-object v13, v4, v10

    #@ab
    invoke-direct {v8, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    #@ae
    .line 1016
    .local v8, "start":Landroid/icu/text/PluralRules$FixedDecimal;
    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@b0
    const/4 v13, 0x1

    #@b1
    aget-object v13, v4, v13

    #@b3
    invoke-direct {v1, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    #@b6
    .line 1017
    .local v1, "end":Landroid/icu/text/PluralRules$FixedDecimal;
    invoke-static {v6, v8}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@b9
    .line 1018
    invoke-static {v6, v1}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@bc
    .line 1019
    new-instance v13, Landroid/icu/text/PluralRules$FixedDecimalRange;

    #@be
    invoke-direct {v13, v8, v1}, Landroid/icu/text/PluralRules$FixedDecimalRange;-><init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@c1
    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c4
    goto/16 :goto_2

    #@c6
    .line 1024
    .end local v1    # "end":Landroid/icu/text/PluralRules$FixedDecimal;
    .end local v3    # "range":Ljava/lang/String;
    .end local v4    # "rangeParts":[Ljava/lang/String;
    .end local v8    # "start":Landroid/icu/text/PluralRules$FixedDecimal;
    :cond_5
    new-instance v9, Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@c8
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@cb
    move-result-object v10

    #@cc
    invoke-direct {v9, v6, v10, v0}, Landroid/icu/text/PluralRules$FixedDecimalSamples;-><init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V

    #@cf
    return-object v9

    #@d0
    .line 1008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSamples(Ljava/util/Set;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1039
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    iget-object v8, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    #@2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v5

    #@6
    .local v5, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_1

    #@c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/icu/text/PluralRules$FixedDecimalRange;

    #@12
    .line 1041
    .local v4, "item":Landroid/icu/text/PluralRules$FixedDecimalRange;
    iget-object v8, v4, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    #@14
    invoke-virtual {v8}, Landroid/icu/text/PluralRules$FixedDecimal;->getShiftedValue()J

    #@17
    move-result-wide v6

    #@18
    .line 1042
    .local v6, "startDouble":J
    iget-object v8, v4, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    #@1a
    invoke-virtual {v8}, Landroid/icu/text/PluralRules$FixedDecimal;->getShiftedValue()J

    #@1d
    move-result-wide v2

    #@1e
    .line 1044
    .local v2, "endDouble":J
    move-wide v0, v6

    #@1f
    .local v0, "d":J
    :goto_0
    cmp-long v8, v0, v2

    #@21
    if-gtz v8, :cond_0

    #@23
    .line 1045
    long-to-double v8, v0

    #@24
    iget-object v10, v4, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    #@26
    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimal;->-get0(Landroid/icu/text/PluralRules$FixedDecimal;)I

    #@29
    move-result v10

    #@2a
    int-to-double v10, v10

    #@2b
    div-double/2addr v8, v10

    #@2c
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2f
    move-result-object v8

    #@30
    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@33
    .line 1044
    const-wide/16 v8, 0x1

    #@35
    add-long/2addr v0, v8

    #@36
    goto :goto_0

    #@37
    .line 1048
    .end local v0    # "d":J
    .end local v2    # "endDouble":J
    .end local v4    # "item":Landroid/icu/text/PluralRules$FixedDecimalRange;
    .end local v6    # "startDouble":J
    :cond_1
    return-object p1
.end method

.method public getSamples()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1080
    iget-object v0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getStartEndSamples(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1089
    .local p1, "target":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    iget-object v2, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimalRange;

    #@12
    .line 1090
    .local v0, "item":Landroid/icu/text/PluralRules$FixedDecimalRange;
    iget-object v2, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    #@14
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 1091
    iget-object v2, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    #@19
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_0

    #@1d
    .line 1088
    .end local v0    # "item":Landroid/icu/text/PluralRules$FixedDecimalRange;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1058
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v5, "@"

    #@5
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    iget-object v5, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    #@a
    invoke-virtual {v5}, Landroid/icu/text/PluralRules$SampleType;->toString()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 1059
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@19
    .line 1060
    .local v1, "first":Z
    iget-object v4, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/icu/text/PluralRules$FixedDecimalRange;

    #@2b
    .line 1061
    .local v2, "item":Landroid/icu/text/PluralRules$FixedDecimalRange;
    if-eqz v1, :cond_0

    #@2d
    .line 1062
    const/4 v1, 0x0

    #@2e
    .line 1066
    :goto_1
    const/16 v4, 0x20

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_0

    #@38
    .line 1064
    :cond_0
    const-string/jumbo v4, ","

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_1

    #@3f
    .line 1068
    .end local v2    # "item":Landroid/icu/text/PluralRules$FixedDecimalRange;
    :cond_1
    iget-boolean v4, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    #@41
    if-nez v4, :cond_2

    #@43
    .line 1069
    const-string/jumbo v4, ", \u2026"

    #@46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 1071
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    return-object v4
.end method

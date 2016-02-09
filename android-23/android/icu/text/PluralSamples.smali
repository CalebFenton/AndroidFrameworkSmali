.class public Landroid/icu/text/PluralSamples;
.super Ljava/lang/Object;
.source "PluralSamples.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralSamples$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KEYWORD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMIT_FRACTION_SAMPLES:I = 0x3

.field private static final TENS:[I


# instance fields
.field private final _fractionSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private final _keyFractionSamplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;"
        }
    .end annotation
.end field

.field public final _keyLimitedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final _keySamplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private pluralRules:Landroid/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 186
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Landroid/icu/text/PluralSamples;->TENS:[I

    #@8
    .line 241
    new-instance v0, Landroid/icu/text/PluralSamples$1;

    #@a
    invoke-direct {v0}, Landroid/icu/text/PluralSamples$1;-><init>()V

    #@d
    sput-object v0, Landroid/icu/text/PluralSamples;->KEYWORD_COMPARATOR:Ljava/util/Comparator;

    #@f
    .line 35
    return-void

    #@10
    .line 186
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
    .end array-data
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;)V
    .locals 28
    .param p1, "pluralRules"    # Landroid/icu/text/PluralRules;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@9
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@c
    move-result-object v21

    #@d
    .line 62
    .local v21, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x3

    #@e
    .line 64
    .local v4, "MAX_SAMPLES":I
    new-instance v27, Ljava/util/HashMap;

    #@10
    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 65
    .local v27, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v19

    #@17
    .local v19, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v18

    #@21
    check-cast v18, Ljava/lang/String;

    #@23
    .line 66
    .local v18, "k":Ljava/lang/String;
    move-object/from16 v0, p1

    #@25
    move-object/from16 v1, v18

    #@27
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;)Ljava/lang/Boolean;

    #@2a
    move-result-object v5

    #@2b
    move-object/from16 v0, v27

    #@2d
    move-object/from16 v1, v18

    #@2f
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 68
    .end local v18    # "k":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v27

    #@35
    move-object/from16 v1, p0

    #@37
    iput-object v0, v1, Landroid/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    #@39
    .line 70
    new-instance v8, Ljava/util/HashMap;

    #@3b
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@3e
    .line 71
    .local v8, "sampleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Double;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    #@41
    move-result v9

    #@42
    .line 75
    .local v9, "keywordsRemaining":I
    const/16 v17, 0x0

    #@44
    .local v17, "i":I
    :goto_1
    if-lez v9, :cond_1

    #@46
    .line 73
    const/16 v5, 0x80

    #@48
    .line 75
    move/from16 v0, v17

    #@4a
    if-ge v0, v5, :cond_1

    #@4c
    .line 76
    move/from16 v0, v17

    #@4e
    int-to-double v6, v0

    #@4f
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@51
    div-double v10, v6, v10

    #@53
    const/4 v7, 0x3

    #@54
    move-object/from16 v5, p0

    #@56
    move-object/from16 v6, p1

    #@58
    invoke-direct/range {v5 .. v11}, Landroid/icu/text/PluralSamples;->addSimpleSamples(Landroid/icu/text/PluralRules;ILjava/util/Map;ID)I

    #@5b
    move-result v9

    #@5c
    .line 75
    add-int/lit8 v17, v17, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 79
    :cond_1
    const-wide v10, 0x412e848000000000L    # 1000000.0

    #@64
    const/4 v7, 0x3

    #@65
    move-object/from16 v5, p0

    #@67
    move-object/from16 v6, p1

    #@69
    invoke-direct/range {v5 .. v11}, Landroid/icu/text/PluralSamples;->addSimpleSamples(Landroid/icu/text/PluralRules;ILjava/util/Map;ID)I

    #@6c
    move-result v9

    #@6d
    .line 83
    new-instance v26, Ljava/util/HashMap;

    #@6f
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    #@72
    .line 84
    .local v26, "sampleFractionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;>;"
    new-instance v23, Ljava/util/TreeSet;

    #@74
    invoke-direct/range {v23 .. v23}, Ljava/util/TreeSet;-><init>()V

    #@77
    .line 86
    .local v23, "mentioned":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    new-instance v16, Ljava/util/HashMap;

    #@79
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    #@7c
    .line 87
    .local v16, "foundKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7f
    move-result-object v25

    #@80
    .local v25, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v5

    #@84
    if-eqz v5, :cond_2

    #@86
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@89
    move-result-object v24

    #@8a
    check-cast v24, Landroid/icu/text/PluralRules$FixedDecimal;

    #@8c
    .line 88
    .local v24, "s":Landroid/icu/text/PluralRules$FixedDecimal;
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, v24

    #@90
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@93
    move-result-object v20

    #@94
    .line 89
    .local v20, "keyword":Ljava/lang/String;
    move-object/from16 v0, p0

    #@96
    move-object/from16 v1, v16

    #@98
    move-object/from16 v2, v20

    #@9a
    move-object/from16 v3, v24

    #@9c
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/PluralSamples;->addRelation(Ljava/util/Map;Ljava/lang/String;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@9f
    goto :goto_2

    #@a0
    .line 92
    .end local v20    # "keyword":Ljava/lang/String;
    .end local v24    # "s":Landroid/icu/text/PluralRules$FixedDecimal;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    #@a3
    move-result v5

    #@a4
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    #@a7
    move-result v6

    #@a8
    if-eq v5, v6, :cond_3

    #@aa
    .line 93
    const/16 v17, 0x1

    #@ac
    :goto_3
    const/16 v5, 0x3e8

    #@ae
    move/from16 v0, v17

    #@b0
    if-ge v0, v5, :cond_6

    #@b2
    .line 94
    move/from16 v0, v17

    #@b4
    int-to-double v6, v0

    #@b5
    move-object/from16 v0, p0

    #@b7
    move-object/from16 v1, v23

    #@b9
    move-object/from16 v2, v16

    #@bb
    invoke-direct {v0, v6, v7, v1, v2}, Landroid/icu/text/PluralSamples;->addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z

    #@be
    move-result v12

    #@bf
    .line 95
    .local v12, "done":Z
    if-eqz v12, :cond_5

    #@c1
    .line 104
    .end local v12    # "done":Z
    :cond_3
    :goto_4
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@c3
    const-wide/16 v6, 0x0

    #@c5
    invoke-direct {v5, v6, v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    #@c8
    move-object/from16 v0, v23

    #@ca
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@cd
    .line 105
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@cf
    const-wide/16 v6, 0x1

    #@d1
    invoke-direct {v5, v6, v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    #@d4
    move-object/from16 v0, v23

    #@d6
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d9
    .line 106
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@db
    const-wide/16 v6, 0x2

    #@dd
    invoke-direct {v5, v6, v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    #@e0
    move-object/from16 v0, v23

    #@e2
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e5
    .line 107
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@e7
    const-wide v6, 0x3fb999999999999aL    # 0.1

    #@ec
    const/4 v10, 0x1

    #@ed
    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@f0
    move-object/from16 v0, v23

    #@f2
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f5
    .line 108
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@f7
    const-wide v6, 0x3fffd70a3d70a3d7L    # 1.99

    #@fc
    const/4 v10, 0x2

    #@fd
    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@100
    move-object/from16 v0, v23

    #@102
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@105
    .line 109
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, v23

    #@109
    invoke-direct {v0, v1}, Landroid/icu/text/PluralSamples;->fractions(Ljava/util/Set;)Ljava/util/Set;

    #@10c
    move-result-object v5

    #@10d
    move-object/from16 v0, v23

    #@10f
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@112
    .line 110
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@115
    move-result-object v25

    #@116
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@119
    move-result v5

    #@11a
    if-eqz v5, :cond_8

    #@11c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11f
    move-result-object v24

    #@120
    check-cast v24, Landroid/icu/text/PluralRules$FixedDecimal;

    #@122
    .line 111
    .restart local v24    # "s":Landroid/icu/text/PluralRules$FixedDecimal;
    move-object/from16 v0, p1

    #@124
    move-object/from16 v1, v24

    #@126
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@129
    move-result-object v20

    #@12a
    .line 112
    .restart local v20    # "keyword":Ljava/lang/String;
    move-object/from16 v0, v26

    #@12c
    move-object/from16 v1, v20

    #@12e
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    move-result-object v22

    #@132
    check-cast v22, Ljava/util/Set;

    #@134
    .line 113
    .local v22, "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    if-nez v22, :cond_4

    #@136
    .line 114
    new-instance v22, Ljava/util/LinkedHashSet;

    #@138
    .end local v22    # "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashSet;-><init>()V

    #@13b
    .line 115
    .restart local v22    # "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    move-object/from16 v0, v26

    #@13d
    move-object/from16 v1, v20

    #@13f
    move-object/from16 v2, v22

    #@141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    .line 117
    :cond_4
    move-object/from16 v0, v22

    #@146
    move-object/from16 v1, v24

    #@148
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@14b
    goto :goto_5

    #@14c
    .line 93
    .end local v20    # "keyword":Ljava/lang/String;
    .end local v22    # "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    .end local v24    # "s":Landroid/icu/text/PluralRules$FixedDecimal;
    .restart local v12    # "done":Z
    :cond_5
    add-int/lit8 v17, v17, 0x1

    #@14e
    goto/16 :goto_3

    #@150
    .line 98
    .end local v12    # "done":Z
    :cond_6
    const/16 v17, 0xa

    #@152
    :goto_6
    const/16 v5, 0x3e8

    #@154
    move/from16 v0, v17

    #@156
    if-ge v0, v5, :cond_7

    #@158
    .line 99
    move/from16 v0, v17

    #@15a
    int-to-double v6, v0

    #@15b
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    #@15d
    div-double/2addr v6, v10

    #@15e
    move-object/from16 v0, p0

    #@160
    move-object/from16 v1, v23

    #@162
    move-object/from16 v2, v16

    #@164
    invoke-direct {v0, v6, v7, v1, v2}, Landroid/icu/text/PluralSamples;->addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z

    #@167
    move-result v12

    #@168
    .line 100
    .restart local v12    # "done":Z
    if-nez v12, :cond_3

    #@16a
    .line 98
    add-int/lit8 v17, v17, 0x1

    #@16c
    goto :goto_6

    #@16d
    .line 102
    .end local v12    # "done":Z
    :cond_7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16f
    new-instance v6, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v7, "Failed to find sample for each keyword: "

    #@177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v6

    #@17b
    move-object/from16 v0, v16

    #@17d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v6

    #@181
    const-string/jumbo v7, "\n\t"

    #@184
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v6

    #@188
    move-object/from16 v0, p1

    #@18a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v6

    #@18e
    const-string/jumbo v7, "\n\t"

    #@191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v6

    #@195
    move-object/from16 v0, v23

    #@197
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v6

    #@19b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v6

    #@19f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a2
    goto/16 :goto_4

    #@1a4
    .line 120
    :cond_8
    if-lez v9, :cond_b

    #@1a6
    .line 121
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a9
    move-result-object v19

    #@1aa
    :cond_9
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@1ad
    move-result v5

    #@1ae
    if-eqz v5, :cond_b

    #@1b0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b3
    move-result-object v18

    #@1b4
    check-cast v18, Ljava/lang/String;

    #@1b6
    .line 122
    .restart local v18    # "k":Ljava/lang/String;
    move-object/from16 v0, v18

    #@1b8
    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1bb
    move-result v5

    #@1bc
    if-nez v5, :cond_a

    #@1be
    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1c1
    move-result-object v5

    #@1c2
    move-object/from16 v0, v18

    #@1c4
    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c7
    .line 125
    :cond_a
    move-object/from16 v0, v26

    #@1c9
    move-object/from16 v1, v18

    #@1cb
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1ce
    move-result v5

    #@1cf
    if-nez v5, :cond_9

    #@1d1
    .line 126
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@1d4
    move-result-object v5

    #@1d5
    move-object/from16 v0, v26

    #@1d7
    move-object/from16 v1, v18

    #@1d9
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1dc
    goto :goto_7

    #@1dd
    .line 132
    .end local v18    # "k":Ljava/lang/String;
    :cond_b
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1e0
    move-result-object v5

    #@1e1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e4
    move-result-object v15

    #@1e5
    .local v15, "entry$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@1e8
    move-result v5

    #@1e9
    if-eqz v5, :cond_c

    #@1eb
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ee
    move-result-object v13

    #@1ef
    check-cast v13, Ljava/util/Map$Entry;

    #@1f1
    .line 133
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Double;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f4
    move-result-object v5

    #@1f5
    check-cast v5, Ljava/lang/String;

    #@1f7
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1fa
    move-result-object v6

    #@1fb
    check-cast v6, Ljava/util/List;

    #@1fd
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@200
    move-result-object v6

    #@201
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@204
    goto :goto_8

    #@205
    .line 135
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Double;>;>;"
    :cond_c
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@208
    move-result-object v5

    #@209
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20c
    move-result-object v15

    #@20d
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@210
    move-result v5

    #@211
    if-eqz v5, :cond_d

    #@213
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@216
    move-result-object v14

    #@217
    check-cast v14, Ljava/util/Map$Entry;

    #@219
    .line 136
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@21c
    move-result-object v5

    #@21d
    check-cast v5, Ljava/lang/String;

    #@21f
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@222
    move-result-object v6

    #@223
    check-cast v6, Ljava/util/Set;

    #@225
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@228
    move-result-object v6

    #@229
    move-object/from16 v0, v26

    #@22b
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22e
    goto :goto_9

    #@22f
    .line 138
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;>;"
    :cond_d
    move-object/from16 v0, p0

    #@231
    iput-object v8, v0, Landroid/icu/text/PluralSamples;->_keySamplesMap:Ljava/util/Map;

    #@233
    .line 139
    move-object/from16 v0, v26

    #@235
    move-object/from16 v1, p0

    #@237
    iput-object v0, v1, Landroid/icu/text/PluralSamples;->_keyFractionSamplesMap:Ljava/util/Map;

    #@239
    .line 140
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@23c
    move-result-object v5

    #@23d
    move-object/from16 v0, p0

    #@23f
    iput-object v5, v0, Landroid/icu/text/PluralSamples;->_fractionSamples:Ljava/util/Set;

    #@241
    .line 54
    return-void
.end method

.method private addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z
    .locals 5
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "mentioned":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    .local p4, "foundKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;>;"
    const/4 v3, 0x1

    #@1
    .line 172
    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@3
    invoke-direct {v1, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    #@6
    .line 173
    .local v1, "numberInfo":Landroid/icu/text/PluralRules$FixedDecimal;
    iget-object v2, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    invoke-virtual {v2, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 174
    .local v0, "keyword":Ljava/lang/String;
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    const-string/jumbo v2, "other"

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 175
    :cond_0
    invoke-direct {p0, p4, v0, v1}, Landroid/icu/text/PluralSamples;->addRelation(Ljava/util/Map;Ljava/lang/String;Landroid/icu/text/PluralRules$FixedDecimal;)V

    #@1e
    .line 176
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@21
    .line 177
    const-string/jumbo v2, "other"

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 178
    const-string/jumbo v2, "other"

    #@2d
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Ljava/util/Set;

    #@33
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@36
    move-result v2

    #@37
    if-le v2, v3, :cond_1

    #@39
    .line 179
    return v3

    #@3a
    .line 183
    :cond_1
    const/4 v2, 0x0

    #@3b
    return v2
.end method

.method private addRelation(Ljava/util/Map;Ljava/lang/String;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 1
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "s"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p1, "foundKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Set;

    #@6
    .line 165
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    if-nez v0, :cond_0

    #@8
    .line 166
    new-instance v0, Ljava/util/HashSet;

    #@a
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@d
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 168
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@13
    .line 163
    return-void
.end method

.method private addSimpleSamples(Landroid/icu/text/PluralRules;ILjava/util/Map;ID)I
    .locals 5
    .param p1, "pluralRules"    # Landroid/icu/text/PluralRules;
    .param p2, "MAX_SAMPLES"    # I
    .param p4, "keywordsRemaining"    # I
    .param p5, "val"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;ID)I"
        }
    .end annotation

    #@0
    .prologue
    .line 145
    .local p3, "sampleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Double;>;>;"
    invoke-virtual {p1, p5, p6}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 146
    .local v1, "keyword":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    #@6
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Ljava/lang/Boolean;

    #@c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    .line 148
    .local v0, "keyIsLimited":Z
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/util/List;

    #@16
    .line 149
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-nez v2, :cond_2

    #@18
    .line 150
    new-instance v2, Ljava/util/ArrayList;

    #@1a
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    #@1d
    .line 151
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 155
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 157
    if-nez v0, :cond_1

    #@29
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2c
    move-result v3

    #@2d
    if-ne v3, p2, :cond_1

    #@2f
    .line 158
    add-int/lit8 p4, p4, -0x1

    #@31
    .line 160
    :cond_1
    return p4

    #@32
    .line 152
    :cond_2
    if-nez v0, :cond_0

    #@34
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@37
    move-result v3

    #@38
    if-ne v3, p2, :cond_0

    #@3a
    .line 153
    return p4
.end method

.method private fractions(Ljava/util/Set;)Ljava/util/Set;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 192
    .local p1, "original":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    new-instance v12, Ljava/util/HashSet;

    #@2
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 194
    .local v12, "toAddTo":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    new-instance v11, Ljava/util/HashSet;

    #@7
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 195
    .local v11, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v4

    #@e
    .local v4, "base1$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v14

    #@12
    if-eqz v14, :cond_0

    #@14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/icu/text/PluralRules$FixedDecimal;

    #@1a
    .line 196
    .local v3, "base1":Landroid/icu/text/PluralRules$FixedDecimal;
    iget-wide v14, v3, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@1c
    long-to-int v14, v14

    #@1d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v14

    #@21
    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 198
    .end local v3    # "base1":Landroid/icu/text/PluralRules$FixedDecimal;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    #@27
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2a
    .line 199
    .local v7, "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashSet;

    #@2c
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    #@2f
    .line 201
    .local v10, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    #@30
    .local v8, "j":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@33
    move-result v14

    #@34
    if-ge v8, v14, :cond_6

    #@36
    .line 202
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/lang/Integer;

    #@3c
    .line 203
    .local v2, "base":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@3e
    iget-object v14, v0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v15

    #@44
    int-to-double v0, v15

    #@45
    move-wide/from16 v16, v0

    #@47
    move-wide/from16 v0, v16

    #@49
    invoke-virtual {v14, v0, v1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@4c
    move-result-object v9

    #@4d
    .line 204
    .local v9, "keyword":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@50
    move-result v14

    #@51
    if-eqz v14, :cond_2

    #@53
    .line 201
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@55
    goto :goto_1

    #@56
    .line 207
    :cond_2
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@59
    .line 208
    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    #@5b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@5e
    move-result v15

    #@5f
    int-to-double v0, v15

    #@60
    move-wide/from16 v16, v0

    #@62
    const/4 v15, 0x1

    #@63
    move-wide/from16 v0, v16

    #@65
    invoke-direct {v14, v0, v1, v15}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@68
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6b
    .line 209
    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    #@6d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@70
    move-result v15

    #@71
    int-to-double v0, v15

    #@72
    move-wide/from16 v16, v0

    #@74
    const/4 v15, 0x2

    #@75
    move-wide/from16 v0, v16

    #@77
    invoke-direct {v14, v0, v1, v15}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@7a
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7d
    .line 210
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v0, v7, v9}, Landroid/icu/text/PluralSamples;->getDifferentCategory(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    #@82
    move-result-object v5

    #@83
    .line 211
    .local v5, "fract":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@86
    move-result v14

    #@87
    sget-object v15, Landroid/icu/text/PluralSamples;->TENS:[I

    #@89
    const/16 v16, 0x2

    #@8b
    aget v15, v15, v16

    #@8d
    if-lt v14, v15, :cond_3

    #@8f
    .line 212
    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    #@91
    new-instance v15, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v15

    #@9a
    const-string/jumbo v16, "."

    #@9d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v15

    #@a1
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v15

    #@a5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v15

    #@a9
    invoke-direct {v14, v15}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    #@ac
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@af
    goto :goto_2

    #@b0
    .line 214
    :cond_3
    const/4 v13, 0x1

    #@b1
    .local v13, "visibleFractions":I
    :goto_3
    const/4 v14, 0x3

    #@b2
    if-ge v13, v14, :cond_1

    #@b4
    .line 215
    const/4 v6, 0x1

    #@b5
    .local v6, "i":I
    :goto_4
    if-gt v6, v13, :cond_5

    #@b7
    .line 218
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@ba
    move-result v14

    #@bb
    sget-object v15, Landroid/icu/text/PluralSamples;->TENS:[I

    #@bd
    aget v15, v15, v6

    #@bf
    if-lt v14, v15, :cond_4

    #@c1
    .line 215
    :goto_5
    add-int/lit8 v6, v6, 0x1

    #@c3
    goto :goto_4

    #@c4
    .line 221
    :cond_4
    new-instance v14, Landroid/icu/text/PluralRules$FixedDecimal;

    #@c6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@c9
    move-result v15

    #@ca
    int-to-double v0, v15

    #@cb
    move-wide/from16 v16, v0

    #@cd
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@d0
    move-result v15

    #@d1
    int-to-double v0, v15

    #@d2
    move-wide/from16 v18, v0

    #@d4
    sget-object v15, Landroid/icu/text/PluralSamples;->TENS:[I

    #@d6
    aget v15, v15, v6

    #@d8
    int-to-double v0, v15

    #@d9
    move-wide/from16 v20, v0

    #@db
    div-double v18, v18, v20

    #@dd
    add-double v16, v16, v18

    #@df
    move-wide/from16 v0, v16

    #@e1
    invoke-direct {v14, v0, v1, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@e4
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e7
    goto :goto_5

    #@e8
    .line 214
    :cond_5
    add-int/lit8 v13, v13, 0x1

    #@ea
    goto :goto_3

    #@eb
    .line 226
    .end local v2    # "base":Ljava/lang/Integer;
    .end local v5    # "fract":Ljava/lang/Integer;
    .end local v6    # "i":I
    .end local v9    # "keyword":Ljava/lang/String;
    .end local v13    # "visibleFractions":I
    :cond_6
    return-object v12
.end method

.method private getDifferentCategory(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    #@0
    .prologue
    .line 230
    .local p1, "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v3

    #@4
    add-int/lit8 v0, v3, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@8
    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/lang/Integer;

    #@e
    .line 232
    .local v2, "other":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v4

    #@14
    int-to-double v4, v4

    #@15
    invoke-virtual {v3, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 233
    .local v1, "keywordOther":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 234
    return-object v2

    #@20
    .line 230
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 237
    .end local v1    # "keywordOther":Ljava/lang/String;
    .end local v2    # "other":Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x25

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    return-object v3
.end method


# virtual methods
.method getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v1, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/PluralSamples;->getKeySamplesMap()Ljava/util/Map;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Collection;

    #@1b
    .line 338
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@1e
    move-result v1

    #@1f
    const/4 v2, 0x2

    #@20
    if-le v1, v2, :cond_1

    #@22
    iget-object v1, p0, Landroid/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    #@24
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/lang/Boolean;

    #@2a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 341
    :cond_1
    return-object v0

    #@31
    .line 339
    :cond_2
    const/4 v1, 0x0

    #@32
    return-object v1
.end method

.method getFractionSamples()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/icu/text/PluralSamples;->_fractionSamples:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method getKeyFractionSamplesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/icu/text/PluralSamples;->_keyFractionSamplesMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method getKeySamplesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/icu/text/PluralSamples;->_keySamplesMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 11
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p3, "explicits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    .local p4, "uniqueValue":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Double;>;"
    const/4 v10, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 257
    if-eqz p4, :cond_0

    #@4
    .line 258
    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@6
    .line 261
    :cond_0
    iget-object v5, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    invoke-virtual {v5}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@b
    move-result-object v5

    #@c
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_1

    #@12
    .line 262
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    #@14
    return-object v5

    #@15
    .line 264
    :cond_1
    iget-object v5, p0, Landroid/icu/text/PluralSamples;->pluralRules:Landroid/icu/text/PluralRules;

    #@17
    invoke-virtual {v5, p1}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    #@1a
    move-result-object v4

    #@1b
    .line 265
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    if-nez v4, :cond_2

    #@1d
    .line 266
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@1f
    return-object v5

    #@20
    .line 268
    :cond_2
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@23
    move-result v2

    #@24
    .line 270
    .local v2, "originalSize":I
    if-nez p3, :cond_3

    #@26
    .line 271
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@29
    move-result-object p3

    #@2a
    .line 276
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    #@2d
    move-result v5

    #@2e
    if-le v2, v5, :cond_6

    #@30
    .line 277
    if-ne v2, v10, :cond_5

    #@32
    .line 278
    if-eqz p4, :cond_4

    #@34
    .line 279
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v5

    #@38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Ljava/lang/Double;

    #@3e
    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@40
    .line 281
    :cond_4
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    #@42
    return-object v5

    #@43
    .line 283
    :cond_5
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@45
    return-object v5

    #@46
    .line 288
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    #@48
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@4b
    .line 289
    .local v3, "subtractedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Double;>;"
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    .local v1, "explicit$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_7

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Ljava/lang/Double;

    #@5b
    .line 290
    .local v0, "explicit":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@5e
    move-result-wide v6

    #@5f
    int-to-double v8, p2

    #@60
    sub-double/2addr v6, v8

    #@61
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@68
    goto :goto_0

    #@69
    .line 292
    .end local v0    # "explicit":Ljava/lang/Double;
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@6c
    move-result v5

    #@6d
    if-nez v5, :cond_8

    #@6f
    .line 293
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@71
    return-object v5

    #@72
    .line 296
    :cond_8
    if-eqz p4, :cond_9

    #@74
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@77
    move-result v5

    #@78
    if-ne v5, v10, :cond_9

    #@7a
    .line 297
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v5

    #@7e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v5

    #@82
    check-cast v5, Ljava/lang/Double;

    #@84
    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@86
    .line 300
    :cond_9
    if-ne v2, v10, :cond_a

    #@88
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    #@8a
    :goto_1
    return-object v5

    #@8b
    :cond_a
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@8d
    goto :goto_1
.end method

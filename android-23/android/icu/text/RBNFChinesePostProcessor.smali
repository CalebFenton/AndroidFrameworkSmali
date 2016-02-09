.class final Landroid/icu/text/RBNFChinesePostProcessor;
.super Ljava/lang/Object;
.source "RBNFChinesePostProcessor.java"

# interfaces
.implements Landroid/icu/text/RBNFPostProcessor;


# static fields
.field private static final rulesetNames:[Ljava/lang/String;


# instance fields
.field private format:I

.field private longForm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 18
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 19
    const-string/jumbo v1, "%traditional"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "%simplified"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "%accounting"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "%time"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 18
    sput-object v0, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    #@1d
    .line 13
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 0
    .param p1, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p2, "rules"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    return-void
.end method

.method public process(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V
    .locals 17
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    #@0
    .prologue
    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 39
    .local v9, "name":Ljava/lang/String;
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    sget-object v14, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    #@7
    array-length v14, v14

    #@8
    if-ge v3, v14, :cond_1

    #@a
    .line 40
    sget-object v14, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    #@c
    aget-object v14, v14, v3

    #@e
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v14

    #@12
    if-eqz v14, :cond_3

    #@14
    .line 41
    move-object/from16 v0, p0

    #@16
    iput v3, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    #@18
    .line 42
    const/4 v14, 0x1

    #@19
    if-eq v3, v14, :cond_0

    #@1b
    const/4 v14, 0x3

    #@1c
    if-ne v3, v14, :cond_2

    #@1e
    :cond_0
    const/4 v14, 0x1

    #@1f
    :goto_1
    move-object/from16 v0, p0

    #@21
    iput-boolean v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    #@23
    .line 48
    :cond_1
    move-object/from16 v0, p0

    #@25
    iget-boolean v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    #@27
    if-eqz v14, :cond_5

    #@29
    .line 49
    const-string/jumbo v14, "*"

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@31
    move-result v3

    #@32
    :goto_2
    const/4 v14, -0x1

    #@33
    if-eq v3, v14, :cond_4

    #@35
    .line 50
    add-int/lit8 v14, v3, 0x1

    #@37
    move-object/from16 v0, p1

    #@39
    invoke-virtual {v0, v3, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@3c
    .line 49
    const-string/jumbo v14, "*"

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v14, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    #@44
    move-result v3

    #@45
    goto :goto_2

    #@46
    .line 42
    :cond_2
    const/4 v14, 0x0

    #@47
    goto :goto_1

    #@48
    .line 39
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 52
    :cond_4
    return-void

    #@4c
    .line 55
    :cond_5
    const-string/jumbo v1, "\u9ede"

    #@4f
    .line 57
    .local v1, "DIAN":Ljava/lang/String;
    const/4 v14, 0x3

    #@50
    new-array v7, v14, [[Ljava/lang/String;

    #@52
    .line 58
    const/4 v14, 0x4

    #@53
    new-array v14, v14, [Ljava/lang/String;

    #@55
    const-string/jumbo v15, "\u842c"

    #@58
    const/16 v16, 0x0

    #@5a
    aput-object v15, v14, v16

    #@5c
    const-string/jumbo v15, "\u5104"

    #@5f
    const/16 v16, 0x1

    #@61
    aput-object v15, v14, v16

    #@63
    const-string/jumbo v15, "\u5146"

    #@66
    const/16 v16, 0x2

    #@68
    aput-object v15, v14, v16

    #@6a
    const-string/jumbo v15, "\u3007"

    #@6d
    const/16 v16, 0x3

    #@6f
    aput-object v15, v14, v16

    #@71
    const/4 v15, 0x0

    #@72
    aput-object v14, v7, v15

    #@74
    .line 59
    const/4 v14, 0x4

    #@75
    new-array v14, v14, [Ljava/lang/String;

    #@77
    const-string/jumbo v15, "\u4e07"

    #@7a
    const/16 v16, 0x0

    #@7c
    aput-object v15, v14, v16

    #@7e
    const-string/jumbo v15, "\u4ebf"

    #@81
    const/16 v16, 0x1

    #@83
    aput-object v15, v14, v16

    #@85
    const-string/jumbo v15, "\u5146"

    #@88
    const/16 v16, 0x2

    #@8a
    aput-object v15, v14, v16

    #@8c
    const-string/jumbo v15, "\u3007"

    #@8f
    const/16 v16, 0x3

    #@91
    aput-object v15, v14, v16

    #@93
    const/4 v15, 0x1

    #@94
    aput-object v14, v7, v15

    #@96
    .line 60
    const/4 v14, 0x4

    #@97
    new-array v14, v14, [Ljava/lang/String;

    #@99
    const-string/jumbo v15, "\u842c"

    #@9c
    const/16 v16, 0x0

    #@9e
    aput-object v15, v14, v16

    #@a0
    const-string/jumbo v15, "\u5104"

    #@a3
    const/16 v16, 0x1

    #@a5
    aput-object v15, v14, v16

    #@a7
    const-string/jumbo v15, "\u5146"

    #@aa
    const/16 v16, 0x2

    #@ac
    aput-object v15, v14, v16

    #@ae
    const-string/jumbo v15, "\u96f6"

    #@b1
    const/16 v16, 0x3

    #@b3
    aput-object v15, v14, v16

    #@b5
    const/4 v15, 0x2

    #@b6
    aput-object v14, v7, v15

    #@b8
    .line 81
    .local v7, "markers":[[Ljava/lang/String;
    move-object/from16 v0, p0

    #@ba
    iget v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    #@bc
    aget-object v6, v7, v14

    #@be
    .line 82
    .local v6, "m":[Ljava/lang/String;
    const/4 v3, 0x0

    #@bf
    :goto_3
    array-length v14, v6

    #@c0
    add-int/lit8 v14, v14, -0x1

    #@c2
    if-ge v3, v14, :cond_7

    #@c4
    .line 83
    aget-object v14, v6, v3

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@cb
    move-result v8

    #@cc
    .line 84
    .local v8, "n":I
    const/4 v14, -0x1

    #@cd
    if-eq v8, v14, :cond_6

    #@cf
    .line 85
    aget-object v14, v6, v3

    #@d1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@d4
    move-result v14

    #@d5
    add-int/2addr v14, v8

    #@d6
    const/16 v15, 0x7c

    #@d8
    move-object/from16 v0, p1

    #@da
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@dd
    .line 82
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@df
    goto :goto_3

    #@e0
    .line 90
    .end local v8    # "n":I
    :cond_7
    const-string/jumbo v14, "\u9ede"

    #@e3
    move-object/from16 v0, p1

    #@e5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@e8
    move-result v13

    #@e9
    .line 91
    .local v13, "x":I
    const/4 v14, -0x1

    #@ea
    if-ne v13, v14, :cond_8

    #@ec
    .line 92
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@ef
    move-result v13

    #@f0
    .line 94
    :cond_8
    const/4 v12, 0x0

    #@f1
    .line 95
    .local v12, "s":I
    const/4 v8, -0x1

    #@f2
    .line 96
    .restart local v8    # "n":I
    move-object/from16 v0, p0

    #@f4
    iget v14, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    #@f6
    aget-object v14, v7, v14

    #@f8
    const/4 v15, 0x3

    #@f9
    aget-object v4, v14, v15

    #@fb
    .line 97
    .local v4, "ling":Ljava/lang/String;
    :goto_4
    if-ltz v13, :cond_b

    #@fd
    .line 98
    const-string/jumbo v14, "|"

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v0, v14, v13}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    #@105
    move-result v5

    #@106
    .line 99
    .local v5, "m":I
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v4, v13}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    #@10b
    move-result v10

    #@10c
    .line 100
    .local v10, "nn":I
    const/4 v11, 0x0

    #@10d
    .line 101
    .local v11, "ns":I
    if-le v10, v5, :cond_9

    #@10f
    .line 102
    if-lez v10, :cond_a

    #@111
    add-int/lit8 v14, v10, -0x1

    #@113
    move-object/from16 v0, p1

    #@115
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    #@118
    move-result v14

    #@119
    const/16 v15, 0x2a

    #@11b
    if-eq v14, v15, :cond_a

    #@11d
    const/4 v11, 0x2

    #@11e
    .line 104
    :cond_9
    :goto_5
    add-int/lit8 v13, v5, -0x1

    #@120
    .line 107
    mul-int/lit8 v14, v12, 0x3

    #@122
    add-int/2addr v14, v11

    #@123
    packed-switch v14, :pswitch_data_0

    #@126
    .line 148
    new-instance v14, Ljava/lang/IllegalStateException;

    #@128
    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    #@12b
    throw v14

    #@12c
    .line 102
    :cond_a
    const/4 v11, 0x1

    #@12d
    goto :goto_5

    #@12e
    .line 109
    :pswitch_0
    move v12, v11

    #@12f
    .line 110
    const/4 v8, -0x1

    #@130
    .line 111
    goto :goto_4

    #@131
    .line 113
    :pswitch_1
    move v12, v11

    #@132
    .line 114
    move v8, v10

    #@133
    .line 115
    goto :goto_4

    #@134
    .line 117
    :pswitch_2
    move v12, v11

    #@135
    .line 118
    const/4 v8, -0x1

    #@136
    .line 119
    goto :goto_4

    #@137
    .line 121
    :pswitch_3
    move v12, v11

    #@138
    .line 122
    const/4 v8, -0x1

    #@139
    .line 123
    goto :goto_4

    #@13a
    .line 125
    :pswitch_4
    add-int/lit8 v14, v10, -0x1

    #@13c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@13f
    move-result v15

    #@140
    add-int/2addr v15, v10

    #@141
    move-object/from16 v0, p1

    #@143
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@146
    .line 126
    const/4 v12, 0x0

    #@147
    .line 127
    const/4 v8, -0x1

    #@148
    .line 128
    goto :goto_4

    #@149
    .line 130
    :pswitch_5
    add-int/lit8 v14, v8, -0x1

    #@14b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@14e
    move-result v15

    #@14f
    add-int/2addr v15, v8

    #@150
    move-object/from16 v0, p1

    #@152
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@155
    .line 131
    move v12, v11

    #@156
    .line 132
    const/4 v8, -0x1

    #@157
    .line 133
    goto :goto_4

    #@158
    .line 135
    :pswitch_6
    move v12, v11

    #@159
    .line 136
    const/4 v8, -0x1

    #@15a
    .line 137
    goto :goto_4

    #@15b
    .line 139
    :pswitch_7
    add-int/lit8 v14, v10, -0x1

    #@15d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@160
    move-result v15

    #@161
    add-int/2addr v15, v10

    #@162
    move-object/from16 v0, p1

    #@164
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@167
    .line 140
    const/4 v12, 0x0

    #@168
    .line 141
    const/4 v8, -0x1

    #@169
    .line 142
    goto :goto_4

    #@16a
    .line 144
    :pswitch_8
    move v12, v11

    #@16b
    .line 145
    const/4 v8, -0x1

    #@16c
    .line 146
    goto :goto_4

    #@16d
    .line 152
    .end local v5    # "m":I
    .end local v10    # "nn":I
    .end local v11    # "ns":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@170
    move-result v3

    #@171
    :cond_c
    :goto_6
    add-int/lit8 v3, v3, -0x1

    #@173
    if-ltz v3, :cond_e

    #@175
    .line 153
    move-object/from16 v0, p1

    #@177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@17a
    move-result v2

    #@17b
    .line 154
    .local v2, "c":C
    const/16 v14, 0x2a

    #@17d
    if-eq v2, v14, :cond_d

    #@17f
    const/16 v14, 0x7c

    #@181
    if-ne v2, v14, :cond_c

    #@183
    .line 155
    :cond_d
    add-int/lit8 v14, v3, 0x1

    #@185
    move-object/from16 v0, p1

    #@187
    invoke-virtual {v0, v3, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@18a
    goto :goto_6

    #@18b
    .line 33
    .end local v2    # "c":C
    :cond_e
    return-void

    #@18c
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

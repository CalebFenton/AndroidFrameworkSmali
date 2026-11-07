.class final Landroid/icu/text/RBNFChinesePostProcessor;
.super Ljava/lang/Object;
.source "RBNFChinesePostProcessor.java"

# interfaces
.implements Landroid/icu/text/RBNFPostProcessor;


# static fields
.field private static final blacklist rulesetNames:[Ljava/lang/String;


# instance fields
.field private blacklist format:I

.field private blacklist longForm:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 21
    const-string v0, "%accounting"

    const-string v1, "%time"

    const-string v2, "%traditional"

    const-string v3, "%simplified"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .registers 3
    .param p1, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p2, "rules"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public blacklist process(Ljava/lang/StringBuilder;Landroid/icu/text/NFRuleSet;)V
    .registers 20
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;

    .line 41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    sget-object v4, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2a

    .line 43
    sget-object v4, Landroid/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 44
    iput v3, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    .line 45
    if-eq v3, v6, :cond_23

    if-ne v3, v5, :cond_21

    goto :goto_23

    :cond_21
    const/4 v4, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    move v4, v6

    :goto_24
    iput-boolean v4, v0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    .line 46
    goto :goto_2a

    .line 42
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 51
    .end local v3    # "i":I
    :cond_2a
    :goto_2a
    iget-boolean v3, v0, Landroid/icu/text/RBNFChinesePostProcessor;->longForm:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_42

    .line 52
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "i":I
    :goto_35
    if-eq v5, v4, :cond_41

    .line 53
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_35

    .line 55
    .end local v5    # "i":I
    :cond_41
    return-void

    .line 58
    :cond_42
    const-string v3, "\u9ede"

    .line 60
    .local v3, "DIAN":Ljava/lang/String;
    const-string v7, "\u842c"

    const-string v8, "\u5104"

    const-string v9, "\u5146"

    const-string v10, "\u3007"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u4e07"

    const-string v13, "\u4ebf"

    filled-new-array {v12, v13, v9, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "\u96f6"

    filled-new-array {v7, v8, v9, v12}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v11, v10, v7}, [[Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "markers":[[Ljava/lang/String;
    iget v8, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object v8, v7, v8

    .line 85
    .local v8, "m":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_67
    array-length v10, v8

    sub-int/2addr v10, v6

    const/16 v11, 0x7c

    if-ge v9, v10, :cond_82

    .line 86
    aget-object v10, v8, v9

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 87
    .local v10, "n":I
    if-eq v10, v4, :cond_7f

    .line 88
    aget-object v12, v8, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {v1, v12, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 85
    .end local v10    # "n":I
    :cond_7f
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 93
    .end local v8    # "m":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_82
    const-string v8, "\u9ede"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 94
    .local v8, "x":I
    if-ne v8, v4, :cond_8e

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 97
    :cond_8e
    const/4 v9, 0x0

    .line 98
    .local v9, "s":I
    const/4 v10, -0x1

    .line 99
    .restart local v10    # "n":I
    iget v12, v0, Landroid/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object v12, v7, v12

    aget-object v5, v12, v5

    .line 100
    .local v5, "ling":Ljava/lang/String;
    :goto_96
    const/16 v12, 0x2a

    if-ltz v8, :cond_119

    .line 101
    const-string v13, "|"

    invoke-virtual {v1, v13, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v13

    .line 102
    .local v13, "m":I
    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v14

    .line 103
    .local v14, "nn":I
    const/4 v15, 0x0

    .line 104
    .local v15, "ns":I
    if-le v14, v13, :cond_ba

    .line 105
    if-lez v14, :cond_b5

    move/from16 v16, v4

    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_b7

    const/4 v4, 0x2

    goto :goto_b8

    :cond_b5
    move/from16 v16, v4

    :cond_b7
    move v4, v6

    :goto_b8
    move v15, v4

    goto :goto_bc

    .line 104
    :cond_ba
    move/from16 v16, v4

    .line 107
    :goto_bc
    add-int/lit8 v8, v13, -0x1

    .line 110
    mul-int/lit8 v4, v9, 0x3

    add-int/2addr v4, v15

    packed-switch v4, :pswitch_data_132

    .line 151
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 147
    :pswitch_ca
    move v4, v15

    .line 148
    .end local v9    # "s":I
    .local v4, "s":I
    const/4 v9, -0x1

    .line 149
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto/16 :goto_115

    .line 142
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_d0
    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v14

    invoke-virtual {v1, v4, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 143
    const/4 v4, 0x0

    .line 144
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 145
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 138
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_df
    move v4, v15

    .line 139
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 140
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 133
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_e4
    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {v1, v4, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 134
    move v4, v15

    .line 135
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 136
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 128
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_f3
    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v14

    invoke-virtual {v1, v4, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 129
    const/4 v4, 0x0

    .line 130
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 131
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 124
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_102
    move v4, v15

    .line 125
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 126
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 120
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_107
    move v4, v15

    .line 121
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 122
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 116
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_10c
    move v4, v15

    .line 117
    .end local v9    # "s":I
    .restart local v4    # "s":I
    move v9, v14

    .line 118
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    goto :goto_115

    .line 112
    .end local v4    # "s":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :pswitch_111
    move v4, v15

    .line 113
    .end local v9    # "s":I
    .restart local v4    # "s":I
    const/4 v9, -0x1

    .line 114
    .end local v10    # "n":I
    .local v9, "n":I
    move v10, v9

    move v9, v4

    .line 153
    .end local v4    # "s":I
    .end local v13    # "m":I
    .end local v14    # "nn":I
    .end local v15    # "ns":I
    .local v9, "s":I
    .restart local v10    # "n":I
    :goto_115
    move/from16 v4, v16

    goto/16 :goto_96

    .line 155
    :cond_119
    move/from16 v16, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .local v4, "i":I
    :goto_11f
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_131

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 157
    .local v6, "c":C
    if-eq v6, v12, :cond_12b

    if-ne v6, v11, :cond_130

    .line 158
    :cond_12b
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v1, v4, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 160
    .end local v6    # "c":C
    :cond_130
    goto :goto_11f

    .line 161
    .end local v4    # "i":I
    :cond_131
    return-void

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_111
        :pswitch_10c
        :pswitch_107
        :pswitch_102
        :pswitch_f3
        :pswitch_e4
        :pswitch_df
        :pswitch_d0
        :pswitch_ca
    .end packed-switch
.end method

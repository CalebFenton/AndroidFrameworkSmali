.class final Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinearMatchNode"
.end annotation


# instance fields
.field private hash:I

.field private length:I

.field private next:Landroid/icu/util/StringTrieBuilder$Node;

.field private stringOffset:I

.field private strings:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0
    .param p1, "builderStrings"    # Ljava/lang/CharSequence;
    .param p2, "sOffset"    # I
    .param p3, "len"    # I
    .param p4, "nextNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 350
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    #@3
    .line 351
    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@5
    .line 352
    iput p2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@7
    .line 353
    iput p3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@9
    .line 354
    iput-object p4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@b
    .line 350
    return-void
.end method

.method private setHashCode()V
    .locals 4

    #@0
    .prologue
    .line 486
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@2
    const v3, 0x766665f

    #@5
    add-int/2addr v2, v3

    #@6
    mul-int/lit8 v2, v2, 0x25

    #@8
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@a
    invoke-virtual {v3}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    #@d
    move-result v3

    #@e
    add-int/2addr v2, v3

    #@f
    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    #@11
    .line 487
    iget-boolean v2, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 488
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    #@17
    mul-int/lit8 v2, v2, 0x25

    #@19
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@1b
    add-int/2addr v2, v3

    #@1c
    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    #@1e
    .line 490
    :cond_0
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@20
    .local v0, "i":I
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@22
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@24
    add-int v1, v2, v3

    #@26
    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@28
    .line 491
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    #@2a
    mul-int/lit8 v2, v2, 0x25

    #@2c
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@2e
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@31
    move-result v3

    #@32
    add-int/2addr v2, v3

    #@33
    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    #@35
    .line 490
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 485
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 17
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    #@0
    .prologue
    .line 379
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v14

    #@4
    move/from16 v0, p3

    #@6
    if-ne v0, v14, :cond_1

    #@8
    .line 380
    move-object/from16 v0, p0

    #@a
    iget-boolean v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@c
    if-eqz v14, :cond_0

    #@e
    .line 381
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v15, "Duplicate string."

    #@13
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v14

    #@17
    .line 383
    :cond_0
    move-object/from16 v0, p0

    #@19
    move/from16 v1, p4

    #@1b
    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    #@1e
    .line 384
    return-object p0

    #@1f
    .line 387
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@23
    move-object/from16 v0, p0

    #@25
    iget v15, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@27
    add-int v6, v14, v15

    #@29
    .line 388
    .local v6, "limit":I
    move-object/from16 v0, p0

    #@2b
    iget v5, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@2d
    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_8

    #@2f
    .line 389
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@32
    move-result v14

    #@33
    move/from16 v0, p3

    #@35
    if-ne v0, v14, :cond_2

    #@37
    .line 391
    move-object/from16 v0, p0

    #@39
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@3b
    sub-int v9, v5, v14

    #@3d
    .line 392
    .local v9, "prefixLength":I
    new-instance v11, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@43
    move-object/from16 v0, p0

    #@45
    iget v15, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@47
    sub-int/2addr v15, v9

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@4c
    move-object/from16 v16, v0

    #@4e
    move-object/from16 v0, v16

    #@50
    invoke-direct {v11, v14, v5, v15, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    #@53
    .line 393
    .local v11, "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    move/from16 v0, p4

    #@55
    invoke-virtual {v11, v0}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    #@58
    .line 394
    move-object/from16 v0, p0

    #@5a
    iput v9, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@5c
    .line 395
    move-object/from16 v0, p0

    #@5e
    iput-object v11, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@60
    .line 396
    return-object p0

    #@61
    .line 398
    .end local v9    # "prefixLength":I
    .end local v11    # "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    :cond_2
    move-object/from16 v0, p0

    #@63
    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@65
    invoke-interface {v14, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@68
    move-result v12

    #@69
    .line 399
    .local v12, "thisChar":C
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    #@6c
    move-result v7

    #@6d
    .line 400
    .local v7, "newChar":C
    if-eq v12, v7, :cond_7

    #@6f
    .line 402
    new-instance v4, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;

    #@71
    invoke-direct {v4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;-><init>()V

    #@74
    .line 405
    .local v4, "branchNode":Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
    move-object/from16 v0, p0

    #@76
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@78
    if-ne v5, v14, :cond_5

    #@7a
    .line 407
    move-object/from16 v0, p0

    #@7c
    iget-boolean v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@7e
    if-eqz v14, :cond_3

    #@80
    .line 409
    move-object/from16 v0, p0

    #@82
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@84
    invoke-virtual {v4, v14}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    #@87
    .line 410
    const/4 v14, 0x0

    #@88
    move-object/from16 v0, p0

    #@8a
    iput v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@8c
    .line 411
    const/4 v14, 0x0

    #@8d
    move-object/from16 v0, p0

    #@8f
    iput-boolean v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@91
    .line 413
    :cond_3
    move-object/from16 v0, p0

    #@93
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@95
    add-int/lit8 v14, v14, 0x1

    #@97
    move-object/from16 v0, p0

    #@99
    iput v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@9b
    .line 414
    move-object/from16 v0, p0

    #@9d
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@9f
    add-int/lit8 v14, v14, -0x1

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@a5
    .line 415
    move-object/from16 v0, p0

    #@a7
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@a9
    if-lez v14, :cond_4

    #@ab
    move-object/from16 v13, p0

    #@ad
    .line 417
    .local v13, "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_1
    move-object v10, v4

    #@ae
    .line 434
    .local v10, "result":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_2
    add-int/lit8 v14, p3, 0x1

    #@b0
    move-object/from16 v0, p1

    #@b2
    move-object/from16 v1, p2

    #@b4
    move/from16 v2, p4

    #@b6
    invoke-static {v0, v1, v14, v2}, Landroid/icu/util/StringTrieBuilder;->-wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@b9
    move-result-object v8

    #@ba
    .line 435
    .local v8, "newSuffixNode":Landroid/icu/util/StringTrieBuilder$ValueNode;
    invoke-virtual {v4, v12, v13}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    #@bd
    .line 436
    invoke-virtual {v4, v7, v8}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    #@c0
    .line 437
    return-object v10

    #@c1
    .line 415
    .end local v8    # "newSuffixNode":Landroid/icu/util/StringTrieBuilder$ValueNode;
    .end local v10    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_4
    move-object/from16 v0, p0

    #@c3
    iget-object v13, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@c5
    .restart local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_1

    #@c6
    .line 418
    .end local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_5
    add-int/lit8 v14, v6, -0x1

    #@c8
    if-ne v5, v14, :cond_6

    #@ca
    .line 420
    move-object/from16 v0, p0

    #@cc
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@ce
    add-int/lit8 v14, v14, -0x1

    #@d0
    move-object/from16 v0, p0

    #@d2
    iput v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@d4
    .line 421
    move-object/from16 v0, p0

    #@d6
    iget-object v13, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@d8
    .line 422
    .restart local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    move-object/from16 v0, p0

    #@da
    iput-object v4, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@dc
    .line 423
    move-object/from16 v10, p0

    #@de
    .restart local v10    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_2

    #@df
    .line 426
    .end local v10    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_6
    move-object/from16 v0, p0

    #@e1
    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@e3
    sub-int v9, v5, v14

    #@e5
    .line 427
    .restart local v9    # "prefixLength":I
    add-int/lit8 v5, v5, 0x1

    #@e7
    .line 428
    new-instance v13, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    #@e9
    .line 429
    move-object/from16 v0, p0

    #@eb
    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget v15, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@f1
    add-int/lit8 v16, v9, 0x1

    #@f3
    sub-int v15, v15, v16

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@f9
    move-object/from16 v16, v0

    #@fb
    .line 428
    move-object/from16 v0, v16

    #@fd
    invoke-direct {v13, v14, v5, v15, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    #@100
    .line 430
    .restart local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    move-object/from16 v0, p0

    #@102
    iput v9, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@104
    .line 431
    move-object/from16 v0, p0

    #@106
    iput-object v4, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@108
    .line 432
    move-object/from16 v10, p0

    #@10a
    .restart local v10    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_2

    #@10b
    .line 388
    .end local v4    # "branchNode":Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
    .end local v9    # "prefixLength":I
    .end local v10    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v13    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    #@10d
    add-int/lit8 p3, p3, 0x1

    #@10f
    goto/16 :goto_0

    #@111
    .line 441
    .end local v7    # "newChar":C
    .end local v12    # "thisChar":C
    :cond_8
    move-object/from16 v0, p0

    #@113
    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@115
    move-object/from16 v0, p1

    #@117
    move-object/from16 v1, p2

    #@119
    move/from16 v2, p3

    #@11b
    move/from16 v3, p4

    #@11d
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    #@120
    move-result-object v14

    #@121
    move-object/from16 v0, p0

    #@123
    iput-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@125
    .line 442
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 360
    if-ne p0, p1, :cond_0

    #@4
    .line 361
    return v7

    #@5
    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_1

    #@b
    .line 364
    return v6

    #@c
    :cond_1
    move-object v3, p1

    #@d
    .line 366
    check-cast v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    #@f
    .line 367
    .local v3, "o":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    iget v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@11
    iget v5, v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@13
    if-ne v4, v5, :cond_2

    #@15
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@17
    iget-object v5, v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@19
    if-eq v4, v5, :cond_3

    #@1b
    .line 368
    :cond_2
    return v6

    #@1c
    .line 370
    :cond_3
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@1e
    .local v0, "i":I
    iget v1, v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@20
    .local v1, "j":I
    iget v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@22
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@24
    add-int v2, v4, v5

    #@26
    .local v2, "limit":I
    :goto_0
    if-ge v0, v2, :cond_5

    #@28
    .line 371
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@2a
    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@2d
    move-result v4

    #@2e
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@30
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v5

    #@34
    if-eq v4, v5, :cond_4

    #@36
    .line 372
    return v6

    #@37
    .line 370
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 375
    :cond_5
    return v7
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 357
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    #@2
    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1
    .param p1, "edgeNumber"    # I

    #@0
    .prologue
    .line 472
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 473
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@6
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@c
    .line 475
    :cond_0
    return p1
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 8
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 446
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@3
    invoke-virtual {v5, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    #@6
    move-result-object v5

    #@7
    iput-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@9
    .line 448
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxLinearMatchLength()I

    #@c
    move-result v1

    #@d
    .line 449
    .local v1, "maxLinearMatchLength":I
    :goto_0
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@f
    if-le v5, v1, :cond_0

    #@11
    .line 450
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@13
    iget v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@15
    add-int/2addr v5, v6

    #@16
    sub-int v2, v5, v1

    #@18
    .line 451
    .local v2, "nextOffset":I
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@1a
    sub-int/2addr v5, v1

    #@1b
    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@1d
    .line 453
    new-instance v4, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    #@1f
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    #@21
    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@23
    invoke-direct {v4, v5, v2, v1, v6}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    #@26
    .line 454
    .local v4, "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    invoke-direct {v4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    #@29
    .line 455
    invoke-static {p1, v4}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@2f
    goto :goto_0

    #@30
    .line 458
    .end local v2    # "nextOffset":I
    .end local v4    # "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    :cond_0
    iget-boolean v5, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@32
    if-eqz v5, :cond_1

    #@34
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_2

    #@3a
    .line 465
    :cond_1
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    #@3d
    .line 466
    move-object v3, p0

    #@3e
    .line 468
    .local v3, "result":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_1
    invoke-static {p1, v3}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@41
    move-result-object v5

    #@42
    return-object v5

    #@43
    .line 459
    .end local v3    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_2
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@45
    .line 460
    .local v0, "intermediateValue":I
    iput v7, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@47
    .line 461
    iput-boolean v7, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@49
    .line 462
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    #@4c
    .line 463
    new-instance v3, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    #@4e
    invoke-static {p1, p0}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@51
    move-result-object v5

    #@52
    invoke-direct {v3, v0, v5}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    #@55
    .line 458
    .restart local v3    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 4
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@5
    .line 480
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    #@7
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->write(II)I

    #@c
    .line 481
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@e
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@10
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    #@13
    move-result v2

    #@14
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    #@16
    add-int/2addr v2, v3

    #@17
    add-int/lit8 v2, v2, -0x1

    #@19
    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@1f
    .line 478
    return-void
.end method

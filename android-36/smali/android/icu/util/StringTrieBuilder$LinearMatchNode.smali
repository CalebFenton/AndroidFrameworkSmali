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
.field private greylist-max-o hash:I

.field private greylist-max-o length:I

.field private greylist-max-o next:Landroid/icu/util/StringTrieBuilder$Node;

.field private greylist-max-o stringOffset:I

.field private greylist-max-o strings:Ljava/lang/CharSequence;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V
    .registers 5
    .param p1, "builderStrings"    # Ljava/lang/CharSequence;
    .param p2, "sOffset"    # I
    .param p3, "len"    # I
    .param p4, "nextNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 353
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 354
    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    .line 355
    iput p2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .line 356
    iput p3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 357
    iput-object p4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 358
    return-void
.end method

.method private greylist-max-o setHashCode()V
    .registers 5

    .line 489
    const v0, 0x766665f

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 490
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_1e

    .line 491
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 493
    :cond_1e
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .local v0, "i":I
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v2

    .local v1, "limit":I
    :goto_25
    if-ge v0, v1, :cond_37

    .line 494
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v2, v2, 0x25

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 496
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :cond_37
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 15
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    .line 382
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_16

    .line 383
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-nez v0, :cond_e

    .line 386
    invoke-virtual {p0, p4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setValue(I)V

    .line 387
    return-object p0

    .line 384
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_16
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v0, v1

    .line 391
    .local v0, "limit":I
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_b4

    .line 392
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne p3, v2, :cond_3d

    .line 394
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    sub-int v2, v1, v2

    .line 395
    .local v2, "prefixLength":I
    new-instance v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 396
    .local v3, "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    invoke-virtual {v3, p4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setValue(I)V

    .line 397
    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 398
    iput-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 399
    return-object p0

    .line 401
    .end local v2    # "prefixLength":I
    .end local v3    # "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    :cond_3d
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 402
    .local v2, "thisChar":C
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 403
    .local v3, "newChar":C
    if-eq v2, v3, :cond_ae

    .line 405
    new-instance v4, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;

    invoke-direct {v4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;-><init>()V

    .line 408
    .local v4, "branchNode":Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    if-ne v1, v5, :cond_76

    .line 410
    iget-boolean v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v5, :cond_60

    .line 412
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    invoke-virtual {v4, v5}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    .line 413
    const/4 v5, 0x0

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 414
    iput-boolean v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    .line 416
    :cond_60
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .line 417
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 418
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-lez v5, :cond_72

    move-object v5, p0

    goto :goto_74

    :cond_72
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 420
    .local v5, "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_74
    move-object v6, v4

    .local v6, "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_a1

    .line 421
    .end local v5    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v6    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_76
    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_86

    .line 423
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 424
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 425
    .restart local v5    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    iput-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 426
    move-object v6, p0

    .restart local v6    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_a1

    .line 429
    .end local v5    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v6    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_86
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    sub-int v5, v1, v5

    .line 430
    .local v5, "prefixLength":I
    add-int/lit8 v1, v1, 0x1

    .line 431
    new-instance v6, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v7, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget v8, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v9, v5, 0x1

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {v6, v7, v1, v8, v9}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 433
    .local v6, "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 434
    iput-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 435
    move-object v7, p0

    move-object v5, v6

    move-object v6, v7

    .line 437
    .local v5, "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    .local v6, "result":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_a1
    add-int/lit8 v7, p3, 0x1

    invoke-static {p1, p2, v7, p4}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mcreateSuffixNode(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v7

    .line 438
    .local v7, "newSuffixNode":Landroid/icu/util/StringTrieBuilder$ValueNode;
    invoke-virtual {v4, v2, v5}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    .line 439
    invoke-virtual {v4, v3, v7}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    .line 440
    return-object v6

    .line 391
    .end local v2    # "thisChar":C
    .end local v3    # "newChar":C
    .end local v4    # "branchNode":Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
    .end local v5    # "thisSuffixNode":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v6    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v7    # "newSuffixNode":Landroid/icu/util/StringTrieBuilder$ValueNode;
    :cond_ae
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1d

    .line 444
    .end local v1    # "i":I
    :cond_b4
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 445
    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "other"    # Ljava/lang/Object;

    .line 363
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 364
    return v0

    .line 366
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 367
    return v2

    .line 369
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    .line 370
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    iget v4, v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-eq v3, v4, :cond_1c

    goto :goto_3c

    .line 373
    :cond_1c
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .local v3, "i":I
    iget v4, v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .local v4, "j":I
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v5, v6

    .local v5, "limit":I
    :goto_25
    if-ge v3, v5, :cond_3b

    .line 374
    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v6, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_36

    .line 375
    return v2

    .line 373
    :cond_36
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 378
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "limit":I
    :cond_3b
    return v0

    .line 371
    :cond_3c
    :goto_3c
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 360
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    return v0
.end method

.method public greylist-max-o markRightEdgesFirst(I)I
    .registers 3
    .param p1, "edgeNumber"    # I

    .line 475
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    if-nez v0, :cond_d

    .line 476
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result v0

    move p1, v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    .line 478
    :cond_d
    return p1
.end method

.method public greylist-max-o register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 7
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 449
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 451
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxLinearMatchLength()I

    move-result v0

    .line 452
    .local v0, "maxLinearMatchLength":I
    :goto_c
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-le v1, v0, :cond_2e

    .line 453
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 454
    .local v1, "nextOffset":I
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 455
    new-instance v2, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {v2, v3, v1, v0, v4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 457
    .local v2, "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    invoke-direct {v2}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 458
    invoke-static {p1, v2}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 459
    .end local v1    # "nextOffset":I
    .end local v2    # "suffixNode":Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
    goto :goto_c

    .line 461
    :cond_2e
    iget-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 462
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 463
    .local v1, "intermediateValue":I
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 464
    iput-boolean v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    .line 465
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 466
    new-instance v2, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    invoke-static {p1, p0}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 467
    .end local v1    # "intermediateValue":I
    .local v2, "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_50

    .line 468
    .end local v2    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_4c
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 469
    move-object v2, p0

    .line 471
    .restart local v2    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_50
    invoke-static {p1, v2}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
    .registers 6
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 482
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 483
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->write(II)I

    .line 484
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v2

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    .line 485
    return-void
.end method

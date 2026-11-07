.class public final Landroid/icu/text/MessagePatternUtil;
.super Ljava/lang/Object;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePatternUtil$MessageNode;,
        Landroid/icu/text/MessagePatternUtil$TextNode;,
        Landroid/icu/text/MessagePatternUtil$MessageContentsNode;,
        Landroid/icu/text/MessagePatternUtil$ArgNode;,
        Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;,
        Landroid/icu/text/MessagePatternUtil$VariantNode;,
        Landroid/icu/text/MessagePatternUtil$Node;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static greylist-max-o buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;
    .registers 8
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 462
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$smcreateArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    .line 463
    .local v0, "node":Landroid/icu/text/MessagePatternUtil$ArgNode;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 464
    .local v1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputargType(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)V

    .line 465
    .local v2, "argType":Landroid/icu/text/MessagePattern$ArgType;
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 466
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputname(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_2b

    .line 468
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputnumber(Landroid/icu/text/MessagePatternUtil$ArgNode;I)V

    .line 470
    :cond_2b
    add-int/lit8 p1, p1, 0x1

    .line 471
    sget-object v3, Landroid/icu/text/MessagePatternUtil$1;->$SwitchMap$android$icu$text$MessagePattern$ArgType:[I

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8a

    goto :goto_88

    .line 493
    :pswitch_39
    const-string v3, "selectordinal"

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputtypeName(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 494
    invoke-static {p0, p1, p2, v2}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputcomplexStyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    .line 495
    goto :goto_88

    .line 489
    :pswitch_46
    const-string v3, "select"

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputtypeName(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 490
    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputcomplexStyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    .line 491
    goto :goto_88

    .line 485
    :pswitch_53
    const-string v3, "plural"

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputtypeName(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 486
    invoke-static {p0, p1, p2, v2}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputcomplexStyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    .line 487
    goto :goto_88

    .line 481
    :pswitch_60
    const-string v3, "choice"

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputtypeName(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 482
    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputcomplexStyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    .line 483
    goto :goto_88

    .line 474
    :pswitch_6d
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "start":I
    .local v3, "start":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputtypeName(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 475
    if-ge v3, p2, :cond_87

    .line 477
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-$$Nest$fputstyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V

    .line 500
    :cond_87
    move p1, v3

    .end local v3    # "start":I
    .restart local p1    # "start":I
    :goto_88
    return-object v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_60
        :pswitch_53
        :pswitch_46
        :pswitch_39
    .end packed-switch
.end method

.method private static greylist-max-o buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .registers 12
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 505
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 506
    .local v0, "node":Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    :goto_8
    if-ge p1, p2, :cond_3b

    .line 507
    move v1, p1

    .line 508
    .local v1, "valueIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 509
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    .line 510
    .local v4, "value":D
    add-int/lit8 p1, p1, 0x2

    .line 511
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 512
    .local v6, "msgLimit":I
    new-instance v7, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v7, v2}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 513
    .local v7, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputselector(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)V

    .line 514
    invoke-static {v7, v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputnumericValue(Landroid/icu/text/MessagePatternUtil$VariantNode;D)V

    .line 515
    invoke-static {p0, p1, v6}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputmsgNode(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)V

    .line 516
    invoke-static {v0, v7}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$maddVariant(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    .line 517
    add-int/lit8 p1, v6, 0x1

    .line 518
    .end local v1    # "valueIndex":I
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v4    # "value":D
    .end local v6    # "msgLimit":I
    .end local v7    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    goto :goto_8

    .line 519
    :cond_3b
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$mfreeze(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .registers 5
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;

    .line 56
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 57
    .local v0, "limit":I
    if-ltz v0, :cond_1e

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_16

    .line 63
    invoke-static {p0, v1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v1

    return-object v1

    .line 60
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The MessagePattern does not represent a MessageFormat pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The MessagePattern is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .registers 12
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 433
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    .line 434
    .local v0, "prevPatternIndex":I
    new-instance v1, Landroid/icu/text/MessagePatternUtil$MessageNode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 435
    .local v1, "node":Landroid/icu/text/MessagePatternUtil$MessageNode;
    add-int/lit8 v3, p1, 0x1

    .line 436
    .local v3, "i":I
    :goto_10
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 437
    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 438
    .local v5, "patternIndex":I
    if-ge v0, v5, :cond_2a

    .line 439
    new-instance v6, Landroid/icu/text/MessagePatternUtil$TextNode;

    .line 440
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 439
    invoke-static {v1, v6}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-$$Nest$maddContentsNode(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 443
    :cond_2a
    if-ne v3, p2, :cond_32

    .line 444
    nop

    .line 458
    .end local v3    # "i":I
    .end local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v5    # "patternIndex":I
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-$$Nest$mfreeze(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v2

    return-object v2

    .line 446
    .restart local v3    # "i":I
    .restart local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v5    # "patternIndex":I
    :cond_32
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    .line 447
    .local v6, "partType":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_4b

    .line 448
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v7

    .line 449
    .local v7, "argLimit":I
    invoke-static {p0, v3, v7}, Landroid/icu/text/MessagePatternUtil;->buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-$$Nest$maddContentsNode(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 450
    move v3, v7

    .line 451
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 452
    .end local v7    # "argLimit":I
    :cond_4a
    goto :goto_56

    :cond_4b
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_4a

    .line 453
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->-$$Nest$smcreateReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-$$Nest$maddContentsNode(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 456
    :goto_56
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    .line 435
    .end local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v5    # "patternIndex":I
    .end local v6    # "partType":Landroid/icu/text/MessagePattern$Part$Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10
.end method

.method public static greylist-max-o buildMessageNode(Ljava/lang/String;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .registers 2
    .param p0, "patternString"    # Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p0}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .registers 15
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "argType"    # Landroid/icu/text/MessagePattern$ArgType;

    .line 525
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 526
    .local v0, "node":Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 527
    .local v2, "offset":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    .line 528
    invoke-static {v0, v4}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$fputexplicitOffset(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)V

    .line 529
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$fputoffset(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)V

    .line 530
    add-int/lit8 p1, p1, 0x1

    .line 532
    :cond_21
    :goto_21
    if-ge p1, p2, :cond_62

    .line 533
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "start":I
    .local v3, "start":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 534
    .local p1, "selector":Landroid/icu/text/MessagePattern$Part;
    const-wide v5, -0x3e6290cbac000000L    # -1.23456789E8

    .line 535
    .local v5, "value":D
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    .line 536
    .local v7, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v8

    if-eqz v8, :cond_42

    .line 537
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v5

    .line 538
    add-int/lit8 v3, v3, 0x1

    .line 540
    :cond_42
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v8

    .line 541
    .local v8, "msgLimit":I
    new-instance v9, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v9, v1}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 542
    .local v9, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputselector(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)V

    .line 543
    invoke-static {v9, v5, v6}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputnumericValue(Landroid/icu/text/MessagePatternUtil$VariantNode;D)V

    .line 544
    invoke-static {p0, v3, v8}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputmsgNode(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)V

    .line 545
    invoke-static {v0, v9}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$maddVariant(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    .line 546
    add-int/lit8 p1, v8, 0x1

    .line 547
    .end local v3    # "start":I
    .end local v5    # "value":D
    .end local v7    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v8    # "msgLimit":I
    .end local v9    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    .local p1, "start":I
    goto :goto_21

    .line 548
    :cond_62
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$mfreeze(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .registers 9
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 553
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 554
    .local v0, "node":Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    :goto_8
    if-ge p1, p2, :cond_2d

    .line 555
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 556
    .local p1, "selector":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v3

    .line 557
    .local v3, "msgLimit":I
    new-instance v4, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v4, v2}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 558
    .local v4, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputselector(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)V

    .line 559
    invoke-static {p0, v1, v3}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-$$Nest$fputmsgNode(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)V

    .line 560
    invoke-static {v0, v4}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$maddVariant(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    .line 561
    add-int/lit8 p1, v3, 0x1

    .line 562
    .end local v1    # "start":I
    .end local v3    # "msgLimit":I
    .end local v4    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    .local p1, "start":I
    goto :goto_8

    .line 563
    :cond_2d
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-$$Nest$mfreeze(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v1

    return-object v1
.end method

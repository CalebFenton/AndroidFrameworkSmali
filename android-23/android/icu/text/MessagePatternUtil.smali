.class public final Landroid/icu/text/MessagePatternUtil;
.super Ljava/lang/Object;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePatternUtil$Node;,
        Landroid/icu/text/MessagePatternUtil$MessageNode;,
        Landroid/icu/text/MessagePatternUtil$MessageContentsNode;,
        Landroid/icu/text/MessagePatternUtil$TextNode;,
        Landroid/icu/text/MessagePatternUtil$ArgNode;,
        Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;,
        Landroid/icu/text/MessagePatternUtil$VariantNode;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_MessagePattern$ArgTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getandroid_icu_text_MessagePattern$ArgTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/MessagePatternUtil;->-android_icu_text_MessagePattern$ArgTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/MessagePatternUtil;->-android_icu_text_MessagePattern$ArgTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x6

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    #@34
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x4

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x5

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Landroid/icu/text/MessagePatternUtil;->-android_icu_text_MessagePattern$ArgTypeSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 6
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 488
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-wrap0()Landroid/icu/text/MessagePatternUtil$ArgNode;

    #@3
    move-result-object v1

    #@4
    .line 489
    .local v1, "node":Landroid/icu/text/MessagePatternUtil$ArgNode;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@7
    move-result-object v2

    #@8
    .line 490
    .local v2, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    #@b
    move-result-object v4

    #@c
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set0(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePattern$ArgType;

    #@f
    move-result-object v0

    #@10
    .line 491
    .local v0, "argType":Landroid/icu/text/MessagePattern$ArgType;
    add-int/lit8 p1, p1, 0x1

    #@12
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@15
    move-result-object v2

    #@16
    .line 492
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set2(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    .line 493
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@20
    move-result-object v4

    #@21
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@23
    if-ne v4, v5, :cond_0

    #@25
    .line 494
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@28
    move-result v4

    #@29
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set3(Landroid/icu/text/MessagePatternUtil$ArgNode;I)I

    #@2c
    .line 496
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@2e
    .line 497
    invoke-static {}, Landroid/icu/text/MessagePatternUtil;->-getandroid_icu_text_MessagePattern$ArgTypeSwitchesValues()[I

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@35
    move-result v5

    #@36
    aget v4, v4, v5

    #@38
    packed-switch v4, :pswitch_data_0

    #@3b
    .line 526
    :goto_0
    return-object v1

    #@3c
    .line 500
    :pswitch_0
    add-int/lit8 v3, p1, 0x1

    #@3e
    .end local p1    # "start":I
    .local v3, "start":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@49
    .line 501
    if-ge v3, p2, :cond_1

    #@4b
    .line 503
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set4(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@56
    :cond_1
    move p1, v3

    #@57
    .line 505
    .end local v3    # "start":I
    .restart local p1    # "start":I
    goto :goto_0

    #@58
    .line 507
    :pswitch_1
    const-string/jumbo v4, "choice"

    #@5b
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@5e
    .line 508
    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@61
    move-result-object v4

    #@62
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@65
    goto :goto_0

    #@66
    .line 511
    :pswitch_2
    const-string/jumbo v4, "plural"

    #@69
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@6c
    .line 512
    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@6f
    move-result-object v4

    #@70
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@73
    goto :goto_0

    #@74
    .line 515
    :pswitch_3
    const-string/jumbo v4, "select"

    #@77
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@7a
    .line 516
    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@7d
    move-result-object v4

    #@7e
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@81
    goto :goto_0

    #@82
    .line 519
    :pswitch_4
    const-string/jumbo v4, "selectordinal"

    #@85
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    #@88
    .line 520
    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@8b
    move-result-object v4

    #@8c
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@8f
    goto :goto_0

    #@90
    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 9
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 531
    new-instance v1, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@3
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@5
    invoke-direct {v1, v7, v8}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    #@8
    .line 532
    .local v1, "node":Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    :goto_0
    if-ge p1, p2, :cond_0

    #@a
    .line 533
    move v3, p1

    #@b
    .line 534
    .local v3, "valueIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@e
    move-result-object v2

    #@f
    .line 535
    .local v2, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@12
    move-result-wide v4

    #@13
    .line 536
    .local v4, "value":D
    add-int/lit8 p1, p1, 0x2

    #@15
    .line 537
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@18
    move-result v0

    #@19
    .line 538
    .local v0, "msgLimit":I
    new-instance v6, Landroid/icu/text/MessagePatternUtil$VariantNode;

    #@1b
    invoke-direct {v6, v8}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@1e
    .line 539
    .local v6, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    add-int/lit8 v7, v3, 0x1

    #@20
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-static {v6, v7}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    .line 540
    invoke-static {v6, v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set1(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D

    #@2e
    .line 541
    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@31
    move-result-object v7

    #@32
    invoke-static {v6, v7}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@35
    .line 542
    invoke-static {v1, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@38
    .line 543
    add-int/lit8 p1, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 545
    .end local v0    # "msgLimit":I
    .end local v2    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v3    # "valueIndex":I
    .end local v4    # "value":D
    .end local v6    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    :cond_0
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@3e
    move-result-object v7

    #@3f
    return-object v7
.end method

.method public static buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 4
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 55
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    #@4
    move-result v1

    #@5
    add-int/lit8 v0, v1, -0x1

    #@7
    .line 56
    .local v0, "limit":I
    if-gez v0, :cond_0

    #@9
    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "The MessagePattern is empty"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 58
    :cond_0
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    #@15
    move-result-object v1

    #@16
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@18
    if-eq v1, v2, :cond_1

    #@1a
    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 60
    const-string/jumbo v2, "The MessagePattern does not represent a MessageFormat pattern"

    #@1f
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 62
    :cond_1
    invoke-static {p0, v3, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method private static buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 10
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 459
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@4
    move-result-object v7

    #@5
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@8
    move-result v6

    #@9
    .line 460
    .local v6, "prevPatternIndex":I
    new-instance v2, Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@b
    invoke-direct {v2, v9}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageNode;)V

    #@e
    .line 461
    .local v2, "node":Landroid/icu/text/MessagePatternUtil$MessageNode;
    add-int/lit8 v1, p1, 0x1

    #@10
    .line 462
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@13
    move-result-object v3

    #@14
    .line 463
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@17
    move-result v5

    #@18
    .line 464
    .local v5, "patternIndex":I
    if-ge v6, v5, :cond_0

    #@1a
    .line 466
    new-instance v7, Landroid/icu/text/MessagePatternUtil$TextNode;

    #@1c
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    invoke-direct {v7, v8, v9}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil$TextNode;)V

    #@27
    .line 465
    invoke-static {v2, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    #@2a
    .line 469
    :cond_0
    if-ne v1, p2, :cond_1

    #@2c
    .line 484
    invoke-static {v2}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@2f
    move-result-object v7

    #@30
    return-object v7

    #@31
    .line 472
    :cond_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@34
    move-result-object v4

    #@35
    .line 473
    .local v4, "partType":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@37
    if-ne v4, v7, :cond_3

    #@39
    .line 474
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@3c
    move-result v0

    #@3d
    .line 475
    .local v0, "argLimit":I
    invoke-static {p0, v1, v0}, Landroid/icu/text/MessagePatternUtil;->buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;

    #@40
    move-result-object v7

    #@41
    invoke-static {v2, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    #@44
    .line 476
    move v1, v0

    #@45
    .line 477
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@48
    move-result-object v3

    #@49
    .line 482
    .end local v0    # "argLimit":I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@4c
    move-result v6

    #@4d
    .line 461
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 478
    :cond_3
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@52
    if-ne v4, v7, :cond_2

    #@54
    .line 479
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->-wrap0()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    #@57
    move-result-object v7

    #@58
    invoke-static {v2, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    #@5b
    goto :goto_1
.end method

.method public static buildMessageNode(Ljava/lang/String;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1
    .param p0, "patternString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/icu/text/MessagePattern;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 12
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "argType"    # Landroid/icu/text/MessagePattern$ArgType;

    #@0
    .prologue
    .line 551
    new-instance v1, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@2
    const/4 v9, 0x0

    #@3
    invoke-direct {v1, p3, v9}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    #@6
    .line 552
    .local v1, "node":Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@9
    move-result-object v2

    #@a
    .line 553
    .local v2, "offset":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@d
    move-result-object v9

    #@e
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@11
    move-result v9

    #@12
    if-eqz v9, :cond_2

    #@14
    .line 554
    const/4 v9, 0x1

    #@15
    invoke-static {v1, v9}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-set0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z

    #@18
    .line 555
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@1b
    move-result-wide v10

    #@1c
    invoke-static {v1, v10, v11}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-set1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D

    #@1f
    .line 556
    add-int/lit8 p1, p1, 0x1

    #@21
    move v5, p1

    #@22
    .line 558
    .end local p1    # "start":I
    .local v5, "start":I
    :goto_0
    if-ge v5, p2, :cond_1

    #@24
    .line 559
    add-int/lit8 p1, v5, 0x1

    #@26
    .end local v5    # "start":I
    .restart local p1    # "start":I
    invoke-virtual {p0, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@29
    move-result-object v4

    #@2a
    .line 560
    .local v4, "selector":Landroid/icu/text/MessagePattern$Part;
    const-wide v6, -0x3e6290cbac000000L    # -1.23456789E8

    #@2f
    .line 561
    .local v6, "value":D
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@32
    move-result-object v3

    #@33
    .line 562
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@3a
    move-result v9

    #@3b
    if-eqz v9, :cond_0

    #@3d
    .line 563
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@40
    move-result-wide v6

    #@41
    .line 564
    add-int/lit8 p1, p1, 0x1

    #@43
    .line 566
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@46
    move-result v0

    #@47
    .line 567
    .local v0, "msgLimit":I
    new-instance v8, Landroid/icu/text/MessagePatternUtil$VariantNode;

    #@49
    const/4 v9, 0x0

    #@4a
    invoke-direct {v8, v9}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@4d
    .line 568
    .local v8, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    invoke-static {v8, v9}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    #@54
    .line 569
    invoke-static {v8, v6, v7}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set1(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D

    #@57
    .line 570
    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@5a
    move-result-object v9

    #@5b
    invoke-static {v8, v9}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@5e
    .line 571
    invoke-static {v1, v8}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@61
    .line 572
    add-int/lit8 p1, v0, 0x1

    #@63
    move v5, p1

    #@64
    .end local p1    # "start":I
    .restart local v5    # "start":I
    goto :goto_0

    #@65
    .line 574
    .end local v0    # "msgLimit":I
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v4    # "selector":Landroid/icu/text/MessagePattern$Part;
    .end local v6    # "value":D
    .end local v8    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    :cond_1
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@68
    move-result-object v9

    #@69
    return-object v9

    #@6a
    .end local v5    # "start":I
    .restart local p1    # "start":I
    :cond_2
    move v5, p1

    #@6b
    .end local p1    # "start":I
    .restart local v5    # "start":I
    goto :goto_0
.end method

.method private static buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 7
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 579
    new-instance v1, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@3
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@5
    invoke-direct {v1, v5, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    #@8
    .local v1, "node":Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    move v3, p1

    #@9
    .line 580
    .end local p1    # "start":I
    .local v3, "start":I
    :goto_0
    if-ge v3, p2, :cond_0

    #@b
    .line 581
    add-int/lit8 p1, v3, 0x1

    #@d
    .end local v3    # "start":I
    .restart local p1    # "start":I
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@10
    move-result-object v2

    #@11
    .line 582
    .local v2, "selector":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@14
    move-result v0

    #@15
    .line 583
    .local v0, "msgLimit":I
    new-instance v4, Landroid/icu/text/MessagePatternUtil$VariantNode;

    #@17
    invoke-direct {v4, v6}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@1a
    .line 584
    .local v4, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-static {v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    #@21
    .line 585
    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@28
    .line 586
    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@2b
    .line 587
    add-int/lit8 p1, v0, 0x1

    #@2d
    move v3, p1

    #@2e
    .end local p1    # "start":I
    .restart local v3    # "start":I
    goto :goto_0

    #@2f
    .line 589
    .end local v0    # "msgLimit":I
    .end local v2    # "selector":Landroid/icu/text/MessagePattern$Part;
    .end local v4    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    :cond_0
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@32
    move-result-object v5

    #@33
    return-object v5
.end method

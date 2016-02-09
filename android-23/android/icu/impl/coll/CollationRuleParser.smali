.class public final Landroid/icu/impl/coll/CollationRuleParser;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationRuleParser$Position;,
        Landroid/icu/impl/coll/CollationRuleParser$Sink;,
        Landroid/icu/impl/coll/CollationRuleParser$Importer;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BEFORE:Ljava/lang/String; = "[before"

.field private static final OFFSET_SHIFT:I = 0x8

.field static final POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field static final POS_BASE:C = '\u2800'

.field static final POS_LEAD:C = '\ufffe'

.field private static final STARRED_FLAG:I = 0x10

.field private static final STRENGTH_MASK:I = 0xf

.field private static final UCOL_DEFAULT:I = -0x1

.field private static final UCOL_OFF:I = 0x0

.field private static final UCOL_ON:I = 0x1

.field private static final U_PARSE_CONTEXT_LEN:I = 0x10

.field private static final gSpecialReorderCodes:[Ljava/lang/String;

.field private static final positions:[Ljava/lang/String;


# instance fields
.field private final baseData:Landroid/icu/impl/coll/CollationData;

.field private importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

.field private nfc:Landroid/icu/text/Normalizer2;

.field private nfd:Landroid/icu/text/Normalizer2;

.field private final rawBuilder:Ljava/lang/StringBuilder;

.field private ruleIndex:I

.field private rules:Ljava/lang/String;

.field private settings:Landroid/icu/impl/coll/CollationSettings;

.field private sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    const-class v0, Landroid/icu/impl/coll/CollationRuleParser;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationRuleParser;->-assertionsDisabled:Z

    #@10
    .line 45
    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@16
    .line 473
    const/16 v0, 0xe

    #@18
    new-array v0, v0, [Ljava/lang/String;

    #@1a
    .line 474
    const-string/jumbo v3, "first tertiary ignorable"

    #@1d
    aput-object v3, v0, v1

    #@1f
    .line 475
    const-string/jumbo v3, "last tertiary ignorable"

    #@22
    aput-object v3, v0, v2

    #@24
    .line 476
    const-string/jumbo v3, "first secondary ignorable"

    #@27
    aput-object v3, v0, v5

    #@29
    .line 477
    const-string/jumbo v3, "last secondary ignorable"

    #@2c
    aput-object v3, v0, v6

    #@2e
    .line 478
    const-string/jumbo v3, "first primary ignorable"

    #@31
    aput-object v3, v0, v7

    #@33
    .line 479
    const-string/jumbo v3, "last primary ignorable"

    #@36
    const/4 v4, 0x5

    #@37
    aput-object v3, v0, v4

    #@39
    .line 480
    const-string/jumbo v3, "first variable"

    #@3c
    const/4 v4, 0x6

    #@3d
    aput-object v3, v0, v4

    #@3f
    .line 481
    const-string/jumbo v3, "last variable"

    #@42
    const/4 v4, 0x7

    #@43
    aput-object v3, v0, v4

    #@45
    .line 482
    const-string/jumbo v3, "first regular"

    #@48
    const/16 v4, 0x8

    #@4a
    aput-object v3, v0, v4

    #@4c
    .line 483
    const-string/jumbo v3, "last regular"

    #@4f
    const/16 v4, 0x9

    #@51
    aput-object v3, v0, v4

    #@53
    .line 484
    const-string/jumbo v3, "first implicit"

    #@56
    const/16 v4, 0xa

    #@58
    aput-object v3, v0, v4

    #@5a
    .line 485
    const-string/jumbo v3, "last implicit"

    #@5d
    const/16 v4, 0xb

    #@5f
    aput-object v3, v0, v4

    #@61
    .line 486
    const-string/jumbo v3, "first trailing"

    #@64
    const/16 v4, 0xc

    #@66
    aput-object v3, v0, v4

    #@68
    .line 487
    const-string/jumbo v3, "last trailing"

    #@6b
    const/16 v4, 0xd

    #@6d
    aput-object v3, v0, v4

    #@6f
    .line 473
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    #@71
    .line 731
    const/4 v0, 0x5

    #@72
    new-array v0, v0, [Ljava/lang/String;

    #@74
    .line 732
    const-string/jumbo v3, "space"

    #@77
    aput-object v3, v0, v1

    #@79
    const-string/jumbo v1, "punct"

    #@7c
    aput-object v1, v0, v2

    #@7e
    const-string/jumbo v1, "symbol"

    #@81
    aput-object v1, v0, v5

    #@83
    const-string/jumbo v1, "currency"

    #@86
    aput-object v1, v0, v6

    #@88
    const-string/jumbo v1, "digit"

    #@8b
    aput-object v1, v0, v7

    #@8d
    .line 731
    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    #@8f
    .line 27
    return-void

    #@90
    :cond_0
    move v0, v2

    #@91
    goto/16 :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1
    .param p1, "base"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@a
    .line 903
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    #@10
    .line 904
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    #@16
    .line 89
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    #@18
    .line 88
    return-void
.end method

.method private appendErrorContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 860
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " at index "

    #@8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 863
    const-string/jumbo v3, " near \""

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 865
    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@19
    add-int/lit8 v2, v3, -0xf

    #@1b
    .line 866
    .local v2, "start":I
    if-gez v2, :cond_2

    #@1d
    .line 867
    const/4 v2, 0x0

    #@1e
    .line 871
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@20
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@22
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@25
    .line 873
    const/16 v3, 0x21

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 875
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2f
    move-result v3

    #@30
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@32
    sub-int v0, v3, v4

    #@34
    .line 876
    .local v0, "length":I
    const/16 v3, 0x10

    #@36
    if-lt v0, v3, :cond_1

    #@38
    .line 877
    const/16 v0, 0xf

    #@3a
    .line 878
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@3c
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@3e
    add-int/lit8 v4, v4, 0xf

    #@40
    add-int/lit8 v4, v4, -0x1

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v3

    #@46
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_1

    #@4c
    .line 879
    const/16 v0, 0xe

    #@4e
    .line 882
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@50
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@52
    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@54
    add-int/2addr v5, v0

    #@55
    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@58
    .line 883
    const/16 v3, 0x22

    #@5a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    return-object v3

    #@63
    .line 868
    .end local v0    # "length":I
    :cond_2
    if-lez v2, :cond_0

    #@65
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@67
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v3

    #@6b
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_0

    #@71
    .line 869
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_0
.end method

.method private static getOnOffValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 761
    const-string/jumbo v0, "on"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 762
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 763
    :cond_0
    const-string/jumbo v0, "off"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 764
    const/4 v0, 0x0

    #@15
    return v0

    #@16
    .line 766
    :cond_1
    const/4 v0, -0x1

    #@17
    return v0
.end method

.method public static getReorderCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "word"    # Ljava/lang/String;

    #@0
    .prologue
    .line 741
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    #@3
    array-length v3, v3

    #@4
    if-ge v1, v3, :cond_1

    #@6
    .line 742
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    #@8
    aget-object v3, v3, v1

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 743
    add-int/lit16 v3, v1, 0x1000

    #@12
    return v3

    #@13
    .line 741
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 747
    :cond_1
    const/16 v3, 0x100a

    #@18
    :try_start_0
    invoke-static {v3, p0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I
    :try_end_0
    .catch Landroid/icu/impl/IllegalIcuArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v2

    #@1c
    .line 748
    .local v2, "script":I
    if-ltz v2, :cond_2

    #@1e
    .line 749
    return v2

    #@1f
    .line 751
    .end local v2    # "script":I
    :catch_0
    move-exception v0

    #@20
    .line 754
    :cond_2
    const-string/jumbo v3, "others"

    #@23
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    .line 755
    const/16 v3, 0x67

    #@2b
    return v3

    #@2c
    .line 757
    :cond_3
    const/4 v3, -0x1

    #@2d
    return v3
.end method

.method private static final isSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 470
    and-int/lit16 v0, p0, -0x800

    #@2
    const v1, 0xd800

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private static isSyntaxChar(I)Z
    .locals 3
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 891
    const/16 v2, 0x21

    #@4
    if-gt v2, p0, :cond_3

    #@6
    const/16 v2, 0x7e

    #@8
    if-gt p0, v2, :cond_3

    #@a
    .line 892
    const/16 v2, 0x2f

    #@c
    if-le p0, v2, :cond_0

    #@e
    const/16 v2, 0x3a

    #@10
    if-gt v2, p0, :cond_1

    #@12
    const/16 v2, 0x40

    #@14
    if-gt p0, v2, :cond_1

    #@16
    .line 891
    :cond_0
    :goto_0
    return v0

    #@17
    .line 893
    :cond_1
    const/16 v2, 0x5b

    #@19
    if-gt v2, p0, :cond_2

    #@1b
    const/16 v2, 0x60

    #@1d
    if-le p0, v2, :cond_0

    #@1f
    :cond_2
    const/16 v2, 0x7b

    #@21
    if-le v2, p0, :cond_0

    #@23
    move v0, v1

    #@24
    goto :goto_0

    #@25
    :cond_3
    move v0, v1

    #@26
    .line 891
    goto :goto_0
.end method

.method private makeParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 849
    new-instance v0, Ljava/text/ParseException;

    #@2
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->appendErrorContext(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@8
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b
    return-object v0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ruleString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2
    .line 130
    const/4 v1, 0x0

    #@3
    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@5
    .line 132
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@7
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    if-ge v1, v2, :cond_1

    #@f
    .line 133
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@11
    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 134
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 135
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@23
    goto :goto_0

    #@24
    .line 138
    :cond_0
    sparse-switch v0, :sswitch_data_0

    #@27
    .line 158
    const-string/jumbo v1, "expected a reset or setting or comment"

    #@2a
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@2d
    goto :goto_0

    #@2e
    .line 140
    :sswitch_0
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRuleChain()V

    #@31
    goto :goto_0

    #@32
    .line 143
    :sswitch_1
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseSetting()V

    #@35
    goto :goto_0

    #@36
    .line 146
    :sswitch_2
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@38
    add-int/lit8 v1, v1, 0x1

    #@3a
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    #@3d
    move-result v1

    #@3e
    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@40
    goto :goto_0

    #@41
    .line 149
    :sswitch_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@43
    const/16 v2, 0x800

    #@45
    const/4 v3, 0x1

    #@46
    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@49
    .line 150
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@4f
    goto :goto_0

    #@50
    .line 155
    :sswitch_4
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@52
    add-int/lit8 v1, v1, 0x1

    #@54
    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@56
    goto :goto_0

    #@57
    .line 128
    .end local v0    # "c":C
    :cond_1
    return-void

    #@58
    .line 138
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_4
        0x23 -> :sswitch_2
        0x26 -> :sswitch_0
        0x40 -> :sswitch_3
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method private parseRelationOperator()I
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x2a

    #@2
    const/4 v7, -0x1

    #@3
    const/16 v6, 0x3c

    #@5
    .line 242
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@7
    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@a
    move-result v4

    #@b
    iput v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@d
    .line 243
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@f
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@14
    move-result v5

    #@15
    if-lt v4, v5, :cond_0

    #@17
    return v7

    #@18
    .line 245
    :cond_0
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@1a
    .line 246
    .local v1, "i":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@1c
    add-int/lit8 v2, v1, 0x1

    #@1e
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    .line 247
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@25
    .line 284
    return v7

    #@26
    .line 249
    :sswitch_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2b
    move-result v4

    #@2c
    if-ge v2, v4, :cond_4

    #@2e
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@30
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v4

    #@34
    if-ne v4, v6, :cond_4

    #@36
    .line 250
    add-int/lit8 v1, v2, 0x1

    #@38
    .line 251
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@3a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3d
    move-result v4

    #@3e
    if-ge v1, v4, :cond_3

    #@40
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@42
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v4

    #@46
    if-ne v4, v6, :cond_3

    #@48
    .line 252
    add-int/lit8 v1, v1, 0x1

    #@4a
    .line 253
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@4c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4f
    move-result v4

    #@50
    if-ge v1, v4, :cond_2

    #@52
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@54
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@57
    move-result v4

    #@58
    if-ne v4, v6, :cond_2

    #@5a
    .line 254
    add-int/lit8 v1, v1, 0x1

    #@5c
    .line 255
    const/4 v3, 0x3

    #@5d
    .line 265
    .local v3, "strength":I
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@5f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@62
    move-result v4

    #@63
    if-ge v1, v4, :cond_1

    #@65
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@67
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v4

    #@6b
    if-ne v4, v8, :cond_1

    #@6d
    .line 266
    add-int/lit8 v1, v1, 0x1

    #@6f
    .line 267
    or-int/lit8 v3, v3, 0x10

    #@71
    .line 286
    :cond_1
    :goto_1
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@73
    sub-int v4, v1, v4

    #@75
    shl-int/lit8 v4, v4, 0x8

    #@77
    or-int/2addr v4, v3

    #@78
    return v4

    #@79
    .line 257
    .end local v3    # "strength":I
    :cond_2
    const/4 v3, 0x2

    #@7a
    .restart local v3    # "strength":I
    goto :goto_0

    #@7b
    .line 260
    .end local v3    # "strength":I
    :cond_3
    const/4 v3, 0x1

    #@7c
    .restart local v3    # "strength":I
    goto :goto_0

    #@7d
    .line 263
    .end local v1    # "i":I
    .end local v3    # "strength":I
    .restart local v2    # "i":I
    :cond_4
    const/4 v3, 0x0

    #@7e
    .restart local v3    # "strength":I
    move v1, v2

    #@7f
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@80
    .line 271
    .end local v1    # "i":I
    .end local v3    # "strength":I
    .restart local v2    # "i":I
    :sswitch_1
    const/4 v3, 0x1

    #@81
    .restart local v3    # "strength":I
    move v1, v2

    #@82
    .line 272
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    #@83
    .line 274
    .end local v1    # "i":I
    .end local v3    # "strength":I
    .restart local v2    # "i":I
    :sswitch_2
    const/4 v3, 0x2

    #@84
    .restart local v3    # "strength":I
    move v1, v2

    #@85
    .line 275
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    #@86
    .line 277
    .end local v1    # "i":I
    .end local v3    # "strength":I
    .restart local v2    # "i":I
    :sswitch_3
    const/16 v3, 0xf

    #@88
    .line 278
    .restart local v3    # "strength":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@8a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8d
    move-result v4

    #@8e
    if-ge v2, v4, :cond_5

    #@90
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@92
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@95
    move-result v4

    #@96
    if-ne v4, v8, :cond_5

    #@98
    .line 279
    add-int/lit8 v1, v2, 0x1

    #@9a
    .line 280
    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v3, 0x1f

    #@9c
    goto :goto_1

    #@9d
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    move v1, v2

    #@9e
    .line 278
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    #@9f
    .line 247
    nop

    #@a0
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_0
        0x3d -> :sswitch_3
    .end sparse-switch
.end method

.method private parseRelationStrings(II)V
    .locals 10
    .param p1, "strength"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 293
    const-string/jumbo v5, ""

    #@4
    .line 294
    .local v5, "prefix":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@7
    .line 295
    .local v3, "extension":Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@9
    invoke-direct {p0, p2, v7}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    #@c
    move-result p2

    #@d
    .line 296
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@12
    move-result v7

    #@13
    if-ge p2, v7, :cond_3

    #@15
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@17
    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v4

    #@1b
    .line 297
    :goto_0
    const/16 v7, 0x7c

    #@1d
    if-ne v4, v7, :cond_0

    #@1f
    .line 298
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 299
    add-int/lit8 v7, p2, 0x1

    #@27
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@29
    invoke-direct {p0, v7, v8}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    #@2c
    move-result p2

    #@2d
    .line 300
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@32
    move-result v7

    #@33
    if-ge p2, v7, :cond_4

    #@35
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@37
    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v4

    #@3b
    .line 303
    :cond_0
    :goto_1
    const/16 v7, 0x2f

    #@3d
    if-ne v4, v7, :cond_1

    #@3f
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    .line 305
    .local v2, "extBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, p2, 0x1

    #@46
    invoke-direct {p0, v7, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    #@49
    move-result p2

    #@4a
    .line 306
    move-object v3, v2

    #@4b
    .line 308
    .end local v2    # "extBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_2

    #@51
    .line 309
    invoke-virtual {v5, v9}, Ljava/lang/String;->codePointAt(I)I

    #@54
    move-result v6

    #@55
    .line 310
    .local v6, "prefix0":I
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@57
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@5a
    move-result v0

    #@5b
    .line 311
    .local v0, "c":I
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    #@5d
    invoke-virtual {v7, v6}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_5

    #@63
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    #@65
    invoke-virtual {v7, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@68
    move-result v7

    #@69
    if-eqz v7, :cond_5

    #@6b
    .line 317
    .end local v0    # "c":I
    .end local v6    # "prefix0":I
    :cond_2
    :try_start_0
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@6d
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@6f
    invoke-virtual {v7, p1, v5, v8, v3}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 322
    iput p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@74
    .line 289
    return-void

    #@75
    .line 296
    :cond_3
    const/4 v4, 0x0

    #@76
    .local v4, "next":C
    goto :goto_0

    #@77
    .line 300
    .end local v4    # "next":C
    :cond_4
    const/4 v4, 0x0

    #@78
    .restart local v4    # "next":C
    goto :goto_1

    #@79
    .line 312
    .end local v4    # "next":C
    .restart local v0    # "c":I
    .restart local v6    # "prefix0":I
    :cond_5
    const-string/jumbo v7, "in \'prefix|str\', prefix and str must each start with an NFC boundary"

    #@7c
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@7f
    .line 313
    return-void

    #@80
    .line 318
    .end local v0    # "c":I
    .end local v6    # "prefix0":I
    :catch_0
    move-exception v1

    #@81
    .line 319
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "adding relation failed"

    #@84
    invoke-direct {p0, v7, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@87
    .line 320
    return-void
.end method

.method private parseReordering(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "raw"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 700
    const/4 v4, 0x7

    #@1
    .line 701
    .local v4, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v10

    #@5
    .line 700
    const/4 v11, 0x7

    #@6
    .line 701
    if-ne v11, v10, :cond_0

    #@8
    .line 703
    iget-object v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@a
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    #@d
    .line 704
    return-void

    #@e
    .line 707
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    #@10
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 708
    .local v8, "reorderCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v10

    #@17
    if-ge v4, v10, :cond_3

    #@19
    .line 709
    add-int/lit8 v4, v4, 0x1

    #@1b
    .line 710
    move v7, v4

    #@1c
    .line 711
    .local v7, "limit":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1f
    move-result v10

    #@20
    if-ge v7, v10, :cond_1

    #@22
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@25
    move-result v10

    #@26
    const/16 v11, 0x20

    #@28
    if-eq v10, v11, :cond_1

    #@2a
    add-int/lit8 v7, v7, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 712
    :cond_1
    invoke-interface {p1, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@30
    move-result-object v10

    #@31
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    .line 713
    .local v9, "word":Ljava/lang/String;
    invoke-static {v9}, Landroid/icu/impl/coll/CollationRuleParser;->getReorderCode(Ljava/lang/String;)I

    #@38
    move-result v0

    #@39
    .line 714
    .local v0, "code":I
    if-gez v0, :cond_2

    #@3b
    .line 715
    const-string/jumbo v10, "unknown script or reorder code"

    #@3e
    invoke-direct {p0, v10}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@41
    .line 716
    return-void

    #@42
    .line 718
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v10

    #@46
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    .line 719
    move v4, v7

    #@4a
    goto :goto_0

    #@4b
    .line 721
    .end local v0    # "code":I
    .end local v7    # "limit":I
    .end local v9    # "word":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@4e
    move-result v10

    #@4f
    if-eqz v10, :cond_4

    #@51
    .line 722
    iget-object v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@53
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    #@56
    .line 699
    :goto_2
    return-void

    #@57
    .line 724
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@5a
    move-result v10

    #@5b
    new-array v3, v10, [I

    #@5d
    .line 725
    .local v3, "codes":[I
    const/4 v5, 0x0

    #@5e
    .line 726
    .local v5, "j":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v2

    #@62
    .local v2, "code$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v10

    #@66
    if-eqz v10, :cond_5

    #@68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v1

    #@6c
    check-cast v1, Ljava/lang/Integer;

    #@6e
    .local v1, "code":Ljava/lang/Integer;
    add-int/lit8 v6, v5, 0x1

    #@70
    .end local v5    # "j":I
    .local v6, "j":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@73
    move-result v10

    #@74
    aput v10, v3, v5

    #@76
    move v5, v6

    #@77
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_3

    #@78
    .line 727
    .end local v1    # "code":Ljava/lang/Integer;
    :cond_5
    iget-object v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@7a
    iget-object v11, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    #@7c
    invoke-virtual {v10, v11, v3}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    #@7f
    goto :goto_2
.end method

.method private parseResetAndPosition()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 206
    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@4
    add-int/lit8 v5, v5, 0x1

    #@6
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@9
    move-result v2

    #@a
    .line 210
    .local v2, "i":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@c
    const-string/jumbo v6, "[before"

    #@f
    const-string/jumbo v7, "[before"

    #@12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@15
    move-result v7

    #@16
    invoke-virtual {v5, v2, v6, v9, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 211
    const-string/jumbo v5, "[before"

    #@1f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@22
    move-result v5

    #@23
    add-int v3, v2, v5

    #@25
    .local v3, "j":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@27
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@2a
    move-result v5

    #@2b
    if-ge v3, v5, :cond_0

    #@2d
    .line 212
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2f
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v5

    #@33
    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@36
    move-result v5

    #@37
    .line 210
    if-eqz v5, :cond_0

    #@39
    .line 213
    add-int/lit8 v5, v3, 0x1

    #@3b
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@3e
    move-result v3

    #@3f
    add-int/lit8 v5, v3, 0x1

    #@41
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@43
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@46
    move-result v6

    #@47
    if-ge v5, v6, :cond_0

    #@49
    .line 214
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@4b
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v0

    #@4f
    .local v0, "c":C
    const/16 v5, 0x31

    #@51
    if-gt v5, v0, :cond_0

    #@53
    const/16 v5, 0x33

    #@55
    if-gt v0, v5, :cond_0

    #@57
    .line 215
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@59
    add-int/lit8 v6, v3, 0x1

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v5

    #@5f
    const/16 v6, 0x5d

    #@61
    if-ne v5, v6, :cond_0

    #@63
    .line 217
    add-int/lit8 v5, v0, -0x31

    #@65
    add-int/lit8 v4, v5, 0x0

    #@67
    .line 218
    .local v4, "resetStrength":I
    add-int/lit8 v5, v3, 0x2

    #@69
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@6c
    move-result v2

    #@6d
    .line 222
    .end local v0    # "c":C
    .end local v3    # "j":I
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@6f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@72
    move-result v5

    #@73
    if-lt v2, v5, :cond_1

    #@75
    .line 223
    const-string/jumbo v5, "reset without position"

    #@78
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@7b
    .line 224
    return v8

    #@7c
    .line 220
    .end local v4    # "resetStrength":I
    :cond_0
    const/16 v4, 0xf

    #@7e
    .restart local v4    # "resetStrength":I
    goto :goto_0

    #@7f
    .line 226
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@81
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@84
    move-result v5

    #@85
    const/16 v6, 0x5b

    #@87
    if-ne v5, v6, :cond_2

    #@89
    .line 227
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {p0, v2, v5}, Landroid/icu/impl/coll/CollationRuleParser;->parseSpecialPosition(ILjava/lang/StringBuilder;)I

    #@8e
    move-result v2

    #@8f
    .line 232
    :goto_1
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@91
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@93
    invoke-virtual {v5, v4, v6}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addReset(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@96
    .line 237
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@98
    .line 238
    return v4

    #@99
    .line 229
    :cond_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {p0, v2, v5}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    #@9e
    move-result v2

    #@9f
    goto :goto_1

    #@a0
    .line 233
    :catch_0
    move-exception v1

    #@a1
    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "adding reset failed"

    #@a4
    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@a7
    .line 235
    return v8
.end method

.method private parseRuleChain()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseResetAndPosition()I

    #@3
    move-result v2

    #@4
    .line 166
    .local v2, "resetStrength":I
    const/4 v1, 0x1

    #@5
    .line 168
    .local v1, "isFirstRelation":Z
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationOperator()I

    #@8
    move-result v3

    #@9
    .line 169
    .local v3, "result":I
    if-gez v3, :cond_2

    #@b
    .line 170
    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@d
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-ge v5, v6, :cond_0

    #@15
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@17
    iget v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v5

    #@1d
    const/16 v6, 0x23

    #@1f
    if-ne v5, v6, :cond_0

    #@21
    .line 172
    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@23
    add-int/lit8 v5, v5, 0x1

    #@25
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    #@28
    move-result v5

    #@29
    iput v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@2b
    goto :goto_0

    #@2c
    .line 175
    :cond_0
    if-eqz v1, :cond_1

    #@2e
    .line 176
    const-string/jumbo v5, "reset not followed by a relation"

    #@31
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@34
    .line 178
    :cond_1
    return-void

    #@35
    .line 180
    :cond_2
    and-int/lit8 v4, v3, 0xf

    #@37
    .line 181
    .local v4, "strength":I
    const/16 v5, 0xf

    #@39
    if-ge v2, v5, :cond_4

    #@3b
    .line 183
    if-eqz v1, :cond_3

    #@3d
    .line 184
    if-eq v4, v2, :cond_4

    #@3f
    .line 185
    const-string/jumbo v5, "reset-before strength differs from its first relation"

    #@42
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@45
    .line 186
    return-void

    #@46
    .line 189
    :cond_3
    if-ge v4, v2, :cond_4

    #@48
    .line 190
    const-string/jumbo v5, "reset-before strength followed by a stronger relation"

    #@4b
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@4e
    .line 191
    return-void

    #@4f
    .line 195
    :cond_4
    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@51
    shr-int/lit8 v6, v3, 0x8

    #@53
    add-int v0, v5, v6

    #@55
    .line 196
    .local v0, "i":I
    and-int/lit8 v5, v3, 0x10

    #@57
    if-nez v5, :cond_5

    #@59
    .line 197
    invoke-direct {p0, v4, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationStrings(II)V

    #@5c
    .line 201
    :goto_1
    const/4 v1, 0x0

    #@5d
    goto :goto_0

    #@5e
    .line 199
    :cond_5
    invoke-direct {p0, v4, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseStarredCharacters(II)V

    #@61
    goto :goto_1
.end method

.method private parseSetting()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@4
    move/from16 v19, v0

    #@6
    add-int/lit8 v8, v19, 0x1

    #@8
    .line 522
    .local v8, "i":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@c
    move-object/from16 v19, v0

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, v19

    #@12
    invoke-direct {v0, v8, v1}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    #@15
    move-result v10

    #@16
    .line 523
    .local v10, "j":I
    if-le v10, v8, :cond_0

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@1c
    move-object/from16 v19, v0

    #@1e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    #@21
    move-result v19

    #@22
    if-nez v19, :cond_1

    #@24
    .line 524
    :cond_0
    const-string/jumbo v19, "expected a setting/option at \'[\'"

    #@27
    move-object/from16 v0, p0

    #@29
    move-object/from16 v1, v19

    #@2b
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@2e
    .line 527
    :cond_1
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@32
    move-object/from16 v19, v0

    #@34
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v14

    #@38
    .line 528
    .local v14, "raw":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@3c
    move-object/from16 v19, v0

    #@3e
    move-object/from16 v0, v19

    #@40
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v19

    #@44
    const/16 v20, 0x5d

    #@46
    move/from16 v0, v19

    #@48
    move/from16 v1, v20

    #@4a
    if-ne v0, v1, :cond_22

    #@4c
    .line 529
    add-int/lit8 v10, v10, 0x1

    #@4e
    .line 530
    const-string/jumbo v19, "reorder"

    #@51
    move-object/from16 v0, v19

    #@53
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@56
    move-result v19

    #@57
    if-eqz v19, :cond_3

    #@59
    .line 531
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@5c
    move-result v19

    #@5d
    const/16 v20, 0x7

    #@5f
    move/from16 v0, v19

    #@61
    move/from16 v1, v20

    #@63
    if-eq v0, v1, :cond_2

    #@65
    const/16 v19, 0x7

    #@67
    move/from16 v0, v19

    #@69
    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v19

    #@6d
    const/16 v20, 0x20

    #@6f
    move/from16 v0, v19

    #@71
    move/from16 v1, v20

    #@73
    if-ne v0, v1, :cond_3

    #@75
    .line 532
    :cond_2
    move-object/from16 v0, p0

    #@77
    invoke-direct {v0, v14}, Landroid/icu/impl/coll/CollationRuleParser;->parseReordering(Ljava/lang/CharSequence;)V

    #@7a
    .line 533
    move-object/from16 v0, p0

    #@7c
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@7e
    .line 534
    return-void

    #@7f
    .line 536
    :cond_3
    const-string/jumbo v19, "backwards 2"

    #@82
    move-object/from16 v0, v19

    #@84
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v19

    #@88
    if-eqz v19, :cond_4

    #@8a
    .line 537
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@8e
    move-object/from16 v19, v0

    #@90
    const/16 v20, 0x800

    #@92
    const/16 v21, 0x1

    #@94
    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@97
    .line 538
    move-object/from16 v0, p0

    #@99
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@9b
    .line 539
    return-void

    #@9c
    .line 542
    :cond_4
    const/16 v19, 0x20

    #@9e
    move/from16 v0, v19

    #@a0
    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@a3
    move-result v18

    #@a4
    .line 543
    .local v18, "valueIndex":I
    if-ltz v18, :cond_6

    #@a6
    .line 544
    add-int/lit8 v19, v18, 0x1

    #@a8
    move/from16 v0, v19

    #@aa
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ad
    move-result-object v16

    #@ae
    .line 545
    .local v16, "v":Ljava/lang/String;
    const/16 v19, 0x0

    #@b0
    move/from16 v0, v19

    #@b2
    move/from16 v1, v18

    #@b4
    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b7
    move-result-object v14

    #@b8
    .line 549
    :goto_0
    const-string/jumbo v19, "strength"

    #@bb
    move-object/from16 v0, v19

    #@bd
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v19

    #@c1
    if-eqz v19, :cond_8

    #@c3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@c6
    move-result v19

    #@c7
    const/16 v20, 0x1

    #@c9
    move/from16 v0, v19

    #@cb
    move/from16 v1, v20

    #@cd
    if-ne v0, v1, :cond_8

    #@cf
    .line 550
    const/16 v17, -0x1

    #@d1
    .line 551
    .local v17, "value":I
    const/16 v19, 0x0

    #@d3
    move-object/from16 v0, v16

    #@d5
    move/from16 v1, v19

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@da
    move-result v5

    #@db
    .line 552
    .local v5, "c":C
    const/16 v19, 0x31

    #@dd
    move/from16 v0, v19

    #@df
    if-gt v0, v5, :cond_7

    #@e1
    const/16 v19, 0x34

    #@e3
    move/from16 v0, v19

    #@e5
    if-gt v5, v0, :cond_7

    #@e7
    .line 553
    add-int/lit8 v19, v5, -0x31

    #@e9
    add-int/lit8 v17, v19, 0x0

    #@eb
    .line 557
    :cond_5
    :goto_1
    const/16 v19, -0x1

    #@ed
    move/from16 v0, v17

    #@ef
    move/from16 v1, v19

    #@f1
    if-eq v0, v1, :cond_24

    #@f3
    .line 558
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@f7
    move-object/from16 v19, v0

    #@f9
    move-object/from16 v0, v19

    #@fb
    move/from16 v1, v17

    #@fd
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    #@100
    .line 559
    move-object/from16 v0, p0

    #@102
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@104
    .line 560
    return-void

    #@105
    .line 547
    .end local v5    # "c":C
    .end local v16    # "v":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_6
    const-string/jumbo v16, ""

    #@108
    .restart local v16    # "v":Ljava/lang/String;
    goto :goto_0

    #@109
    .line 554
    .restart local v5    # "c":C
    .restart local v17    # "value":I
    :cond_7
    const/16 v19, 0x49

    #@10b
    move/from16 v0, v19

    #@10d
    if-ne v5, v0, :cond_5

    #@10f
    .line 555
    const/16 v17, 0xf

    #@111
    goto :goto_1

    #@112
    .line 562
    .end local v5    # "c":C
    .end local v17    # "value":I
    :cond_8
    const-string/jumbo v19, "alternate"

    #@115
    move-object/from16 v0, v19

    #@117
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11a
    move-result v19

    #@11b
    if-eqz v19, :cond_c

    #@11d
    .line 563
    const/16 v17, -0x1

    #@11f
    .line 564
    .restart local v17    # "value":I
    const-string/jumbo v19, "non-ignorable"

    #@122
    move-object/from16 v0, v16

    #@124
    move-object/from16 v1, v19

    #@126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@129
    move-result v19

    #@12a
    if-eqz v19, :cond_a

    #@12c
    .line 565
    const/16 v17, 0x0

    #@12e
    .line 569
    :cond_9
    :goto_2
    const/16 v19, -0x1

    #@130
    move/from16 v0, v17

    #@132
    move/from16 v1, v19

    #@134
    if-eq v0, v1, :cond_24

    #@136
    .line 570
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@13a
    move-object/from16 v20, v0

    #@13c
    if-lez v17, :cond_b

    #@13e
    const/16 v19, 0x1

    #@140
    :goto_3
    move-object/from16 v0, v20

    #@142
    move/from16 v1, v19

    #@144
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    #@147
    .line 571
    move-object/from16 v0, p0

    #@149
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@14b
    .line 572
    return-void

    #@14c
    .line 566
    :cond_a
    const-string/jumbo v19, "shifted"

    #@14f
    move-object/from16 v0, v16

    #@151
    move-object/from16 v1, v19

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@156
    move-result v19

    #@157
    if-eqz v19, :cond_9

    #@159
    .line 567
    const/16 v17, 0x1

    #@15b
    goto :goto_2

    #@15c
    .line 570
    :cond_b
    const/16 v19, 0x0

    #@15e
    goto :goto_3

    #@15f
    .line 574
    .end local v17    # "value":I
    :cond_c
    const-string/jumbo v19, "maxVariable"

    #@162
    move-object/from16 v0, v19

    #@164
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v19

    #@168
    if-eqz v19, :cond_13

    #@16a
    .line 575
    const/16 v17, -0x1

    #@16c
    .line 576
    .restart local v17    # "value":I
    const-string/jumbo v19, "space"

    #@16f
    move-object/from16 v0, v16

    #@171
    move-object/from16 v1, v19

    #@173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@176
    move-result v19

    #@177
    if-eqz v19, :cond_e

    #@179
    .line 577
    const/16 v17, 0x0

    #@17b
    .line 585
    :cond_d
    :goto_4
    const/16 v19, -0x1

    #@17d
    move/from16 v0, v17

    #@17f
    move/from16 v1, v19

    #@181
    if-eq v0, v1, :cond_24

    #@183
    .line 586
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@187
    move-object/from16 v19, v0

    #@189
    const/16 v20, 0x0

    #@18b
    move-object/from16 v0, v19

    #@18d
    move/from16 v1, v17

    #@18f
    move/from16 v2, v20

    #@191
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    #@194
    .line 587
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@198
    move-object/from16 v19, v0

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    #@19e
    move-object/from16 v20, v0

    #@1a0
    .line 588
    move/from16 v0, v17

    #@1a2
    add-int/lit16 v0, v0, 0x1000

    #@1a4
    move/from16 v21, v0

    #@1a6
    .line 587
    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@1a9
    move-result-wide v20

    #@1aa
    move-wide/from16 v0, v20

    #@1ac
    move-object/from16 v2, v19

    #@1ae
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@1b0
    .line 589
    sget-boolean v19, Landroid/icu/impl/coll/CollationRuleParser;->-assertionsDisabled:Z

    #@1b2
    if-nez v19, :cond_12

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@1b8
    move-object/from16 v19, v0

    #@1ba
    move-object/from16 v0, v19

    #@1bc
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@1be
    move-wide/from16 v20, v0

    #@1c0
    const-wide/16 v22, 0x0

    #@1c2
    cmp-long v19, v20, v22

    #@1c4
    if-eqz v19, :cond_11

    #@1c6
    const/16 v19, 0x1

    #@1c8
    :goto_5
    if-nez v19, :cond_12

    #@1ca
    new-instance v19, Ljava/lang/AssertionError;

    #@1cc
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@1cf
    throw v19

    #@1d0
    .line 578
    :cond_e
    const-string/jumbo v19, "punct"

    #@1d3
    move-object/from16 v0, v16

    #@1d5
    move-object/from16 v1, v19

    #@1d7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1da
    move-result v19

    #@1db
    if-eqz v19, :cond_f

    #@1dd
    .line 579
    const/16 v17, 0x1

    #@1df
    goto :goto_4

    #@1e0
    .line 580
    :cond_f
    const-string/jumbo v19, "symbol"

    #@1e3
    move-object/from16 v0, v16

    #@1e5
    move-object/from16 v1, v19

    #@1e7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ea
    move-result v19

    #@1eb
    if-eqz v19, :cond_10

    #@1ed
    .line 581
    const/16 v17, 0x2

    #@1ef
    goto :goto_4

    #@1f0
    .line 582
    :cond_10
    const-string/jumbo v19, "currency"

    #@1f3
    move-object/from16 v0, v16

    #@1f5
    move-object/from16 v1, v19

    #@1f7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fa
    move-result v19

    #@1fb
    if-eqz v19, :cond_d

    #@1fd
    .line 583
    const/16 v17, 0x3

    #@1ff
    goto/16 :goto_4

    #@201
    .line 589
    :cond_11
    const/16 v19, 0x0

    #@203
    goto :goto_5

    #@204
    .line 590
    :cond_12
    move-object/from16 v0, p0

    #@206
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@208
    .line 591
    return-void

    #@209
    .line 593
    .end local v17    # "value":I
    :cond_13
    const-string/jumbo v19, "caseFirst"

    #@20c
    move-object/from16 v0, v19

    #@20e
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@211
    move-result v19

    #@212
    if-eqz v19, :cond_17

    #@214
    .line 594
    const/16 v17, -0x1

    #@216
    .line 595
    .restart local v17    # "value":I
    const-string/jumbo v19, "off"

    #@219
    move-object/from16 v0, v16

    #@21b
    move-object/from16 v1, v19

    #@21d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@220
    move-result v19

    #@221
    if-eqz v19, :cond_15

    #@223
    .line 596
    const/16 v17, 0x0

    #@225
    .line 602
    :cond_14
    :goto_6
    const/16 v19, -0x1

    #@227
    move/from16 v0, v17

    #@229
    move/from16 v1, v19

    #@22b
    if-eq v0, v1, :cond_24

    #@22d
    .line 603
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@231
    move-object/from16 v19, v0

    #@233
    move-object/from16 v0, v19

    #@235
    move/from16 v1, v17

    #@237
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    #@23a
    .line 604
    move-object/from16 v0, p0

    #@23c
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@23e
    .line 605
    return-void

    #@23f
    .line 597
    :cond_15
    const-string/jumbo v19, "lower"

    #@242
    move-object/from16 v0, v16

    #@244
    move-object/from16 v1, v19

    #@246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@249
    move-result v19

    #@24a
    if-eqz v19, :cond_16

    #@24c
    .line 598
    const/16 v17, 0x200

    #@24e
    goto :goto_6

    #@24f
    .line 599
    :cond_16
    const-string/jumbo v19, "upper"

    #@252
    move-object/from16 v0, v16

    #@254
    move-object/from16 v1, v19

    #@256
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@259
    move-result v19

    #@25a
    if-eqz v19, :cond_14

    #@25c
    .line 600
    const/16 v17, 0x300

    #@25e
    goto :goto_6

    #@25f
    .line 607
    .end local v17    # "value":I
    :cond_17
    const-string/jumbo v19, "caseLevel"

    #@262
    move-object/from16 v0, v19

    #@264
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@267
    move-result v19

    #@268
    if-eqz v19, :cond_19

    #@26a
    .line 608
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    #@26d
    move-result v17

    #@26e
    .line 609
    .restart local v17    # "value":I
    const/16 v19, -0x1

    #@270
    move/from16 v0, v17

    #@272
    move/from16 v1, v19

    #@274
    if-eq v0, v1, :cond_24

    #@276
    .line 610
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@27a
    move-object/from16 v20, v0

    #@27c
    if-lez v17, :cond_18

    #@27e
    const/16 v19, 0x1

    #@280
    :goto_7
    const/16 v21, 0x400

    #@282
    move-object/from16 v0, v20

    #@284
    move/from16 v1, v21

    #@286
    move/from16 v2, v19

    #@288
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@28b
    .line 611
    move-object/from16 v0, p0

    #@28d
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@28f
    .line 612
    return-void

    #@290
    .line 610
    :cond_18
    const/16 v19, 0x0

    #@292
    goto :goto_7

    #@293
    .line 614
    .end local v17    # "value":I
    :cond_19
    const-string/jumbo v19, "normalization"

    #@296
    move-object/from16 v0, v19

    #@298
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29b
    move-result v19

    #@29c
    if-eqz v19, :cond_1b

    #@29e
    .line 615
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    #@2a1
    move-result v17

    #@2a2
    .line 616
    .restart local v17    # "value":I
    const/16 v19, -0x1

    #@2a4
    move/from16 v0, v17

    #@2a6
    move/from16 v1, v19

    #@2a8
    if-eq v0, v1, :cond_24

    #@2aa
    .line 617
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@2ae
    move-object/from16 v20, v0

    #@2b0
    if-lez v17, :cond_1a

    #@2b2
    const/16 v19, 0x1

    #@2b4
    :goto_8
    const/16 v21, 0x1

    #@2b6
    move-object/from16 v0, v20

    #@2b8
    move/from16 v1, v21

    #@2ba
    move/from16 v2, v19

    #@2bc
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@2bf
    .line 618
    move-object/from16 v0, p0

    #@2c1
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@2c3
    .line 619
    return-void

    #@2c4
    .line 617
    :cond_1a
    const/16 v19, 0x0

    #@2c6
    goto :goto_8

    #@2c7
    .line 621
    .end local v17    # "value":I
    :cond_1b
    const-string/jumbo v19, "numericOrdering"

    #@2ca
    move-object/from16 v0, v19

    #@2cc
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2cf
    move-result v19

    #@2d0
    if-eqz v19, :cond_1d

    #@2d2
    .line 622
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    #@2d5
    move-result v17

    #@2d6
    .line 623
    .restart local v17    # "value":I
    const/16 v19, -0x1

    #@2d8
    move/from16 v0, v17

    #@2da
    move/from16 v1, v19

    #@2dc
    if-eq v0, v1, :cond_24

    #@2de
    .line 624
    move-object/from16 v0, p0

    #@2e0
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@2e2
    move-object/from16 v20, v0

    #@2e4
    if-lez v17, :cond_1c

    #@2e6
    const/16 v19, 0x1

    #@2e8
    :goto_9
    const/16 v21, 0x2

    #@2ea
    move-object/from16 v0, v20

    #@2ec
    move/from16 v1, v21

    #@2ee
    move/from16 v2, v19

    #@2f0
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@2f3
    .line 625
    move-object/from16 v0, p0

    #@2f5
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@2f7
    .line 626
    return-void

    #@2f8
    .line 624
    :cond_1c
    const/16 v19, 0x0

    #@2fa
    goto :goto_9

    #@2fb
    .line 628
    .end local v17    # "value":I
    :cond_1d
    const-string/jumbo v19, "hiraganaQ"

    #@2fe
    move-object/from16 v0, v19

    #@300
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@303
    move-result v19

    #@304
    if-eqz v19, :cond_1f

    #@306
    .line 629
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    #@309
    move-result v17

    #@30a
    .line 630
    .restart local v17    # "value":I
    const/16 v19, -0x1

    #@30c
    move/from16 v0, v17

    #@30e
    move/from16 v1, v19

    #@310
    if-eq v0, v1, :cond_24

    #@312
    .line 631
    const/16 v19, 0x1

    #@314
    move/from16 v0, v17

    #@316
    move/from16 v1, v19

    #@318
    if-ne v0, v1, :cond_1e

    #@31a
    .line 632
    const-string/jumbo v19, "[hiraganaQ on] is not supported"

    #@31d
    move-object/from16 v0, p0

    #@31f
    move-object/from16 v1, v19

    #@321
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@324
    .line 634
    :cond_1e
    move-object/from16 v0, p0

    #@326
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@328
    .line 635
    return-void

    #@329
    .line 637
    .end local v17    # "value":I
    :cond_1f
    const-string/jumbo v19, "import"

    #@32c
    move-object/from16 v0, v19

    #@32e
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@331
    move-result v19

    #@332
    if-eqz v19, :cond_24

    #@334
    .line 641
    :try_start_0
    new-instance v19, Landroid/icu/util/ULocale$Builder;

    #@336
    invoke-direct/range {v19 .. v19}, Landroid/icu/util/ULocale$Builder;-><init>()V

    #@339
    move-object/from16 v0, v19

    #@33b
    move-object/from16 v1, v16

    #@33d
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    #@340
    move-result-object v19

    #@341
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@344
    move-result-object v11

    #@345
    .line 647
    .local v11, "localeID":Landroid/icu/util/ULocale;
    invoke-virtual {v11}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@348
    move-result-object v4

    #@349
    .line 649
    .local v4, "baseID":Ljava/lang/String;
    const-string/jumbo v19, "collation"

    #@34c
    move-object/from16 v0, v19

    #@34e
    invoke-virtual {v11, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@351
    move-result-object v6

    #@352
    .line 650
    .local v6, "collationType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    #@356
    move-object/from16 v19, v0

    #@358
    if-nez v19, :cond_20

    #@35a
    .line 651
    const-string/jumbo v19, "[import langTag] is not supported"

    #@35d
    move-object/from16 v0, p0

    #@35f
    move-object/from16 v1, v19

    #@361
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@364
    .line 673
    .end local v6    # "collationType":Ljava/lang/String;
    :goto_a
    return-void

    #@365
    .line 642
    .end local v4    # "baseID":Ljava/lang/String;
    .end local v11    # "localeID":Landroid/icu/util/ULocale;
    :catch_0
    move-exception v7

    #@366
    .line 643
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "expected language tag in [import langTag]"

    #@369
    move-object/from16 v0, p0

    #@36b
    move-object/from16 v1, v19

    #@36d
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@370
    .line 644
    return-void

    #@371
    .line 656
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "baseID":Ljava/lang/String;
    .restart local v6    # "collationType":Ljava/lang/String;
    .restart local v11    # "localeID":Landroid/icu/util/ULocale;
    :cond_20
    :try_start_1
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    #@375
    move-object/from16 v19, v0

    #@377
    .line 657
    if-eqz v6, :cond_21

    #@379
    .line 656
    .end local v6    # "collationType":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, v19

    #@37b
    invoke-interface {v0, v4, v6}, Landroid/icu/impl/coll/CollationRuleParser$Importer;->getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@37e
    move-result-object v9

    #@37f
    .line 662
    .local v9, "importedRules":Ljava/lang/String;
    move-object/from16 v0, p0

    #@381
    iget-object v13, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@383
    .line 663
    .local v13, "outerRules":Ljava/lang/String;
    move-object/from16 v0, p0

    #@385
    iget v12, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@387
    .line 665
    .local v12, "outerRuleIndex":I
    :try_start_2
    move-object/from16 v0, p0

    #@389
    invoke-direct {v0, v9}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@38c
    .line 670
    :goto_c
    move-object/from16 v0, p0

    #@38e
    iput-object v13, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@390
    .line 671
    move-object/from16 v0, p0

    #@392
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@394
    goto :goto_a

    #@395
    .line 657
    .end local v9    # "importedRules":Ljava/lang/String;
    .end local v12    # "outerRuleIndex":I
    .end local v13    # "outerRules":Ljava/lang/String;
    .restart local v6    # "collationType":Ljava/lang/String;
    :cond_21
    :try_start_3
    const-string/jumbo v6, "standard"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@398
    goto :goto_b

    #@399
    .line 658
    .end local v6    # "collationType":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@39a
    .line 659
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v19, "[import langTag] failed"

    #@39d
    move-object/from16 v0, p0

    #@39f
    move-object/from16 v1, v19

    #@3a1
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3a4
    .line 660
    return-void

    #@3a5
    .line 666
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "importedRules":Ljava/lang/String;
    .restart local v12    # "outerRuleIndex":I
    .restart local v13    # "outerRules":Ljava/lang/String;
    :catch_2
    move-exception v7

    #@3a6
    .line 667
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@3a8
    iput v12, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@3aa
    .line 668
    const-string/jumbo v19, "parsing imported rules failed"

    #@3ad
    move-object/from16 v0, p0

    #@3af
    move-object/from16 v1, v19

    #@3b1
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3b4
    goto :goto_c

    #@3b5
    .line 675
    .end local v4    # "baseID":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "importedRules":Ljava/lang/String;
    .end local v11    # "localeID":Landroid/icu/util/ULocale;
    .end local v12    # "outerRuleIndex":I
    .end local v13    # "outerRules":Ljava/lang/String;
    .end local v16    # "v":Ljava/lang/String;
    .end local v18    # "valueIndex":I
    :cond_22
    move-object/from16 v0, p0

    #@3b7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@3b9
    move-object/from16 v19, v0

    #@3bb
    move-object/from16 v0, v19

    #@3bd
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    #@3c0
    move-result v19

    #@3c1
    const/16 v20, 0x5b

    #@3c3
    move/from16 v0, v19

    #@3c5
    move/from16 v1, v20

    #@3c7
    if-ne v0, v1, :cond_24

    #@3c9
    .line 676
    new-instance v15, Landroid/icu/text/UnicodeSet;

    #@3cb
    invoke-direct {v15}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3ce
    .line 677
    .local v15, "set":Landroid/icu/text/UnicodeSet;
    move-object/from16 v0, p0

    #@3d0
    invoke-direct {v0, v10, v15}, Landroid/icu/impl/coll/CollationRuleParser;->parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I

    #@3d3
    move-result v10

    #@3d4
    .line 678
    const-string/jumbo v19, "optimize"

    #@3d7
    move-object/from16 v0, v19

    #@3d9
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3dc
    move-result v19

    #@3dd
    if-eqz v19, :cond_23

    #@3df
    .line 680
    :try_start_4
    move-object/from16 v0, p0

    #@3e1
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@3e3
    move-object/from16 v19, v0

    #@3e5
    move-object/from16 v0, v19

    #@3e7
    invoke-virtual {v0, v15}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->optimize(Landroid/icu/text/UnicodeSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@3ea
    .line 684
    :goto_d
    move-object/from16 v0, p0

    #@3ec
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@3ee
    .line 685
    return-void

    #@3ef
    .line 681
    :catch_3
    move-exception v7

    #@3f0
    .line 682
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v19, "[optimize set] failed"

    #@3f3
    move-object/from16 v0, p0

    #@3f5
    move-object/from16 v1, v19

    #@3f7
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3fa
    goto :goto_d

    #@3fb
    .line 686
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_23
    const-string/jumbo v19, "suppressContractions"

    #@3fe
    move-object/from16 v0, v19

    #@400
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@403
    move-result v19

    #@404
    if-eqz v19, :cond_24

    #@406
    .line 688
    :try_start_5
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@40a
    move-object/from16 v19, v0

    #@40c
    move-object/from16 v0, v19

    #@40e
    invoke-virtual {v0, v15}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->suppressContractions(Landroid/icu/text/UnicodeSet;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    #@411
    .line 692
    :goto_e
    move-object/from16 v0, p0

    #@413
    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@415
    .line 693
    return-void

    #@416
    .line 689
    :catch_4
    move-exception v7

    #@417
    .line 690
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v19, "[suppressContractions set] failed"

    #@41a
    move-object/from16 v0, p0

    #@41c
    move-object/from16 v1, v19

    #@41e
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@421
    goto :goto_e

    #@422
    .line 696
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v15    # "set":Landroid/icu/text/UnicodeSet;
    :cond_24
    const-string/jumbo v19, "not a valid setting/option"

    #@425
    move-object/from16 v0, p0

    #@427
    move-object/from16 v1, v19

    #@429
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@42c
    .line 520
    return-void
.end method

.method private parseSpecialPosition(ILjava/lang/StringBuilder;)I
    .locals 7
    .param p1, "i"    # I
    .param p2, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const v5, 0xfffe

    #@4
    .line 496
    add-int/lit8 v3, p1, 0x1

    #@6
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@8
    invoke-direct {p0, v3, v4}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    #@b
    move-result v0

    #@c
    .line 497
    .local v0, "j":I
    if-le v0, p1, :cond_3

    #@e
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@10
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v3

    #@14
    const/16 v4, 0x5d

    #@16
    if-ne v3, v4, :cond_3

    #@18
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    .line 498
    add-int/lit8 v0, v0, 0x1

    #@22
    .line 499
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 500
    .local v2, "raw":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2b
    .line 501
    const/4 v1, 0x0

    #@2c
    .local v1, "pos":I
    :goto_0
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    #@2e
    array-length v3, v3

    #@2f
    if-ge v1, v3, :cond_1

    #@31
    .line 502
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    #@33
    aget-object v3, v3, v1

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 503
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    add-int/lit16 v4, v1, 0x2800

    #@41
    int-to-char v4, v4

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 504
    return v0

    #@46
    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_0

    #@49
    .line 507
    :cond_1
    const-string/jumbo v3, "top"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_2

    #@52
    .line 508
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    sget-object v4, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@58
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@5b
    move-result v4

    #@5c
    add-int/lit16 v4, v4, 0x2800

    #@5e
    int-to-char v4, v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    .line 509
    return v0

    #@63
    .line 511
    :cond_2
    const-string/jumbo v3, "variable top"

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v3

    #@6a
    if-eqz v3, :cond_3

    #@6c
    .line 512
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    sget-object v4, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@72
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@75
    move-result v4

    #@76
    add-int/lit16 v4, v4, 0x2800

    #@78
    int-to-char v4, v4

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    .line 513
    return v0

    #@7d
    .line 516
    .end local v1    # "pos":I
    .end local v2    # "raw":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "not a valid special reset position"

    #@80
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@83
    .line 517
    return p1
.end method

.method private parseStarredCharacters(II)V
    .locals 8
    .param p1, "strength"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 326
    const-string/jumbo v2, ""

    #@4
    .line 327
    .local v2, "empty":Ljava/lang/String;
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@7
    move-result v5

    #@8
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@a
    invoke-direct {p0, v5, v6}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    #@d
    move-result p2

    #@e
    .line 328
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_0

    #@16
    .line 329
    const-string/jumbo v5, "missing starred-relation string"

    #@19
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@1c
    .line 330
    return-void

    #@1d
    .line 332
    :cond_0
    const/4 v4, -0x1

    #@1e
    .line 333
    .local v4, "prev":I
    const/4 v3, 0x0

    #@1f
    .line 335
    .local v3, "j":I
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@24
    move-result v5

    #@25
    if-ge v3, v5, :cond_2

    #@27
    .line 336
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@29
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@2c
    move-result v0

    #@2d
    .line 337
    .local v0, "c":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    #@2f
    invoke-virtual {v5, v0}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_1

    #@35
    .line 338
    const-string/jumbo v5, "starred-relation string is not all NFD-inert"

    #@38
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@3b
    .line 339
    return-void

    #@3c
    .line 342
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@3e
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v5, p1, v2, v6, v2}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 347
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@48
    move-result v5

    #@49
    add-int/2addr v3, v5

    #@4a
    .line 348
    move v4, v0

    #@4b
    goto :goto_0

    #@4c
    .line 343
    :catch_0
    move-exception v1

    #@4d
    .line 344
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "adding relation failed"

    #@50
    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@53
    .line 345
    return-void

    #@54
    .line 350
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@56
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@59
    move-result v5

    #@5a
    if-ge p2, v5, :cond_3

    #@5c
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@5e
    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v5

    #@62
    const/16 v6, 0x2d

    #@64
    if-eq v5, v6, :cond_4

    #@66
    .line 391
    :cond_3
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@69
    move-result v5

    #@6a
    iput v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    #@6c
    .line 325
    return-void

    #@6d
    .line 353
    :cond_4
    if-gez v4, :cond_5

    #@6f
    .line 354
    const-string/jumbo v5, "range without start in starred-relation string"

    #@72
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@75
    .line 355
    return-void

    #@76
    .line 357
    :cond_5
    add-int/lit8 v5, p2, 0x1

    #@78
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {p0, v5, v6}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    #@7d
    move-result p2

    #@7e
    .line 358
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_6

    #@86
    .line 359
    const-string/jumbo v5, "range without end in starred-relation string"

    #@89
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@8c
    .line 360
    return-void

    #@8d
    .line 362
    :cond_6
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    #@8f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@92
    move-result v0

    #@93
    .line 363
    .restart local v0    # "c":I
    if-ge v0, v4, :cond_8

    #@95
    .line 364
    const-string/jumbo v5, "range start greater than end in starred-relation string"

    #@98
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@9b
    .line 365
    return-void

    #@9c
    .line 382
    :cond_7
    :try_start_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@9e
    invoke-static {v4}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    invoke-virtual {v5, p1, v2, v6, v2}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a5
    .line 368
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@a7
    if-gt v4, v0, :cond_b

    #@a9
    .line 369
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    #@ab
    invoke-virtual {v5, v4}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    #@ae
    move-result v5

    #@af
    if-nez v5, :cond_9

    #@b1
    .line 370
    const-string/jumbo v5, "starred-relation string range is not all NFD-inert"

    #@b4
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@b7
    .line 371
    return-void

    #@b8
    .line 373
    :cond_9
    invoke-static {v4}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    #@bb
    move-result v5

    #@bc
    if-eqz v5, :cond_a

    #@be
    .line 374
    const-string/jumbo v5, "starred-relation string range contains a surrogate"

    #@c1
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@c4
    .line 375
    return-void

    #@c5
    .line 377
    :cond_a
    const v5, 0xfffd

    #@c8
    if-gt v5, v4, :cond_7

    #@ca
    const v5, 0xffff

    #@cd
    if-gt v4, v5, :cond_7

    #@cf
    .line 378
    const-string/jumbo v5, "starred-relation string range contains U+FFFD, U+FFFE or U+FFFF"

    #@d2
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@d5
    .line 379
    return-void

    #@d6
    .line 383
    :catch_1
    move-exception v1

    #@d7
    .line 384
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "adding relation failed"

    #@da
    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@dd
    .line 385
    return-void

    #@de
    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v4, -0x1

    #@df
    .line 389
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@e2
    move-result v3

    #@e3
    goto/16 :goto_0
.end method

.method private parseString(ILjava/lang/StringBuilder;)I
    .locals 7
    .param p1, "i"    # I
    .param p2, "raw"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x27

    #@2
    .line 403
    const/4 v5, 0x0

    #@3
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 404
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    if-ge p1, v5, :cond_6

    #@e
    .line 405
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@10
    add-int/lit8 v3, p1, 0x1

    #@12
    .end local p1    # "i":I
    .local v3, "i":I
    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 406
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_7

    #@1c
    .line 407
    if-ne v0, v6, :cond_3

    #@1e
    .line 408
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@23
    move-result v5

    #@24
    if-ge v3, v5, :cond_0

    #@26
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@28
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v5

    #@2c
    if-ne v5, v6, :cond_0

    #@2e
    .line 410
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 411
    add-int/lit8 p1, v3, 0x1

    #@33
    .line 412
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    #@34
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_0
    move p1, v3

    #@35
    .line 416
    .end local v3    # "i":I
    .restart local p1    # "i":I
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@37
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@3a
    move-result v5

    #@3b
    if-ne p1, v5, :cond_1

    #@3d
    .line 417
    const-string/jumbo v5, "quoted literal text missing terminating apostrophe"

    #@40
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@43
    .line 418
    return p1

    #@44
    .line 420
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@46
    add-int/lit8 v3, p1, 0x1

    #@48
    .end local p1    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v0

    #@4c
    .line 421
    if-ne v0, v6, :cond_c

    #@4e
    .line 422
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@50
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@53
    move-result v5

    #@54
    if-ge v3, v5, :cond_2

    #@56
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@58
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@5b
    move-result v5

    #@5c
    if-ne v5, v6, :cond_2

    #@5e
    .line 425
    add-int/lit8 p1, v3, 0x1

    #@60
    .line 430
    .end local v3    # "i":I
    .restart local p1    # "i":I
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    goto :goto_1

    #@64
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_2
    move p1, v3

    #@65
    .line 427
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    #@66
    .line 432
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_3
    const/16 v5, 0x5c

    #@68
    if-ne v0, v5, :cond_5

    #@6a
    .line 433
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@6c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@6f
    move-result v5

    #@70
    if-ne v3, v5, :cond_4

    #@72
    .line 434
    const-string/jumbo v5, "backslash escape at the end of the rule string"

    #@75
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@78
    .line 435
    return v3

    #@79
    .line 437
    :cond_4
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@7b
    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    #@7e
    move-result v2

    #@7f
    .line 438
    .local v2, "cp":I
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@82
    .line 439
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@85
    move-result v5

    #@86
    add-int p1, v3, v5

    #@88
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto/16 :goto_0

    #@8a
    .line 442
    .end local v2    # "cp":I
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_5
    add-int/lit8 p1, v3, -0x1

    #@8c
    .line 453
    .end local v0    # "c":C
    .end local v3    # "i":I
    .restart local p1    # "i":I
    :cond_6
    :goto_3
    const/4 v4, 0x0

    #@8d
    .local v4, "j":I
    :goto_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@90
    move-result v5

    #@91
    if-ge v4, v5, :cond_b

    #@93
    .line 454
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@96
    move-result v1

    #@97
    .line 455
    .local v1, "c":I
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    #@9a
    move-result v5

    #@9b
    if-eqz v5, :cond_9

    #@9d
    .line 456
    const-string/jumbo v5, "string contains an unpaired surrogate"

    #@a0
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@a3
    .line 457
    return p1

    #@a4
    .line 445
    .end local v1    # "c":I
    .end local v4    # "j":I
    .end local p1    # "i":I
    .restart local v0    # "c":C
    .restart local v3    # "i":I
    :cond_7
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@a7
    move-result v5

    #@a8
    if-eqz v5, :cond_8

    #@aa
    .line 447
    add-int/lit8 p1, v3, -0x1

    #@ac
    .line 448
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_3

    #@ad
    .line 450
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b0
    move p1, v3

    #@b1
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto/16 :goto_0

    #@b3
    .line 459
    .end local v0    # "c":C
    .restart local v1    # "c":I
    .restart local v4    # "j":I
    :cond_9
    const v5, 0xfffd

    #@b6
    if-gt v5, v1, :cond_a

    #@b8
    const v5, 0xffff

    #@bb
    if-gt v1, v5, :cond_a

    #@bd
    .line 460
    const-string/jumbo v5, "string contains U+FFFD, U+FFFE or U+FFFF"

    #@c0
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@c3
    .line 461
    return p1

    #@c4
    .line 463
    :cond_a
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@c7
    move-result v5

    #@c8
    add-int/2addr v4, v5

    #@c9
    goto :goto_4

    #@ca
    .line 465
    .end local v1    # "c":I
    :cond_b
    return p1

    #@cb
    .end local v4    # "j":I
    .end local p1    # "i":I
    .restart local v0    # "c":C
    .restart local v3    # "i":I
    :cond_c
    move p1, v3

    #@cc
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_2
.end method

.method private parseTailoringString(ILjava/lang/StringBuilder;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "raw"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    #@7
    move-result p1

    #@8
    .line 396
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 397
    const-string/jumbo v0, "missing relation string"

    #@11
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@14
    .line 399
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method private parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I
    .locals 8
    .param p1, "i"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x5d

    #@2
    .line 772
    const/4 v4, 0x0

    #@3
    .line 773
    .local v4, "level":I
    move v2, p1

    #@4
    .line 775
    .local v2, "j":I
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    if-ne v2, v5, :cond_0

    #@c
    .line 776
    const-string/jumbo v5, "unbalanced UnicodeSet pattern brackets"

    #@f
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@12
    .line 777
    return v2

    #@13
    .line 779
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@15
    add-int/lit8 v3, v2, 0x1

    #@17
    .end local v2    # "j":I
    .local v3, "j":I
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 780
    .local v0, "c":C
    const/16 v5, 0x5b

    #@1d
    if-ne v0, v5, :cond_2

    #@1f
    .line 781
    add-int/lit8 v4, v4, 0x1

    #@21
    :cond_1
    move v2, v3

    #@22
    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    #@23
    .line 782
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_2
    if-ne v0, v7, :cond_1

    #@25
    .line 783
    add-int/lit8 v4, v4, -0x1

    #@27
    if-nez v4, :cond_1

    #@29
    .line 787
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2b
    invoke-virtual {v5, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {p2, v5}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 791
    :goto_1
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@35
    move-result v2

    #@36
    .line 792
    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@38
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@3b
    move-result v5

    #@3c
    if-eq v2, v5, :cond_3

    #@3e
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@40
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v5

    #@44
    if-eq v5, v7, :cond_4

    #@46
    .line 793
    :cond_3
    const-string/jumbo v5, "missing option-terminating \']\' after UnicodeSet pattern"

    #@49
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@4c
    .line 794
    return v2

    #@4d
    .line 788
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :catch_0
    move-exception v1

    #@4e
    .line 789
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "not a valid UnicodeSet pattern: "

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    #@69
    goto :goto_1

    #@6a
    .line 796
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@6c
    return v2
.end method

.method private readWords(ILjava/lang/StringBuilder;)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "raw"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    .line 800
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 801
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@9
    move-result p1

    #@a
    .line 803
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    if-lt p1, v2, :cond_0

    #@12
    return v3

    #@13
    .line 804
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 805
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    const/16 v2, 0x2d

    #@21
    if-eq v0, v2, :cond_3

    #@23
    const/16 v2, 0x5f

    #@25
    if-eq v0, v2, :cond_3

    #@27
    .line 806
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_1

    #@2d
    return p1

    #@2e
    .line 807
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@31
    move-result v2

    #@32
    add-int/lit8 v1, v2, -0x1

    #@34
    .line 808
    .local v1, "lastIndex":I
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@37
    move-result v2

    #@38
    if-ne v2, v4, :cond_2

    #@3a
    .line 809
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3d
    .line 811
    :cond_2
    return p1

    #@3e
    .line 813
    .end local v1    # "lastIndex":I
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_4

    #@44
    .line 814
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    .line 815
    add-int/lit8 v2, p1, 0x1

    #@49
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    #@4c
    move-result p1

    #@4d
    goto :goto_0

    #@4e
    .line 817
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 818
    add-int/lit8 p1, p1, 0x1

    #@53
    goto :goto_0
.end method

.method private setParseError(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 839
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method private setParseError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, ": "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@1f
    move-result-object v0

    #@20
    .line 844
    .local v0, "newExc":Ljava/text/ParseException;
    invoke-virtual {v0, p2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@23
    .line 845
    throw v0
.end method

.method private skipComment(I)I
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 825
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge p1, v2, :cond_1

    #@8
    .line 826
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@a
    add-int/lit8 v1, p1, 0x1

    #@c
    .end local p1    # "i":I
    .local v1, "i":I
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 828
    .local v0, "c":C
    const/16 v2, 0xa

    #@12
    if-eq v0, v2, :cond_0

    #@14
    const/16 v2, 0xc

    #@16
    if-ne v0, v2, :cond_2

    #@18
    :cond_0
    move p1, v1

    #@19
    .line 835
    .end local v0    # "c":C
    .end local v1    # "i":I
    .restart local p1    # "i":I
    :cond_1
    return p1

    #@1a
    .line 828
    .end local p1    # "i":I
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_2
    const/16 v2, 0xd

    #@1c
    if-eq v0, v2, :cond_0

    #@1e
    const/16 v2, 0x85

    #@20
    if-eq v0, v2, :cond_0

    #@22
    const/16 v2, 0x2028

    #@24
    if-eq v0, v2, :cond_0

    #@26
    const/16 v2, 0x2029

    #@28
    if-eq v0, v2, :cond_0

    #@2a
    move p1, v1

    #@2b
    .end local v1    # "i":I
    .restart local p1    # "i":I
    goto :goto_0
.end method

.method private skipWhiteSpace(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 897
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 898
    add-int/lit8 p1, p1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 900
    :cond_0
    return p1
.end method


# virtual methods
.method parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V
    .locals 0
    .param p1, "ruleString"    # Ljava/lang/String;
    .param p2, "outSettings"    # Landroid/icu/impl/coll/CollationSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iput-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    #@2
    .line 110
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V

    #@5
    .line 108
    return-void
.end method

.method setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V
    .locals 0
    .param p1, "importerAlias"    # Landroid/icu/impl/coll/CollationRuleParser$Importer;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    #@2
    .line 104
    return-void
.end method

.method setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V
    .locals 0
    .param p1, "sinkAlias"    # Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    #@2
    .line 96
    return-void
.end method

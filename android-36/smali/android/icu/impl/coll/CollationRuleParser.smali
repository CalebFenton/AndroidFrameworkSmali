.class public final Landroid/icu/impl/coll/CollationRuleParser;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationRuleParser$Sink;,
        Landroid/icu/impl/coll/CollationRuleParser$Importer;,
        Landroid/icu/impl/coll/CollationRuleParser$Position;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BEFORE:Ljava/lang/String; = "[before"

.field private static final blacklist OFFSET_SHIFT:I = 0x8

.field static final blacklist POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field static final blacklist POS_BASE:C = '\u2800'

.field static final blacklist POS_LEAD:C = '\ufffe'

.field private static final blacklist STARRED_FLAG:I = 0x10

.field private static final blacklist STRENGTH_MASK:I = 0xf

.field private static final blacklist UCOL_DEFAULT:I = -0x1

.field private static final blacklist UCOL_OFF:I = 0x0

.field private static final blacklist UCOL_ON:I = 0x1

.field private static final blacklist U_PARSE_CONTEXT_LEN:I = 0x10

.field private static final blacklist gSpecialReorderCodes:[Ljava/lang/String;

.field private static final blacklist positions:[Ljava/lang/String;


# instance fields
.field private final blacklist baseData:Landroid/icu/impl/coll/CollationData;

.field private blacklist importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

.field private blacklist nfc:Landroid/icu/text/Normalizer2;

.field private blacklist nfd:Landroid/icu/text/Normalizer2;

.field private final blacklist rawBuilder:Ljava/lang/StringBuilder;

.field private blacklist ruleIndex:I

.field private blacklist rules:Ljava/lang/String;

.field private blacklist settings:Landroid/icu/impl/coll/CollationSettings;

.field private blacklist sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 33
    nop

    .line 51
    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 479
    const-string v13, "first trailing"

    const-string v14, "last trailing"

    const-string v1, "first tertiary ignorable"

    const-string v2, "last tertiary ignorable"

    const-string v3, "first secondary ignorable"

    const-string v4, "last secondary ignorable"

    const-string v5, "first primary ignorable"

    const-string v6, "last primary ignorable"

    const-string v7, "first variable"

    const-string v8, "last variable"

    const-string v9, "first regular"

    const-string v10, "last regular"

    const-string v11, "first implicit"

    const-string v12, "last implicit"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    .line 737
    const-string v0, "currency"

    const-string v1, "digit"

    const-string v2, "space"

    const-string v3, "punct"

    const-string v4, "symbol"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;)V
    .registers 3
    .param p1, "base"    # Landroid/icu/impl/coll/CollationData;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    .line 909
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    .line 910
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    .line 95
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    .line 96
    return-void
.end method

.method private blacklist appendErrorContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 869
    const-string v1, " near \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v1, v1, -0xf

    .line 872
    .local v1, "start":I
    if-gez v1, :cond_1d

    .line 873
    const/4 v1, 0x0

    goto :goto_2d

    .line 874
    :cond_1d
    if-lez v1, :cond_2d

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 875
    add-int/lit8 v1, v1, 0x1

    .line 877
    :cond_2d
    :goto_2d
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 879
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int/2addr v2, v3

    .line 882
    .local v2, "length":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_5b

    .line 883
    const/16 v2, 0xf

    .line 884
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 885
    add-int/lit8 v2, v2, -0x1

    .line 888
    :cond_5b
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v5, v2

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 889
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getOnOffValue(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 767
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 768
    const/4 v0, 0x1

    return v0

    .line 769
    :cond_a
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 770
    const/4 v0, 0x0

    return v0

    .line 772
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getReorderCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "word"    # Ljava/lang/String;

    .line 747
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 748
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 749
    add-int/lit16 v1, v0, 0x1000

    return v1

    .line 747
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 753
    .end local v0    # "i":I
    :cond_16
    const/16 v0, 0x100a

    :try_start_18
    invoke-static {v0, p0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v0
    :try_end_1c
    .catch Landroid/icu/impl/IllegalIcuArgumentException; {:try_start_18 .. :try_end_1c} :catch_20

    .line 754
    .local v0, "script":I
    if-ltz v0, :cond_1f

    .line 755
    return v0

    .line 759
    .end local v0    # "script":I
    :cond_1f
    goto :goto_21

    .line 757
    :catch_20
    move-exception v0

    .line 760
    :goto_21
    const-string v0, "others"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 761
    const/16 v0, 0x67

    return v0

    .line 763
    :cond_2c
    const/4 v0, -0x1

    return v0
.end method

.method private static final blacklist isSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 476
    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist isSyntaxChar(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 897
    const/16 v0, 0x21

    if-gt v0, p0, :cond_22

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_22

    const/16 v0, 0x2f

    if-le p0, v0, :cond_20

    const/16 v0, 0x3a

    if-gt v0, p0, :cond_14

    const/16 v0, 0x40

    if-le p0, v0, :cond_20

    :cond_14
    const/16 v0, 0x5b

    if-gt v0, p0, :cond_1c

    const/16 v0, 0x60

    if-le p0, v0, :cond_20

    :cond_1c
    const/16 v0, 0x7b

    if-gt v0, p0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method private blacklist makeParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 855
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->appendErrorContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private blacklist parse(Ljava/lang/String;)V
    .registers 6
    .param p1, "ruleString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 138
    :goto_5
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 139
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 141
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 142
    goto :goto_5

    .line 144
    :cond_24
    sparse-switch v0, :sswitch_data_54

    .line 164
    const-string v1, "expected a reset or setting or comment"

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_52

    .line 149
    :sswitch_2d
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseSetting()V

    .line 150
    goto :goto_52

    .line 155
    :sswitch_31
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    const/16 v3, 0x800

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 156
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 157
    goto :goto_52

    .line 146
    :sswitch_3e
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRuleChain()V

    .line 147
    goto :goto_52

    .line 152
    :sswitch_42
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result v1

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 153
    goto :goto_52

    .line 161
    :sswitch_4c
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 162
    nop

    .line 167
    .end local v0    # "c":C
    :goto_52
    goto :goto_5

    .line 168
    :cond_53
    return-void

    :sswitch_data_54
    .sparse-switch
        0x21 -> :sswitch_4c
        0x23 -> :sswitch_42
        0x26 -> :sswitch_3e
        0x40 -> :sswitch_31
        0x5b -> :sswitch_2d
    .end sparse-switch
.end method

.method private blacklist parseRelationOperator()I
    .registers 6

    .line 248
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 249
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_14

    return v2

    .line 251
    :cond_14
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 252
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 253
    .local v0, "c":C
    const/16 v1, 0x2a

    sparse-switch v0, :sswitch_data_9c

    .line 290
    return v2

    .line 283
    :sswitch_24
    const/16 v2, 0xf

    .line 284
    .local v2, "strength":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_93

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_93

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 286
    or-int/lit8 v2, v2, 0x10

    goto :goto_93

    .line 255
    .end local v2    # "strength":I
    :sswitch_3b
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_79

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3c

    if-ne v2, v4, :cond_79

    .line 256
    add-int/lit8 v3, v3, 0x1

    .line 257
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_77

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_77

    .line 258
    add-int/lit8 v3, v3, 0x1

    .line 259
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_75

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_75

    .line 260
    add-int/lit8 v3, v3, 0x1

    .line 261
    const/4 v2, 0x3

    .restart local v2    # "strength":I
    goto :goto_7a

    .line 263
    .end local v2    # "strength":I
    :cond_75
    const/4 v2, 0x2

    .restart local v2    # "strength":I
    goto :goto_7a

    .line 266
    .end local v2    # "strength":I
    :cond_77
    const/4 v2, 0x1

    .restart local v2    # "strength":I
    goto :goto_7a

    .line 269
    .end local v2    # "strength":I
    :cond_79
    const/4 v2, 0x0

    .line 271
    .restart local v2    # "strength":I
    :goto_7a
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_93

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_93

    .line 272
    add-int/lit8 v3, v3, 0x1

    .line 273
    or-int/lit8 v2, v2, 0x10

    goto :goto_93

    .line 277
    .end local v2    # "strength":I
    :sswitch_8f
    const/4 v2, 0x1

    .line 278
    .restart local v2    # "strength":I
    goto :goto_93

    .line 280
    .end local v2    # "strength":I
    :sswitch_91
    const/4 v2, 0x2

    .line 281
    .restart local v2    # "strength":I
    nop

    .line 292
    :cond_93
    :goto_93
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    return v1

    nop

    :sswitch_data_9c
    .sparse-switch
        0x2c -> :sswitch_91
        0x3b -> :sswitch_8f
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_24
    .end sparse-switch
.end method

.method private blacklist parseRelationStrings(II)V
    .registers 9
    .param p1, "strength"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 299
    const-string v0, ""

    .line 300
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, ""

    .line 301
    .local v1, "extension":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 302
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge p2, v2, :cond_1a

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 303
    .local v2, "next":C
    :goto_1b
    const/16 v4, 0x7c

    if-ne v2, v4, :cond_3e

    .line 304
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    add-int/lit8 v4, p2, 0x1

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4, v5}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 306
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_3c

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3d

    :cond_3c
    move v4, v3

    :goto_3d
    move v2, v4

    .line 309
    :cond_3e
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_4e

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v4, "extBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v5, v4}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 312
    move-object v1, v4

    .line 314
    .end local v4    # "extBuilder":Ljava/lang/StringBuilder;
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_74

    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 316
    .local v4, "prefix0":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    .line 317
    .local v3, "c":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v4}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v3}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v5

    if-nez v5, :cond_74

    .line 318
    :cond_6e
    const-string v5, "in \'prefix|str\', prefix and str must each start with an NFC boundary"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 319
    return-void

    .line 323
    .end local v3    # "c":I
    .end local v4    # "prefix0":I
    :cond_74
    :try_start_74
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, v0, v4, v1}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_7f

    .line 327
    nop

    .line 328
    iput p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 329
    return-void

    .line 324
    :catch_7f
    move-exception v3

    .line 325
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "adding relation failed"

    invoke-direct {p0, v4, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 326
    return-void
.end method

.method private blacklist parseReordering(Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "raw"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 706
    const/4 v0, 0x7

    .line 707
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 709
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    .line 710
    return-void

    .line 713
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v1, "reorderCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_49

    .line 715
    add-int/lit8 v0, v0, 0x1

    .line 716
    move v2, v0

    .line 717
    .local v2, "limit":I
    :goto_1b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2c

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 718
    :cond_2c
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "word":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/impl/coll/CollationRuleParser;->getReorderCode(Ljava/lang/String;)I

    move-result v4

    .line 720
    .local v4, "code":I
    if-gez v4, :cond_40

    .line 721
    const-string v5, "unknown script or reorder code"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 722
    return-void

    .line 724
    :cond_40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    move v0, v2

    .line 726
    .end local v2    # "limit":I
    .end local v3    # "word":Ljava/lang/String;
    .end local v4    # "code":I
    goto :goto_12

    .line 727
    :cond_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 728
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_7d

    .line 730
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 731
    .local v2, "codes":[I
    const/4 v3, 0x0

    .line 732
    .local v3, "j":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "code":Ljava/lang/Integer;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .local v6, "j":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v3

    move v3, v6

    .end local v5    # "code":Ljava/lang/Integer;
    goto :goto_60

    .line 733
    .end local v6    # "j":I
    .restart local v3    # "j":I
    :cond_76
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v5, v2}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    .line 735
    .end local v2    # "codes":[I
    .end local v3    # "j":I
    :goto_7d
    return-void
.end method

.method private blacklist parseResetAndPosition()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 212
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    .line 216
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const-string v2, "[before"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    move v2, v1

    .local v2, "j":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_67

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_67

    add-int/lit8 v1, v2, 0x1

    .line 219
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v1

    move v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_67

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v3, v1

    .local v3, "c":C
    const/16 v5, 0x31

    if-gt v5, v1, :cond_67

    const/16 v1, 0x33

    if-gt v3, v1, :cond_67

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    .line 221
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5d

    if-ne v1, v5, :cond_67

    .line 223
    add-int/lit8 v1, v3, -0x31

    add-int/2addr v1, v4

    .line 224
    .local v1, "resetStrength":I
    add-int/lit8 v4, v2, 0x2

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    goto :goto_69

    .line 226
    .end local v1    # "resetStrength":I
    .end local v2    # "j":I
    .end local v3    # "c":C
    :cond_67
    const/16 v1, 0xf

    .line 228
    .restart local v1    # "resetStrength":I
    :goto_69
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-lt v0, v2, :cond_78

    .line 229
    const-string v2, "reset without position"

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 230
    return v3

    .line 232
    :cond_78
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_89

    .line 233
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseSpecialPosition(ILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_8f

    .line 235
    :cond_89
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result v0

    .line 238
    :goto_8f
    :try_start_8f
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v4}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addReset(ILjava/lang/CharSequence;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_96} :catch_9a

    .line 242
    nop

    .line 243
    iput v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 244
    return v1

    .line 239
    :catch_9a
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "adding reset failed"

    invoke-direct {p0, v4, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 241
    return v3
.end method

.method private blacklist parseRuleChain()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseResetAndPosition()I

    move-result v0

    .line 172
    .local v0, "resetStrength":I
    const/4 v1, 0x1

    .line 174
    .local v1, "isFirstRelation":Z
    :goto_5
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationOperator()I

    move-result v2

    .line 175
    .local v2, "result":I
    if-gez v2, :cond_34

    .line 176
    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2c

    .line 178
    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 179
    goto :goto_5

    .line 181
    :cond_2c
    if-eqz v1, :cond_33

    .line 182
    const-string v3, "reset not followed by a relation"

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 184
    :cond_33
    return-void

    .line 186
    :cond_34
    and-int/lit8 v3, v2, 0xf

    .line 187
    .local v3, "strength":I
    const/16 v4, 0xf

    if-ge v0, v4, :cond_4c

    .line 189
    if-eqz v1, :cond_44

    .line 190
    if-eq v3, v0, :cond_4c

    .line 191
    const-string v4, "reset-before strength differs from its first relation"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 192
    return-void

    .line 195
    :cond_44
    if-ge v3, v0, :cond_4c

    .line 196
    const-string v4, "reset-before strength followed by a stronger relation"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 197
    return-void

    .line 201
    :cond_4c
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    shr-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    .line 202
    .local v4, "i":I
    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_59

    .line 203
    invoke-direct {p0, v3, v4}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationStrings(II)V

    goto :goto_5c

    .line 205
    :cond_59
    invoke-direct {p0, v3, v4}, Landroid/icu/impl/coll/CollationRuleParser;->parseStarredCharacters(II)V

    .line 207
    :goto_5c
    const/4 v1, 0x0

    .line 208
    .end local v2    # "result":I
    .end local v3    # "strength":I
    .end local v4    # "i":I
    goto :goto_5
.end method

.method private blacklist parseSetting()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 527
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 528
    .local v0, "i":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v2

    .line 529
    .local v2, "j":I
    if-le v2, v0, :cond_14

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_19

    .line 530
    :cond_14
    const-string v3, "expected a setting/option at \'[\'"

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 533
    :cond_19
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "raw":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_214

    .line 535
    add-int/lit8 v2, v2, 0x1

    .line 536
    const-string v4, "reorder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_48

    .line 537
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x7

    if-eq v4, v6, :cond_42

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_48

    .line 538
    :cond_42
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->parseReordering(Ljava/lang/CharSequence;)V

    .line 539
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 540
    return-void

    .line 542
    :cond_48
    const-string v4, "backwards 2"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 543
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    const/16 v5, 0x800

    invoke-virtual {v4, v5, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 544
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 545
    return-void

    .line 548
    :cond_5a
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 549
    .local v4, "valueIndex":I
    const/4 v5, 0x0

    if-ltz v4, :cond_6c

    .line 550
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "v":Ljava/lang/String;
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_6e

    .line 553
    .end local v6    # "v":Ljava/lang/String;
    :cond_6c
    const-string v6, ""

    .line 555
    .restart local v6    # "v":Ljava/lang/String;
    :goto_6e
    const-string v7, "strength"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_a1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_a1

    .line 556
    const/4 v1, -0x1

    .line 557
    .local v1, "value":I
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 558
    .local v7, "c":C
    const/16 v9, 0x31

    if-gt v9, v7, :cond_8f

    const/16 v9, 0x34

    if-gt v7, v9, :cond_8f

    .line 559
    add-int/lit8 v9, v7, -0x31

    add-int/lit8 v1, v9, 0x0

    goto :goto_95

    .line 560
    :cond_8f
    const/16 v5, 0x49

    if-ne v7, v5, :cond_95

    .line 561
    const/16 v1, 0xf

    .line 563
    :cond_95
    :goto_95
    if-eq v1, v8, :cond_9f

    .line 564
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 565
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 566
    return-void

    .line 568
    .end local v1    # "value":I
    .end local v7    # "c":C
    :cond_9f
    goto/16 :goto_255

    :cond_a1
    const-string v7, "alternate"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 569
    const/4 v7, -0x1

    .line 570
    .local v7, "value":I
    const-string v9, "non-ignorable"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 571
    const/4 v7, 0x0

    goto :goto_bd

    .line 572
    :cond_b4
    const-string v9, "shifted"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 573
    const/4 v7, 0x1

    .line 575
    :cond_bd
    :goto_bd
    if-eq v7, v8, :cond_cb

    .line 576
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v7, :cond_c4

    goto :goto_c5

    :cond_c4
    move v1, v5

    :goto_c5
    invoke-virtual {v8, v1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 577
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 578
    return-void

    .line 580
    .end local v7    # "value":I
    :cond_cb
    goto/16 :goto_255

    :cond_cd
    const-string v7, "maxVariable"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_116

    .line 581
    const/4 v1, -0x1

    .line 582
    .restart local v1    # "value":I
    const-string v7, "space"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 583
    const/4 v1, 0x0

    goto :goto_fd

    .line 584
    :cond_e0
    const-string v7, "punct"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ea

    .line 585
    const/4 v1, 0x1

    goto :goto_fd

    .line 586
    :cond_ea
    const-string v7, "symbol"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 587
    const/4 v1, 0x2

    goto :goto_fd

    .line 588
    :cond_f4
    const-string v7, "currency"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 589
    const/4 v1, 0x3

    .line 591
    :cond_fd
    :goto_fd
    if-eq v1, v8, :cond_114

    .line 592
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v7, v1, v5}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 593
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    add-int/lit16 v8, v1, 0x1000

    invoke-virtual {v7, v8}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 595
    nop

    .line 596
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 597
    return-void

    .line 599
    .end local v1    # "value":I
    :cond_114
    goto/16 :goto_255

    :cond_116
    const-string v7, "caseFirst"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14a

    .line 600
    const/4 v1, -0x1

    .line 601
    .restart local v1    # "value":I
    const-string v5, "off"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 602
    const/4 v1, 0x0

    goto :goto_13e

    .line 603
    :cond_129
    const-string v5, "lower"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_134

    .line 604
    const/16 v1, 0x200

    goto :goto_13e

    .line 605
    :cond_134
    const-string v5, "upper"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13e

    .line 606
    const/16 v1, 0x300

    .line 608
    :cond_13e
    :goto_13e
    if-eq v1, v8, :cond_148

    .line 609
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 610
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 611
    return-void

    .line 613
    .end local v1    # "value":I
    :cond_148
    goto/16 :goto_255

    :cond_14a
    const-string v7, "caseLevel"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_168

    .line 614
    invoke-static {v6}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v7

    .line 615
    .restart local v7    # "value":I
    if-eq v7, v8, :cond_166

    .line 616
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v7, :cond_15d

    goto :goto_15e

    :cond_15d
    move v1, v5

    :goto_15e
    const/16 v5, 0x400

    invoke-virtual {v8, v5, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 617
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 618
    return-void

    .line 620
    .end local v7    # "value":I
    :cond_166
    goto/16 :goto_255

    :cond_168
    const-string v7, "normalization"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_183

    .line 621
    invoke-static {v6}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v7

    .line 622
    .restart local v7    # "value":I
    if-eq v7, v8, :cond_181

    .line 623
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v7, :cond_17b

    move v5, v1

    :cond_17b
    invoke-virtual {v8, v1, v5}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 624
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 625
    return-void

    .line 627
    .end local v7    # "value":I
    :cond_181
    goto/16 :goto_255

    :cond_183
    const-string v7, "numericOrdering"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    .line 628
    invoke-static {v6}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v7

    .line 629
    .restart local v7    # "value":I
    if-eq v7, v8, :cond_19e

    .line 630
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v7, :cond_196

    goto :goto_197

    :cond_196
    move v1, v5

    :goto_197
    const/4 v5, 0x2

    invoke-virtual {v8, v5, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 631
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 632
    return-void

    .line 634
    .end local v7    # "value":I
    :cond_19e
    goto/16 :goto_255

    :cond_1a0
    const-string v5, "hiraganaQ"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 635
    invoke-static {v6}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v5

    .line 636
    .local v5, "value":I
    if-eq v5, v8, :cond_1b8

    .line 637
    if-ne v5, v1, :cond_1b5

    .line 638
    const-string v1, "[hiraganaQ on] is not supported"

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 640
    :cond_1b5
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 641
    return-void

    .line 636
    .end local v5    # "value":I
    :cond_1b8
    goto :goto_213

    .line 643
    :cond_1b9
    const-string v1, "import"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 647
    :try_start_1c1
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v1, v6}, Landroid/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v1
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1ce} :catch_20c

    .line 651
    .local v1, "localeID":Landroid/icu/util/ULocale;
    nop

    .line 653
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "baseID":Ljava/lang/String;
    const-string v7, "collation"

    invoke-virtual {v1, v7}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 656
    .local v7, "collationType":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    if-nez v8, :cond_1e3

    .line 657
    const-string v8, "[import langTag] is not supported"

    invoke-direct {p0, v8}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_204

    .line 661
    :cond_1e3
    :try_start_1e3
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    .line 663
    if-eqz v7, :cond_1e9

    move-object v9, v7

    goto :goto_1eb

    :cond_1e9
    const-string v9, "standard"

    .line 662
    :goto_1eb
    invoke-interface {v8, v5, v9}, Landroid/icu/impl/coll/CollationRuleParser$Importer;->getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1ef} :catch_205

    .line 667
    .local v8, "importedRules":Ljava/lang/String;
    nop

    .line 668
    iget-object v9, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 669
    .local v9, "outerRules":Ljava/lang/String;
    iget v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 671
    .local v10, "outerRuleIndex":I
    :try_start_1f4
    invoke-direct {p0, v8}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1f7} :catch_1f8

    .line 675
    goto :goto_200

    .line 672
    :catch_1f8
    move-exception v11

    .line 673
    .local v11, "e":Ljava/lang/Exception;
    iput v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 674
    const-string v12, "parsing imported rules failed"

    invoke-direct {p0, v12, v11}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 676
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_200
    iput-object v9, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 677
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 679
    .end local v8    # "importedRules":Ljava/lang/String;
    .end local v9    # "outerRules":Ljava/lang/String;
    .end local v10    # "outerRuleIndex":I
    :goto_204
    return-void

    .line 664
    :catch_205
    move-exception v8

    .line 665
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "[import langTag] failed"

    invoke-direct {p0, v9, v8}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 666
    return-void

    .line 648
    .end local v1    # "localeID":Landroid/icu/util/ULocale;
    .end local v5    # "baseID":Ljava/lang/String;
    .end local v7    # "collationType":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_20c
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "expected language tag in [import langTag]"

    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 650
    return-void

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_213
    :goto_213
    goto :goto_255

    .line 681
    .end local v4    # "valueIndex":I
    .end local v6    # "v":Ljava/lang/String;
    :cond_214
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_255

    .line 682
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 683
    .local v1, "set":Landroid/icu/text/UnicodeSet;
    invoke-direct {p0, v2, v1}, Landroid/icu/impl/coll/CollationRuleParser;->parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I

    move-result v2

    .line 684
    const-string v4, "optimize"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23e

    .line 686
    :try_start_22f
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-virtual {v4, v1}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->optimize(Landroid/icu/text/UnicodeSet;)V
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_234} :catch_235

    .line 689
    goto :goto_23b

    .line 687
    :catch_235
    move-exception v4

    .line 688
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "[optimize set] failed"

    invoke-direct {p0, v5, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 690
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_23b
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 691
    return-void

    .line 692
    :cond_23e
    const-string v4, "suppressContractions"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_256

    .line 694
    :try_start_246
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-virtual {v4, v1}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->suppressContractions(Landroid/icu/text/UnicodeSet;)V
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_24b} :catch_24c

    .line 697
    goto :goto_252

    .line 695
    :catch_24c
    move-exception v4

    .line 696
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v5, "[suppressContractions set] failed"

    invoke-direct {p0, v5, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 698
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_252
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 699
    return-void

    .line 681
    .end local v1    # "set":Landroid/icu/text/UnicodeSet;
    :cond_255
    :goto_255
    nop

    .line 702
    :cond_256
    const-string v1, "not a valid setting/option"

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method private blacklist parseSpecialPosition(ILjava/lang/StringBuilder;)I
    .registers 8
    .param p1, "i"    # I
    .param p2, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 502
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v0

    .line 503
    .local v0, "j":I
    if-le v0, p1, :cond_7b

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_7b

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7b

    .line 504
    add-int/lit8 v0, v0, 0x1

    .line 505
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 507
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_29
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    array-length v3, v3

    const v4, 0xfffe

    if-ge v2, v3, :cond_49

    .line 508
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 509
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, v2, 0x2800

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    return v0

    .line 507
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 513
    .end local v2    # "pos":I
    :cond_49
    const-string v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 514
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result v3

    add-int/lit16 v3, v3, 0x2800

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    return v0

    .line 517
    :cond_62
    const-string v2, "variable top"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 518
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result v3

    add-int/lit16 v3, v3, 0x2800

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    return v0

    .line 522
    .end local v1    # "raw":Ljava/lang/String;
    :cond_7b
    const-string v1, "not a valid special reset position"

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 523
    return p1
.end method

.method private blacklist parseStarredCharacters(II)V
    .registers 10
    .param p1, "strength"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 332
    const-string v0, ""

    .line 333
    .local v0, "empty":Ljava/lang/String;
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 334
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 335
    const-string v1, "missing starred-relation string"

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 336
    return-void

    .line 338
    :cond_1a
    const/4 v1, -0x1

    .line 339
    .local v1, "prev":I
    const/4 v2, 0x0

    .line 341
    .local v2, "j":I
    :goto_1c
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "adding relation failed"

    if-ge v2, v3, :cond_50

    .line 342
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    .line 343
    .local v3, "c":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v3}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 344
    const-string v4, "starred-relation string is not all NFD-inert"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 345
    return-void

    .line 348
    :cond_3a
    :try_start_3a
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v0, v6, v0}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_4b

    .line 352
    nop

    .line 353
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 354
    move v1, v3

    .line 355
    .end local v3    # "c":I
    goto :goto_1c

    .line 349
    .restart local v3    # "c":I
    :catch_4b
    move-exception v5

    .line 350
    .local v5, "e":Ljava/lang/Exception;
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 351
    return-void

    .line 356
    .end local v3    # "c":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_50
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_d4

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_63

    .line 357
    goto :goto_d4

    .line 359
    :cond_63
    if-gez v1, :cond_6b

    .line 360
    const-string v3, "range without start in starred-relation string"

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 361
    return-void

    .line 363
    :cond_6b
    add-int/lit8 v3, p2, 0x1

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v5}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 364
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_81

    .line 365
    const-string v3, "range without end in starred-relation string"

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 366
    return-void

    .line 368
    :cond_81
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    .line 369
    .restart local v3    # "c":I
    if-ge v3, v1, :cond_90

    .line 370
    const-string v4, "range start greater than end in starred-relation string"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 371
    return-void

    .line 374
    :cond_90
    :goto_90
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v3, :cond_cd

    .line 375
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v1}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 376
    const-string v4, "starred-relation string range is not all NFD-inert"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 377
    return-void

    .line 379
    :cond_a2
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 380
    const-string v4, "starred-relation string range contains a surrogate"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 381
    return-void

    .line 383
    :cond_ae
    const v5, 0xfffd

    if-gt v5, v1, :cond_be

    const v5, 0xffff

    if-gt v1, v5, :cond_be

    .line 384
    const-string v4, "starred-relation string range contains U+FFFD, U+FFFE or U+FFFF"

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 385
    return-void

    .line 388
    :cond_be
    :try_start_be
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v0, v6, v0}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c7} :catch_c8

    .line 392
    goto :goto_90

    .line 389
    :catch_c8
    move-exception v5

    .line 390
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 391
    return-void

    .line 394
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_cd
    const/4 v1, -0x1

    .line 395
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .line 396
    .end local v3    # "c":I
    goto/16 :goto_1c

    .line 397
    :cond_d4
    :goto_d4
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 398
    return-void
.end method

.method private blacklist parseString(ILjava/lang/StringBuilder;)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "raw"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    :goto_4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_9e

    .line 411
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 412
    .local p1, "c":C
    invoke-static {p1}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 413
    const/16 v0, 0x27

    if-ne p1, v0, :cond_68

    .line 414
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_35

    .line 416
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v0, v1, 0x1

    .line 418
    .end local v1    # "i":I
    .local v0, "i":I
    move p1, v0

    goto :goto_4

    .line 422
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_35
    :goto_35
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_43

    .line 423
    const-string v0, "quoted literal text missing terminating apostrophe"

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 424
    return v1

    .line 426
    :cond_43
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 427
    if-ne p1, v0, :cond_63

    .line 428
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_61

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_61

    .line 431
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_64

    .line 458
    .end local p1    # "c":C
    :cond_61
    move p1, v3

    goto :goto_9c

    .line 427
    .restart local p1    # "c":C
    :cond_63
    move v1, v3

    .line 436
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :goto_64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 438
    :cond_68
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_8a

    .line 439
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_7a

    .line 440
    const-string v0, "backslash escape at the end of the rule string"

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 441
    return v1

    .line 443
    :cond_7a
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 444
    .local v0, "cp":I
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 446
    .end local v0    # "cp":I
    move p1, v1

    goto :goto_9c

    .line 448
    :cond_8a
    add-int/lit8 v0, v1, -0x1

    .line 449
    .end local v1    # "i":I
    .local v0, "i":I
    move p1, v0

    goto :goto_9e

    .line 451
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_8e
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 453
    add-int/lit8 v0, v1, -0x1

    .line 454
    .end local v1    # "i":I
    .restart local v0    # "i":I
    move p1, v0

    goto :goto_9e

    .line 456
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    .line 458
    .end local v1    # "i":I
    .local p1, "i":I
    :goto_9c
    goto/16 :goto_4

    .line 459
    :cond_9e
    :goto_9e
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_9f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_cb

    .line 460
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v1

    .line 461
    .local v1, "c":I
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 462
    const-string v2, "string contains an unpaired surrogate"

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 463
    return p1

    .line 465
    :cond_b5
    const v2, 0xfffd

    if-gt v2, v1, :cond_c5

    const v2, 0xffff

    if-gt v1, v2, :cond_c5

    .line 466
    const-string v2, "string contains U+FFFD, U+FFFE or U+FFFF"

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 467
    return p1

    .line 469
    :cond_c5
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    .end local v1    # "c":I
    goto :goto_9f

    .line 471
    .end local v0    # "j":I
    :cond_cb
    return p1
.end method

.method private blacklist parseTailoringString(ILjava/lang/StringBuilder;)I
    .registers 4
    .param p1, "i"    # I
    .param p2, "raw"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p1

    .line 402
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 403
    const-string v0, "missing relation string"

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 405
    :cond_13
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    return v0
.end method

.method private blacklist parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I
    .registers 9
    .param p1, "i"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "level":I
    move v1, p1

    .line 781
    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_10

    .line 782
    const-string v2, "unbalanced UnicodeSet pattern brackets"

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 783
    return v1

    .line 785
    :cond_10
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 786
    .local v1, "c":C
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1f

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 788
    :cond_1f
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_6a

    .line 789
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_6a

    .line 793
    .end local v1    # "c":C
    :try_start_27
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_31

    .line 796
    goto :goto_4c

    .line 794
    :catch_31
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not a valid UnicodeSet pattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 797
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4c
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v1

    .line 798
    .end local v3    # "j":I
    .local v1, "j":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_64

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_61

    goto :goto_64

    .line 802
    :cond_61
    add-int/lit8 v1, v1, 0x1

    return v1

    .line 799
    :cond_64
    :goto_64
    const-string v2, "missing option-terminating \']\' after UnicodeSet pattern"

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 800
    return v1

    .line 791
    .end local v1    # "j":I
    .restart local v3    # "j":I
    :cond_6a
    :goto_6a
    move v1, v3

    goto :goto_2
.end method

.method private blacklist readWords(ILjava/lang/StringBuilder;)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "raw"    # Ljava/lang/StringBuilder;

    .line 806
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 807
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    .line 809
    :goto_8
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_11

    return v0

    .line 810
    :cond_11
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 811
    .local v1, "c":C
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_3e

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3e

    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2e

    return p1

    .line 813
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 814
    .local v0, "lastIndex":I
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 815
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 817
    :cond_3d
    return p1

    .line 819
    .end local v0    # "lastIndex":I
    :cond_3e
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 820
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    goto :goto_53

    .line 823
    :cond_4e
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 824
    add-int/lit8 p1, p1, 0x1

    .line 826
    .end local v1    # "c":C
    :goto_53
    goto :goto_8
.end method

.method private blacklist setParseError(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 845
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
.end method

.method private blacklist setParseError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    .line 850
    .local v0, "newExc":Ljava/text/ParseException;
    invoke-virtual {v0, p2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 851
    throw v0
.end method

.method private blacklist skipComment(I)I
    .registers 4
    .param p1, "i"    # I

    .line 831
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2d

    .line 832
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 834
    .local p1, "c":C
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x85

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x2029

    if-ne p1, v0, :cond_2a

    .line 838
    goto :goto_2c

    .line 840
    .end local p1    # "c":C
    :cond_2a
    move p1, v1

    goto :goto_1

    .line 841
    :cond_2c
    :goto_2c
    move p1, v1

    .end local v1    # "i":I
    .local p1, "i":I
    :cond_2d
    return p1
.end method

.method private blacklist skipWhiteSpace(I)I
    .registers 3
    .param p1, "i"    # I

    .line 903
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_18

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 904
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 906
    :cond_18
    return p1
.end method


# virtual methods
.method blacklist parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V
    .registers 3
    .param p1, "ruleString"    # Ljava/lang/String;
    .param p2, "outSettings"    # Landroid/icu/impl/coll/CollationSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 115
    iput-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    .line 116
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method blacklist setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V
    .registers 2
    .param p1, "importerAlias"    # Landroid/icu/impl/coll/CollationRuleParser$Importer;

    .line 111
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    .line 112
    return-void
.end method

.method blacklist setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V
    .registers 2
    .param p1, "sinkAlias"    # Landroid/icu/impl/coll/CollationRuleParser$Sink;

    .line 103
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    .line 104
    return-void
.end method

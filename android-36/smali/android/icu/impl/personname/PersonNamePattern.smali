.class Landroid/icu/impl/personname/PersonNamePattern;
.super Ljava/lang/Object;
.source "PersonNamePattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/personname/PersonNamePattern$LiteralText;,
        Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;,
        Landroid/icu/impl/personname/PersonNamePattern$Element;,
        Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;
    }
.end annotation


# instance fields
.field private blacklist patternElements:[Landroid/icu/impl/personname/PersonNamePattern$Element;

.field private blacklist patternText:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)V
    .registers 11
    .param p1, "patternText"    # Ljava/lang/String;
    .param p2, "formatterImpl"    # Landroid/icu/impl/personname/PersonNameFormatterImpl;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternText:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/personname/PersonNamePattern$Element;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, "inField":Z
    const/4 v2, 0x0

    .line 44
    .local v2, "inEscape":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v3, "workingString":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7f

    .line 46
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 48
    .local v5, "c":C
    if-eqz v2, :cond_23

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    const/4 v2, 0x0

    goto :goto_7c

    .line 52
    :cond_23
    sparse-switch v5, :sswitch_data_9e

    .line 81
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 68
    :sswitch_2a
    if-eqz v1, :cond_4e

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_46

    .line 70
    new-instance v6, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p2}, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;-><init>(Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .end local v3    # "workingString":Ljava/lang/StringBuilder;
    .local v6, "workingString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move-object v3, v6

    goto :goto_7c

    .line 73
    .end local v6    # "workingString":Ljava/lang/StringBuilder;
    .restart local v3    # "workingString":Ljava/lang/StringBuilder;
    :cond_46
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No field name inside braces"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_4e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unmatched closing brace in literal text"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :sswitch_56
    if-nez v1, :cond_72

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_70

    .line 59
    new-instance v6, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v6

    .line 62
    :cond_70
    const/4 v1, 0x1

    goto :goto_7c

    .line 64
    :cond_72
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Nested braces are not allowed in name patterns"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :sswitch_7a
    const/4 v2, 0x1

    .line 55
    nop

    .line 45
    .end local v5    # "c":C
    :goto_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 85
    .end local v4    # "i":I
    :cond_7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_91

    .line 86
    new-instance v4, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_91
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/icu/impl/personname/PersonNamePattern$Element;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/icu/impl/personname/PersonNamePattern$Element;

    iput-object v4, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternElements:[Landroid/icu/impl/personname/PersonNamePattern$Element;

    .line 89
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        0x5c -> :sswitch_7a
        0x7b -> :sswitch_56
        0x7d -> :sswitch_2a
    .end sparse-switch
.end method

.method private blacklist coalesce(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p1, "s1"    # Ljava/lang/StringBuilder;
    .param p2, "s2"    # Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/personname/PersonNamePattern;->endsWith(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 179
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    :cond_a
    const/4 v0, 0x0

    .line 184
    .local v0, "p1":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 189
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 190
    .local v2, "p2":I
    :goto_24
    if-ltz v2, :cond_33

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_33

    .line 191
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 196
    :cond_33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 198
    :cond_3c
    if-ltz v2, :cond_40

    .line 199
    add-int/lit8 v2, v2, -0x1

    .line 203
    :cond_40
    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    return-object v3
.end method

.method private blacklist endsWith(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .registers 8
    .param p1, "s1"    # Ljava/lang/StringBuilder;
    .param p2, "s2"    # Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 217
    .local v0, "p1":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 219
    .local v2, "p2":I
    :goto_b
    if-ltz v0, :cond_1e

    if-ltz v2, :cond_1e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1e

    .line 220
    add-int/lit8 v0, v0, -0x1

    .line 221
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 223
    :cond_1e
    if-gez v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method private blacklist hackNameForEmptyFields(Landroid/icu/text/PersonName;)Landroid/icu/text/PersonName;
    .registers 10
    .param p1, "originalName"    # Landroid/icu/text/PersonName;

    .line 233
    move-object v0, p1

    .line 234
    .local v0, "result":Landroid/icu/text/PersonName;
    sget-object v1, Landroid/icu/text/PersonName$NameField;->SURNAME:Landroid/icu/text/PersonName$NameField;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/icu/text/PersonName;->getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_43

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "patternHasNonInitialGivenName":Z
    iget-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternElements:[Landroid/icu/impl/personname/PersonNamePattern$Element;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_3b

    aget-object v5, v2, v4

    .line 237
    .local v5, "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    invoke-interface {v5}, Landroid/icu/impl/personname/PersonNamePattern$Element;->isLiteral()Z

    move-result v6

    if-nez v6, :cond_38

    move-object v6, v5

    check-cast v6, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;

    invoke-static {v6}, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->-$$Nest$fgetfieldID(Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;)Landroid/icu/text/PersonName$NameField;

    move-result-object v6

    sget-object v7, Landroid/icu/text/PersonName$NameField;->GIVEN:Landroid/icu/text/PersonName$NameField;

    if-ne v6, v7, :cond_38

    move-object v6, v5

    check-cast v6, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;

    invoke-static {v6}, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->-$$Nest$fgetmodifiers(Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Landroid/icu/text/PersonName$FieldModifier;->INITIAL:Landroid/icu/text/PersonName$FieldModifier;

    .line 239
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 240
    const/4 v1, 0x1

    .line 241
    goto :goto_3b

    .line 236
    .end local v5    # "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 244
    :cond_3b
    :goto_3b
    if-nez v1, :cond_43

    .line 245
    new-instance v2, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;

    invoke-direct {v2, p1}, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;-><init>(Landroid/icu/text/PersonName;)V

    return-object v2

    .line 248
    .end local v1    # "patternHasNonInitialGivenName":Z
    :cond_43
    return-object v0
.end method

.method public static blacklist makePatterns([Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)[Landroid/icu/impl/personname/PersonNamePattern;
    .registers 6
    .param p0, "patternText"    # [Ljava/lang/String;
    .param p1, "formatterImpl"    # Landroid/icu/impl/personname/PersonNameFormatterImpl;

    .line 26
    array-length v0, p0

    new-array v0, v0, [Landroid/icu/impl/personname/PersonNamePattern;

    .line 27
    .local v0, "result":[Landroid/icu/impl/personname/PersonNamePattern;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 28
    new-instance v2, Landroid/icu/impl/personname/PersonNamePattern;

    aget-object v3, p0, v1

    invoke-direct {v2, v3, p1}, Landroid/icu/impl/personname/PersonNamePattern;-><init>(Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)V

    aput-object v2, v0, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 30
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method


# virtual methods
.method public blacklist format(Landroid/icu/text/PersonName;)Ljava/lang/String;
    .registers 15
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 94
    .local v1, "seenLeadingField":Z
    const/4 v2, 0x0

    .line 95
    .local v2, "seenEmptyLeadingField":Z
    const/4 v3, 0x0

    .line 96
    .local v3, "seenEmptyField":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, "textBefore":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v5, "textAfter":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/icu/impl/personname/PersonNamePattern;->hackNameForEmptyFields(Landroid/icu/text/PersonName;)Landroid/icu/text/PersonName;

    move-result-object p1

    .line 113
    iget-object v6, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternElements:[Landroid/icu/impl/personname/PersonNamePattern$Element;

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_1b
    if-ge v9, v7, :cond_73

    aget-object v10, v6, v9

    .line 114
    .local v10, "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    invoke-interface {v10}, Landroid/icu/impl/personname/PersonNamePattern$Element;->isLiteral()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 115
    if-eqz v2, :cond_28

    goto :goto_70

    .line 117
    :cond_28
    if-eqz v3, :cond_32

    .line 118
    invoke-interface {v10, p1}, Landroid/icu/impl/personname/PersonNamePattern$Element;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 120
    :cond_32
    invoke-interface {v10, p1}, Landroid/icu/impl/personname/PersonNamePattern$Element;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 123
    :cond_3a
    invoke-interface {v10, p1}, Landroid/icu/impl/personname/PersonNamePattern$Element;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "fieldText":Ljava/lang/String;
    if-eqz v11, :cond_65

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_47

    goto :goto_65

    .line 133
    :cond_47
    const/4 v1, 0x1

    .line 134
    const/4 v2, 0x0

    .line 135
    if-eqz v3, :cond_57

    .line 136
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/personname/PersonNamePattern;->coalesce(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/4 v3, 0x0

    goto :goto_70

    .line 140
    :cond_57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 142
    invoke-interface {v10, p1}, Landroid/icu/impl/personname/PersonNamePattern$Element;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 125
    :cond_65
    :goto_65
    if-nez v1, :cond_6c

    .line 126
    const/4 v2, 0x1

    .line 127
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_70

    .line 129
    :cond_6c
    const/4 v3, 0x1

    .line 130
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    .end local v10    # "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    .end local v11    # "fieldText":Ljava/lang/String;
    :goto_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 147
    :cond_73
    if-nez v3, :cond_78

    .line 148
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public blacklist numEmptyFields(Landroid/icu/text/PersonName;)I
    .registers 9
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternElements:[Landroid/icu/impl/personname/PersonNamePattern$Element;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_1d

    aget-object v5, v1, v4

    .line 164
    .local v5, "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    invoke-interface {v5}, Landroid/icu/impl/personname/PersonNamePattern$Element;->isLiteral()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-interface {v5, p1}, Landroid/icu/impl/personname/PersonNamePattern$Element;->isPopulated(Landroid/icu/text/PersonName;)Z

    move-result v6

    if-nez v6, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    move v6, v3

    :goto_19
    add-int/2addr v0, v6

    .line 163
    .end local v5    # "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 166
    :cond_1d
    return v0
.end method

.method public blacklist numPopulatedFields(Landroid/icu/text/PersonName;)I
    .registers 8
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternElements:[Landroid/icu/impl/personname/PersonNamePattern$Element;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 156
    .local v4, "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    invoke-interface {v4, p1}, Landroid/icu/impl/personname/PersonNamePattern$Element;->isPopulated(Landroid/icu/text/PersonName;)Z

    move-result v5

    add-int/2addr v0, v5

    .line 155
    .end local v4    # "element":Landroid/icu/impl/personname/PersonNamePattern$Element;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 158
    :cond_11
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern;->patternText:Ljava/lang/String;

    return-object v0
.end method

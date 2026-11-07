.class Ljava/lang/CaseMapper;
.super Ljava/lang/Object;
.source "CaseMapper.java"


# static fields
.field private static final blacklist EL_UPPER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GREEK_CAPITAL_SIGMA:C = '\u03a3'

.field private static final blacklist GREEK_SMALL_FINAL_SIGMA:C = '\u03c2'

.field private static final blacklist LATIN_CAPITAL_I_WITH_DOT:C = '\u0130'

.field private static final blacklist upperValues:[C

.field private static final blacklist upperValues2:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const-string v0, "SS\u0000\u02bcN\u0000J\u030c\u0000\u0399\u0308\u0301\u03a5\u0308\u0301\u0535\u0552\u0000H\u0331\u0000T\u0308\u0000W\u030a\u0000Y\u030a\u0000A\u02be\u0000\u03a5\u0313\u0000\u03a5\u0313\u0300\u03a5\u0313\u0301\u03a5\u0313\u0342\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1fba\u0399\u0000\u0391\u0399\u0000\u0386\u0399\u0000\u0391\u0342\u0000\u0391\u0342\u0399\u0391\u0399\u0000\u1fca\u0399\u0000\u0397\u0399\u0000\u0389\u0399\u0000\u0397\u0342\u0000\u0397\u0342\u0399\u0397\u0399\u0000\u0399\u0308\u0300\u0399\u0308\u0301\u0399\u0342\u0000\u0399\u0308\u0342\u03a5\u0308\u0300\u03a5\u0308\u0301\u03a1\u0313\u0000\u03a5\u0342\u0000\u03a5\u0308\u0342\u1ffa\u0399\u0000\u03a9\u0399\u0000\u038f\u0399\u0000\u03a9\u0342\u0000\u03a9\u0342\u0399\u03a9\u0399\u0000FF\u0000FI\u0000FL\u0000FFIFFLST\u0000ST\u0000\u0544\u0546\u0000\u0544\u0535\u0000\u0544\u053b\u0000\u054e\u0546\u0000\u0544\u053d\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    .line 28
    const-string v0, "\u000b\u0000\u000c\u0000\r\u0000\u000e\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>\u0000\u0000?@A\u0000BC\u0000\u0000\u0000\u0000D\u0000\u0000\u0000\u0000\u0000EFG\u0000HI\u0000\u0000\u0000\u0000J\u0000\u0000\u0000\u0000\u0000KL\u0000\u0000MN\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000OPQ\u0000RS\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000TUV\u0000WX\u0000\u0000\u0000\u0000Y"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues2:[C

    .line 140
    new-instance v0, Ljava/lang/CaseMapper$1;

    invoke-direct {v0}, Ljava/lang/CaseMapper$1;-><init>()V

    sput-object v0, Ljava/lang/CaseMapper;->EL_UPPER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static blacklist isFinalSigma(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 84
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 85
    return v0

    .line 87
    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 88
    .local v1, "previous":C
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 89
    return v0

    .line 91
    :cond_1d
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_27

    .line 92
    return v4

    .line 94
    :cond_27
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 95
    .local v2, "next":C
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    .line 98
    :cond_40
    return v4

    .line 96
    :cond_41
    :goto_41
    return v0
.end method

.method public static blacklist toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "s"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "languageCode":Ljava/lang/String;
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_63

    .line 53
    :cond_1d
    const/4 v1, 0x0

    .line 54
    .local v1, "newValue":[C
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "end":I
    :goto_23
    if-ge v2, v3, :cond_59

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 57
    .local v4, "ch":C
    const/16 v5, 0x130

    if-eq v4, v5, :cond_54

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_54

    .line 60
    :cond_34
    const/16 v5, 0x3a3

    if-ne v4, v5, :cond_41

    invoke-static {p1, v2}, Ljava/lang/CaseMapper;->isFinalSigma(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 61
    const/16 v5, 0x3c2

    .local v5, "newCh":C
    goto :goto_45

    .line 63
    .end local v5    # "newCh":C
    :cond_41
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 65
    .restart local v5    # "newCh":C
    :goto_45
    if-eq v4, v5, :cond_51

    .line 66
    if-nez v1, :cond_4f

    .line 67
    new-array v1, v3, [C

    .line 68
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v1, v6}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 70
    :cond_4f
    aput-char v5, v1, v2

    .line 54
    .end local v4    # "ch":C
    .end local v5    # "newCh":C
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 59
    .restart local v4    # "ch":C
    :cond_54
    :goto_54
    invoke-static {p1, p0}, Lcom/android/icu/util/CaseMapperNative;->toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 73
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "ch":C
    :cond_59
    if-eqz v1, :cond_61

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_62

    :cond_61
    move-object v2, p1

    :goto_62
    return-object v2

    .line 50
    .end local v1    # "newValue":[C
    :cond_63
    :goto_63
    invoke-static {p1, p0}, Lcom/android/icu/util/CaseMapperNative;->toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 147
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "languageCode":Ljava/lang/String;
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dc

    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dc

    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_dc

    .line 151
    :cond_1e
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 152
    sget-object v1, Ljava/lang/CaseMapper;->EL_UPPER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Transliterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    :cond_33
    const/4 v1, 0x0

    .line 156
    .local v1, "output":[C
    const/4 v2, 0x0

    .line 157
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "o":I
    :goto_36
    const/4 v4, 0x0

    if-ge v3, p2, :cond_c3

    .line 158
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 159
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 160
    invoke-static {p1, p0}, Lcom/android/icu/util/CaseMapperNative;->toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 162
    :cond_48
    invoke-static {v5}, Ljava/lang/CaseMapper;->upperIndex(I)I

    move-result v6

    .line 163
    .local v6, "index":I
    const/4 v7, -0x1

    const/4 v8, 0x2

    if-ne v6, v7, :cond_7b

    .line 164
    if-eqz v1, :cond_61

    array-length v7, v1

    if-lt v2, v7, :cond_61

    .line 165
    array-length v7, v1

    div-int/lit8 v9, p2, 0x6

    add-int/2addr v7, v9

    add-int/2addr v7, v8

    new-array v7, v7, [C

    .line 166
    .local v7, "newoutput":[C
    array-length v8, v1

    invoke-static {v1, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    move-object v1, v7

    .line 169
    .end local v7    # "newoutput":[C
    :cond_61
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 170
    .local v7, "upch":C
    if-eqz v1, :cond_6d

    .line 171
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aput-char v7, v1, v2

    move v2, v4

    goto :goto_7a

    .line 172
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_6d
    if-eq v5, v7, :cond_7a

    .line 173
    new-array v1, p2, [C

    .line 174
    move v2, v3

    .line 175
    invoke-virtual {p1, v4, v2, v1, v4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 176
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    aput-char v7, v1, v2

    move v2, v4

    .line 178
    .end local v4    # "i":I
    .end local v7    # "upch":C
    .restart local v2    # "i":I
    :cond_7a
    :goto_7a
    goto :goto_bf

    .line 179
    :cond_7b
    mul-int/lit8 v7, v6, 0x3

    .line 180
    .local v7, "target":I
    sget-object v9, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v10, v7, 0x2

    aget-char v9, v9, v10

    .line 181
    .local v9, "val3":C
    if-nez v1, :cond_90

    .line 182
    div-int/lit8 v10, p2, 0x6

    add-int/2addr v10, p2

    add-int/2addr v10, v8

    new-array v1, v10, [C

    .line 183
    move v2, v3

    .line 184
    invoke-virtual {p1, v4, v2, v1, v4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    goto :goto_a4

    .line 185
    :cond_90
    if-nez v9, :cond_93

    const/4 v8, 0x1

    :cond_93
    add-int/2addr v8, v2

    array-length v10, v1

    if-lt v8, v10, :cond_a4

    .line 186
    array-length v8, v1

    div-int/lit8 v10, p2, 0x6

    add-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x3

    new-array v8, v8, [C

    .line 187
    .local v8, "newoutput":[C
    array-length v10, v1

    invoke-static {v1, v4, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    move-object v1, v8

    .line 191
    .end local v8    # "newoutput":[C
    :cond_a4
    :goto_a4
    sget-object v4, Ljava/lang/CaseMapper;->upperValues:[C

    aget-char v4, v4, v7

    .line 192
    .local v4, "val":C
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    aput-char v4, v1, v2

    .line 193
    sget-object v2, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v10, v7, 0x1

    aget-char v2, v2, v10

    .line 194
    .end local v4    # "val":C
    .local v2, "val":C
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "i":I
    .local v4, "i":I
    aput-char v2, v1, v8

    .line 195
    if-eqz v9, :cond_be

    .line 196
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .restart local v8    # "i":I
    aput-char v9, v1, v4

    move v2, v8

    goto :goto_bf

    .line 195
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :cond_be
    move v2, v4

    .line 157
    .end local v4    # "i":I
    .end local v5    # "ch":C
    .end local v6    # "index":I
    .end local v7    # "target":I
    .end local v9    # "val3":C
    .local v2, "i":I
    :goto_bf
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_36

    .line 200
    .end local v3    # "o":I
    :cond_c3
    if-nez v1, :cond_c6

    .line 201
    return-object p1

    .line 203
    :cond_c6
    array-length v3, v1

    if-eq v3, v2, :cond_d6

    array-length v3, v1

    sub-int/2addr v3, v2

    const/16 v5, 0x8

    if-ge v3, v5, :cond_d0

    goto :goto_d6

    :cond_d0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_db

    :cond_d6
    :goto_d6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    :goto_db
    return-object v3

    .line 149
    .end local v1    # "output":[C
    .end local v2    # "i":I
    :cond_dc
    :goto_dc
    invoke-static {p1, p0}, Lcom/android/icu/util/CaseMapperNative;->toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist upperIndex(I)I
    .registers 4
    .param p0, "ch"    # I

    .line 109
    const/4 v0, -0x1

    .line 110
    .local v0, "index":I
    const/16 v1, 0xdf

    if-lt p0, v1, :cond_55

    .line 111
    const/16 v1, 0x587

    if-gt p0, v1, :cond_19

    .line 112
    sparse-switch p0, :sswitch_data_56

    .line 118
    goto :goto_55

    :sswitch_d
    const/4 v1, 0x5

    return v1

    .line 117
    :sswitch_f
    const/4 v1, 0x4

    return v1

    .line 116
    :sswitch_11
    const/4 v1, 0x3

    return v1

    .line 115
    :sswitch_13
    const/4 v1, 0x2

    return v1

    .line 114
    :sswitch_15
    const/4 v1, 0x1

    return v1

    .line 113
    :sswitch_17
    const/4 v1, 0x0

    return v1

    .line 120
    :cond_19
    const/16 v1, 0x1e96

    if-lt p0, v1, :cond_55

    .line 121
    const/16 v2, 0x1e9a

    if-gt p0, v2, :cond_26

    .line 122
    add-int/lit8 v2, p0, 0x6

    add-int/lit16 v0, v2, -0x1e96

    goto :goto_55

    .line 123
    :cond_26
    const/16 v1, 0x1f50

    if-lt p0, v1, :cond_38

    const/16 v1, 0x1ffc

    if-gt p0, v1, :cond_38

    .line 124
    sget-object v1, Ljava/lang/CaseMapper;->upperValues2:[C

    add-int/lit16 v2, p0, -0x1f50

    aget-char v0, v1, v2

    .line 125
    if-nez v0, :cond_55

    .line 126
    const/4 v0, -0x1

    goto :goto_55

    .line 128
    :cond_38
    const v1, 0xfb00

    if-lt p0, v1, :cond_55

    .line 129
    const v2, 0xfb06

    if-gt p0, v2, :cond_47

    .line 130
    add-int/lit8 v2, p0, 0x5a

    sub-int v0, v2, v1

    goto :goto_55

    .line 131
    :cond_47
    const v1, 0xfb13

    if-lt p0, v1, :cond_55

    const v2, 0xfb17

    if-gt p0, v2, :cond_55

    .line 132
    add-int/lit8 v2, p0, 0x61

    sub-int v0, v2, v1

    .line 137
    :cond_55
    :goto_55
    return v0

    :sswitch_data_56
    .sparse-switch
        0xdf -> :sswitch_17
        0x149 -> :sswitch_15
        0x1f0 -> :sswitch_13
        0x390 -> :sswitch_11
        0x3b0 -> :sswitch_f
        0x587 -> :sswitch_d
    .end sparse-switch
.end method

.class Ljava/lang/CaseMapper;
.super Ljava/lang/Object;
.source "CaseMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/CaseMapper$1;
    }
.end annotation


# static fields
.field private static final EL_UPPER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Llibcore/icu/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private static final GREEK_CAPITAL_SIGMA:C = '\u03a3'

.field private static final GREEK_SMALL_FINAL_SIGMA:C = '\u03c2'

.field private static final LATIN_CAPITAL_I_WITH_DOT:C = '\u0130'

.field private static final upperValues:[C

.field private static final upperValues2:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    const-string/jumbo v0, "SS\u0000\u02bcN\u0000J\u030c\u0000\u0399\u0308\u0301\u03a5\u0308\u0301\u0535\u0552\u0000H\u0331\u0000T\u0308\u0000W\u030a\u0000Y\u030a\u0000A\u02be\u0000\u03a5\u0313\u0000\u03a5\u0313\u0300\u03a5\u0313\u0301\u03a5\u0313\u0342\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1fba\u0399\u0000\u0391\u0399\u0000\u0386\u0399\u0000\u0391\u0342\u0000\u0391\u0342\u0399\u0391\u0399\u0000\u1fca\u0399\u0000\u0397\u0399\u0000\u0389\u0399\u0000\u0397\u0342\u0000\u0397\u0342\u0399\u0397\u0399\u0000\u0399\u0308\u0300\u0399\u0308\u0301\u0399\u0342\u0000\u0399\u0308\u0342\u03a5\u0308\u0300\u03a5\u0308\u0301\u03a1\u0313\u0000\u03a5\u0342\u0000\u03a5\u0308\u0342\u1ffa\u0399\u0000\u03a9\u0399\u0000\u038f\u0399\u0000\u03a9\u0342\u0000\u03a9\u0342\u0399\u03a9\u0399\u0000FF\u0000FI\u0000FL\u0000FFIFFLST\u0000ST\u0000\u0544\u0546\u0000\u0544\u0535\u0000\u0544\u053b\u0000\u054e\u0546\u0000\u0544\u053d\u0000"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    #@9
    .line 28
    const-string/jumbo v0, "\u000b\u0000\u000c\u0000\r\u0000\u000e\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>\u0000\u0000?@A\u0000BC\u0000\u0000\u0000\u0000D\u0000\u0000\u0000\u0000\u0000EFG\u0000HI\u0000\u0000\u0000\u0000J\u0000\u0000\u0000\u0000\u0000KL\u0000\u0000MN\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000OPQ\u0000RS\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000TUV\u0000WX\u0000\u0000\u0000\u0000Y"

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@f
    move-result-object v0

    #@10
    sput-object v0, Ljava/lang/CaseMapper;->upperValues2:[C

    #@12
    .line 139
    new-instance v0, Ljava/lang/CaseMapper$1;

    #@14
    invoke-direct {v0}, Ljava/lang/CaseMapper$1;-><init>()V

    #@17
    sput-object v0, Ljava/lang/CaseMapper;->EL_UPPER:Ljava/lang/ThreadLocal;

    #@19
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isFinalSigma(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 83
    if-gtz p1, :cond_0

    #@4
    .line 84
    return v5

    #@5
    .line 86
    :cond_0
    add-int/lit8 v2, p1, -0x1

    #@7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    .line 87
    .local v1, "previous":C
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    #@1a
    move-result v2

    #@1b
    :goto_0
    if-nez v2, :cond_2

    #@1d
    .line 88
    return v5

    #@1e
    :cond_1
    move v2, v3

    #@1f
    .line 87
    goto :goto_0

    #@20
    .line 90
    :cond_2
    add-int/lit8 v2, p1, 0x1

    #@22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@25
    move-result v4

    #@26
    if-lt v2, v4, :cond_3

    #@28
    .line 91
    return v3

    #@29
    .line 93
    :cond_3
    add-int/lit8 v2, p1, 0x1

    #@2b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    .line 94
    .local v0, "next":C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_4

    #@35
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_4

    #@3b
    invoke-static {v0}, Ljava/lang/Character;->isTitleCase(C)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_5

    #@41
    .line 95
    :cond_4
    return v5

    #@42
    .line 97
    :cond_5
    return v3
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 49
    .local v3, "languageCode":Ljava/lang/String;
    const-string/jumbo v6, "tr"

    #@7
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_0

    #@d
    const-string/jumbo v6, "az"

    #@10
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v6

    #@14
    if-nez v6, :cond_0

    #@16
    const-string/jumbo v6, "lt"

    #@19
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 50
    :cond_0
    invoke-static {p1, p0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    return-object v6

    #@24
    .line 53
    :cond_1
    const/4 v5, 0x0

    #@25
    .line 54
    .local v5, "newString":Ljava/lang/String;
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@29
    move-result v1

    #@2a
    .end local v5    # "newString":Ljava/lang/String;
    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_7

    #@2c
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v0

    #@30
    .line 57
    .local v0, "ch":C
    const/16 v6, 0x130

    #@32
    if-eq v0, v6, :cond_2

    #@34
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_3

    #@3a
    .line 59
    :cond_2
    invoke-static {p1, p0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    return-object v6

    #@3f
    .line 60
    :cond_3
    const/16 v6, 0x3a3

    #@41
    if-ne v0, v6, :cond_6

    #@43
    invoke-static {p1, v2}, Ljava/lang/CaseMapper;->isFinalSigma(Ljava/lang/String;I)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_6

    #@49
    .line 61
    const/16 v4, 0x3c2

    #@4b
    .line 65
    :goto_1
    if-eq v0, v4, :cond_5

    #@4d
    .line 66
    if-nez v5, :cond_4

    #@4f
    .line 67
    invoke-static {p1}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 69
    :cond_4
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->setCharAt(IC)V

    #@56
    .line 54
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_0

    #@59
    .line 63
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@5c
    move-result v4

    #@5d
    .local v4, "newCh":C
    goto :goto_1

    #@5e
    .line 72
    .end local v0    # "ch":C
    .end local v4    # "newCh":C
    :cond_7
    if-eqz v5, :cond_8

    #@60
    :goto_2
    return-object v5

    #@61
    :cond_8
    move-object v5, p1

    #@62
    goto :goto_2
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;
    .locals 20
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    .line 147
    .local v8, "languageCode":Ljava/lang/String;
    const-string/jumbo v17, "tr"

    #@7
    move-object/from16 v0, v17

    #@9
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v17

    #@d
    if-nez v17, :cond_0

    #@f
    const-string/jumbo v17, "az"

    #@12
    move-object/from16 v0, v17

    #@14
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v17

    #@18
    if-nez v17, :cond_0

    #@1a
    const-string/jumbo v17, "lt"

    #@1d
    move-object/from16 v0, v17

    #@1f
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v17

    #@23
    if-eqz v17, :cond_1

    #@25
    .line 148
    :cond_0
    move-object/from16 v0, p1

    #@27
    move-object/from16 v1, p0

    #@29
    invoke-static {v0, v1}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@2c
    move-result-object v17

    #@2d
    return-object v17

    #@2e
    .line 150
    :cond_1
    const-string/jumbo v17, "el"

    #@31
    move-object/from16 v0, v17

    #@33
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v17

    #@37
    if-eqz v17, :cond_2

    #@39
    .line 151
    sget-object v17, Ljava/lang/CaseMapper;->EL_UPPER:Ljava/lang/ThreadLocal;

    #@3b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@3e
    move-result-object v17

    #@3f
    check-cast v17, Llibcore/icu/Transliterator;

    #@41
    move-object/from16 v0, v17

    #@43
    move-object/from16 v1, p1

    #@45
    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v17

    #@49
    return-object v17

    #@4a
    .line 154
    :cond_2
    const/4 v12, 0x0

    #@4b
    .line 155
    .local v12, "output":[C
    const/4 v9, 0x0

    #@4c
    .line 156
    .local v9, "newString":Ljava/lang/String;
    const/4 v5, 0x0

    #@4d
    .line 157
    .local v5, "i":I
    const/4 v11, 0x0

    #@4e
    .local v11, "o":I
    move/from16 v4, p2

    #@50
    .local v4, "end":I
    move v6, v5

    #@51
    .end local v5    # "i":I
    .end local v9    # "newString":Ljava/lang/String;
    .end local v12    # "output":[C
    .local v6, "i":I
    :goto_0
    if-ge v11, v4, :cond_c

    #@53
    .line 158
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    #@58
    move-result v3

    #@59
    .line 159
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@5c
    move-result v17

    #@5d
    if-eqz v17, :cond_3

    #@5f
    .line 160
    move-object/from16 v0, p1

    #@61
    move-object/from16 v1, p0

    #@63
    invoke-static {v0, v1}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@66
    move-result-object v17

    #@67
    return-object v17

    #@68
    .line 162
    :cond_3
    invoke-static {v3}, Ljava/lang/CaseMapper;->upperIndex(I)I

    #@6b
    move-result v7

    #@6c
    .line 163
    .local v7, "index":I
    const/16 v17, -0x1

    #@6e
    move/from16 v0, v17

    #@70
    if-ne v7, v0, :cond_8

    #@72
    .line 164
    if-eqz v12, :cond_4

    #@74
    array-length v0, v12

    #@75
    move/from16 v17, v0

    #@77
    move/from16 v0, v17

    #@79
    if-lt v6, v0, :cond_4

    #@7b
    .line 165
    array-length v0, v12

    #@7c
    move/from16 v17, v0

    #@7e
    div-int/lit8 v18, p2, 0x6

    #@80
    add-int v17, v17, v18

    #@82
    add-int/lit8 v17, v17, 0x2

    #@84
    move/from16 v0, v17

    #@86
    new-array v10, v0, [C

    #@88
    .line 166
    .local v10, "newoutput":[C
    array-length v0, v12

    #@89
    move/from16 v17, v0

    #@8b
    const/16 v18, 0x0

    #@8d
    const/16 v19, 0x0

    #@8f
    move/from16 v0, v18

    #@91
    move/from16 v1, v19

    #@93
    move/from16 v2, v17

    #@95
    invoke-static {v12, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@98
    .line 167
    move-object v12, v10

    #@99
    .line 169
    .end local v10    # "newoutput":[C
    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    #@9c
    move-result v14

    #@9d
    .line 170
    .local v14, "upch":C
    if-eqz v12, :cond_6

    #@9f
    .line 171
    add-int/lit8 v5, v6, 0x1

    #@a1
    .end local v6    # "i":I
    .restart local v5    # "i":I
    aput-char v14, v12, v6

    #@a3
    .line 157
    .end local v14    # "upch":C
    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@a5
    move v6, v5

    #@a6
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    #@a7
    .line 172
    .restart local v14    # "upch":C
    :cond_6
    if-eq v3, v14, :cond_12

    #@a9
    .line 173
    if-nez v9, :cond_7

    #@ab
    .line 174
    invoke-static/range {p1 .. p1}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    #@ae
    move-result-object v9

    #@af
    .line 176
    :cond_7
    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->setCharAt(IC)V

    #@b2
    move v5, v6

    #@b3
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    #@b4
    .line 179
    .end local v5    # "i":I
    .end local v14    # "upch":C
    .restart local v6    # "i":I
    :cond_8
    mul-int/lit8 v13, v7, 0x3

    #@b6
    .line 180
    .local v13, "target":I
    sget-object v17, Ljava/lang/CaseMapper;->upperValues:[C

    #@b8
    add-int/lit8 v18, v13, 0x2

    #@ba
    aget-char v16, v17, v18

    #@bc
    .line 181
    .local v16, "val3":C
    if-nez v12, :cond_a

    #@be
    .line 182
    div-int/lit8 v17, p2, 0x6

    #@c0
    add-int v17, v17, p2

    #@c2
    add-int/lit8 v17, v17, 0x2

    #@c4
    move/from16 v0, v17

    #@c6
    new-array v12, v0, [C

    #@c8
    .line 183
    .local v12, "output":[C
    move v5, v11

    #@c9
    .line 184
    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-eqz v9, :cond_9

    #@cb
    .line 185
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    #@ce
    move-result-object v17

    #@cf
    const/16 v18, 0x0

    #@d1
    const/16 v19, 0x0

    #@d3
    move-object/from16 v0, v17

    #@d5
    move/from16 v1, v18

    #@d7
    move/from16 v2, v19

    #@d9
    invoke-static {v0, v1, v12, v2, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@dc
    .line 195
    .end local v12    # "output":[C
    :goto_2
    sget-object v17, Ljava/lang/CaseMapper;->upperValues:[C

    #@de
    aget-char v15, v17, v13

    #@e0
    .line 196
    .local v15, "val":C
    add-int/lit8 v6, v5, 0x1

    #@e2
    .end local v5    # "i":I
    .restart local v6    # "i":I
    aput-char v15, v12, v5

    #@e4
    .line 197
    sget-object v17, Ljava/lang/CaseMapper;->upperValues:[C

    #@e6
    add-int/lit8 v18, v13, 0x1

    #@e8
    aget-char v15, v17, v18

    #@ea
    .line 198
    add-int/lit8 v5, v6, 0x1

    #@ec
    .end local v6    # "i":I
    .restart local v5    # "i":I
    aput-char v15, v12, v6

    #@ee
    .line 199
    if-eqz v16, :cond_5

    #@f0
    .line 200
    add-int/lit8 v6, v5, 0x1

    #@f2
    .end local v5    # "i":I
    .restart local v6    # "i":I
    aput-char v16, v12, v5

    #@f4
    move v5, v6

    #@f5
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    #@f6
    .line 187
    .end local v15    # "val":C
    .restart local v12    # "output":[C
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    #@f9
    move-result-object v17

    #@fa
    const/16 v18, 0x0

    #@fc
    const/16 v19, 0x0

    #@fe
    move-object/from16 v0, v17

    #@100
    move/from16 v1, v18

    #@102
    move/from16 v2, v19

    #@104
    invoke-static {v0, v1, v12, v2, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@107
    goto :goto_2

    #@108
    .line 189
    .end local v5    # "i":I
    .end local v12    # "output":[C
    .restart local v6    # "i":I
    :cond_a
    if-nez v16, :cond_b

    #@10a
    const/16 v17, 0x1

    #@10c
    :goto_3
    add-int v17, v17, v6

    #@10e
    array-length v0, v12

    #@10f
    move/from16 v18, v0

    #@111
    move/from16 v0, v17

    #@113
    move/from16 v1, v18

    #@115
    if-lt v0, v1, :cond_11

    #@117
    .line 190
    array-length v0, v12

    #@118
    move/from16 v17, v0

    #@11a
    div-int/lit8 v18, p2, 0x6

    #@11c
    add-int v17, v17, v18

    #@11e
    add-int/lit8 v17, v17, 0x3

    #@120
    move/from16 v0, v17

    #@122
    new-array v10, v0, [C

    #@124
    .line 191
    .restart local v10    # "newoutput":[C
    array-length v0, v12

    #@125
    move/from16 v17, v0

    #@127
    const/16 v18, 0x0

    #@129
    const/16 v19, 0x0

    #@12b
    move/from16 v0, v18

    #@12d
    move/from16 v1, v19

    #@12f
    move/from16 v2, v17

    #@131
    invoke-static {v12, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@134
    .line 192
    move-object v12, v10

    #@135
    .restart local v12    # "output":[C
    move v5, v6

    #@136
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    #@137
    .line 189
    .end local v5    # "i":I
    .end local v10    # "newoutput":[C
    .end local v12    # "output":[C
    .restart local v6    # "i":I
    :cond_b
    const/16 v17, 0x2

    #@139
    goto :goto_3

    #@13a
    .line 204
    .end local v3    # "ch":C
    .end local v7    # "index":I
    .end local v13    # "target":I
    .end local v16    # "val3":C
    :cond_c
    if-nez v12, :cond_e

    #@13c
    .line 205
    if-eqz v9, :cond_d

    #@13e
    .line 206
    return-object v9

    #@13f
    .line 208
    :cond_d
    return-object p1

    #@140
    .line 211
    :cond_e
    array-length v0, v12

    #@141
    move/from16 v17, v0

    #@143
    move/from16 v0, v17

    #@145
    if-eq v0, v6, :cond_f

    #@147
    array-length v0, v12

    #@148
    move/from16 v17, v0

    #@14a
    sub-int v17, v17, v6

    #@14c
    const/16 v18, 0x8

    #@14e
    move/from16 v0, v17

    #@150
    move/from16 v1, v18

    #@152
    if-ge v0, v1, :cond_10

    #@154
    :cond_f
    new-instance v17, Ljava/lang/String;

    #@156
    const/16 v18, 0x0

    #@158
    move-object/from16 v0, v17

    #@15a
    move/from16 v1, v18

    #@15c
    invoke-direct {v0, v1, v6, v12}, Ljava/lang/String;-><init>(II[C)V

    #@15f
    :goto_4
    return-object v17

    #@160
    :cond_10
    new-instance v17, Ljava/lang/String;

    #@162
    const/16 v18, 0x0

    #@164
    move-object/from16 v0, v17

    #@166
    move/from16 v1, v18

    #@168
    invoke-direct {v0, v12, v1, v6}, Ljava/lang/String;-><init>([CII)V

    #@16b
    goto :goto_4

    #@16c
    .restart local v3    # "ch":C
    .restart local v7    # "index":I
    .restart local v13    # "target":I
    .restart local v16    # "val3":C
    :cond_11
    move v5, v6

    #@16d
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2

    #@16f
    .end local v5    # "i":I
    .end local v13    # "target":I
    .end local v16    # "val3":C
    .restart local v6    # "i":I
    .restart local v14    # "upch":C
    :cond_12
    move v5, v6

    #@170
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1
.end method

.method private static upperIndex(I)I
    .locals 5
    .param p0, "ch"    # I

    #@0
    .prologue
    const v4, 0xfb13

    #@3
    const v3, 0xfb00

    #@6
    const/4 v2, 0x0

    #@7
    .line 108
    const/4 v0, -0x1

    #@8
    .line 109
    .local v0, "index":I
    const/16 v1, 0xdf

    #@a
    if-lt p0, v1, :cond_0

    #@c
    .line 110
    const/16 v1, 0x587

    #@e
    if-gt p0, v1, :cond_1

    #@10
    .line 111
    sparse-switch p0, :sswitch_data_0

    #@13
    .line 136
    :cond_0
    :goto_0
    return v0

    #@14
    .line 112
    :sswitch_0
    return v2

    #@15
    .line 113
    :sswitch_1
    const/4 v1, 0x1

    #@16
    return v1

    #@17
    .line 114
    :sswitch_2
    const/4 v1, 0x2

    #@18
    return v1

    #@19
    .line 115
    :sswitch_3
    const/4 v1, 0x3

    #@1a
    return v1

    #@1b
    .line 116
    :sswitch_4
    const/4 v1, 0x4

    #@1c
    return v1

    #@1d
    .line 117
    :sswitch_5
    const/4 v1, 0x5

    #@1e
    return v1

    #@1f
    .line 119
    :cond_1
    const/16 v1, 0x1e96

    #@21
    if-lt p0, v1, :cond_0

    #@23
    .line 120
    const/16 v1, 0x1e9a

    #@25
    if-gt p0, v1, :cond_2

    #@27
    .line 121
    add-int/lit8 v1, p0, 0x6

    #@29
    add-int/lit16 v0, v1, -0x1e96

    #@2b
    goto :goto_0

    #@2c
    .line 122
    :cond_2
    const/16 v1, 0x1f50

    #@2e
    if-lt p0, v1, :cond_3

    #@30
    const/16 v1, 0x1ffc

    #@32
    if-gt p0, v1, :cond_3

    #@34
    .line 123
    sget-object v1, Ljava/lang/CaseMapper;->upperValues2:[C

    #@36
    add-int/lit16 v2, p0, -0x1f50

    #@38
    aget-char v0, v1, v2

    #@3a
    .line 124
    if-nez v0, :cond_0

    #@3c
    .line 125
    const/4 v0, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 127
    :cond_3
    if-lt p0, v3, :cond_0

    #@40
    .line 128
    const v1, 0xfb06

    #@43
    if-gt p0, v1, :cond_4

    #@45
    .line 129
    add-int/lit8 v1, p0, 0x5a

    #@47
    sub-int v0, v1, v3

    #@49
    goto :goto_0

    #@4a
    .line 130
    :cond_4
    if-lt p0, v4, :cond_0

    #@4c
    const v1, 0xfb17

    #@4f
    if-gt p0, v1, :cond_0

    #@51
    .line 131
    add-int/lit8 v1, p0, 0x61

    #@53
    sub-int v0, v1, v4

    #@55
    goto :goto_0

    #@56
    .line 111
    :sswitch_data_0
    .sparse-switch
        0xdf -> :sswitch_0
        0x149 -> :sswitch_1
        0x1f0 -> :sswitch_2
        0x390 -> :sswitch_3
        0x3b0 -> :sswitch_4
        0x587 -> :sswitch_5
    .end sparse-switch
.end method

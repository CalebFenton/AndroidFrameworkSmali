.class public final Landroid/icu/impl/IDNA2003;
.super Ljava/lang/Object;
.source "IDNA2003.java"


# static fields
.field private static blacklist ACE_PREFIX:[C = null

.field private static final blacklist CAPITAL_A:I = 0x41

.field private static final blacklist CAPITAL_Z:I = 0x5a

.field private static final blacklist FULL_STOP:I = 0x2e

.field private static final blacklist HYPHEN:I = 0x2d

.field private static final blacklist LOWER_CASE_DELTA:I = 0x20

.field private static final blacklist MAX_DOMAIN_NAME_LENGTH:I = 0xff

.field private static final blacklist MAX_LABEL_LENGTH:I = 0x3f

.field private static final blacklist namePrep:Landroid/icu/text/StringPrep;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/text/StringPrep;->getInstance(I)Landroid/icu/text/StringPrep;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    return-void

    :array_10
    .array-data 2
        0x78s
        0x6es
        0x2ds
        0x2ds
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compare(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 434
    invoke-static {p0, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 435
    .local v0, "s1Out":Ljava/lang/StringBuffer;
    invoke-static {p1, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 436
    .local v1, "s2Out":Ljava/lang/StringBuffer;
    invoke-static {v0, v1}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v2

    return v2
.end method

.method private static blacklist compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .registers 7
    .param p0, "s1"    # Ljava/lang/StringBuffer;
    .param p1, "s2"    # Ljava/lang/StringBuffer;

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 72
    const/4 v1, 0x0

    return v1

    .line 75
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 76
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 79
    .local v2, "c2":C
    if-eq v1, v2, :cond_1f

    .line 80
    invoke-static {v1}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v3

    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v4

    sub-int/2addr v3, v4

    .line 81
    .local v3, "rc":I
    if-eqz v3, :cond_1f

    .line 82
    return v3

    .line 69
    .end local v3    # "rc":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static blacklist convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 267
    .local v0, "srcArr":[C
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 269
    .local v2, "sepIndex":I
    const/4 v3, 0x0

    .line 271
    .local v3, "oldSepIndex":I
    :goto_b
    array-length v4, v0

    invoke-static {v0, v2, v4}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    move-result v2

    .line 272
    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, v3

    invoke-direct {v4, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 274
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_20

    array-length v5, v0

    if-eq v2, v5, :cond_2b

    .line 275
    :cond_20
    invoke-static {v4}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v5

    .line 276
    .local v5, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v5, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 278
    .end local v5    # "iter":Landroid/icu/text/UCharacterIterator;
    :cond_2b
    array-length v5, v0

    if-ne v2, v5, :cond_42

    .line 279
    nop

    .line 287
    .end local v4    # "label":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_38

    .line 290
    return-object v1

    .line 288
    :cond_38
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    const-string v5, "The output exceed the max allowed length."

    const/16 v6, 0xb

    invoke-direct {v4, v5, v6}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 283
    .restart local v4    # "label":Ljava/lang/String;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    .line 284
    move v3, v2

    .line 285
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    .end local v4    # "label":Ljava/lang/String;
    goto :goto_b
.end method

.method public static blacklist convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 10
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 407
    .local v0, "srcArr":[C
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 409
    .local v2, "sepIndex":I
    const/4 v3, 0x0

    .line 411
    .local v3, "oldSepIndex":I
    :goto_b
    array-length v4, v0

    invoke-static {v0, v2, v4}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    move-result v2

    .line 412
    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, v3

    invoke-direct {v4, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 413
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2b

    array-length v5, v0

    if-ne v2, v5, :cond_21

    goto :goto_2b

    .line 414
    :cond_21
    new-instance v5, Landroid/icu/text/StringPrepParseException;

    const-string v6, "Found zero length label after NamePrep."

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 416
    :cond_2b
    :goto_2b
    invoke-static {v4}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v5

    .line 417
    .local v5, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v5, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 418
    array-length v6, v0

    if-ne v2, v6, :cond_4d

    .line 419
    nop

    .line 427
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "iter":Landroid/icu/text/UCharacterIterator;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_43

    .line 430
    return-object v1

    .line 428
    :cond_43
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    const-string v5, "The output exceed the max allowed length."

    const/16 v6, 0xb

    invoke-direct {v4, v5, v6}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 422
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "iter":Landroid/icu/text/UCharacterIterator;
    :cond_4d
    aget-char v6, v0, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 425
    move v3, v2

    .line 426
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "iter":Landroid/icu/text/UCharacterIterator;
    goto :goto_b
.end method

.method public static blacklist convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 16
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .line 159
    .local v0, "caseFlags":[Z
    const/4 v1, 0x1

    .line 161
    .local v1, "srcIsASCII":Z
    const/4 v2, 0x1

    .line 164
    .local v2, "srcIsLDH":Z
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    move v3, v4

    goto :goto_c

    :cond_b
    move v3, v5

    .line 167
    .local v3, "useSTD3ASCIIRules":Z
    :cond_c
    :goto_c
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v6

    move v7, v6

    .local v7, "ch":I
    const/4 v8, -0x1

    const/16 v9, 0x7f

    if-eq v6, v8, :cond_1a

    .line 168
    if-le v7, v9, :cond_c

    .line 169
    const/4 v1, 0x0

    .line 170
    nop

    .line 173
    :cond_1a
    const/4 v6, -0x1

    .line 174
    .local v6, "failPos":I
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 175
    const/4 v8, 0x0

    .line 177
    .local v8, "processOut":Ljava/lang/StringBuffer;
    if-nez v1, :cond_28

    .line 179
    sget-object v10, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    invoke-virtual {v10, p0, p1}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_32

    .line 181
    :cond_28
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 183
    :goto_32
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    .line 185
    .local v10, "poLen":I
    if-eqz v10, :cond_e4

    .line 188
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v11, "dest":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 194
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3f
    if-ge v12, v10, :cond_54

    .line 195
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    .line 196
    if-le v7, v9, :cond_49

    .line 197
    const/4 v1, 0x0

    goto :goto_51

    .line 198
    :cond_49
    invoke-static {v7}, Landroid/icu/impl/IDNA2003;->isLDHChar(I)Z

    move-result v13

    if-nez v13, :cond_51

    .line 202
    const/4 v2, 0x0

    .line 203
    move v6, v12

    .line 194
    :cond_51
    :goto_51
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 207
    .end local v12    # "j":I
    :cond_54
    if-ne v3, v4, :cond_a0

    .line 209
    const/16 v9, 0x2d

    if-eqz v2, :cond_6b

    .line 210
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-eq v12, v9, :cond_6b

    .line 211
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_a0

    .line 214
    :cond_6b
    const/4 v4, 0x5

    const-string v12, "The input does not conform to the STD 3 ASCII rules"

    if-nez v2, :cond_80

    .line 215
    new-instance v5, Landroid/icu/text/StringPrepParseException;

    .line 217
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    if-lez v6, :cond_7b

    add-int/lit8 v13, v6, -0x1

    goto :goto_7c

    :cond_7b
    move v13, v6

    :goto_7c
    invoke-direct {v5, v12, v4, v9, v13}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    .line 219
    :cond_80
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    if-eq v13, v9, :cond_96

    .line 224
    new-instance v5, Landroid/icu/text/StringPrepParseException;

    .line 226
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 227
    if-lez v10, :cond_91

    add-int/lit8 v13, v10, -0x1

    goto :goto_92

    :cond_91
    move v13, v10

    :goto_92
    invoke-direct {v5, v12, v4, v9, v13}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    .line 220
    :cond_96
    new-instance v9, Landroid/icu/text/StringPrepParseException;

    .line 221
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v4, v13, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v9

    .line 232
    :cond_a0
    if-eqz v1, :cond_a4

    .line 233
    move-object v11, v8

    goto :goto_c0

    .line 236
    :cond_a4
    invoke-static {v8}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 239
    new-array v0, v10, [Z

    .line 241
    invoke-static {v8, v0}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 244
    .local v4, "punyout":Ljava/lang/StringBuilder;
    invoke-static {v4}, Landroid/icu/impl/IDNA2003;->toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 247
    .local v9, "lowerOut":Ljava/lang/StringBuffer;
    sget-object v12, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    sget-object v13, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v13, v13

    invoke-virtual {v11, v12, v5, v13}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 250
    .end local v4    # "punyout":Ljava/lang/StringBuilder;
    .end local v9    # "lowerOut":Ljava/lang/StringBuffer;
    nop

    .line 256
    :goto_c0
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v9, 0x3f

    if-gt v4, v9, :cond_c9

    .line 260
    return-object v11

    .line 257
    :cond_c9
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    .line 258
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "The labels in the input are too long. Length > 63."

    const/16 v13, 0x8

    invoke-direct {v4, v12, v13, v9, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    .line 252
    :cond_d7
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    .line 253
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "The input does not start with the ACE Prefix."

    const/4 v13, 0x6

    invoke-direct {v4, v12, v13, v9, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    .line 186
    .end local v11    # "dest":Ljava/lang/StringBuffer;
    :cond_e4
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    const-string v5, "Found zero length label after NamePrep."

    const/16 v9, 0xa

    invoke-direct {v4, v5, v9}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public static blacklist convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 11
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, "caseFlags":[Z
    const/4 v1, 0x1

    .line 308
    .local v1, "srcIsASCII":Z
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    .line 310
    .local v2, "saveIndex":I
    :cond_6
    :goto_6
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v3

    move v4, v3

    .local v4, "ch":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_14

    .line 311
    const/16 v3, 0x7f

    if-le v4, v3, :cond_6

    .line 312
    const/4 v1, 0x0

    goto :goto_6

    .line 319
    :cond_14
    if-nez v1, :cond_2b

    .line 322
    :try_start_16
    invoke-virtual {p0, v2}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 323
    sget-object v3, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    invoke-virtual {v3, p0, p1}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v3
    :try_end_1f
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 326
    .local v3, "processOut":Ljava/lang/StringBuffer;
    goto :goto_34

    .line 324
    .end local v3    # "processOut":Ljava/lang/StringBuffer;
    :catch_20
    move-exception v3

    .line 325
    .local v3, "ex":Landroid/icu/text/StringPrepParseException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 330
    .end local v3    # "ex":Landroid/icu/text/StringPrepParseException;
    :cond_2b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 340
    .local v3, "processOut":Ljava/lang/StringBuffer;
    :goto_34
    invoke-static {v3}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 341
    const/4 v5, 0x0

    .line 344
    .local v5, "decodeOut":Ljava/lang/StringBuffer;
    sget-object v6, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v6, v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "temp":Ljava/lang/String;
    :try_start_46
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-static {v6, v0}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V
    :try_end_4f
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_46 .. :try_end_4f} :catch_50

    .line 351
    .end local v5    # "decodeOut":Ljava/lang/StringBuffer;
    .local v7, "decodeOut":Ljava/lang/StringBuffer;
    goto :goto_53

    .line 349
    .end local v7    # "decodeOut":Ljava/lang/StringBuffer;
    .restart local v5    # "decodeOut":Ljava/lang/StringBuffer;
    :catch_50
    move-exception v7

    .line 350
    .local v7, "e":Landroid/icu/text/StringPrepParseException;
    const/4 v5, 0x0

    move-object v7, v5

    .line 354
    .end local v5    # "decodeOut":Ljava/lang/StringBuffer;
    .local v7, "decodeOut":Ljava/lang/StringBuffer;
    :goto_53
    if-eqz v7, :cond_64

    .line 355
    invoke-static {v7}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 358
    .local v5, "toASCIIOut":Ljava/lang/StringBuffer;
    invoke-static {v3, v5}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v8

    if-eqz v8, :cond_64

    .line 361
    const/4 v7, 0x0

    .line 366
    .end local v5    # "toASCIIOut":Ljava/lang/StringBuffer;
    :cond_64
    if-eqz v7, :cond_67

    .line 367
    return-object v7

    .line 400
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "decodeOut":Ljava/lang/StringBuffer;
    :cond_67
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v5
.end method

.method private static blacklist getSeparatorIndex([CII)I
    .registers 4
    .param p0, "src"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 89
    nop

    :goto_1
    if-ge p1, p2, :cond_f

    .line 90
    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->isLabelSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    return p1

    .line 89
    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 95
    :cond_f
    return p1
.end method

.method private static blacklist isLDHChar(I)Z
    .registers 4
    .param p0, "ch"    # I

    .line 120
    const/4 v0, 0x0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_6

    .line 121
    return v0

    .line 124
    :cond_6
    const/16 v2, 0x2d

    if-eq p0, v2, :cond_22

    const/16 v2, 0x30

    if-gt v2, p0, :cond_12

    const/16 v2, 0x39

    if-le p0, v2, :cond_22

    :cond_12
    const/16 v2, 0x41

    if-gt v2, p0, :cond_1a

    const/16 v2, 0x5a

    if-le p0, v2, :cond_22

    :cond_1a
    const/16 v2, 0x61

    if-gt v2, p0, :cond_21

    if-gt p0, v1, :cond_21

    goto :goto_22

    .line 131
    :cond_21
    return v0

    .line 129
    :cond_22
    :goto_22
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isLabelSeparator(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 142
    sparse-switch p0, :sswitch_data_8

    .line 149
    const/4 v0, 0x0

    return v0

    .line 147
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2e -> :sswitch_5
        0x3002 -> :sswitch_5
        0xff0e -> :sswitch_5
        0xff61 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist startsWithPrefix(Ljava/lang/StringBuffer;)Z
    .registers 5
    .param p0, "src"    # Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sget-object v1, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_b

    .line 41
    return v2

    .line 43
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget-object v1, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v1

    sget-object v3, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    aget-char v3, v3, v0

    if-eq v1, v3, :cond_20

    .line 45
    return v2

    .line 43
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 48
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist toASCIILower(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 52
    const/16 v0, 0x41

    if-gt v0, p0, :cond_c

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_c

    .line 53
    add-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    return v0

    .line 55
    :cond_c
    return p0
.end method

.method private static blacklist toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "src"    # Ljava/lang/CharSequence;

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v0, "dest":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 61
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 63
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.class public Landroid/icu/impl/duration/impl/XMLRecordReader;
.super Ljava/lang/Object;
.source "XMLRecordReader.java"

# interfaces
.implements Landroid/icu/impl/duration/impl/RecordReader;


# instance fields
.field private blacklist atTag:Z

.field private blacklist nameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist r:Ljava/io/Reader;

.field private blacklist tag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "r"    # Ljava/io/Reader;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    .line 37
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 38
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 42
    :cond_1b
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 45
    :cond_2a
    return-void
.end method

.method private blacklist advance()V
    .registers 2

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    .line 208
    return-void
.end method

.method private blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 201
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readNextTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    .line 203
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist match(Ljava/lang/String;)Z
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist readData()Ljava/lang/String;
    .registers 10

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 215
    .local v1, "inWhitespace":Z
    :goto_6
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    .line 216
    .local v2, "c":I
    const/16 v3, 0x3c

    const/4 v4, -0x1

    if-eq v2, v4, :cond_f9

    if-ne v2, v3, :cond_13

    goto/16 :goto_f9

    .line 220
    :cond_13
    const/16 v3, 0x26

    if-ne v2, v3, :cond_e4

    .line 221
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    .line 222
    const/16 v3, 0x23

    const/16 v5, 0x3b

    if-ne v2, v3, :cond_77

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v3, "numBuf":Ljava/lang/StringBuilder;
    const/16 v6, 0xa

    .line 225
    .local v6, "radix":I
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    .line 226
    const/16 v7, 0x78

    if-ne v2, v7, :cond_36

    .line 227
    const/16 v6, 0x10

    .line 228
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    .line 230
    :cond_36
    :goto_36
    if-eq v2, v5, :cond_43

    if-eq v2, v4, :cond_43

    .line 231
    int-to-char v7, v2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    goto :goto_36

    .line 235
    :cond_43
    :try_start_43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_4b} :catch_4f

    .line 236
    .local v4, "num":I
    int-to-char v2, v4

    .line 241
    .end local v4    # "num":I
    nop

    .line 242
    .end local v3    # "numBuf":Ljava/lang/StringBuilder;
    .end local v6    # "radix":I
    goto/16 :goto_e4

    .line 237
    .restart local v3    # "numBuf":Ljava/lang/StringBuilder;
    .restart local v6    # "radix":I
    :catch_4f
    move-exception v4

    .line 238
    .local v4, "ex":Ljava/lang/NumberFormatException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numbuf: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " radix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    throw v4

    .line 243
    .end local v3    # "numBuf":Ljava/lang/StringBuilder;
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "radix":I
    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v3, "charBuf":Ljava/lang/StringBuilder;
    :goto_7c
    if-eq v2, v5, :cond_89

    if-eq v2, v4, :cond_89

    .line 245
    int-to-char v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    goto :goto_7c

    .line 248
    :cond_89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "charName":Ljava/lang/String;
    const-string v5, "lt"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 250
    const/16 v2, 0x3c

    goto :goto_e4

    .line 251
    :cond_98
    const-string v5, "gt"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 252
    const/16 v2, 0x3e

    goto :goto_e4

    .line 253
    :cond_a3
    const-string v5, "quot"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 254
    const/16 v2, 0x22

    goto :goto_e4

    .line 255
    :cond_ae
    const-string v5, "apos"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 256
    const/16 v2, 0x27

    goto :goto_e4

    .line 257
    :cond_b9
    const-string v5, "amp"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 258
    const/16 v2, 0x26

    goto :goto_e4

    .line 260
    :cond_c4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unrecognized character entity: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    goto/16 :goto_6

    .line 267
    .end local v3    # "charBuf":Ljava/lang/StringBuilder;
    .end local v4    # "charName":Ljava/lang/String;
    :cond_e4
    :goto_e4
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 268
    if-eqz v1, :cond_ee

    .line 269
    goto/16 :goto_6

    .line 271
    :cond_ee
    const/16 v2, 0x20

    .line 272
    const/4 v1, 0x1

    goto :goto_f3

    .line 274
    :cond_f2
    const/4 v1, 0x0

    .line 276
    :goto_f3
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    .end local v2    # "c":I
    goto/16 :goto_6

    .line 217
    .restart local v2    # "c":I
    :cond_f9
    :goto_f9
    if-ne v2, v3, :cond_fd

    const/4 v3, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v3, 0x0

    :goto_fe
    iput-boolean v3, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 218
    nop

    .line 279
    .end local v2    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist readNextTag()Ljava/lang/String;
    .registers 6

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "c":I
    :cond_1
    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    const/4 v2, -0x1

    if-nez v1, :cond_39

    .line 285
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v0

    .line 286
    const/16 v1, 0x3c

    if-eq v0, v1, :cond_34

    if-ne v0, v2, :cond_11

    goto :goto_34

    .line 292
    :cond_11
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected non-whitespace character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    goto :goto_39

    .line 287
    :cond_34
    :goto_34
    if-ne v0, v1, :cond_39

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 299
    :cond_39
    :goto_39
    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    if-eqz v1, :cond_5a

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_45
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v0

    .line 304
    const/16 v3, 0x3e

    if-eq v0, v3, :cond_55

    if-ne v0, v2, :cond_50

    .line 305
    goto :goto_55

    .line 307
    :cond_50
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 310
    :cond_55
    :goto_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 312
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5a
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist bool(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 73
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 75
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist boolArray(Ljava/lang/String;)[Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "sa":[Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 82
    array-length v1, v0

    new-array v1, v1, [Z

    .line 83
    .local v1, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 84
    const-string v3, "true"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 86
    .end local v2    # "i":I
    :cond_1a
    return-object v1

    .line 88
    .end local v1    # "result":[Z
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist character(Ljava/lang/String;)C
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 97
    :cond_c
    const v1, 0xffff

    return v1
.end method

.method public blacklist characterArray(Ljava/lang/String;)[C
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "sa":[Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 104
    array-length v1, v0

    new-array v1, v1, [C

    .line 105
    .local v1, "result":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 106
    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 108
    .end local v2    # "i":I
    :cond_19
    return-object v1

    .line 110
    .end local v1    # "result":[C
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist close()Z
    .registers 7

    .line 59
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 60
    .local v0, "ix":I
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 62
    iget-object v3, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 64
    return v1

    .line 66
    :cond_36
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist namedIndex(Ljava/lang/String;[Ljava/lang/String;)B
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "sa":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p2

    if-ge v1, v2, :cond_17

    .line 118
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 119
    int-to-byte v2, v1

    return v2

    .line 117
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 123
    .end local v1    # "i":I
    :cond_17
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 128
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "sa":[Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 130
    array-length v1, v0

    new-array v1, v1, [B

    .line 131
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 132
    aget-object v3, v0, v2

    .line 133
    .local v3, "s":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_10
    array-length v5, p2

    if-ge v4, v5, :cond_22

    .line 134
    aget-object v5, p2, v4

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 135
    int-to-byte v5, v4

    aput-byte v5, v1, v2

    .line 136
    goto :goto_25

    .line 133
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 139
    .end local v4    # "j":I
    :cond_22
    const/4 v4, -0x1

    aput-byte v4, v1, v2

    .line 131
    .end local v3    # "s":Ljava/lang/String;
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 141
    .end local v2    # "i":I
    :cond_28
    return-object v1

    .line 143
    .end local v1    # "result":[B
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist open(Ljava/lang/String;)Z
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method blacklist readChar()I
    .registers 2

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 318
    :catch_7
    move-exception v0

    .line 321
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist string(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 149
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readData()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 151
    return-object v0

    .line 154
    .end local v0    # "result":Ljava/lang/String;
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1e
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "s":Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 163
    const-string v2, "Null"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 164
    const/4 v3, 0x0

    .line 166
    :cond_2e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 168
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 172
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "s":Ljava/lang/String;
    :cond_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist stringTable(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :goto_1e
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "sa":[Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 181
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 183
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    return-object v1

    .line 187
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v3    # "sa":[Ljava/lang/String;
    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

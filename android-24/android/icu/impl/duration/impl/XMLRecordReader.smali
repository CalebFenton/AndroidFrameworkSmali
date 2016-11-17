.class public Landroid/icu/impl/duration/impl/XMLRecordReader;
.super Ljava/lang/Object;
.source "XMLRecordReader.java"

# interfaces
.implements Landroid/icu/impl/duration/impl/RecordReader;


# instance fields
.field private atTag:Z

.field private nameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/io/Reader;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "r"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    #@5
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    #@c
    .line 35
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "?xml"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 36
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    #@1c
    .line 40
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "!--"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 41
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    #@2c
    .line 30
    :cond_1
    return-void
.end method

.method private advance()V
    .locals 1

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    #@3
    .line 193
    return-void
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 188
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readNextTag()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    #@a
    .line 190
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 180
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    #@d
    .line 181
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 183
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private readData()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    const/16 v14, 0x3c

    #@2
    const/16 v13, 0x3b

    #@4
    const/4 v12, -0x1

    #@5
    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 199
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@b
    .line 202
    .local v4, "inWhitespace":Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@e
    move-result v0

    #@f
    .line 203
    .local v0, "c":I
    if-eq v0, v12, :cond_1

    #@11
    if-ne v0, v14, :cond_3

    #@13
    .line 204
    :cond_1
    if-ne v0, v14, :cond_2

    #@15
    const/4 v9, 0x1

    #@16
    :goto_1
    iput-boolean v9, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    #@18
    .line 266
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    return-object v9

    #@1d
    .line 204
    :cond_2
    const/4 v9, 0x0

    #@1e
    goto :goto_1

    #@1f
    .line 207
    :cond_3
    const/16 v9, 0x26

    #@21
    if-ne v0, v9, :cond_6

    #@23
    .line 208
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@26
    move-result v0

    #@27
    .line 209
    const/16 v9, 0x23

    #@29
    if-ne v0, v9, :cond_7

    #@2b
    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    .line 211
    .local v6, "numBuf":Ljava/lang/StringBuilder;
    const/16 v7, 0xa

    #@32
    .line 212
    .local v7, "radix":I
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@35
    move-result v0

    #@36
    .line 213
    const/16 v9, 0x78

    #@38
    if-ne v0, v9, :cond_4

    #@3a
    .line 214
    const/16 v7, 0x10

    #@3c
    .line 215
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@3f
    move-result v0

    #@40
    .line 217
    :cond_4
    :goto_2
    if-eq v0, v13, :cond_5

    #@42
    if-eq v0, v12, :cond_5

    #@44
    .line 218
    int-to-char v9, v0

    #@45
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    .line 219
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@4b
    move-result v0

    #@4c
    goto :goto_2

    #@4d
    .line 222
    :cond_5
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    invoke-static {v9, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    move-result v5

    #@55
    .line 223
    .local v5, "num":I
    int-to-char v0, v5

    #@56
    .line 254
    .end local v5    # "num":I
    .end local v6    # "numBuf":Ljava/lang/StringBuilder;
    .end local v7    # "radix":I
    :cond_6
    :goto_3
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    #@59
    move-result v9

    #@5a
    if-eqz v9, :cond_e

    #@5c
    .line 255
    if-nez v4, :cond_0

    #@5e
    .line 258
    const/16 v0, 0x20

    #@60
    .line 259
    const/4 v4, 0x1

    #@61
    .line 263
    :goto_4
    int-to-char v9, v0

    #@62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    goto :goto_0

    #@66
    .line 224
    .restart local v6    # "numBuf":Ljava/lang/StringBuilder;
    .restart local v7    # "radix":I
    :catch_0
    move-exception v3

    #@67
    .line 225
    .local v3, "ex":Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@69
    new-instance v10, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v11, "numbuf: "

    #@71
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v11

    #@79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v10

    #@7d
    .line 226
    const-string/jumbo v11, " radix: "

    #@80
    .line 225
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8f
    .line 227
    throw v3

    #@90
    .line 230
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "numBuf":Ljava/lang/StringBuilder;
    .end local v7    # "radix":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    .line 231
    .local v1, "charBuf":Ljava/lang/StringBuilder;
    :goto_5
    if-eq v0, v13, :cond_8

    #@97
    if-eq v0, v12, :cond_8

    #@99
    .line 232
    int-to-char v9, v0

    #@9a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9d
    .line 233
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@a0
    move-result v0

    #@a1
    goto :goto_5

    #@a2
    .line 235
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    .line 236
    .local v2, "charName":Ljava/lang/String;
    const-string/jumbo v9, "lt"

    #@a9
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v9

    #@ad
    if-eqz v9, :cond_9

    #@af
    .line 237
    const/16 v0, 0x3c

    #@b1
    goto :goto_3

    #@b2
    .line 238
    :cond_9
    const-string/jumbo v9, "gt"

    #@b5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v9

    #@b9
    if-eqz v9, :cond_a

    #@bb
    .line 239
    const/16 v0, 0x3e

    #@bd
    goto :goto_3

    #@be
    .line 240
    :cond_a
    const-string/jumbo v9, "quot"

    #@c1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v9

    #@c5
    if-eqz v9, :cond_b

    #@c7
    .line 241
    const/16 v0, 0x22

    #@c9
    goto :goto_3

    #@ca
    .line 242
    :cond_b
    const-string/jumbo v9, "apos"

    #@cd
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v9

    #@d1
    if-eqz v9, :cond_c

    #@d3
    .line 243
    const/16 v0, 0x27

    #@d5
    goto :goto_3

    #@d6
    .line 244
    :cond_c
    const-string/jumbo v9, "amp"

    #@d9
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v9

    #@dd
    if-eqz v9, :cond_d

    #@df
    .line 245
    const/16 v0, 0x26

    #@e1
    goto/16 :goto_3

    #@e3
    .line 247
    :cond_d
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e5
    new-instance v10, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v11, "unrecognized character entity: \'"

    #@ed
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v10

    #@f1
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v10

    #@f5
    .line 248
    const-string/jumbo v11, "\'"

    #@f8
    .line 247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v10

    #@fc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v10

    #@100
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@103
    goto/16 :goto_0

    #@105
    .line 261
    .end local v1    # "charBuf":Ljava/lang/StringBuilder;
    .end local v2    # "charName":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    #@106
    goto/16 :goto_4
.end method

.method private readNextTag()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v3, 0x3c

    #@2
    const/4 v5, -0x1

    #@3
    .line 270
    const/4 v0, 0x0

    #@4
    .line 271
    .local v0, "c":I
    :cond_0
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    #@6
    if-nez v2, :cond_2

    #@8
    .line 272
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@b
    move-result v0

    #@c
    .line 273
    if-eq v0, v3, :cond_1

    #@e
    if-ne v0, v5, :cond_4

    #@10
    .line 274
    :cond_1
    if-ne v0, v3, :cond_2

    #@12
    .line 275
    const/4 v2, 0x1

    #@13
    iput-boolean v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    #@15
    .line 286
    :cond_2
    :goto_0
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    #@17
    if-eqz v2, :cond_6

    #@19
    .line 287
    const/4 v2, 0x0

    #@1a
    iput-boolean v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    #@1c
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    .line 290
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    #@24
    move-result v0

    #@25
    .line 291
    const/16 v2, 0x3e

    #@27
    if-eq v0, v2, :cond_3

    #@29
    if-ne v0, v5, :cond_5

    #@2b
    .line 297
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 279
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_0

    #@36
    .line 280
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "Unexpected non-whitespace character "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 294
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    int-to-char v2, v0

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    goto :goto_1

    #@59
    .line 299
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const/4 v2, 0x0

    #@5a
    return-object v2
.end method


# virtual methods
.method public bool(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 67
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 68
    const-string/jumbo v1, "true"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 70
    :cond_0
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public boolArray(Ljava/lang/String;)[Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 74
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 75
    .local v2, "sa":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@7
    .line 76
    array-length v3, v2

    #@8
    new-array v1, v3, [Z

    #@a
    .line 77
    .local v1, "result":[Z
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@c
    if-ge v0, v3, :cond_0

    #@e
    .line 78
    const-string/jumbo v3, "true"

    #@11
    aget-object v4, v2, v0

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    aput-boolean v3, v1, v0

    #@19
    .line 77
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 80
    :cond_0
    return-object v1

    #@1d
    .line 82
    .end local v0    # "i":I
    .end local v1    # "result":[Z
    :cond_1
    return-object v3
.end method

.method public character(Ljava/lang/String;)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 87
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 88
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 90
    :cond_0
    const v1, 0xffff

    #@f
    return v1
.end method

.method public characterArray(Ljava/lang/String;)[C
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 94
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 95
    .local v2, "sa":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@7
    .line 96
    array-length v3, v2

    #@8
    new-array v1, v3, [C

    #@a
    .line 97
    .local v1, "result":[C
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@c
    if-ge v0, v3, :cond_0

    #@e
    .line 98
    aget-object v3, v2, v0

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    aput-char v3, v1, v0

    #@17
    .line 97
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 100
    :cond_0
    return-object v1

    #@1b
    .line 102
    .end local v0    # "i":I
    .end local v1    # "result":[C
    :cond_1
    return-object v3
.end method

.method public close()Z
    .locals 5

    #@0
    .prologue
    .line 55
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .line 56
    .local v0, "ix":I
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    #@a
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    .line 57
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "/"

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 58
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    #@30
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@33
    .line 59
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    #@36
    .line 60
    const/4 v2, 0x1

    #@37
    return v2

    #@38
    .line 62
    :cond_0
    const/4 v2, 0x0

    #@39
    return v2
.end method

.method public namedIndex(Ljava/lang/String;[Ljava/lang/String;)B
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 107
    .local v1, "sa":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@6
    .line 108
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 109
    aget-object v2, p2, v0

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 110
    int-to-byte v2, v0

    #@13
    return v2

    #@14
    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 114
    .end local v0    # "i":I
    :cond_1
    const/4 v2, -0x1

    #@18
    return v2
.end method

.method public namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 118
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 119
    .local v4, "sa":[Ljava/lang/String;
    if-eqz v4, :cond_3

    #@7
    .line 120
    array-length v5, v4

    #@8
    new-array v2, v5, [B

    #@a
    .line 121
    .local v2, "result":[B
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v5, v4

    #@c
    if-ge v0, v5, :cond_2

    #@e
    .line 122
    aget-object v3, v4, v0

    #@10
    .line 123
    .local v3, "s":Ljava/lang/String;
    const/4 v1, 0x0

    #@11
    .local v1, "j":I
    :goto_1
    array-length v5, p2

    #@12
    if-ge v1, v5, :cond_1

    #@14
    .line 124
    aget-object v5, p2, v1

    #@16
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 125
    int-to-byte v5, v1

    #@1d
    aput-byte v5, v2, v0

    #@1f
    .line 121
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 129
    :cond_1
    const/4 v5, -0x1

    #@26
    aput-byte v5, v2, v0

    #@28
    goto :goto_2

    #@29
    .line 131
    .end local v1    # "j":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-object v2

    #@2a
    .line 133
    .end local v0    # "i":I
    .end local v2    # "result":[B
    :cond_3
    return-object v5
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 47
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    .line 48
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    #@12
    .line 49
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 51
    :cond_0
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method readChar()I
    .locals 2

    #@0
    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    #@2
    invoke-virtual {v1}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 305
    :catch_0
    move-exception v0

    #@8
    .line 308
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method public string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 138
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readData()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 139
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "/"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 140
    return-object v0

    #@25
    .line 143
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@26
    return-object v1
.end method

.method public stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v2

    #@a
    const-string/jumbo v3, "List"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {p0, v2}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 150
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@26
    .line 151
    const-string/jumbo v2, "Null"

    #@29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 152
    const/4 v1, 0x0

    #@30
    .line 154
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 156
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "/"

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, "List"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-direct {p0, v2}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_2

    #@55
    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@58
    move-result v2

    #@59
    new-array v2, v2, [Ljava/lang/String;

    #@5b
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, [Ljava/lang/String;

    #@61
    return-object v2

    #@62
    .line 160
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public stringTable(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v2

    #@a
    const-string/jumbo v3, "Table"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {p0, v2}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 167
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .local v1, "sa":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@26
    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 170
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "/"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    const-string/jumbo v3, "Table"

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-direct {p0, v2}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_1

    #@4b
    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@4e
    move-result v2

    #@4f
    new-array v2, v2, [[Ljava/lang/String;

    #@51
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, [[Ljava/lang/String;

    #@57
    return-object v2

    #@58
    .line 174
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v1    # "sa":[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

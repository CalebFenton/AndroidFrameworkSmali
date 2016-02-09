.class public Landroid/icu/impl/UnicodeRegex;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UnicodeRegex$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/UnicodeRegex;",
        ">;",
        "Landroid/icu/text/StringTransform;"
    }
.end annotation


# static fields
.field private static STANDARD:Landroid/icu/impl/UnicodeRegex;


# instance fields
.field private LongestFirst:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bnfCommentString:Ljava/lang/String;

.field private bnfLineSeparator:Ljava/lang/String;

.field private bnfVariableInfix:Ljava/lang/String;

.field private log:Ljava/lang/Appendable;

.field private symbolTable:Landroid/icu/text/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 344
    new-instance v0, Landroid/icu/impl/UnicodeRegex;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/UnicodeRegex;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 345
    const-string/jumbo v0, "#"

    #@6
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    #@8
    .line 346
    const-string/jumbo v0, "="

    #@b
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    #@d
    .line 347
    const-string/jumbo v0, "\n"

    #@10
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    #@12
    .line 348
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->log:Ljava/lang/Appendable;

    #@15
    .line 350
    new-instance v0, Landroid/icu/impl/UnicodeRegex$1;

    #@17
    invoke-direct {v0, p0}, Landroid/icu/impl/UnicodeRegex$1;-><init>(Landroid/icu/impl/UnicodeRegex;)V

    #@1a
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    #@1c
    .line 37
    return-void
.end method

.method public static appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    #@2
    new-instance v2, Ljava/io/InputStreamReader;

    #@4
    if-nez p2, :cond_0

    #@6
    const-string/jumbo p2, "UTF-8"

    #@9
    .end local p2    # "encoding":Ljava/lang/String;
    :cond_0
    invoke-direct {v2, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@c
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@f
    .line 292
    .local v0, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 293
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    #@15
    .line 296
    return-object p0

    #@16
    .line 294
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    goto :goto_0
.end method

.method public static appendLines(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@5
    .line 274
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, v0, p2}, Landroid/icu/impl/UnicodeRegex;->appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@c
    .line 274
    return-object v1

    #@d
    .line 275
    :catchall_0
    move-exception v1

    #@e
    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@11
    .line 275
    throw v1
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "options"    # I

    #@0
    .prologue
    .line 163
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getVariables(Ljava/util/List;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    #@1
    .line 362
    new-instance v10, Ljava/util/TreeMap;

    #@3
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    #@5
    invoke-direct {v10, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@8
    .line 363
    .local v10, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@9
    .line 364
    .local v9, "variable":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@e
    .line 365
    .local v1, "definition":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@f
    .line 366
    .local v0, "count":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v5

    #@13
    .end local v9    # "variable":Ljava/lang/String;
    .local v5, "line$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v11

    #@17
    if-eqz v11, :cond_8

    #@19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/lang/String;

    #@1f
    .line 367
    .local v4, "line":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    #@21
    .line 369
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@24
    move-result v11

    #@25
    if-eqz v11, :cond_0

    #@27
    .line 370
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v11

    #@2b
    const v12, 0xfeff

    #@2e
    if-ne v11, v12, :cond_1

    #@30
    const/4 v11, 0x1

    #@31
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 372
    :cond_1
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    #@37
    if-eqz v11, :cond_2

    #@39
    .line 373
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    #@3b
    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3e
    move-result v3

    #@3f
    .line 374
    .local v3, "hashPos":I
    if-ltz v3, :cond_2

    #@41
    invoke-virtual {v4, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 376
    .end local v3    # "hashPos":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    .line 377
    .local v8, "trimline":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@4c
    move-result v11

    #@4d
    if-eqz v11, :cond_0

    #@4f
    .line 380
    move-object v6, v4

    #@50
    .line 381
    .local v6, "linePart":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@57
    move-result v11

    #@58
    if-eqz v11, :cond_0

    #@5a
    .line 382
    const-string/jumbo v11, ";"

    #@5d
    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@60
    move-result v7

    #@61
    .line 383
    .local v7, "terminated":Z
    if-eqz v7, :cond_3

    #@63
    .line 384
    const/16 v11, 0x3b

    #@65
    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    #@68
    move-result v11

    #@69
    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    .line 386
    :cond_3
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    #@6f
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@72
    move-result v2

    #@73
    .line 387
    .local v2, "equalsPos":I
    if-ltz v2, :cond_6

    #@75
    .line 388
    if-eqz v9, :cond_4

    #@77
    .line 389
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@79
    new-instance v12, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v13, "Missing \';\' before "

    #@81
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v12

    #@85
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v12

    #@89
    const-string/jumbo v13, ") "

    #@8c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v12

    #@90
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v12

    #@98
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v11

    #@9c
    .line 391
    :cond_4
    invoke-virtual {v6, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9f
    move-result-object v11

    #@a0
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a3
    move-result-object v9

    #@a4
    .line 392
    .local v9, "variable":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@a7
    move-result v11

    #@a8
    if-eqz v11, :cond_5

    #@aa
    .line 393
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@ac
    new-instance v12, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v13, "Duplicate variable definition in "

    #@b4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v12

    #@b8
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v12

    #@bc
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v12

    #@c0
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v11

    #@c4
    .line 395
    :cond_5
    add-int/lit8 v11, v2, 0x1

    #@c6
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c9
    move-result-object v11

    #@ca
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@cd
    move-result-object v11

    #@ce
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d1
    .line 403
    .end local v9    # "variable":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_0

    #@d3
    .line 404
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@d6
    move-result-object v11

    #@d7
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    .line 405
    const/4 v9, 0x0

    #@db
    .line 406
    .local v9, "variable":Ljava/lang/String;
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 397
    .end local v9    # "variable":Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_7

    #@e2
    .line 398
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@e4
    new-instance v12, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v13, "Missing \'=\' at "

    #@ec
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v12

    #@f0
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v12

    #@f4
    const-string/jumbo v13, ") "

    #@f7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v12

    #@fb
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v12

    #@ff
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v12

    #@103
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@106
    throw v11

    #@107
    .line 400
    :cond_7
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    #@109
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10c
    move-result-object v11

    #@10d
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@110
    goto :goto_1

    #@111
    .line 409
    .end local v2    # "equalsPos":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "linePart":Ljava/lang/String;
    .end local v7    # "terminated":Z
    .end local v8    # "trimline":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_9

    #@113
    .line 410
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@115
    const-string/jumbo v12, "Missing \';\' at end"

    #@118
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11b
    throw v11

    #@11c
    .line 412
    :cond_9
    return-object v10
.end method

.method private processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I
    .locals 5
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .param p4, "temp"    # Landroid/icu/text/UnicodeSet;
    .param p5, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 333
    :try_start_0
    invoke-virtual {p5, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3
    .line 334
    invoke-virtual {p4}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@6
    move-result-object v2

    #@7
    iget-object v3, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    #@9
    const/4 v4, 0x0

    #@a
    invoke-virtual {v2, p1, p5, v3, v4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@d
    move-result-object v1

    #@e
    .line 335
    .local v1, "x":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    #@15
    .line 336
    const/4 v2, 0x0

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 337
    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    add-int/lit8 p2, v2, -0x1

    #@23
    .line 338
    return p2

    #@24
    .line 339
    .end local v1    # "x":Landroid/icu/text/UnicodeSet;
    :catch_0
    move-exception v0

    #@25
    .line 340
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Error in "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    invoke-virtual {v2, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Ljava/lang/IllegalArgumentException;

    #@44
    throw v2
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/impl/UnicodeRegex;
    .locals 2

    #@0
    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/UnicodeRegex;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 308
    :catch_0
    move-exception v0

    #@8
    .line 309
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->cloneAsThawed()Landroid/icu/impl/UnicodeRegex;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compileBnf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bnfLines"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    const-string/jumbo v0, "\\r\\n?|\\n"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeRegex;->compileBnf(Ljava/util/List;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public compileBnf(Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/UnicodeRegex;->getVariables(Ljava/util/List;)Ljava/util/Map;

    #@3
    move-result-object v13

    #@4
    .line 204
    .local v13, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/LinkedHashSet;

    #@6
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@9
    move-result-object v14

    #@a
    invoke-direct {v10, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@d
    .line 207
    .local v10, "unused":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@e
    .local v9, "i":I
    :goto_0
    const/4 v14, 0x2

    #@f
    if-ge v9, v14, :cond_3

    #@11
    .line 208
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v14

    #@15
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v6

    #@19
    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v14

    #@1d
    if-eqz v14, :cond_2

    #@1f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Ljava/util/Map$Entry;

    #@25
    .line 209
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v11

    #@29
    check-cast v11, Ljava/lang/String;

    #@2b
    .line 210
    .local v11, "variable":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/String;

    #@31
    .line 212
    .local v2, "definition":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@34
    move-result-object v14

    #@35
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v8

    #@39
    .local v8, "entry2$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v14

    #@3d
    if-eqz v14, :cond_0

    #@3f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Ljava/util/Map$Entry;

    #@45
    .line 213
    .local v7, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@48
    move-result-object v12

    #@49
    check-cast v12, Ljava/lang/String;

    #@4b
    .line 214
    .local v12, "variable2":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    check-cast v3, Ljava/lang/String;

    #@51
    .line 215
    .local v3, "definition2":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v14

    #@55
    if-nez v14, :cond_1

    #@57
    .line 218
    invoke-virtual {v3, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 219
    .local v1, "altered2":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v14

    #@5f
    if-nez v14, :cond_1

    #@61
    .line 220
    invoke-interface {v10, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@64
    .line 221
    invoke-interface {v13, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 222
    move-object/from16 v0, p0

    #@69
    iget-object v14, v0, Landroid/icu/impl/UnicodeRegex;->log:Ljava/lang/Appendable;

    #@6b
    if-eqz v14, :cond_1

    #@6d
    .line 224
    :try_start_0
    move-object/from16 v0, p0

    #@6f
    iget-object v14, v0, Landroid/icu/impl/UnicodeRegex;->log:Ljava/lang/Appendable;

    #@71
    new-instance v15, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v15

    #@7a
    const-string/jumbo v16, "="

    #@7d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v15

    #@81
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v15

    #@85
    const-string/jumbo v16, ";"

    #@88
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v15

    #@8c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v15

    #@90
    invoke-interface {v14, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    goto :goto_1

    #@94
    .line 225
    :catch_0
    move-exception v4

    #@95
    .line 226
    .local v4, "e":Ljava/io/IOException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@97
    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9a
    invoke-virtual {v14, v4}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@9d
    move-result-object v14

    #@9e
    check-cast v14, Ljava/lang/IllegalArgumentException;

    #@a0
    throw v14

    #@a1
    .line 207
    .end local v1    # "altered2":Ljava/lang/String;
    .end local v2    # "definition":Ljava/lang/String;
    .end local v3    # "definition2":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "entry2$iterator":Ljava/util/Iterator;
    .end local v11    # "variable":Ljava/lang/String;
    .end local v12    # "variable2":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@a3
    goto/16 :goto_0

    #@a5
    .line 233
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->size()I

    #@a8
    move-result v14

    #@a9
    const/4 v15, 0x1

    #@aa
    if-eq v14, v15, :cond_4

    #@ac
    .line 234
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@ae
    new-instance v15, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v16, "Not a single root: "

    #@b6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v15

    #@ba
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v15

    #@be
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v15

    #@c2
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v14

    #@c6
    .line 236
    :cond_4
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c9
    move-result-object v14

    #@ca
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cd
    move-result-object v14

    #@ce
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    move-result-object v14

    #@d2
    check-cast v14, Ljava/lang/String;

    #@d4
    return-object v14
.end method

.method public freeze()Landroid/icu/impl/UnicodeRegex;
    .locals 0

    #@0
    .prologue
    .line 318
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->freeze()Landroid/icu/impl/UnicodeRegex;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBnfCommentString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBnfLineSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBnfVariableInfix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSymbolTable()Landroid/icu/text/SymbolTable;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    #@2
    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 326
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setBnfCommentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "bnfCommentString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    #@2
    .line 243
    return-void
.end method

.method public setBnfLineSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "bnfLineSeparator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    #@2
    .line 259
    return-void
.end method

.method public setBnfVariableInfix(Ljava/lang/String;)V
    .locals 0
    .param p1, "bnfVariableInfix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    #@2
    .line 251
    return-void
.end method

.method public setSymbolTable(Landroid/icu/text/SymbolTable;)Landroid/icu/impl/UnicodeRegex;
    .locals 0
    .param p1, "symbolTable"    # Landroid/icu/text/SymbolTable;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    #@2
    .line 57
    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "regex"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "regex":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x5c

    #@2
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 82
    .local v3, "result":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/icu/text/UnicodeSet;

    #@9
    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@c
    .line 83
    .local v4, "temp":Landroid/icu/text/UnicodeSet;
    new-instance v5, Ljava/text/ParsePosition;

    #@e
    const/4 v0, 0x0

    #@f
    invoke-direct {v5, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@12
    .line 84
    .local v5, "pos":Ljava/text/ParsePosition;
    const/4 v7, 0x0

    #@13
    .line 90
    .local v7, "state":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v0

    #@18
    if-ge v2, v0, :cond_5

    #@1a
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v6

    #@1e
    .line 93
    .local v6, "ch":C
    packed-switch v7, :pswitch_data_0

    #@21
    .line 132
    :cond_0
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 90
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 95
    :pswitch_0
    if-ne v6, v8, :cond_2

    #@29
    .line 96
    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    move-object v0, p0

    #@30
    move-object v1, p1

    #@31
    .line 98
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    #@34
    move-result v2

    #@35
    goto :goto_2

    #@36
    .line 101
    :cond_1
    const/4 v7, 0x1

    #@37
    goto :goto_1

    #@38
    .line 102
    :cond_2
    const/16 v0, 0x5b

    #@3a
    if-ne v6, v0, :cond_0

    #@3c
    .line 104
    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_0

    #@42
    move-object v0, p0

    #@43
    move-object v1, p1

    #@44
    .line 105
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    #@47
    move-result v2

    #@48
    goto :goto_2

    #@49
    .line 112
    :pswitch_1
    const/16 v0, 0x51

    #@4b
    if-ne v6, v0, :cond_3

    #@4d
    .line 113
    const/4 v7, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 115
    :cond_3
    const/4 v7, 0x0

    #@50
    goto :goto_1

    #@51
    .line 120
    :pswitch_2
    if-ne v6, v8, :cond_0

    #@53
    .line 121
    const/4 v7, 0x3

    #@54
    goto :goto_1

    #@55
    .line 126
    :pswitch_3
    const/16 v0, 0x45

    #@57
    if-ne v6, v0, :cond_4

    #@59
    .line 127
    const/4 v7, 0x0

    #@5a
    .line 129
    :cond_4
    const/4 v7, 0x2

    #@5b
    .line 130
    goto :goto_1

    #@5c
    .line 134
    .end local v6    # "ch":C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    return-object v0

    #@61
    .line 93
    nop

    #@62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class public Landroid/icu/impl/UnicodeRegex;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/UnicodeRegex;",
        ">;",
        "Landroid/icu/text/StringTransform;"
    }
.end annotation


# static fields
.field private static final blacklist STANDARD:Landroid/icu/impl/UnicodeRegex;

.field private static final blacklist SUPP_ESCAPE:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist LongestFirst:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist bnfCommentString:Ljava/lang/String;

.field private blacklist bnfLineSeparator:Ljava/lang/String;

.field private blacklist bnfVariableInfix:Ljava/lang/String;

.field private blacklist symbolTable:Landroid/icu/text/SymbolTable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-string v0, "\\\\U00([0-9a-fA-F]{6})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UnicodeRegex;->SUPP_ESCAPE:Ljava/util/regex/Pattern;

    .line 363
    new-instance v0, Landroid/icu/impl/UnicodeRegex;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeRegex;-><init>()V

    sput-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const-string v0, "#"

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    .line 365
    const-string v0, "="

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    .line 366
    const-string v0, "\n"

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    .line 369
    new-instance v0, Landroid/icu/impl/UnicodeRegex$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/UnicodeRegex$1;-><init>(Landroid/icu/impl/UnicodeRegex;)V

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    return-void
.end method

.method public static blacklist appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

    .line 301
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    if-nez p2, :cond_9

    const-string v2, "UTF-8"

    goto :goto_a

    :cond_9
    move-object v2, p2

    :goto_a
    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 303
    .local v0, "in":Ljava/io/BufferedReader;
    :goto_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 307
    .end local v1    # "line":Ljava/lang/String;
    return-object p0

    .line 305
    .restart local v1    # "line":Ljava/lang/String;
    :cond_17
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v1    # "line":Ljava/lang/String;
    goto :goto_10
.end method

.method public static blacklist appendLines(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "is":Ljava/io/InputStream;
    :try_start_5
    invoke-static {p0, v0, p2}, Landroid/icu/impl/UnicodeRegex;->appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 287
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 285
    return-object v1

    .line 287
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 288
    throw v1
.end method

.method public static blacklist compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2
    .param p0, "regex"    # Ljava/lang/String;

    .line 164
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "options"    # I

    .line 174
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "regex"    # Ljava/lang/String;

    .line 154
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getVariables(Ljava/util/List;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 383
    .local v0, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 384
    .local v1, "variable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    .local v2, "definition":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 386
    .local v3, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 387
    .local v5, "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 389
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_27

    goto :goto_12

    .line 390
    :cond_27
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xfeff

    if-ne v7, v8, :cond_36

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    :cond_36
    iget-object v7, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    if-eqz v7, :cond_46

    .line 393
    iget-object v7, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 394
    .local v7, "hashPos":I
    if-ltz v7, :cond_46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 396
    .end local v7    # "hashPos":I
    :cond_46
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "trimline":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_51

    goto :goto_12

    .line 400
    :cond_51
    move-object v8, v5

    .line 401
    .local v8, "linePart":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5d

    goto :goto_12

    .line 402
    :cond_5d
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 403
    .local v9, "terminated":Z
    if-eqz v9, :cond_6f

    .line 404
    const/16 v10, 0x3b

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 406
    :cond_6f
    iget-object v10, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 407
    .local v10, "equalsPos":I
    const-string v11, ") "

    if-ltz v10, :cond_d1

    .line 408
    if-nez v1, :cond_b0

    .line 411
    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_97

    .line 415
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_dc

    .line 413
    :cond_97
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate variable definition in "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :cond_b0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing \';\' before "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_d1
    if-eqz v1, :cond_eb

    .line 420
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    :goto_dc
    if-eqz v9, :cond_e9

    .line 424
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const/4 v1, 0x0

    .line 426
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 428
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "trimline":Ljava/lang/String;
    .end local v8    # "linePart":Ljava/lang/String;
    .end local v9    # "terminated":Z
    .end local v10    # "equalsPos":I
    :cond_e9
    goto/16 :goto_12

    .line 418
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "trimline":Ljava/lang/String;
    .restart local v8    # "linePart":Ljava/lang/String;
    .restart local v9    # "terminated":Z
    .restart local v10    # "equalsPos":I
    :cond_eb
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing \'=\' at "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "trimline":Ljava/lang/String;
    .end local v8    # "linePart":Ljava/lang/String;
    .end local v9    # "terminated":Z
    .end local v10    # "equalsPos":I
    :cond_10c
    if-nez v1, :cond_10f

    .line 432
    return-object v0

    .line 430
    :cond_10f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Missing \';\' at end"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I
    .registers 10
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .param p4, "temp"    # Landroid/icu/text/UnicodeSet;
    .param p5, "pos"    # Ljava/text/ParsePosition;

    .line 347
    :try_start_0
    invoke-virtual {p5, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 348
    invoke-virtual {p4}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p5, v1, v2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 349
    .local v0, "x":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    .line 350
    invoke-virtual {v0, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "pattern":Ljava/lang/String;
    const-string v2, "\\U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 353
    sget-object v2, Landroid/icu/impl/UnicodeRegex;->SUPP_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\x{$1}"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 355
    :cond_2e
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_38

    add-int/lit8 v2, v2, -0x1

    .line 357
    .end local p2    # "i":I
    .local v2, "i":I
    return v2

    .line 358
    .end local v0    # "x":Landroid/icu/text/UnicodeSet;
    .end local v1    # "pattern":Ljava/lang/String;
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :catch_38
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalArgumentException;

    throw v1
.end method


# virtual methods
.method public blacklist cloneAsThawed()Landroid/icu/impl/UnicodeRegex;
    .registers 3

    .line 319
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/UnicodeRegex;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 320
    :catch_7
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->cloneAsThawed()Landroid/icu/impl/UnicodeRegex;

    move-result-object v0

    return-object v0
.end method

.method public blacklist compileBnf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "bnfLines"    # Ljava/lang/String;

    .line 184
    const-string v0, "\\r\\n?|\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeRegex;->compileBnf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist compileBnf(Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeRegex;->getVariables(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 215
    .local v0, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v1, "unused":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_6d

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 220
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    .local v5, "variable":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 223
    .local v6, "definition":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 224
    .local v8, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 225
    .local v9, "variable2":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 226
    .local v10, "definition2":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_58

    .line 227
    goto :goto_39

    .line 229
    :cond_58
    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, "altered2":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_68

    .line 231
    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v8    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "variable2":Ljava/lang/String;
    .end local v10    # "definition2":Ljava/lang/String;
    .end local v11    # "altered2":Ljava/lang/String;
    :cond_68
    goto :goto_39

    .line 242
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "variable":Ljava/lang/String;
    .end local v6    # "definition":Ljava/lang/String;
    :cond_69
    goto :goto_19

    .line 218
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 244
    .end local v2    # "i":I
    :cond_6d
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_83

    .line 247
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 245
    :cond_83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a single root: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist freeze()Landroid/icu/impl/UnicodeRegex;
    .registers 1

    .line 331
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->freeze()Landroid/icu/impl/UnicodeRegex;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBnfCommentString()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBnfLineSeparator()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBnfVariableInfix()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSymbolTable()Landroid/icu/text/SymbolTable;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    return-object v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setBnfCommentString(Ljava/lang/String;)V
    .registers 2
    .param p1, "bnfCommentString"    # Ljava/lang/String;

    .line 255
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public blacklist setBnfLineSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "bnfLineSeparator"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public blacklist setBnfVariableInfix(Ljava/lang/String;)V
    .registers 2
    .param p1, "bnfVariableInfix"    # Ljava/lang/String;

    .line 263
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public blacklist setSymbolTable(Landroid/icu/text/SymbolTable;)Landroid/icu/impl/UnicodeRegex;
    .registers 2
    .param p1, "symbolTable"    # Landroid/icu/text/SymbolTable;

    .line 65
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    .line 66
    return-object p0
.end method

.method public bridge synthetic blacklist transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "regex"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 92
    .local v4, "result":Ljava/lang/StringBuilder;
    new-instance v5, Landroid/icu/text/UnicodeSet;

    invoke-direct {v5}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 93
    .local v5, "temp":Landroid/icu/text/UnicodeSet;
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 94
    .local v6, "pos":Ljava/text/ParsePosition;
    const/4 v0, 0x0

    .line 100
    .local v0, "state":I
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_6e

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 103
    .local v7, "ch":C
    const/16 v1, 0x5c

    packed-switch v0, :pswitch_data_74

    move-object v2, p1

    .end local p1    # "regex":Ljava/lang/String;
    .local v2, "regex":Ljava/lang/String;
    goto :goto_67

    .line 136
    .end local v2    # "regex":Ljava/lang/String;
    .restart local p1    # "regex":Ljava/lang/String;
    :pswitch_25
    const/16 v2, 0x45

    if-ne v7, v2, :cond_2c

    .line 137
    const/4 v0, 0x0

    move-object v2, p1

    goto :goto_67

    .line 138
    :cond_2c
    if-eq v7, v1, :cond_31

    .line 139
    const/4 v0, 0x2

    move-object v2, p1

    goto :goto_67

    .line 138
    :cond_31
    move-object v2, p1

    goto :goto_67

    .line 130
    :pswitch_33
    if-ne v7, v1, :cond_38

    .line 131
    const/4 v0, 0x3

    move-object v2, p1

    goto :goto_67

    .line 130
    :cond_38
    move-object v2, p1

    goto :goto_67

    .line 122
    :pswitch_3a
    const/16 v1, 0x51

    if-ne v7, v1, :cond_41

    .line 123
    const/4 v0, 0x2

    move-object v2, p1

    goto :goto_67

    .line 125
    :cond_41
    const/4 v0, 0x0

    .line 127
    move-object v2, p1

    goto :goto_67

    .line 105
    :pswitch_44
    if-ne v7, v1, :cond_56

    .line 106
    invoke-static {p1, v3}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 108
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "regex":Ljava/lang/String;
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    move-result v3

    .line 109
    goto :goto_6a

    .line 111
    .end local v2    # "regex":Ljava/lang/String;
    .restart local p1    # "regex":Ljava/lang/String;
    :cond_53
    move-object v2, p1

    .end local p1    # "regex":Ljava/lang/String;
    .restart local v2    # "regex":Ljava/lang/String;
    const/4 v0, 0x1

    goto :goto_67

    .line 112
    .end local v2    # "regex":Ljava/lang/String;
    .restart local p1    # "regex":Ljava/lang/String;
    :cond_56
    move-object v2, p1

    .end local p1    # "regex":Ljava/lang/String;
    .restart local v2    # "regex":Ljava/lang/String;
    const/16 p1, 0x5b

    if-ne v7, p1, :cond_67

    .line 114
    invoke-static {v2, v3}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 115
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    move-result v3

    .line 116
    goto :goto_6a

    .line 143
    :cond_67
    :goto_67
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .end local v7    # "ch":C
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    move-object p1, v2

    goto :goto_14

    .end local v2    # "regex":Ljava/lang/String;
    .restart local p1    # "regex":Ljava/lang/String;
    :cond_6e
    move-object v2, p1

    .line 145
    .end local v3    # "i":I
    .end local p1    # "regex":Ljava/lang/String;
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3a
        :pswitch_33
        :pswitch_25
    .end packed-switch
.end method

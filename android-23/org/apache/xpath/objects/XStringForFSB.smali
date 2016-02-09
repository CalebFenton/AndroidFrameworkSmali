.class public Lorg/apache/xpath/objects/XStringForFSB;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForFSB.java"


# static fields
.field static final serialVersionUID:J = -0x154673048d1b5474L


# instance fields
.field protected m_hash:I

.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@4
    .line 44
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    #@6
    .line 47
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    #@9
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 80
    const-string/jumbo v1, "ER_FSB_CANNOT_TAKE_STRING"

    #@e
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public constructor <init>(Lorg/apache/xml/utils/FastStringBuffer;II)V
    .locals 3
    .param p1, "val"    # Lorg/apache/xml/utils/FastStringBuffer;
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    #@4
    .line 44
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    #@6
    .line 47
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    #@9
    .line 61
    iput p2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@b
    .line 62
    iput p3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@d
    .line 64
    if-nez p1, :cond_0

    #@f
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 66
    const-string/jumbo v1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    #@14
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 56
    :cond_0
    return-void
.end method

.method private static isSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 837
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@7
    .line 98
    return-void
.end method

.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@6
    add-int/2addr v1, p1

    #@7
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 10
    .param p1, "xstr"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 475
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@2
    .line 476
    .local v5, "len1":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@5
    move-result v6

    #@6
    .line 477
    .local v6, "len2":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v7

    #@a
    .line 478
    .local v7, "n":I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@d
    move-result-object v2

    #@e
    .line 479
    .local v2, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@10
    .line 480
    .local v3, "i":I
    const/4 v4, 0x0

    #@11
    .local v4, "j":I
    move v8, v7

    #@12
    .line 482
    .end local v7    # "n":I
    .local v8, "n":I
    :goto_0
    add-int/lit8 v7, v8, -0x1

    #@14
    .end local v8    # "n":I
    .restart local v7    # "n":I
    if-eqz v8, :cond_1

    #@16
    .line 484
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@19
    move-result v0

    #@1a
    .line 485
    .local v0, "c1":C
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@1d
    move-result v1

    #@1e
    .line 487
    .local v1, "c2":C
    if-eq v0, v1, :cond_0

    #@20
    .line 489
    sub-int v9, v0, v1

    #@22
    return v9

    #@23
    .line 492
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@25
    .line 493
    add-int/lit8 v4, v4, 0x1

    #@27
    move v8, v7

    #@28
    .end local v7    # "n":I
    .restart local v8    # "n":I
    goto :goto_0

    #@29
    .line 496
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v8    # "n":I
    .restart local v7    # "n":I
    :cond_1
    sub-int v9, v5, v6

    #@2b
    return v9
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 10
    .param p1, "xstr"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 521
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@2
    .line 522
    .local v5, "len1":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@5
    move-result v6

    #@6
    .line 523
    .local v6, "len2":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v7

    #@a
    .line 524
    .local v7, "n":I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@d
    move-result-object v2

    #@e
    .line 525
    .local v2, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@10
    .line 526
    .local v3, "i":I
    const/4 v4, 0x0

    #@11
    .local v4, "j":I
    move v8, v7

    #@12
    .line 528
    .end local v7    # "n":I
    .local v8, "n":I
    :goto_0
    add-int/lit8 v7, v8, -0x1

    #@14
    .end local v8    # "n":I
    .restart local v7    # "n":I
    if-eqz v8, :cond_1

    #@16
    .line 530
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@19
    move-result v9

    #@1a
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    #@1d
    move-result v0

    #@1e
    .line 531
    .local v0, "c1":C
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@21
    move-result v9

    #@22
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    #@25
    move-result v1

    #@26
    .line 533
    .local v1, "c2":C
    if-eq v0, v1, :cond_0

    #@28
    .line 535
    sub-int v9, v0, v1

    #@2a
    return v9

    #@2b
    .line 538
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2d
    .line 539
    add-int/lit8 v4, v4, 0x1

    #@2f
    move v8, v7

    #@30
    .end local v7    # "n":I
    .restart local v8    # "n":I
    goto :goto_0

    #@31
    .line 542
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v8    # "n":I
    .restart local v7    # "n":I
    :cond_1
    sub-int v9, v5, v6

    #@33
    return v9
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 815
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 3
    .param p1, "lh"    # Lorg/xml/sax/ext/LexicalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@6
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@8
    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V

    #@b
    .line 197
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@6
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@8
    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@b
    .line 182
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 421
    if-nez p1, :cond_0

    #@2
    .line 422
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 424
    :cond_0
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 430
    :cond_1
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 431
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 432
    :cond_2
    instance-of v0, p1, Lorg/apache/xpath/objects/XStringForFSB;

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 433
    check-cast p1, Lorg/apache/xml/utils/XMLString;

    #@1c
    .end local p1    # "obj2":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Lorg/apache/xml/utils/XMLString;)Z

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    .line 435
    .restart local p1    # "obj2":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 8
    .param p1, "anotherString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 379
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@3
    .line 381
    .local v3, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    if-ne v3, v5, :cond_2

    #@9
    .line 383
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@c
    move-result-object v0

    #@d
    .line 384
    .local v0, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@f
    .line 385
    .local v1, "i":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    move v4, v3

    #@11
    .line 387
    .end local v3    # "n":I
    .local v4, "n":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    #@13
    .end local v4    # "n":I
    .restart local v3    # "n":I
    if-eqz v4, :cond_1

    #@15
    .line 389
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@18
    move-result v5

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v6

    #@1d
    if-eq v5, v6, :cond_0

    #@1f
    .line 391
    return v7

    #@20
    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    .line 395
    add-int/lit8 v2, v2, 0x1

    #@24
    move v4, v3

    #@25
    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    #@26
    .line 398
    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_1
    const/4 v5, 0x1

    #@27
    return v5

    #@28
    .line 401
    .end local v0    # "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    return v7
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 9
    .param p1, "obj2"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 292
    if-ne p0, p1, :cond_0

    #@4
    .line 294
    return v8

    #@5
    .line 297
    :cond_0
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@7
    .line 299
    .local v3, "n":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@a
    move-result v5

    #@b
    if-ne v3, v5, :cond_3

    #@d
    .line 301
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@10
    move-result-object v0

    #@11
    .line 302
    .local v0, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@13
    .line 303
    .local v1, "i":I
    const/4 v2, 0x0

    #@14
    .local v2, "j":I
    move v4, v3

    #@15
    .line 305
    .end local v3    # "n":I
    .local v4, "n":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    #@17
    .end local v4    # "n":I
    .restart local v3    # "n":I
    if-eqz v4, :cond_2

    #@19
    .line 307
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@1c
    move-result v5

    #@1d
    invoke-interface {p1, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@20
    move-result v6

    #@21
    if-eq v5, v6, :cond_1

    #@23
    .line 309
    return v7

    #@24
    .line 312
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    .line 313
    add-int/lit8 v2, v2, 0x1

    #@28
    move v4, v3

    #@29
    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    #@2a
    .line 316
    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_2
    return v8

    #@2b
    .line 319
    .end local v0    # "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    return v7
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 10
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 334
    if-ne p0, p1, :cond_0

    #@4
    .line 336
    return v9

    #@5
    .line 338
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@8
    move-result v6

    #@9
    const/4 v7, 0x2

    #@a
    if-ne v6, v7, :cond_1

    #@c
    .line 339
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@f
    move-result v6

    #@10
    return v6

    #@11
    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 342
    .local v5, "str":Ljava/lang/String;
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@17
    .line 344
    .local v3, "n":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1a
    move-result v6

    #@1b
    if-ne v3, v6, :cond_4

    #@1d
    .line 346
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@20
    move-result-object v0

    #@21
    .line 347
    .local v0, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@23
    .line 348
    .local v1, "i":I
    const/4 v2, 0x0

    #@24
    .local v2, "j":I
    move v4, v3

    #@25
    .line 350
    .end local v3    # "n":I
    .local v4, "n":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    #@27
    .end local v4    # "n":I
    .restart local v3    # "n":I
    if-eqz v4, :cond_3

    #@29
    .line 352
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@2c
    move-result v6

    #@2d
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v7

    #@31
    if-eq v6, v7, :cond_2

    #@33
    .line 354
    return v8

    #@34
    .line 357
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@36
    .line 358
    add-int/lit8 v2, v2, 0x1

    #@38
    move v4, v3

    #@39
    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    #@3a
    .line 361
    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_3
    return v9

    #@3b
    .line 364
    .end local v0    # "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    return v8
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "anotherString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 456
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 455
    :goto_0
    return v0

    #@11
    .line 456
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 14
    .param p1, "trimHead"    # Z
    .param p2, "trimTail"    # Z
    .param p3, "doublePunctuationSpaces"    # Z

    #@0
    .prologue
    .line 858
    iget v12, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@2
    iget v13, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@4
    add-int v5, v12, v13

    #@6
    .line 859
    .local v5, "end":I
    iget v12, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@8
    new-array v0, v12, [C

    #@a
    .line 860
    .local v0, "buf":[C
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@d
    move-result-object v6

    #@e
    .line 861
    .local v6, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v4, 0x0

    #@f
    .line 864
    .local v4, "edit":Z
    const/4 v2, 0x0

    #@10
    .line 865
    .local v2, "d":I
    const/4 v7, 0x0

    #@11
    .line 867
    .local v7, "pres":Z
    iget v9, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@13
    .local v9, "s":I
    move v3, v2

    #@14
    .end local v2    # "d":I
    .local v3, "d":I
    :goto_0
    if-ge v9, v5, :cond_5

    #@16
    .line 869
    invoke-virtual {v6, v9}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@19
    move-result v1

    #@1a
    .line 871
    .local v1, "c":C
    invoke-static {v1}, Lorg/apache/xpath/objects/XStringForFSB;->isSpace(C)Z

    #@1d
    move-result v12

    #@1e
    if-eqz v12, :cond_4

    #@20
    .line 873
    if-nez v7, :cond_3

    #@22
    .line 875
    const/16 v12, 0x20

    #@24
    if-eq v12, v1, :cond_0

    #@26
    .line 877
    const/4 v4, 0x1

    #@27
    .line 880
    :cond_0
    add-int/lit8 v2, v3, 0x1

    #@29
    .end local v3    # "d":I
    .restart local v2    # "d":I
    const/16 v12, 0x20

    #@2b
    aput-char v12, v0, v3

    #@2d
    .line 882
    if-eqz p3, :cond_2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 884
    add-int/lit8 v12, v2, -0x1

    #@33
    aget-char v8, v0, v12

    #@35
    .line 886
    .local v8, "prevChar":C
    const/16 v12, 0x2e

    #@37
    if-eq v8, v12, :cond_1

    #@39
    const/16 v12, 0x21

    #@3b
    if-eq v8, v12, :cond_1

    #@3d
    .line 887
    const/16 v12, 0x3f

    #@3f
    if-eq v8, v12, :cond_1

    #@41
    .line 889
    const/4 v7, 0x1

    #@42
    .line 867
    .end local v8    # "prevChar":C
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@44
    move v3, v2

    #@45
    .end local v2    # "d":I
    .restart local v3    # "d":I
    goto :goto_0

    #@46
    .line 894
    .end local v3    # "d":I
    .restart local v2    # "d":I
    :cond_2
    const/4 v7, 0x1

    #@47
    goto :goto_1

    #@48
    .line 899
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_3
    const/4 v4, 0x1

    #@49
    .line 900
    const/4 v7, 0x1

    #@4a
    move v2, v3

    #@4b
    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_1

    #@4c
    .line 905
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_4
    add-int/lit8 v2, v3, 0x1

    #@4e
    .end local v3    # "d":I
    .restart local v2    # "d":I
    aput-char v1, v0, v3

    #@50
    .line 906
    const/4 v7, 0x0

    #@51
    goto :goto_1

    #@52
    .line 910
    .end local v1    # "c":C
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_5
    if-eqz p2, :cond_8

    #@54
    const/4 v12, 0x1

    #@55
    if-gt v12, v3, :cond_8

    #@57
    add-int/lit8 v12, v3, -0x1

    #@59
    aget-char v12, v0, v12

    #@5b
    const/16 v13, 0x20

    #@5d
    if-ne v13, v12, :cond_8

    #@5f
    .line 912
    const/4 v4, 0x1

    #@60
    .line 914
    add-int/lit8 v2, v3, -0x1

    #@62
    .line 917
    .end local v3    # "d":I
    .restart local v2    # "d":I
    :goto_2
    const/4 v10, 0x0

    #@63
    .line 919
    .local v10, "start":I
    if-eqz p1, :cond_6

    #@65
    if-lez v2, :cond_6

    #@67
    const/4 v12, 0x0

    #@68
    aget-char v12, v0, v12

    #@6a
    const/16 v13, 0x20

    #@6c
    if-ne v13, v12, :cond_6

    #@6e
    .line 921
    const/4 v4, 0x1

    #@6f
    .line 923
    const/4 v10, 0x1

    #@70
    .line 926
    :cond_6
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    #@73
    move-result-object v11

    #@74
    .line 928
    .local v11, "xsf":Lorg/apache/xml/utils/XMLStringFactory;
    if-eqz v4, :cond_7

    #@76
    sub-int v12, v2, v10

    #@78
    invoke-virtual {v11, v0, v10, v12}, Lorg/apache/xml/utils/XMLStringFactory;->newstr([CII)Lorg/apache/xml/utils/XMLString;

    #@7b
    move-result-object p0

    #@7c
    .end local p0    # "this":Lorg/apache/xpath/objects/XStringForFSB;
    :cond_7
    return-object p0

    #@7d
    .end local v2    # "d":I
    .end local v10    # "start":I
    .end local v11    # "xsf":Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v3    # "d":I
    .restart local p0    # "this":Lorg/apache/xpath/objects/XStringForFSB;
    :cond_8
    move v2, v3

    #@7e
    .line 911
    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_2
.end method

.method public fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@4
    return-object v0
.end method

.method public getChars(II[CI)V
    .locals 7
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 257
    sub-int v5, p2, p1

    #@2
    .line 259
    .local v5, "n":I
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@4
    if-le v5, v6, :cond_0

    #@6
    .line 260
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@8
    .line 262
    :cond_0
    array-length v6, p3

    #@9
    sub-int/2addr v6, p4

    #@a
    if-le v5, v6, :cond_1

    #@c
    .line 263
    array-length v6, p3

    #@d
    sub-int v5, v6, p4

    #@f
    .line 265
    :cond_1
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@11
    add-int/2addr v6, p1

    #@12
    add-int v2, v6, v5

    #@14
    .line 266
    .local v2, "end":I
    move v0, p4

    #@15
    .line 267
    .local v0, "d":I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@18
    move-result-object v3

    #@19
    .line 269
    .local v3, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@1b
    add-int v4, p1, v6

    #@1d
    .local v4, "i":I
    move v1, v0

    #@1e
    .end local v0    # "d":I
    .local v1, "d":I
    :goto_0
    if-ge v4, v2, :cond_2

    #@20
    .line 271
    add-int/lit8 v0, v1, 0x1

    #@22
    .end local v1    # "d":I
    .restart local v0    # "d":I
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@25
    move-result v6

    #@26
    aput-char v6, p3, v1

    #@28
    .line 269
    add-int/lit8 v4, v4, 0x1

    #@2a
    move v1, v0

    #@2b
    .end local v0    # "d":I
    .restart local v1    # "d":I
    goto :goto_0

    #@2c
    .line 252
    :cond_2
    return-void
.end method

.method public hasString()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 586
    invoke-super {p0}, Lorg/apache/xpath/objects/XString;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 676
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->indexOf(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(II)I
    .locals 6
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 710
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@3
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@5
    add-int v2, v3, v4

    #@7
    .line 711
    .local v2, "max":I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@a
    move-result-object v0

    #@b
    .line 713
    .local v0, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    if-gez p2, :cond_1

    #@d
    .line 715
    const/4 p2, 0x0

    #@e
    .line 724
    :cond_0
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@10
    add-int v1, v3, p2

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@14
    .line 726
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@17
    move-result v3

    #@18
    if-ne v3, p1, :cond_2

    #@1a
    .line 728
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@1c
    sub-int v3, v1, v3

    #@1e
    return v3

    #@1f
    .line 717
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@21
    if-lt p2, v3, :cond_0

    #@23
    .line 721
    return v5

    #@24
    .line 724
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 732
    :cond_3
    return v5
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@2
    return v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 1
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 654
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 8
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "toffset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 611
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@4
    move-result-object v0

    #@5
    .line 612
    .local v0, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@7
    add-int v4, v5, p2

    #@9
    .line 613
    .local v4, "to":I
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@b
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@d
    add-int v3, v5, v6

    #@f
    .line 614
    .local v3, "tlim":I
    const/4 v2, 0x0

    #@10
    .line 615
    .local v2, "po":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@13
    move-result v1

    #@14
    .line 618
    .local v1, "pc":I
    if-ltz p2, :cond_0

    #@16
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@18
    sub-int/2addr v5, v1

    #@19
    if-le p2, v5, :cond_2

    #@1b
    .line 620
    :cond_0
    return v7

    #@1c
    .line 630
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@1e
    .line 631
    add-int/lit8 v2, v2, 0x1

    #@20
    .line 623
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@22
    if-ltz v1, :cond_3

    #@24
    .line 625
    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@27
    move-result v5

    #@28
    invoke-interface {p1, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@2b
    move-result v6

    #@2c
    if-eq v5, v6, :cond_1

    #@2e
    .line 627
    return v7

    #@2f
    .line 634
    :cond_3
    const/4 v5, 0x1

    #@30
    return v5
.end method

.method public str()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 141
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@7
    move-result-object v0

    #@8
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@a
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@c
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    #@12
    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 4
    .param p1, "beginIndex"    # I

    #@0
    .prologue
    .line 755
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@2
    sub-int v0, v2, p1

    #@4
    .line 757
    .local v0, "len":I
    if-gtz v0, :cond_0

    #@6
    .line 758
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@8
    return-object v2

    #@9
    .line 761
    :cond_0
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@b
    add-int v1, v2, p1

    #@d
    .line 763
    .local v1, "start":I
    new-instance v2, Lorg/apache/xpath/objects/XStringForFSB;

    #@f
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v2, v3, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    #@16
    return-object v2
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 786
    sub-int v0, p2, p1

    #@2
    .line 788
    .local v0, "len":I
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@4
    if-le v0, v2, :cond_0

    #@6
    .line 789
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@8
    .line 791
    :cond_0
    if-gtz v0, :cond_1

    #@a
    .line 792
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@c
    return-object v2

    #@d
    .line 795
    :cond_1
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@f
    add-int v1, v2, p1

    #@11
    .line 797
    .local v1, "start":I
    new-instance v2, Lorg/apache/xpath/objects/XStringForFSB;

    #@13
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v2, v3, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    #@1a
    return-object v2
.end method

.method public toDouble()D
    .locals 10

    #@0
    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    #@2
    .line 949
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@4
    if-nez v4, :cond_0

    #@6
    .line 950
    return-wide v8

    #@7
    .line 953
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    #@a
    move-result-object v4

    #@b
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    #@d
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@f
    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 962
    .local v3, "valueString":Ljava/lang/String;
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@16
    if-ge v1, v4, :cond_1

    #@18
    .line 963
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v4

    #@1c
    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_2

    #@22
    .line 965
    :cond_1
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@24
    if-ne v1, v4, :cond_3

    #@26
    return-wide v8

    #@27
    .line 962
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 966
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v4

    #@2e
    const/16 v5, 0x2d

    #@30
    if-ne v4, v5, :cond_4

    #@32
    .line 967
    add-int/lit8 v1, v1, 0x1

    #@34
    .line 968
    :cond_4
    :goto_1
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@36
    if-ge v1, v4, :cond_5

    #@38
    .line 969
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v0

    #@3c
    .line 970
    .local v0, "c":C
    const/16 v4, 0x2e

    #@3e
    if-eq v0, v4, :cond_7

    #@40
    const/16 v4, 0x30

    #@42
    if-lt v0, v4, :cond_5

    #@44
    const/16 v4, 0x39

    #@46
    if-le v0, v4, :cond_7

    #@48
    .line 973
    .end local v0    # "c":C
    :cond_5
    :goto_2
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@4a
    if-ge v1, v4, :cond_6

    #@4c
    .line 974
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@4f
    move-result v4

    #@50
    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_8

    #@56
    .line 976
    :cond_6
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    #@58
    if-eq v1, v4, :cond_9

    #@5a
    .line 977
    return-wide v8

    #@5b
    .line 968
    .restart local v0    # "c":C
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 973
    .end local v0    # "c":C
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_2

    #@61
    .line 980
    :cond_9
    :try_start_0
    new-instance v4, Ljava/lang/Double;

    #@63
    invoke-direct {v4, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    #@66
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    move-result-wide v4

    #@6a
    return-wide v4

    #@6b
    .line 981
    :catch_0
    move-exception v2

    #@6c
    .line 983
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    return-wide v8
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 825
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v1, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

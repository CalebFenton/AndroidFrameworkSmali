.class Lorg/apache/xpath/compiler/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final TARGETEXTRA:I = 0x2710


# instance fields
.field private m_compiler:Lorg/apache/xpath/compiler/Compiler;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_patternMap:[I

.field private m_patternMapSize:I

.field m_processor:Lorg/apache/xpath/compiler/XPathParser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p3, "xpathProcessor"    # Lorg/apache/xpath/compiler/XPathParser;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    const/16 v0, 0x64

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@9
    .line 84
    iput-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@b
    .line 85
    iput-object p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@d
    .line 86
    iput-object p3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@f
    .line 81
    return-void
.end method

.method private final addToTokenQueue(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->addElement(Ljava/lang/Object;)V

    #@9
    .line 559
    return-void
.end method

.method private getTokenQueuePosFromMap(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 434
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@2
    aget v0, v1, p1

    #@4
    .line 436
    .local v0, "pos":I
    const/16 v1, 0x2710

    #@6
    if-lt v0, v1, :cond_0

    #@8
    add-int/lit16 v0, v0, -0x2710

    #@a
    .end local v0    # "pos":I
    :cond_0
    return v0
.end method

.method private mapNSTokens(Ljava/lang/String;III)I
    .locals 8
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "startSubstring"    # I
    .param p3, "posOfNSSep"    # I
    .param p4, "posOfScan"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 582
    const-string/jumbo v1, ""

    #@4
    .line 584
    .local v1, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    #@6
    if-ltz p3, :cond_0

    #@8
    .line 586
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 590
    :cond_0
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@e
    if-eqz v4, :cond_1

    #@10
    const-string/jumbo v4, "*"

    #@13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 630
    :cond_1
    move-object v3, v1

    #@1a
    .line 633
    .local v3, "uName":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_5

    #@1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1f
    move-result v4

    #@20
    if-lez v4, :cond_5

    #@22
    .line 635
    invoke-direct {p0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@25
    .line 636
    const-string/jumbo v4, ":"

    #@28
    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@2b
    .line 638
    add-int/lit8 v4, p3, 0x1

    #@2d
    invoke-virtual {p1, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 640
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@34
    move-result v4

    #@35
    if-lez v4, :cond_2

    #@37
    .line 641
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@3a
    .line 667
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v4, -0x1

    #@3b
    return v4

    #@3c
    .line 591
    .end local v3    # "uName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "xmlns"

    #@3f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_1

    #@45
    .line 595
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@48
    move-result v4

    #@49
    if-lez v4, :cond_4

    #@4b
    .line 596
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@4d
    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .restart local v3    # "uName":Ljava/lang/String;
    goto :goto_0

    #@52
    .line 618
    .end local v3    # "uName":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@54
    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result-object v3

    #@58
    .restart local v3    # "uName":Ljava/lang/String;
    goto :goto_0

    #@59
    .line 624
    .end local v3    # "uName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@5a
    .line 625
    .local v0, "cce":Ljava/lang/ClassCastException;
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@5c
    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .restart local v3    # "uName":Ljava/lang/String;
    goto :goto_0

    #@61
    .line 647
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :cond_5
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@63
    const-string/jumbo v5, "ER_PREFIX_MUST_RESOLVE"

    #@66
    .line 648
    const/4 v6, 0x1

    #@67
    new-array v6, v6, [Ljava/lang/String;

    #@69
    aput-object v1, v6, v7

    #@6b
    .line 647
    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V

    #@6e
    goto :goto_1
.end method

.method private mapPatternElemPos(IZZ)Z
    .locals 6
    .param p1, "nesting"    # I
    .param p2, "isStart"    # Z
    .param p3, "isAttrName"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 400
    if-nez p1, :cond_3

    #@3
    .line 402
    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@5
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@7
    array-length v4, v4

    #@8
    if-lt v3, v4, :cond_0

    #@a
    .line 404
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@c
    .line 405
    .local v1, "patternMap":[I
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@e
    array-length v0, v3

    #@f
    .line 406
    .local v0, "len":I
    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@11
    add-int/lit8 v3, v3, 0x64

    #@13
    new-array v3, v3, [I

    #@15
    iput-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@17
    .line 407
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@19
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@1c
    .line 409
    .end local v0    # "len":I
    .end local v1    # "patternMap":[I
    :cond_0
    if-nez p2, :cond_1

    #@1e
    .line 411
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@20
    iget v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@22
    add-int/lit8 v4, v4, -0x1

    #@24
    aget v5, v3, v4

    #@26
    add-int/lit16 v5, v5, -0x2710

    #@28
    aput v5, v3, v4

    #@2a
    .line 413
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    #@2c
    iget v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@2e
    .line 414
    iget-object v5, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@30
    invoke-virtual {v5}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    #@33
    move-result v5

    #@34
    if-eqz p3, :cond_2

    #@36
    const/4 v2, 0x1

    #@37
    :cond_2
    sub-int v2, v5, v2

    #@39
    add-int/lit16 v2, v2, 0x2710

    #@3b
    .line 413
    aput v2, v3, v4

    #@3d
    .line 416
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@3f
    add-int/lit8 v2, v2, 0x1

    #@41
    iput v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@43
    .line 418
    const/4 p2, 0x0

    #@44
    .line 421
    .end local p2    # "isStart":Z
    :cond_3
    return p2
.end method

.method private recordTokenString(Ljava/util/Vector;)V
    .locals 5
    .param p1, "targetStrings"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 503
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@3
    add-int/lit8 v2, v2, -0x1

    #@5
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getTokenQueuePosFromMap(I)I

    #@8
    move-result v1

    #@9
    .line 505
    .local v1, "tokPos":I
    add-int/lit8 v2, v1, 0x1

    #@b
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    #@e
    .line 507
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@10
    const/16 v3, 0x28

    #@12
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 509
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@1a
    iget-object v2, v2, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@1c
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getKeywordToken(Ljava/lang/String;)I

    #@1f
    move-result v0

    #@20
    .line 511
    .local v0, "tok":I
    sparse-switch v0, :sswitch_data_0

    #@23
    .line 532
    const-string/jumbo v2, "*"

    #@26
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@29
    .line 500
    .end local v0    # "tok":I
    :goto_0
    return-void

    #@2a
    .line 514
    .restart local v0    # "tok":I
    :sswitch_0
    const-string/jumbo v2, "#comment"

    #@2d
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@30
    goto :goto_0

    #@31
    .line 517
    :sswitch_1
    const-string/jumbo v2, "#text"

    #@34
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@37
    goto :goto_0

    #@38
    .line 520
    :sswitch_2
    const-string/jumbo v2, "*"

    #@3b
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3e
    goto :goto_0

    #@3f
    .line 523
    :sswitch_3
    const-string/jumbo v2, "/"

    #@42
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@45
    goto :goto_0

    #@46
    .line 526
    :sswitch_4
    const-string/jumbo v2, "*"

    #@49
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@4c
    goto :goto_0

    #@4d
    .line 529
    :sswitch_5
    const-string/jumbo v2, "*"

    #@50
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@53
    goto :goto_0

    #@54
    .line 537
    .end local v0    # "tok":I
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@56
    const/16 v3, 0x40

    #@58
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_1

    #@5e
    .line 539
    add-int/lit8 v1, v1, 0x1

    #@60
    .line 541
    add-int/lit8 v2, v1, 0x1

    #@62
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    #@65
    .line 544
    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@67
    const/16 v3, 0x3a

    #@69
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_2

    #@6f
    .line 546
    add-int/lit8 v1, v1, 0x2

    #@71
    .line 549
    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@73
    invoke-virtual {v2}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@7e
    goto :goto_0

    #@7f
    .line 511
    nop

    #@80
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x24 -> :sswitch_4
        0x406 -> :sswitch_0
        0x407 -> :sswitch_1
        0x408 -> :sswitch_5
        0x409 -> :sswitch_2
    .end sparse-switch
.end method

.method private final resetTokenMark(I)V
    .locals 7
    .param p1, "mark"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 447
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@3
    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    #@6
    move-result v0

    #@7
    .line 449
    .local v0, "qsz":I
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@9
    if-lez p1, :cond_1

    #@b
    .line 450
    if-gt p1, v0, :cond_0

    #@d
    add-int/lit8 p1, p1, -0x1

    #@f
    .line 449
    .end local p1    # "mark":I
    :cond_0
    :goto_0
    iput p1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@11
    .line 452
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@13
    iget v1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@15
    if-ge v1, v0, :cond_2

    #@17
    .line 454
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@19
    .line 455
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@1b
    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    #@1e
    move-result-object v1

    #@1f
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@21
    iget v5, v4, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@23
    add-int/lit8 v6, v5, 0x1

    #@25
    iput v6, v4, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@27
    invoke-virtual {v1, v5}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/lang/String;

    #@2d
    .line 454
    iput-object v1, v3, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@2f
    .line 456
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@31
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@33
    iget-object v3, v3, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@35
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v2

    #@39
    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@3b
    .line 444
    :goto_1
    return-void

    #@3c
    .restart local p1    # "mark":I
    :cond_1
    move p1, v2

    #@3d
    .line 450
    goto :goto_0

    #@3e
    .line 460
    .end local p1    # "mark":I
    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@40
    const/4 v3, 0x0

    #@41
    iput-object v3, v1, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@43
    .line 461
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@45
    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@47
    goto :goto_1
.end method


# virtual methods
.method final getKeywordToken(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->getKeyWord(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/lang/Integer;

    #@6
    .line 481
    .local v1, "itok":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    .line 492
    .end local v1    # "itok":Ljava/lang/Integer;
    .local v3, "tok":I
    :goto_0
    return v3

    #@d
    .line 481
    .end local v3    # "tok":I
    .restart local v1    # "itok":Ljava/lang/Integer;
    :cond_0
    const/4 v3, 0x0

    #@e
    .restart local v3    # "tok":I
    goto :goto_0

    #@f
    .line 488
    .end local v1    # "itok":Ljava/lang/Integer;
    .end local v3    # "tok":I
    :catch_0
    move-exception v0

    #@10
    .line 489
    .local v0, "cce":Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    #@11
    .restart local v3    # "tok":I
    goto :goto_0

    #@12
    .line 484
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "tok":I
    :catch_1
    move-exception v2

    #@13
    .line 485
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    #@14
    .restart local v3    # "tok":I
    goto :goto_0
.end method

.method tokenize(Ljava/lang/String;)V
    .locals 1
    .param p1, "pat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;Ljava/util/Vector;)V

    #@4
    .line 96
    return-void
.end method

.method tokenize(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 15
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "targetStrings"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@2
    move-object/from16 v0, p1

    #@4
    iput-object v0, v11, Lorg/apache/xpath/compiler/Compiler;->m_currentPattern:Ljava/lang/String;

    #@6
    .line 114
    const/4 v11, 0x0

    #@7
    iput v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    #@9
    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@c
    move-result v11

    #@d
    const/16 v12, 0x1f4

    #@f
    if-ge v11, v12, :cond_2

    #@11
    .line 121
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@14
    move-result v11

    #@15
    .line 120
    :goto_0
    mul-int/lit8 v3, v11, 0x5

    #@17
    .line 122
    .local v3, "initTokQueueSize":I
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@19
    new-instance v12, Lorg/apache/xpath/compiler/OpMapVector;

    #@1b
    .line 123
    const/16 v13, 0x9c4

    #@1d
    .line 124
    const/4 v14, 0x1

    #@1e
    .line 122
    invoke-direct {v12, v3, v13, v14}, Lorg/apache/xpath/compiler/OpMapVector;-><init>(III)V

    #@21
    iput-object v12, v11, Lorg/apache/xpath/compiler/Compiler;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@23
    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@26
    move-result v7

    #@27
    .line 127
    .local v7, "nChars":I
    const/4 v10, -0x1

    #@28
    .line 128
    .local v10, "startSubstring":I
    const/4 v9, -0x1

    #@29
    .line 129
    .local v9, "posOfNSSep":I
    const/4 v6, 0x1

    #@2a
    .line 130
    .local v6, "isStartOfPat":Z
    const/4 v4, 0x0

    #@2b
    .line 131
    .local v4, "isAttrName":Z
    const/4 v5, 0x0

    #@2c
    .line 135
    .local v5, "isNum":Z
    const/4 v8, 0x0

    #@2d
    .line 138
    .local v8, "nesting":I
    const/4 v2, 0x0

    #@2e
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_1c

    #@30
    .line 140
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v1

    #@36
    .line 142
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    #@39
    .line 345
    :cond_0
    :goto_2
    const/4 v11, -0x1

    #@3a
    if-ne v11, v10, :cond_1b

    #@3c
    .line 347
    move v10, v2

    #@3d
    .line 348
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    #@40
    move-result v5

    #@41
    .line 138
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 121
    .end local v1    # "c":C
    .end local v2    # "i":I
    .end local v3    # "initTokQueueSize":I
    .end local v4    # "isAttrName":Z
    .end local v7    # "nChars":I
    .end local v8    # "nesting":I
    .end local v9    # "posOfNSSep":I
    .end local v10    # "startSubstring":I
    :cond_2
    const/16 v11, 0x1f4

    #@46
    goto :goto_0

    #@47
    .line 146
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "initTokQueueSize":I
    .restart local v4    # "isAttrName":Z
    .restart local v7    # "nChars":I
    .restart local v8    # "nesting":I
    .restart local v9    # "posOfNSSep":I
    .restart local v10    # "startSubstring":I
    :sswitch_0
    const/4 v11, -0x1

    #@48
    if-eq v10, v11, :cond_3

    #@4a
    .line 148
    const/4 v5, 0x0

    #@4b
    .line 149
    .restart local v5    # "isNum":Z
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@4e
    move-result v6

    #@4f
    .line 150
    .local v6, "isStartOfPat":Z
    const/4 v4, 0x0

    #@50
    .line 152
    const/4 v11, -0x1

    #@51
    if-eq v11, v9, :cond_4

    #@53
    .line 154
    move-object/from16 v0, p1

    #@55
    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    #@58
    move-result v9

    #@59
    .line 162
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_3
    :goto_4
    move v10, v2

    #@5a
    .line 164
    add-int/lit8 v2, v2, 0x1

    #@5c
    :goto_5
    if-ge v2, v7, :cond_5

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v1

    #@64
    const/16 v11, 0x22

    #@66
    if-eq v1, v11, :cond_5

    #@68
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_5

    #@6b
    .line 158
    .restart local v5    # "isNum":Z
    .restart local v6    # "isStartOfPat":Z
    :cond_4
    move-object/from16 v0, p1

    #@6d
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@74
    goto :goto_4

    #@75
    .line 166
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_5
    const/16 v11, 0x22

    #@77
    if-ne v1, v11, :cond_6

    #@79
    if-ge v2, v7, :cond_6

    #@7b
    .line 168
    add-int/lit8 v11, v2, 0x1

    #@7d
    move-object/from16 v0, p1

    #@7f
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@82
    move-result-object v11

    #@83
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@86
    .line 170
    const/4 v10, -0x1

    #@87
    .line 167
    goto :goto_3

    #@88
    .line 174
    :cond_6
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@8a
    const-string/jumbo v12, "ER_EXPECTED_DOUBLE_QUOTE"

    #@8d
    .line 175
    const/4 v13, 0x0

    #@8e
    .line 174
    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@91
    goto :goto_3

    #@92
    .line 180
    :sswitch_1
    const/4 v11, -0x1

    #@93
    if-eq v10, v11, :cond_7

    #@95
    .line 182
    const/4 v5, 0x0

    #@96
    .line 183
    .restart local v5    # "isNum":Z
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@99
    move-result v6

    #@9a
    .line 184
    .restart local v6    # "isStartOfPat":Z
    const/4 v4, 0x0

    #@9b
    .line 186
    const/4 v11, -0x1

    #@9c
    if-eq v11, v9, :cond_8

    #@9e
    .line 188
    move-object/from16 v0, p1

    #@a0
    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    #@a3
    move-result v9

    #@a4
    .line 196
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_7
    :goto_6
    move v10, v2

    #@a5
    .line 198
    add-int/lit8 v2, v2, 0x1

    #@a7
    :goto_7
    if-ge v2, v7, :cond_9

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@ae
    move-result v1

    #@af
    const/16 v11, 0x27

    #@b1
    if-eq v1, v11, :cond_9

    #@b3
    add-int/lit8 v2, v2, 0x1

    #@b5
    goto :goto_7

    #@b6
    .line 192
    .restart local v5    # "isNum":Z
    .restart local v6    # "isStartOfPat":Z
    :cond_8
    move-object/from16 v0, p1

    #@b8
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bb
    move-result-object v11

    #@bc
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@bf
    goto :goto_6

    #@c0
    .line 200
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_9
    const/16 v11, 0x27

    #@c2
    if-ne v1, v11, :cond_a

    #@c4
    if-ge v2, v7, :cond_a

    #@c6
    .line 202
    add-int/lit8 v11, v2, 0x1

    #@c8
    move-object/from16 v0, p1

    #@ca
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@cd
    move-result-object v11

    #@ce
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@d1
    .line 204
    const/4 v10, -0x1

    #@d2
    .line 201
    goto/16 :goto_3

    #@d4
    .line 208
    :cond_a
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@d6
    const-string/jumbo v12, "ER_EXPECTED_SINGLE_QUOTE"

    #@d9
    .line 209
    const/4 v13, 0x0

    #@da
    .line 208
    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@dd
    goto/16 :goto_3

    #@df
    .line 216
    :sswitch_2
    const/4 v11, -0x1

    #@e0
    if-eq v10, v11, :cond_1

    #@e2
    .line 218
    const/4 v5, 0x0

    #@e3
    .line 219
    .restart local v5    # "isNum":Z
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@e6
    move-result v6

    #@e7
    .line 220
    .restart local v6    # "isStartOfPat":Z
    const/4 v4, 0x0

    #@e8
    .line 222
    const/4 v11, -0x1

    #@e9
    if-eq v11, v9, :cond_b

    #@eb
    .line 224
    move-object/from16 v0, p1

    #@ed
    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    #@f0
    move-result v9

    #@f1
    .line 231
    :goto_8
    const/4 v10, -0x1

    #@f2
    goto/16 :goto_3

    #@f4
    .line 228
    :cond_b
    move-object/from16 v0, p1

    #@f6
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f9
    move-result-object v11

    #@fa
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@fd
    goto :goto_8

    #@fe
    .line 235
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :sswitch_3
    const/4 v4, 0x1

    #@ff
    .line 239
    :sswitch_4
    const/16 v11, 0x2d

    #@101
    if-ne v11, v1, :cond_d

    #@103
    .line 241
    if-nez v5, :cond_c

    #@105
    const/4 v11, -0x1

    #@106
    if-ne v10, v11, :cond_13

    #@108
    :cond_c
    const/4 v11, 0x1

    #@109
    :goto_9
    if-eqz v11, :cond_1

    #@10b
    .line 246
    const/4 v5, 0x0

    #@10c
    .line 266
    :cond_d
    :sswitch_5
    const/4 v11, -0x1

    #@10d
    if-eq v10, v11, :cond_15

    #@10f
    .line 268
    const/4 v5, 0x0

    #@110
    .line 269
    .restart local v5    # "isNum":Z
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@113
    move-result v6

    #@114
    .line 270
    .restart local v6    # "isStartOfPat":Z
    const/4 v4, 0x0

    #@115
    .line 272
    const/4 v11, -0x1

    #@116
    if-eq v11, v9, :cond_14

    #@118
    .line 274
    move-object/from16 v0, p1

    #@11a
    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    #@11d
    move-result v9

    #@11e
    .line 281
    :goto_a
    const/4 v10, -0x1

    #@11f
    .line 293
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_e
    :goto_b
    if-nez v8, :cond_10

    #@121
    .line 295
    const/16 v11, 0x7c

    #@123
    if-ne v11, v1, :cond_10

    #@125
    .line 297
    if-eqz p2, :cond_f

    #@127
    .line 299
    move-object/from16 v0, p2

    #@129
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    #@12c
    .line 302
    :cond_f
    const/4 v6, 0x1

    #@12d
    .line 306
    :cond_10
    const/16 v11, 0x29

    #@12f
    if-eq v11, v1, :cond_11

    #@131
    const/16 v11, 0x5d

    #@133
    if-ne v11, v1, :cond_17

    #@135
    .line 308
    :cond_11
    add-int/lit8 v8, v8, -0x1

    #@137
    .line 315
    :cond_12
    :goto_c
    add-int/lit8 v11, v2, 0x1

    #@139
    move-object/from16 v0, p1

    #@13b
    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13e
    move-result-object v11

    #@13f
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@142
    goto/16 :goto_3

    #@144
    .line 241
    :cond_13
    const/4 v11, 0x0

    #@145
    goto :goto_9

    #@146
    .line 278
    .restart local v5    # "isNum":Z
    .restart local v6    # "isStartOfPat":Z
    :cond_14
    move-object/from16 v0, p1

    #@148
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14b
    move-result-object v11

    #@14c
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@14f
    goto :goto_a

    #@150
    .line 283
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_15
    const/16 v11, 0x2f

    #@152
    if-ne v11, v1, :cond_16

    #@154
    if-eqz v6, :cond_16

    #@156
    .line 285
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@159
    move-result v6

    #@15a
    .restart local v6    # "isStartOfPat":Z
    goto :goto_b

    #@15b
    .line 287
    .end local v6    # "isStartOfPat":Z
    :cond_16
    const/16 v11, 0x2a

    #@15d
    if-ne v11, v1, :cond_e

    #@15f
    .line 289
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@162
    move-result v6

    #@163
    .line 290
    .restart local v6    # "isStartOfPat":Z
    const/4 v4, 0x0

    #@164
    goto :goto_b

    #@165
    .line 310
    .end local v6    # "isStartOfPat":Z
    :cond_17
    const/16 v11, 0x28

    #@167
    if-eq v11, v1, :cond_18

    #@169
    const/16 v11, 0x5b

    #@16b
    if-ne v11, v1, :cond_12

    #@16d
    .line 312
    :cond_18
    add-int/lit8 v8, v8, 0x1

    #@16f
    goto :goto_c

    #@170
    .line 318
    :sswitch_6
    if-lez v2, :cond_0

    #@172
    .line 320
    add-int/lit8 v11, v2, -0x1

    #@174
    if-ne v9, v11, :cond_1a

    #@176
    .line 322
    const/4 v11, -0x1

    #@177
    if-eq v10, v11, :cond_19

    #@179
    .line 324
    add-int/lit8 v11, v2, -0x1

    #@17b
    if-ge v10, v11, :cond_19

    #@17d
    .line 325
    add-int/lit8 v11, v2, -0x1

    #@17f
    move-object/from16 v0, p1

    #@181
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@184
    move-result-object v11

    #@185
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@188
    .line 328
    :cond_19
    const/4 v5, 0x0

    #@189
    .line 329
    .restart local v5    # "isNum":Z
    const/4 v4, 0x0

    #@18a
    .line 330
    const/4 v10, -0x1

    #@18b
    .line 331
    const/4 v9, -0x1

    #@18c
    .line 333
    add-int/lit8 v11, v2, -0x1

    #@18e
    add-int/lit8 v12, v2, 0x1

    #@190
    move-object/from16 v0, p1

    #@192
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@195
    move-result-object v11

    #@196
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@199
    goto/16 :goto_3

    #@19b
    .line 339
    .end local v5    # "isNum":Z
    :cond_1a
    move v9, v2

    #@19c
    goto/16 :goto_2

    #@19e
    .line 350
    :cond_1b
    if-eqz v5, :cond_1

    #@1a0
    .line 352
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    #@1a3
    move-result v5

    #@1a4
    .local v5, "isNum":Z
    goto/16 :goto_3

    #@1a6
    .line 357
    .end local v1    # "c":C
    .end local v5    # "isNum":Z
    :cond_1c
    const/4 v11, -0x1

    #@1a7
    if-eq v10, v11, :cond_1e

    #@1a9
    .line 359
    const/4 v5, 0x0

    #@1aa
    .line 360
    .local v5, "isNum":Z
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    #@1ad
    move-result v6

    #@1ae
    .line 362
    .restart local v6    # "isStartOfPat":Z
    const/4 v11, -0x1

    #@1af
    if-ne v11, v9, :cond_1d

    #@1b1
    .line 363
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@1b3
    if-eqz v11, :cond_20

    #@1b5
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@1b7
    invoke-interface {v11}, Lorg/apache/xml/utils/PrefixResolver;->handlesNullPrefixes()Z

    #@1ba
    move-result v11

    #@1bb
    .line 362
    if-eqz v11, :cond_20

    #@1bd
    .line 365
    :cond_1d
    move-object/from16 v0, p1

    #@1bf
    invoke-direct {p0, v0, v10, v9, v7}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    #@1c2
    move-result v9

    #@1c3
    .line 373
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_1e
    :goto_d
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    #@1c5
    invoke-virtual {v11}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    #@1c8
    move-result v11

    #@1c9
    if-nez v11, :cond_21

    #@1cb
    .line 375
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@1cd
    const-string/jumbo v12, "ER_EMPTY_EXPRESSION"

    #@1d0
    const/4 v13, 0x0

    #@1d1
    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d4
    .line 382
    :cond_1f
    :goto_e
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    #@1d6
    const/4 v12, 0x0

    #@1d7
    iput v12, v11, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@1d9
    .line 110
    return-void

    #@1da
    .line 369
    .restart local v5    # "isNum":Z
    .restart local v6    # "isStartOfPat":Z
    :cond_20
    move-object/from16 v0, p1

    #@1dc
    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1df
    move-result-object v11

    #@1e0
    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    #@1e3
    goto :goto_d

    #@1e4
    .line 377
    .end local v5    # "isNum":Z
    .end local v6    # "isStartOfPat":Z
    :cond_21
    if-eqz p2, :cond_1f

    #@1e6
    .line 379
    move-object/from16 v0, p2

    #@1e8
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    #@1eb
    goto :goto_e

    #@1ec
    .line 142
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_5
        0x22 -> :sswitch_0
        0x24 -> :sswitch_5
        0x27 -> :sswitch_1
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2d -> :sswitch_4
        0x2f -> :sswitch_5
        0x3a -> :sswitch_6
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x40 -> :sswitch_3
        0x5b -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x5e -> :sswitch_5
        0x7c -> :sswitch_5
    .end sparse-switch
.end method

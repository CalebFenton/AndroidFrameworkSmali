.class public abstract Lorg/apache/xml/serializer/ToStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;,
        Lorg/apache/xml/serializer/ToStream$BoolStack;
    }
.end annotation


# static fields
.field private static final COMMENT_BEGIN:Ljava/lang/String; = "<!--"

.field private static final COMMENT_END:Ljava/lang/String; = "-->"

.field private static final s_systemLineSep:[C


# instance fields
.field protected m_cdataStartCalled:Z

.field protected m_charInfo:Lorg/apache/xml/serializer/CharInfo;

.field protected m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

.field protected m_escaping:Z

.field private m_expandDTDEntities:Z

.field protected m_inDoctype:Z

.field m_isUTF8:Z

.field protected m_ispreserve:Z

.field protected m_isprevtext:Z

.field protected m_lineSep:[C

.field protected m_lineSepLen:I

.field protected m_lineSepUse:Z

.field m_outputStream:Ljava/io/OutputStream;

.field protected m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field m_shouldFlush:Z

.field protected m_spaceBeforeClose:Z

.field m_startNewLine:Z

.field private m_writer_set_by_user:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 111
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    #@3
    move-result-object v0

    #@4
    .line 112
    .local v0, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    const-string/jumbo v1, "line.separator"

    #@7
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@e
    move-result-object v1

    #@f
    sput-object v1, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    #@11
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 183
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    #@6
    .line 62
    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@8
    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@d
    .line 76
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    #@f
    invoke-direct {v0, v3, v3, v1}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    #@12
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@14
    .line 87
    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@16
    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    #@19
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@1b
    .line 97
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@1d
    .line 107
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    #@1f
    .line 121
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    #@21
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@23
    .line 127
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    #@25
    .line 133
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@27
    array-length v0, v0

    #@28
    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@2a
    .line 142
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    #@2c
    .line 147
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    #@2e
    .line 160
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    #@30
    .line 165
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    #@32
    .line 171
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    #@34
    .line 177
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    #@36
    .line 232
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    #@38
    .line 183
    return-void
.end method

.method private DTDprolog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3551
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@3
    .line 3552
    .local v0, "writer":Ljava/io/Writer;
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 3554
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@9
    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v1, v3}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    #@e
    .line 3555
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    #@10
    .line 3557
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 3559
    const-string/jumbo v1, " ["

    #@17
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 3560
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@1c
    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@1e
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@21
    .line 3561
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    #@23
    .line 3550
    :cond_1
    return-void
.end method

.method private accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I
    .locals 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "ch"    # C
    .param p3, "i"    # I
    .param p4, "chars"    # [C
    .param p5, "len"    # I
    .param p6, "fromTextNode"    # Z
    .param p7, "escLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1794
    invoke-virtual/range {p0 .. p7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    #@3
    move-result v2

    #@4
    .line 1796
    .local v2, "pos":I
    if-ne p3, v2, :cond_2

    #@6
    .line 1798
    invoke-static {p2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_3

    #@c
    .line 1804
    const/4 v0, 0x0

    #@d
    .line 1806
    .local v0, "codePoint":I
    add-int/lit8 v3, p3, 0x1

    #@f
    if-lt v3, p5, :cond_0

    #@11
    .line 1808
    new-instance v3, Ljava/io/IOException;

    #@13
    .line 1809
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@15
    .line 1810
    const-string/jumbo v5, "ER_INVALID_UTF16_SURROGATE"

    #@18
    .line 1811
    const/4 v6, 0x1

    #@19
    new-array v6, v6, [Ljava/lang/Object;

    #@1b
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    const/4 v8, 0x0

    #@20
    aput-object v7, v6, v8

    #@22
    .line 1809
    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 1808
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 1818
    :cond_0
    add-int/lit8 p3, p3, 0x1

    #@2c
    aget-char v1, p4, p3

    #@2e
    .line 1820
    .local v1, "next":C
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    #@31
    move-result v3

    #@32
    if-nez v3, :cond_1

    #@34
    .line 1821
    new-instance v3, Ljava/io/IOException;

    #@36
    .line 1822
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@38
    .line 1823
    const-string/jumbo v5, "ER_INVALID_UTF16_SURROGATE"

    #@3b
    .line 1825
    const/4 v6, 0x1

    #@3c
    new-array v6, v6, [Ljava/lang/Object;

    #@3e
    .line 1826
    new-instance v7, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    .line 1827
    const-string/jumbo v8, " "

    #@4e
    .line 1826
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 1828
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    .line 1826
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    const/4 v8, 0x0

    #@5f
    aput-object v7, v6, v8

    #@61
    .line 1822
    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 1821
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@68
    throw v3

    #@69
    .line 1832
    :cond_1
    invoke-static {p2, v1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    #@6c
    move-result v0

    #@6d
    .line 1835
    const-string/jumbo v3, "&#"

    #@70
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@73
    .line 1836
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@7a
    .line 1837
    const/16 v3, 0x3b

    #@7c
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    #@7f
    .line 1838
    add-int/lit8 v2, v2, 0x2

    #@81
    .line 1870
    .end local v0    # "codePoint":I
    .end local v1    # "next":C
    :cond_2
    :goto_0
    return v2

    #@82
    .line 1847
    :cond_3
    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isCharacterInC0orC1Range(C)Z

    #@85
    move-result v3

    #@86
    if-nez v3, :cond_4

    #@88
    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isNELorLSEPCharacter(C)Z

    #@8b
    move-result v3

    #@8c
    if-eqz v3, :cond_5

    #@8e
    .line 1849
    :cond_4
    const-string/jumbo v3, "&#"

    #@91
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@94
    .line 1850
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@9b
    .line 1851
    const/16 v3, 0x3b

    #@9d
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    #@a0
    .line 1866
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 1853
    :cond_5
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    #@a6
    move-result v3

    #@a7
    if-eqz v3, :cond_7

    #@a9
    .line 1854
    if-eqz p6, :cond_6

    #@ab
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@ad
    invoke-virtual {v3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    #@b0
    move-result v3

    #@b1
    if-nez v3, :cond_7

    #@b3
    .line 1855
    :cond_6
    if-nez p6, :cond_8

    #@b5
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@b7
    invoke-virtual {v3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    #@ba
    move-result v3

    #@bb
    .line 1853
    if-eqz v3, :cond_8

    #@bd
    .line 1856
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@bf
    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@c1
    if-lez v3, :cond_8

    #@c3
    .line 1858
    const-string/jumbo v3, "&#"

    #@c6
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c9
    .line 1859
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@d0
    .line 1860
    const/16 v3, 0x3b

    #@d2
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    #@d5
    goto :goto_1

    #@d6
    .line 1864
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    #@d9
    goto :goto_1
.end method

.method private addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 6
    .param p1, "URI_and_localName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2784
    new-instance v2, Ljava/util/StringTokenizer;

    #@3
    const-string/jumbo v3, "{}"

    #@6
    const/4 v4, 0x0

    #@7
    invoke-direct {v2, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@a
    .line 2785
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 2786
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 2788
    :goto_0
    if-nez v1, :cond_1

    #@1a
    .line 2791
    invoke-virtual {p2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 2792
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@20
    .line 2780
    :goto_1
    return-void

    #@21
    .line 2786
    :cond_0
    const/4 v1, 0x0

    #@22
    .local v1, "s2":Ljava/lang/String;
    goto :goto_0

    #@23
    .line 2797
    .end local v1    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@26
    .line 2798
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@29
    goto :goto_1
.end method

.method private static isCharacterInC0orC1Range(C)Z
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1676
    const/16 v2, 0x9

    #@4
    if-eq p0, v2, :cond_0

    #@6
    const/16 v2, 0xa

    #@8
    if-ne p0, v2, :cond_1

    #@a
    .line 1677
    :cond_0
    return v1

    #@b
    .line 1676
    :cond_1
    const/16 v2, 0xd

    #@d
    if-eq p0, v2, :cond_0

    #@f
    .line 1679
    const/16 v2, 0x7f

    #@11
    if-lt p0, v2, :cond_3

    #@13
    const/16 v2, 0x9f

    #@15
    if-gt p0, v2, :cond_3

    #@17
    :cond_2
    :goto_0
    return v0

    #@18
    :cond_3
    if-lt p0, v0, :cond_4

    #@1a
    const/16 v2, 0x1f

    #@1c
    if-le p0, v2, :cond_2

    #@1e
    :cond_4
    move v0, v1

    #@1f
    goto :goto_0
.end method

.method private isEscapingDisabled()Z
    .locals 1

    #@0
    .prologue
    .line 1331
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static isNELorLSEPCharacter(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1691
    const/16 v1, 0x85

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x2028

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private printSpace(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 816
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2
    .line 817
    .local v1, "writer":Ljava/io/Writer;
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@5
    .line 819
    const/16 v2, 0x20

    #@7
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@a
    .line 817
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 814
    :cond_0
    return-void
.end method

.method private processDirty([CIICIZ)I
    .locals 10
    .param p1, "chars"    # [C
    .param p2, "end"    # I
    .param p3, "i"    # I
    .param p4, "ch"    # C
    .param p5, "lastDirty"    # I
    .param p6, "fromTextNode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1714
    add-int/lit8 v9, p5, 0x1

    #@2
    .line 1717
    .local v9, "startClean":I
    if-le p3, v9, :cond_0

    #@4
    .line 1719
    sub-int v8, p3, v9

    #@6
    .line 1720
    .local v8, "lengthClean":I
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@8
    invoke-virtual {v0, p1, v9, v8}, Ljava/io/Writer;->write([CII)V

    #@b
    .line 1724
    .end local v8    # "lengthClean":I
    :cond_0
    const/16 v0, 0xa

    #@d
    if-ne v0, p4, :cond_1

    #@f
    if-eqz p6, :cond_1

    #@11
    .line 1726
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@13
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@15
    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@1b
    .line 1743
    :goto_0
    return p3

    #@1c
    .line 1732
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@1e
    .line 1738
    const/4 v7, 0x0

    #@1f
    move-object v0, p0

    #@20
    move v2, p4

    #@21
    move v3, p3

    #@22
    move-object v4, p1

    #@23
    move v5, p2

    #@24
    move/from16 v6, p6

    #@26
    .line 1731
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    #@29
    move-result v9

    #@2a
    .line 1739
    add-int/lit8 p3, v9, -0x1

    #@2c
    goto :goto_0
.end method

.method private processLineFeed([CIILjava/io/Writer;)I
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "i"    # I
    .param p3, "lastProcessed"    # I
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1641
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1642
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@c
    aget-char v0, v0, v2

    #@e
    const/16 v1, 0xa

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 1652
    :cond_0
    :goto_0
    return p3

    #@13
    .line 1648
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@16
    .line 1649
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@18
    iget v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@1a
    invoke-virtual {p4, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    #@1d
    .line 1650
    move p3, p2

    #@1e
    goto :goto_0
.end method

.method private resetToStream()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3264
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    #@4
    .line 3272
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    #@9
    .line 3275
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    #@b
    .line 3278
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    #@d
    .line 3279
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    #@f
    .line 3280
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@11
    .line 3281
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    #@13
    .line 3282
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    #@15
    .line 3283
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    #@17
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@19
    .line 3284
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    #@1b
    array-length v0, v0

    #@1c
    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@1e
    .line 3285
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    #@20
    .line 3287
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@22
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    #@25
    .line 3288
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    #@27
    .line 3289
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    #@29
    .line 3290
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    #@2b
    .line 3291
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    #@2d
    .line 3262
    return-void
.end method

.method private setCdataSectionElements(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2725
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    .line 2727
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@7
    .line 2730
    new-instance v6, Ljava/util/Vector;

    #@9
    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    #@c
    .line 2731
    .local v6, "v":Ljava/util/Vector;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    .line 2732
    .local v4, "l":I
    const/4 v3, 0x0

    #@11
    .line 2733
    .local v3, "inCurly":Z
    new-instance v0, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 2738
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    #@19
    .line 2740
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v1

    #@1d
    .line 2742
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_1

    #@23
    .line 2744
    if-nez v3, :cond_2

    #@25
    .line 2746
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@28
    move-result v7

    #@29
    if-lez v7, :cond_0

    #@2b
    .line 2748
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-direct {p0, v7, v6}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    #@32
    .line 2749
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    #@35
    .line 2738
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2754
    :cond_1
    const/16 v7, 0x7b

    #@3a
    if-ne v7, v1, :cond_3

    #@3c
    .line 2755
    const/4 v3, 0x1

    #@3d
    .line 2759
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@40
    goto :goto_1

    #@41
    .line 2756
    :cond_3
    const/16 v7, 0x7d

    #@43
    if-ne v7, v1, :cond_2

    #@45
    .line 2757
    const/4 v3, 0x0

    #@46
    goto :goto_2

    #@47
    .line 2762
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@4a
    move-result v7

    #@4b
    if-lez v7, :cond_5

    #@4d
    .line 2764
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-direct {p0, v7, v6}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    #@54
    .line 2765
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    #@57
    .line 2768
    :cond_5
    invoke-virtual {p0, v6}, Lorg/apache/xml/serializer/ToStream;->setCdataSectionElements(Ljava/util/Vector;)V

    #@5a
    .line 2722
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "inCurly":Z
    .end local v4    # "l":I
    .end local v6    # "v":Ljava/util/Vector;
    :cond_6
    return-void
.end method

.method private setOutputStreamInternal(Ljava/io/OutputStream;Z)V
    .locals 8
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "setByUser"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 714
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    #@3
    .line 715
    const-string/jumbo v4, "encoding"

    #@6
    invoke-virtual {p0, v4}, Lorg/apache/xml/serializer/ToStream;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 716
    .local v1, "encoding":Ljava/lang/String;
    const-string/jumbo v4, "UTF-8"

    #@d
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 720
    new-instance v4, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    #@15
    invoke-direct {v4, p1}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;-><init>(Ljava/io/OutputStream;)V

    #@18
    invoke-direct {p0, v4, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    #@1b
    .line 712
    :goto_0
    return-void

    #@1c
    .line 722
    :cond_0
    const-string/jumbo v4, "WINDOWS-1250"

    #@1f
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_1

    #@25
    .line 723
    const-string/jumbo v4, "US-ASCII"

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    .line 722
    if-nez v4, :cond_1

    #@2e
    .line 724
    const-string/jumbo v4, "ASCII"

    #@31
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    .line 721
    if-eqz v4, :cond_2

    #@37
    .line 726
    :cond_1
    new-instance v4, Lorg/apache/xml/serializer/WriterToASCI;

    #@39
    invoke-direct {v4, p1}, Lorg/apache/xml/serializer/WriterToASCI;-><init>(Ljava/io/OutputStream;)V

    #@3c
    invoke-direct {p0, v4, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    #@3f
    goto :goto_0

    #@40
    .line 727
    :cond_2
    if-eqz v1, :cond_4

    #@42
    .line 728
    const/4 v2, 0x0

    #@43
    .line 731
    .local v2, "osw":Ljava/io/Writer;
    :try_start_0
    invoke-static {p1, v1}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result-object v2

    #@47
    .line 739
    .end local v2    # "osw":Ljava/io/Writer;
    :goto_1
    if-nez v2, :cond_3

    #@49
    .line 740
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4b
    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "Warning: encoding \""

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    .line 743
    const-string/jumbo v6, "\" not supported"

    #@5e
    .line 741
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 744
    const-string/jumbo v6, ", using "

    #@65
    .line 741
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 745
    const-string/jumbo v6, "UTF-8"

    #@6c
    .line 741
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    .line 740
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@77
    .line 747
    const-string/jumbo v1, "UTF-8"

    #@7a
    .line 748
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    #@7d
    .line 750
    :try_start_1
    invoke-static {p1, v1}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@80
    move-result-object v2

    #@81
    .line 757
    :cond_3
    :goto_2
    invoke-direct {p0, v2, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    #@84
    goto :goto_0

    #@85
    .line 734
    .restart local v2    # "osw":Ljava/io/Writer;
    :catch_0
    move-exception v3

    #@86
    .line 735
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    #@87
    goto :goto_1

    #@88
    .line 751
    .end local v2    # "osw":Ljava/io/Writer;
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    #@89
    .line 754
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@8c
    goto :goto_2

    #@8d
    .line 761
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@8f
    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@92
    .line 762
    .local v2, "osw":Ljava/io/Writer;
    invoke-direct {p0, v2, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    #@95
    goto :goto_0
.end method

.method private setWriterInternal(Ljava/io/Writer;Z)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "setByUser"    # Z

    #@0
    .prologue
    .line 658
    iput-boolean p2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    #@2
    .line 659
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@4
    .line 662
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 663
    const/4 v0, 0x1

    #@9
    .line 664
    .local v0, "noTracerYet":Z
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@b
    .line 665
    .local v1, "w2":Ljava/io/Writer;
    :goto_0
    instance-of v2, v1, Lorg/apache/xml/serializer/WriterChain;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 666
    instance-of v2, v1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 667
    const/4 v0, 0x0

    #@14
    .line 672
    :cond_0
    if-eqz v0, :cond_1

    #@16
    .line 673
    new-instance v2, Lorg/apache/xml/serializer/SerializerTraceWriter;

    #@18
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@1a
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1c
    invoke-direct {v2, v3, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    #@1f
    iput-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@21
    .line 656
    .end local v0    # "noTracerYet":Z
    .end local v1    # "w2":Ljava/io/Writer;
    :cond_1
    return-void

    #@22
    .line 670
    .restart local v0    # "noTracerYet":Z
    .restart local v1    # "w2":Ljava/io/Writer;
    :cond_2
    check-cast v1, Lorg/apache/xml/serializer/WriterChain;

    #@24
    .end local v1    # "w2":Ljava/io/Writer;
    invoke-interface {v1}, Lorg/apache/xml/serializer/WriterChain;->getWriter()Ljava/io/Writer;

    #@27
    move-result-object v1

    #@28
    .restart local v1    # "w2":Ljava/io/Writer;
    goto :goto_0
.end method

.method private writeOutCleanChars([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "i"    # I
    .param p3, "lastProcessed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1657
    add-int/lit8 v1, p3, 0x1

    #@2
    .line 1658
    .local v1, "startClean":I
    if-ge v1, p2, :cond_0

    #@4
    .line 1660
    sub-int v0, p2, v1

    #@6
    .line 1661
    .local v0, "lengthClean":I
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@8
    invoke-virtual {v2, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    #@b
    .line 1655
    .end local v0    # "lengthClean":I
    :cond_0
    return-void
.end method


# virtual methods
.method accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "ch"    # C
    .param p3, "i"    # I
    .param p4, "chars"    # [C
    .param p5, "len"    # I
    .param p6, "fromTextNode"    # Z
    .param p7, "escLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1068
    if-nez p7, :cond_0

    #@2
    const/16 v1, 0xa

    #@4
    if-ne v1, p2, :cond_0

    #@6
    .line 1070
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@8
    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@e
    .line 1091
    :goto_0
    add-int/lit8 v1, p3, 0x1

    #@10
    return v1

    #@11
    .line 1076
    :cond_0
    if-eqz p6, :cond_1

    #@13
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@15
    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    :cond_1
    if-nez p6, :cond_4

    #@1d
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@1f
    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 1078
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@27
    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 1080
    .local v0, "outputStringForChar":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@2d
    .line 1082
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@30
    goto :goto_0

    #@31
    .line 1085
    :cond_3
    return p3

    #@32
    .line 1088
    .end local v0    # "outputStringForChar":Ljava/lang/String;
    :cond_4
    return p3
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "xslAttribute"    # Z

    #@0
    .prologue
    .line 3019
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_3

    #@4
    .line 3020
    :cond_0
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@8
    move-object/from16 v0, p3

    #@a
    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    #@d
    move-result v11

    #@e
    .line 3025
    .local v11, "index":I
    :goto_0
    if-ltz v11, :cond_4

    #@10
    .line 3027
    const/4 v12, 0x0

    #@11
    .line 3028
    .local v12, "old_value":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 3030
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@1b
    invoke-virtual {v2, v11}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    #@1e
    move-result-object v12

    #@1f
    .line 3031
    .local v12, "old_value":Ljava/lang/String;
    move-object/from16 v0, p5

    #@21
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 3032
    const/4 v12, 0x0

    #@28
    .line 3039
    .end local v12    # "old_value":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@2c
    move-object/from16 v0, p5

    #@2e
    invoke-virtual {v2, v11, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->setValue(ILjava/lang/String;)V

    #@31
    .line 3040
    const/4 v15, 0x0

    #@32
    .line 3041
    .local v15, "was_added":Z
    if-eqz v12, :cond_2

    #@34
    .line 3042
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    #@37
    .line 3129
    :cond_2
    :goto_1
    return v15

    #@38
    .line 3019
    .end local v11    # "index":I
    .end local v15    # "was_added":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_0

    #@3e
    .line 3022
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@42
    move-object/from16 v0, p1

    #@44
    move-object/from16 v1, p2

    #@46
    invoke-virtual {v2, v0, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    move-result v11

    #@4a
    .restart local v11    # "index":I
    goto :goto_0

    #@4b
    .line 3048
    :cond_4
    if-eqz p6, :cond_6

    #@4d
    .line 3063
    const/16 v2, 0x3a

    #@4f
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@54
    move-result v8

    #@55
    .line 3064
    .local v8, "colonIndex":I
    if-lez v8, :cond_5

    #@57
    .line 3066
    const/4 v2, 0x0

    #@58
    move-object/from16 v0, p3

    #@5a
    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d
    move-result-object v13

    #@5e
    .line 3067
    .local v13, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@62
    invoke-virtual {v2, v13}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@65
    move-result-object v10

    #@66
    .line 3072
    .local v10, "existing_mapping":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    if-eqz v10, :cond_5

    #@68
    .line 3073
    iget v2, v10, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v3, v0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@6e
    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@70
    if-ne v2, v3, :cond_5

    #@72
    .line 3074
    iget-object v2, v10, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    #@74
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v2

    #@7a
    if-eqz v2, :cond_7

    #@7c
    .line 3113
    .end local v10    # "existing_mapping":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    move-result-object v14

    #@80
    .line 3124
    .end local v8    # "colonIndex":I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@84
    move-object/from16 v3, p1

    #@86
    move-object/from16 v4, p2

    #@88
    move-object/from16 v5, p3

    #@8a
    move-object/from16 v6, p4

    #@8c
    move-object/from16 v7, p5

    #@8e
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@91
    .line 3125
    const/4 v15, 0x1

    #@92
    .line 3126
    .restart local v15    # "was_added":Z
    move-object/from16 v0, p0

    #@94
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@96
    if-eqz v2, :cond_2

    #@98
    .line 3127
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    #@9b
    goto :goto_1

    #@9c
    .line 3086
    .end local v15    # "was_added":Z
    .restart local v8    # "colonIndex":I
    .restart local v10    # "existing_mapping":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .restart local v13    # "prefix":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@a5
    move-result-object v13

    #@a6
    .line 3087
    if-nez v13, :cond_8

    #@a8
    .line 3098
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@ac
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    #@af
    move-result-object v13

    #@b0
    .line 3101
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    const/16 v3, 0x3a

    #@bb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object p3

    #@c9
    goto :goto_2

    #@ca
    .line 3119
    .end local v10    # "existing_mapping":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .end local v13    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@cb
    .line 3121
    .local v9, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    #@ce
    goto :goto_3
.end method

.method public addCdataSectionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "URI_and_localNames"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3594
    if-eqz p1, :cond_0

    #@2
    .line 3595
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToStream;->initCdataElems(Ljava/lang/String;)V

    #@5
    .line 3596
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 3597
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    #@b
    .line 3592
    :goto_0
    return-void

    #@c
    .line 3599
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, " "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    #@28
    goto :goto_0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 852
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 853
    return-void

    #@5
    .line 856
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@7
    .line 857
    .local v1, "writer":Ljava/io/Writer;
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    #@a
    .line 859
    const-string/jumbo v2, "<!ATTLIST "

    #@d
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 860
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13
    .line 861
    const/16 v2, 0x20

    #@15
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@18
    .line 863
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1b
    .line 864
    const/16 v2, 0x20

    #@1d
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@20
    .line 865
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@23
    .line 866
    if-eqz p4, :cond_1

    #@25
    .line 868
    const/16 v2, 0x20

    #@27
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@2a
    .line 869
    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2d
    .line 874
    :cond_1
    const/16 v2, 0x3e

    #@2f
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@32
    .line 875
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@34
    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@36
    const/4 v4, 0x0

    #@37
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 849
    return-void

    #@3b
    .line 878
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@3c
    .line 879
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@3e
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@41
    throw v2
.end method

.method protected cdata([CII)V
    .locals 10
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1262
    move v7, p2

    #@3
    .line 1263
    .local v7, "old_start":I
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@5
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@c
    .line 1266
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@e
    const/4 v1, 0x0

    #@f
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@11
    .line 1268
    :cond_0
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@14
    .line 1270
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1271
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    #@1d
    .line 1274
    :cond_1
    if-lt p3, v2, :cond_5

    #@1f
    aget-char v0, p1, p2

    #@21
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    #@24
    move-result v8

    #@25
    .line 1280
    :goto_0
    if-eqz v8, :cond_2

    #@27
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@29
    if-eqz v0, :cond_6

    #@2b
    .line 1287
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->isEscapingDisabled()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_7

    #@31
    .line 1289
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    #@34
    .line 1298
    :goto_2
    if-eqz v8, :cond_3

    #@36
    .line 1305
    add-int v0, p2, p3

    #@38
    add-int/lit8 v0, v0, -0x1

    #@3a
    aget-char v0, p1, v0

    #@3c
    const/16 v1, 0x5d

    #@3e
    if-ne v0, v1, :cond_3

    #@40
    .line 1306
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@43
    .line 1310
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@45
    if-eqz v0, :cond_4

    #@47
    .line 1311
    invoke-super {p0, p1, v7, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCDATAEvent([CII)V

    #@4a
    .line 1257
    :cond_4
    return-void

    #@4b
    .line 1274
    :cond_5
    const/4 v8, 0x0

    #@4c
    .local v8, "writeCDataBrackets":Z
    goto :goto_0

    #@4d
    .line 1282
    .end local v8    # "writeCDataBrackets":Z
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@4f
    const-string/jumbo v1, "<![CDATA["

    #@52
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@55
    .line 1283
    const/4 v0, 0x1

    #@56
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    goto :goto_1

    #@59
    .line 1314
    :catch_0
    move-exception v6

    #@5a
    .line 1315
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    #@5c
    .line 1316
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@5e
    .line 1317
    const-string/jumbo v2, "ER_OIERROR"

    #@61
    .line 1316
    invoke-virtual {v1, v2, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 1315
    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@68
    throw v0

    #@69
    .line 1292
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_7
    :try_start_1
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    #@6b
    const/4 v4, 0x1

    #@6c
    move-object v0, p0

    #@6d
    move-object v1, p1

    #@6e
    move v2, p2

    #@6f
    move v3, p3

    #@70
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToStream;->writeNormalizedChars([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@73
    goto :goto_2
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1755
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1757
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    .line 1758
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    #@f
    array-length v1, v1

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 1760
    mul-int/lit8 v1, v0, 0x2

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    new-array v1, v1, [C

    #@18
    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    #@1a
    .line 1762
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    #@1c
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@1f
    .line 1763
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    #@21
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    #@24
    .line 1753
    return-void

    #@25
    .line 1756
    .end local v0    # "length":I
    :cond_2
    return-void
.end method

.method public characters([CII)V
    .locals 13
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1403
    if-eqz p3, :cond_3

    #@2
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@4
    if-eqz v11, :cond_0

    #@6
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    #@8
    if-eqz v11, :cond_3

    #@a
    .line 1406
    :cond_0
    const/4 v11, 0x0

    #@b
    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_docIsEmpty:Z

    #@d
    .line 1408
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@f
    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@11
    if-eqz v11, :cond_4

    #@13
    .line 1410
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@16
    .line 1411
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@18
    const/4 v12, 0x0

    #@19
    iput-boolean v12, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@1b
    .line 1418
    :cond_1
    :goto_0
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    #@1d
    if-nez v11, :cond_2

    #@1f
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@21
    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    #@23
    if-eqz v11, :cond_5

    #@25
    .line 1423
    :cond_2
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    #@28
    .line 1425
    return-void

    #@29
    .line 1404
    :cond_3
    return-void

    #@2a
    .line 1413
    :cond_4
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@2c
    if-eqz v11, :cond_1

    #@2e
    .line 1415
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@31
    goto :goto_0

    #@32
    .line 1428
    :cond_5
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@34
    if-eqz v11, :cond_6

    #@36
    .line 1429
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@39
    .line 1431
    :cond_6
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@3b
    invoke-virtual {v11}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    #@3e
    move-result v11

    #@3f
    if-nez v11, :cond_8

    #@41
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    #@43
    if-eqz v11, :cond_8

    #@45
    .line 1442
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@47
    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@49
    if-eqz v11, :cond_7

    #@4b
    .line 1444
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@4e
    .line 1445
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@50
    const/4 v12, 0x0

    #@51
    iput-boolean v12, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@53
    .line 1457
    :cond_7
    add-int v3, p2, p3

    #@55
    .line 1458
    .local v3, "end":I
    add-int/lit8 v6, p2, -0x1

    #@57
    .line 1460
    .local v6, "lastDirtyCharProcessed":I
    :try_start_0
    iget-object v10, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@59
    .line 1461
    .local v10, "writer":Ljava/io/Writer;
    const/4 v5, 0x1

    #@5a
    .line 1464
    .local v5, "isAllWhitespace":Z
    move v4, p2

    #@5b
    .line 1465
    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_b

    #@5d
    if-eqz v5, :cond_b

    #@5f
    .line 1466
    aget-char v1, p1, v4

    #@61
    .line 1468
    .local v1, "ch1":C
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@63
    invoke-virtual {v11, v1}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    #@66
    move-result v11

    #@67
    if-eqz v11, :cond_a

    #@69
    .line 1473
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@6c
    .line 1474
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@6e
    invoke-virtual {v11, v1}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    .line 1476
    .local v8, "outputStringForChar":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    .line 1479
    const/4 v5, 0x0

    #@76
    .line 1480
    move v6, v4

    #@77
    .line 1482
    add-int/lit8 v4, v4, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 1433
    .end local v1    # "ch1":C
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "isAllWhitespace":Z
    .end local v6    # "lastDirtyCharProcessed":I
    .end local v8    # "outputStringForChar":Ljava/lang/String;
    .end local v10    # "writer":Ljava/io/Writer;
    :cond_8
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    #@7d
    .line 1436
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@7f
    if-eqz v11, :cond_9

    #@81
    .line 1437
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    #@84
    .line 1439
    :cond_9
    return-void

    #@85
    .line 1485
    .restart local v1    # "ch1":C
    .restart local v3    # "end":I
    .restart local v4    # "i":I
    .restart local v5    # "isAllWhitespace":Z
    .restart local v6    # "lastDirtyCharProcessed":I
    .restart local v10    # "writer":Ljava/io/Writer;
    :cond_a
    sparse-switch v1, :sswitch_data_0

    #@88
    .line 1510
    const/4 v5, 0x0

    #@89
    .line 1511
    goto :goto_1

    #@8a
    .line 1489
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    #@8c
    .line 1490
    goto :goto_1

    #@8d
    .line 1492
    :sswitch_1
    :try_start_1
    invoke-direct {p0, p1, v4, v6, v10}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    #@90
    move-result v6

    #@91
    .line 1494
    add-int/lit8 v4, v4, 0x1

    #@93
    .line 1495
    goto :goto_1

    #@94
    .line 1497
    :sswitch_2
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@97
    .line 1498
    const-string/jumbo v11, "&#13;"

    #@9a
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@9d
    .line 1499
    move v6, v4

    #@9e
    .line 1500
    add-int/lit8 v4, v4, 0x1

    #@a0
    .line 1501
    goto :goto_1

    #@a1
    .line 1504
    :sswitch_3
    add-int/lit8 v4, v4, 0x1

    #@a3
    .line 1505
    goto :goto_1

    #@a4
    .line 1519
    .end local v1    # "ch1":C
    :cond_b
    if-lt v4, v3, :cond_d

    #@a6
    if-eqz v5, :cond_d

    #@a8
    .line 1523
    :goto_2
    if-ge v4, v3, :cond_12

    #@aa
    .line 1525
    aget-char v0, p1, v4

    #@ac
    .line 1527
    .local v0, "ch":C
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@ae
    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    #@b1
    move-result v11

    #@b2
    if-eqz v11, :cond_e

    #@b4
    .line 1531
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@b7
    .line 1532
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@b9
    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    .line 1533
    .restart local v8    # "outputStringForChar":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c0
    .line 1534
    move v6, v4

    #@c1
    .line 1523
    .end local v8    # "outputStringForChar":Ljava/lang/String;
    :cond_c
    :goto_3
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    #@c3
    goto :goto_2

    #@c4
    .line 1520
    .end local v0    # "ch":C
    :cond_d
    const/4 v11, 0x1

    #@c5
    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@c7
    goto :goto_2

    #@c8
    .line 1631
    .end local v4    # "i":I
    .end local v5    # "isAllWhitespace":Z
    .end local v10    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    #@c9
    .line 1632
    .local v2, "e":Ljava/io/IOException;
    new-instance v11, Lorg/xml/sax/SAXException;

    #@cb
    invoke-direct {v11, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@ce
    throw v11

    #@cf
    .line 1537
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "ch":C
    .restart local v4    # "i":I
    .restart local v5    # "isAllWhitespace":Z
    .restart local v10    # "writer":Ljava/io/Writer;
    :cond_e
    const/16 v11, 0x1f

    #@d1
    if-gt v0, v11, :cond_f

    #@d3
    .line 1553
    packed-switch v0, :pswitch_data_0

    #@d6
    .line 1568
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@d9
    .line 1569
    const-string/jumbo v11, "&#"

    #@dc
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@df
    .line 1570
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e2
    move-result-object v11

    #@e3
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@e6
    .line 1571
    const/16 v11, 0x3b

    #@e8
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    #@eb
    .line 1572
    move v6, v4

    #@ec
    .line 1573
    goto :goto_3

    #@ed
    .line 1559
    :pswitch_2
    invoke-direct {p0, p1, v4, v6, v10}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    #@f0
    move-result v6

    #@f1
    goto :goto_3

    #@f2
    .line 1562
    :pswitch_3
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@f5
    .line 1563
    const-string/jumbo v11, "&#13;"

    #@f8
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@fb
    .line 1564
    move v6, v4

    #@fc
    .line 1566
    goto :goto_3

    #@fd
    .line 1577
    :cond_f
    const/16 v11, 0x7f

    #@ff
    if-lt v0, v11, :cond_c

    #@101
    .line 1583
    const/16 v11, 0x9f

    #@103
    if-gt v0, v11, :cond_10

    #@105
    .line 1586
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@108
    .line 1587
    const-string/jumbo v11, "&#"

    #@10b
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10e
    .line 1588
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@111
    move-result-object v11

    #@112
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@115
    .line 1589
    const/16 v11, 0x3b

    #@117
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    #@11a
    .line 1590
    move v6, v4

    #@11b
    goto :goto_3

    #@11c
    .line 1592
    :cond_10
    const/16 v11, 0x2028

    #@11e
    if-ne v0, v11, :cond_11

    #@120
    .line 1594
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@123
    .line 1595
    const-string/jumbo v11, "&#8232;"

    #@126
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@129
    .line 1596
    move v6, v4

    #@12a
    goto :goto_3

    #@12b
    .line 1598
    :cond_11
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@12d
    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    #@130
    move-result v11

    #@131
    if-nez v11, :cond_c

    #@133
    .line 1609
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    #@136
    .line 1610
    const-string/jumbo v11, "&#"

    #@139
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13c
    .line 1611
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13f
    move-result-object v11

    #@140
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@143
    .line 1612
    const/16 v11, 0x3b

    #@145
    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    #@148
    .line 1613
    move v6, v4

    #@149
    goto/16 :goto_3

    #@14b
    .line 1620
    .end local v0    # "ch":C
    :cond_12
    add-int/lit8 v9, v6, 0x1

    #@14d
    .line 1621
    .local v9, "startClean":I
    if-le v4, v9, :cond_13

    #@14f
    .line 1623
    sub-int v7, v4, v9

    #@151
    .line 1624
    .local v7, "lengthClean":I
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@153
    invoke-virtual {v11, p1, v9, v7}, Ljava/io/Writer;->write([CII)V

    #@156
    .line 1628
    .end local v7    # "lengthClean":I
    :cond_13
    const/4 v11, 0x1

    #@157
    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@159
    .line 1636
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@15b
    if-eqz v11, :cond_14

    #@15d
    .line 1637
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    #@160
    .line 1397
    :cond_14
    return-void

    #@161
    .line 1485
    nop

    #@162
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch

    #@174
    .line 1553
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected charactersRaw([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1348
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1349
    return-void

    #@5
    .line 1352
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget-boolean v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1354
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@e
    .line 1355
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@10
    const/4 v2, 0x0

    #@11
    iput-boolean v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@13
    .line 1358
    :cond_1
    const/4 v1, 0x1

    #@14
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@16
    .line 1360
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@18
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1345
    return-void

    #@1c
    .line 1363
    :catch_0
    move-exception v0

    #@1d
    .line 1364
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@1f
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@22
    throw v1
.end method

.method protected closeCDATA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2
    const-string/jumbo v2, "]]>"

    #@5
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@8
    .line 198
    const/4 v1, 0x0

    #@9
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 192
    return-void

    #@c
    .line 201
    :catch_0
    move-exception v0

    #@d
    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@f
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@12
    throw v1
.end method

.method protected closeStartTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2613
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3
    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@5
    if-eqz v2, :cond_3

    #@7
    .line 2618
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 2619
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@d
    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@f
    invoke-super {p0, v2}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    #@12
    .line 2620
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@14
    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    #@17
    move-result v1

    #@18
    .line 2621
    .local v1, "nAttrs":I
    if-lez v1, :cond_1

    #@1a
    .line 2623
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@1c
    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    #@1f
    .line 2625
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@21
    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    #@24
    .line 2627
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@26
    const/16 v3, 0x3e

    #@28
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 2638
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_CdataElems:Ljava/util/Hashtable;

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 2639
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@31
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->isCdataSection()Z

    #@34
    move-result v3

    #@35
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    #@37
    .line 2641
    :cond_2
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 2643
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    #@3d
    .line 2644
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@3f
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@41
    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    #@44
    .line 2610
    .end local v1    # "nAttrs":I
    :cond_3
    return-void

    #@45
    .line 2630
    :catch_0
    move-exception v0

    #@46
    .line 2631
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@48
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@4b
    throw v2
.end method

.method public comment([CII)V
    .locals 10
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2d

    #@2
    const/4 v8, 0x0

    #@3
    .line 2395
    move v4, p2

    #@4
    .line 2396
    .local v4, "start_old":I
    iget-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 2397
    return-void

    #@9
    .line 2398
    :cond_0
    iget-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@b
    iget-boolean v7, v7, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@d
    if-eqz v7, :cond_5

    #@f
    .line 2400
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@12
    .line 2401
    iget-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@14
    iput-boolean v8, v7, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@16
    .line 2411
    :cond_1
    :goto_0
    add-int v2, p2, p3

    #@18
    .line 2412
    .local v2, "limit":I
    const/4 v5, 0x0

    #@19
    .line 2413
    .local v5, "wasDash":Z
    :try_start_0
    iget-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@1b
    if-eqz v7, :cond_2

    #@1d
    .line 2414
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@20
    .line 2416
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_3

    #@26
    .line 2417
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    #@29
    .line 2419
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2b
    .line 2420
    .local v6, "writer":Ljava/io/Writer;
    const-string/jumbo v7, "<!--"

    #@2e
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@31
    .line 2422
    move v1, p2

    #@32
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    #@34
    .line 2424
    if-eqz v5, :cond_4

    #@36
    aget-char v7, p1, v1

    #@38
    if-ne v7, v9, :cond_4

    #@3a
    .line 2426
    sub-int v7, v1, p2

    #@3c
    invoke-virtual {v6, p1, p2, v7}, Ljava/io/Writer;->write([CII)V

    #@3f
    .line 2427
    const-string/jumbo v7, " -"

    #@42
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@45
    .line 2428
    add-int/lit8 p2, v1, 0x1

    #@47
    .line 2430
    :cond_4
    aget-char v7, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    if-ne v7, v9, :cond_6

    #@4b
    const/4 v5, 0x1

    #@4c
    .line 2422
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 2403
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v5    # "wasDash":Z
    .end local v6    # "writer":Ljava/io/Writer;
    :cond_5
    iget-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@51
    if-eqz v7, :cond_1

    #@53
    .line 2405
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@56
    .line 2406
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@58
    goto :goto_0

    #@59
    .line 2430
    .restart local v1    # "i":I
    .restart local v2    # "limit":I
    .restart local v5    # "wasDash":Z
    .restart local v6    # "writer":Ljava/io/Writer;
    :cond_6
    const/4 v5, 0x0

    #@5a
    goto :goto_2

    #@5b
    .line 2434
    :cond_7
    if-lez p3, :cond_9

    #@5d
    .line 2437
    sub-int v3, v2, p2

    #@5f
    .line 2438
    .local v3, "remainingChars":I
    if-lez v3, :cond_8

    #@61
    .line 2439
    :try_start_1
    invoke-virtual {v6, p1, p2, v3}, Ljava/io/Writer;->write([CII)V

    #@64
    .line 2441
    :cond_8
    add-int/lit8 v7, v2, -0x1

    #@66
    aget-char v7, p1, v7

    #@68
    if-ne v7, v9, :cond_9

    #@6a
    .line 2442
    const/16 v7, 0x20

    #@6c
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    #@6f
    .line 2444
    .end local v3    # "remainingChars":I
    :cond_9
    const-string/jumbo v7, "-->"

    #@72
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@75
    .line 2460
    const/4 v7, 0x1

    #@76
    iput-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    #@78
    .line 2462
    iget-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@7a
    if-eqz v7, :cond_a

    #@7c
    .line 2463
    invoke-super {p0, p1, v4, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    #@7f
    .line 2392
    :cond_a
    return-void

    #@80
    .line 2447
    .end local v1    # "i":I
    .end local v6    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@81
    .line 2448
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/xml/sax/SAXException;

    #@83
    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@86
    throw v7
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 304
    return-void

    #@5
    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@7
    .line 308
    .local v1, "writer":Ljava/io/Writer;
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    #@a
    .line 310
    const-string/jumbo v2, "<!ELEMENT "

    #@d
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 311
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13
    .line 312
    const/16 v2, 0x20

    #@15
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@18
    .line 313
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1b
    .line 314
    const/16 v2, 0x3e

    #@1d
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@20
    .line 315
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@22
    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 300
    return-void

    #@29
    .line 318
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@2a
    .line 319
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@2c
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@2f
    throw v2
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2474
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2475
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@7
    .line 2476
    :cond_0
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    #@a
    .line 2472
    return-void
.end method

.method public endDTD()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2488
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 2490
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@6
    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    #@c
    .line 2491
    const/4 v2, 0x0

    #@d
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    #@f
    .line 2493
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@11
    .line 2494
    .local v1, "writer":Ljava/io/Writer;
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    #@13
    if-nez v2, :cond_1

    #@15
    .line 2495
    const-string/jumbo v2, "]>"

    #@18
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1b
    .line 2501
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@1d
    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    #@23
    .line 2484
    return-void

    #@24
    .line 2498
    :cond_1
    const/16 v2, 0x3e

    #@26
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 2504
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@2b
    .line 2505
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@2d
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@30
    throw v2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2277
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 2275
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2207
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2208
    return-void

    #@7
    .line 2212
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@9
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@b
    iget v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@d
    invoke-virtual {v3, v5, v6}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    #@10
    .line 2216
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@12
    .line 2217
    .local v2, "writer":Ljava/io/Writer;
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@14
    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@16
    if-eqz v3, :cond_6

    #@18
    .line 2219
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 2220
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@1e
    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@20
    invoke-super {p0, v3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    #@23
    .line 2221
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@25
    invoke-virtual {v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    #@28
    move-result v1

    #@29
    .line 2222
    .local v1, "nAttrs":I
    if-lez v1, :cond_2

    #@2b
    .line 2224
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2d
    invoke-virtual {p0, v3, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    #@30
    .line 2226
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@32
    invoke-virtual {v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    #@35
    .line 2228
    :cond_2
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    #@37
    if-eqz v3, :cond_5

    #@39
    .line 2229
    const-string/jumbo v3, " />"

    #@3c
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 2256
    .end local v1    # "nAttrs":I
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@41
    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@43
    if-nez v3, :cond_3

    #@45
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    #@47
    if-eqz v3, :cond_3

    #@49
    .line 2258
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@4b
    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_9

    #@51
    move v3, v4

    #@52
    :goto_1
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@54
    .line 2261
    :cond_3
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    #@56
    .line 2264
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 2265
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    #@5d
    .line 2266
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@5f
    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@61
    iput-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@63
    .line 2205
    return-void

    #@64
    .line 2231
    .restart local v1    # "nAttrs":I
    :cond_5
    :try_start_1
    const-string/jumbo v3, "/>"

    #@67
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6a
    goto :goto_0

    #@6b
    .line 2252
    .end local v1    # "nAttrs":I
    .end local v2    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@6c
    .line 2253
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@6e
    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@71
    throw v3

    #@72
    .line 2240
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_6
    :try_start_2
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@74
    if-eqz v3, :cond_7

    #@76
    .line 2241
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@79
    .line 2243
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    #@7c
    move-result v3

    #@7d
    if-eqz v3, :cond_8

    #@7f
    .line 2244
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@81
    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@83
    add-int/lit8 v3, v3, -0x1

    #@85
    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    #@88
    .line 2245
    :cond_8
    const/16 v3, 0x3c

    #@8a
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@8d
    .line 2246
    const/16 v3, 0x2f

    #@8f
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@92
    .line 2247
    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@95
    .line 2248
    const/16 v3, 0x3e

    #@97
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@9a
    goto :goto_0

    #@9b
    .line 2258
    :cond_9
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@9d
    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    #@a0
    move-result v3

    #@a1
    goto :goto_1
.end method

.method public endNonEscaping()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1211
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    #@5
    .line 1209
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2518
    return-void
.end method

.method protected ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2857
    if-eqz p1, :cond_4

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_4

    #@8
    .line 2861
    const/4 v10, 0x0

    #@9
    .line 2863
    .local v10, "index":I
    const-string/jumbo v0, ":"

    #@c
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v10

    #@10
    if-gez v10, :cond_0

    #@12
    .line 2864
    const-string/jumbo v2, ""

    #@15
    .line 2867
    .local v2, "prefixFromRawName":Ljava/lang/String;
    :goto_0
    if-lez v10, :cond_2

    #@17
    .line 2870
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@19
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    .line 2871
    .local v11, "uri":Ljava/lang/String;
    if-eqz v11, :cond_1

    #@1f
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 2875
    const/4 v0, 0x0

    #@26
    return-object v0

    #@27
    .line 2865
    .end local v2    # "prefixFromRawName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@28
    invoke-virtual {p3, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .restart local v2    # "prefixFromRawName":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 2881
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@2e
    invoke-virtual {p0, v2, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@31
    .line 2883
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@34
    .line 2885
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "xmlns:"

    #@3c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 2886
    const-string/jumbo v4, "CDATA"

    #@4b
    .line 2887
    const/4 v6, 0x0

    #@4c
    move-object v0, p0

    #@4d
    move-object v5, p1

    #@4e
    .line 2882
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@51
    .line 2888
    return-object v2

    #@52
    .line 2895
    .end local v11    # "uri":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@54
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    .line 2896
    .local v5, "prefix":Ljava/lang/String;
    if-nez v5, :cond_3

    #@5a
    .line 2900
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@5c
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 2901
    const/4 v0, 0x0

    #@61
    invoke-virtual {p0, v5, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@64
    .line 2903
    const-string/jumbo v4, "http://www.w3.org/2000/xmlns/"

    #@67
    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v1, "xmlns:"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    .line 2906
    const-string/jumbo v7, "CDATA"

    #@7e
    .line 2907
    const/4 v9, 0x0

    #@7f
    move-object v3, p0

    #@80
    move-object v8, p1

    #@81
    .line 2902
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@84
    .line 2910
    :cond_3
    return-object v5

    #@85
    .line 2914
    .end local v2    # "prefixFromRawName":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_4
    const/4 v0, 0x0

    #@86
    return-object v0
.end method

.method ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2921
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 2924
    const-string/jumbo v0, ":"

    #@c
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v8

    #@10
    .local v8, "index":I
    if-gez v8, :cond_1

    #@12
    const/4 v9, 0x1

    #@13
    .line 2925
    .local v9, "no_prefix":Z
    :goto_0
    if-eqz v9, :cond_2

    #@15
    const-string/jumbo v10, ""

    #@18
    .line 2927
    .local v10, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_0

    #@1a
    .line 2929
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@1c
    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    .line 2931
    .local v7, "foundURI":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@22
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 2918
    .end local v7    # "foundURI":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "no_prefix":Z
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    #@29
    .line 2924
    .restart local v8    # "index":I
    :cond_1
    const/4 v9, 0x0

    #@2a
    .restart local v9    # "no_prefix":Z
    goto :goto_0

    #@2b
    .line 2925
    :cond_2
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v10

    #@2f
    .restart local v10    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@30
    .line 2933
    .restart local v7    # "foundURI":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v10, p1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 2939
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@36
    .line 2940
    if-eqz v9, :cond_4

    #@38
    const-string/jumbo v2, "xmlns"

    #@3b
    .line 2941
    :goto_3
    if-eqz v9, :cond_5

    #@3d
    const-string/jumbo v3, "xmlns"

    #@40
    .line 2942
    :goto_4
    const-string/jumbo v4, "CDATA"

    #@43
    move-object v0, p0

    #@44
    move-object v5, p1

    #@45
    .line 2938
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@48
    goto :goto_2

    #@49
    :cond_4
    move-object v2, v10

    #@4a
    .line 2940
    goto :goto_3

    #@4b
    .line 2941
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, "xmlns:"

    #@53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    goto :goto_4
.end method

.method protected escapingNotNeeded(C)Z
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 943
    const/16 v1, 0x7f

    #@2
    if-ge p1, v1, :cond_2

    #@4
    .line 947
    const/16 v1, 0x20

    #@6
    if-ge p1, v1, :cond_0

    #@8
    const/16 v1, 0xa

    #@a
    if-eq v1, p1, :cond_0

    #@c
    .line 948
    const/16 v1, 0xd

    #@e
    if-ne v1, p1, :cond_1

    #@10
    .line 949
    :cond_0
    const/4 v0, 0x1

    #@11
    .line 956
    :goto_0
    return v0

    #@12
    .line 948
    :cond_1
    const/16 v1, 0x9

    #@14
    if-eq v1, p1, :cond_0

    #@16
    .line 951
    const/4 v0, 0x0

    #@17
    .local v0, "ret":Z
    goto :goto_0

    #@18
    .line 954
    .end local v0    # "ret":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@1a
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    #@1d
    move-result v0

    #@1e
    .local v0, "ret":Z
    goto :goto_0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 915
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    #@3
    .line 917
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@5
    const-string/jumbo v2, "<!ENTITY "

    #@8
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    .line 918
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@d
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 919
    if-eqz p2, :cond_0

    #@12
    .line 920
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@14
    const-string/jumbo v2, " PUBLIC \""

    #@17
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 921
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@1c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1f
    .line 928
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@21
    const-string/jumbo v2, "\" >"

    #@24
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 929
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@29
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@2b
    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    #@31
    .line 912
    :goto_1
    return-void

    #@32
    .line 925
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@34
    const-string/jumbo v2, " SYSTEM \""

    #@37
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3a
    .line 926
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@3c
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0

    #@40
    .line 930
    :catch_0
    move-exception v0

    #@41
    .line 932
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@44
    goto :goto_1
.end method

.method protected firePseudoAttributes()V
    .locals 10

    #@0
    .prologue
    .line 3140
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v6, :cond_1

    #@4
    .line 3145
    :try_start_0
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@6
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    #@9
    .line 3148
    new-instance v3, Ljava/lang/StringBuffer;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@e
    .line 3149
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@10
    invoke-virtual {v6}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    #@13
    move-result v2

    #@14
    .line 3150
    .local v2, "nAttrs":I
    if-lez v2, :cond_0

    #@16
    .line 3155
    new-instance v5, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;

    #@18
    invoke-direct {v5, p0, v3}, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;-><init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V

    #@1b
    .line 3157
    .local v5, "writer":Ljava/io/Writer;
    invoke-virtual {p0, v5, v2}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    #@1e
    .line 3162
    .end local v5    # "writer":Ljava/io/Writer;
    :cond_0
    const/16 v6, 0x3e

    #@20
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@23
    .line 3166
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    #@2a
    move-result-object v0

    #@2b
    .line 3167
    .local v0, "ch":[C
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2d
    .line 3171
    array-length v7, v0

    #@2e
    .line 3168
    const/16 v8, 0xb

    #@30
    .line 3170
    const/4 v9, 0x0

    #@31
    .line 3167
    invoke-interface {v6, v8, v0, v9, v7}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    #@34
    .line 3138
    .end local v0    # "ch":[C
    .end local v2    # "nAttrs":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    return-void

    #@35
    .line 3174
    :catch_0
    move-exception v1

    #@36
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    #@37
    .line 3178
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v4

    #@38
    .local v4, "se":Lorg/xml/sax/SAXException;
    goto :goto_0
.end method

.method public flushPending()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2957
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2959
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@8
    .line 2960
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@a
    .line 2962
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@c
    iget-boolean v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2964
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@13
    .line 2965
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@15
    iput-boolean v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@17
    .line 2968
    :cond_1
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 2970
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@1e
    .line 2971
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@20
    .line 2973
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 2975
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@26
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 2955
    :cond_3
    :goto_0
    return-void

    #@2a
    .line 2977
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected final flushWriter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2
    .line 242
    .local v2, "writer":Ljava/io/Writer;
    if-eqz v2, :cond_1

    #@4
    .line 246
    :try_start_0
    instance-of v3, v2, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 248
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 249
    move-object v0, v2

    #@d
    check-cast v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    #@f
    move-object v3, v0

    #@10
    invoke-virtual {v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flush()V

    #@13
    .line 253
    :cond_0
    :goto_0
    instance-of v3, v2, Lorg/apache/xml/serializer/WriterToASCI;

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 255
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 256
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    #@1e
    .line 239
    :cond_1
    :goto_1
    return-void

    #@1f
    .line 251
    :cond_2
    move-object v0, v2

    #@20
    check-cast v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    #@22
    move-object v3, v0

    #@23
    invoke-virtual {v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 267
    :catch_0
    move-exception v1

    #@28
    .line 268
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@2a
    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@2d
    throw v3

    #@2e
    .line 263
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    goto :goto_1
.end method

.method public getIndentAmount()I
    .locals 1

    #@0
    .prologue
    .line 2682
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    #@2
    return v0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 7

    #@0
    .prologue
    .line 618
    new-instance v0, Ljava/util/Properties;

    #@2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@5
    .line 620
    .local v0, "def":Ljava/util/Properties;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputPropDefaultKeys()Ljava/util/Set;

    #@8
    move-result-object v4

    #@9
    .line 621
    .local v4, "s":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 622
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    .line 624
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 625
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v0, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0

    #@21
    .line 629
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/Properties;

    #@23
    invoke-direct {v3, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@26
    .line 631
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputPropKeys()Ljava/util/Set;

    #@29
    move-result-object v4

    #@2a
    .line 632
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v1

    #@2e
    .line 633
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_2

    #@34
    .line 634
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/lang/String;

    #@3a
    .line 635
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 636
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@40
    .line 637
    invoke-virtual {v3, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    goto :goto_1

    #@44
    .line 640
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2540
    if-nez p3, :cond_0

    #@2
    .line 2541
    return-void

    #@3
    .line 2542
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    #@6
    .line 2537
    return-void
.end method

.method protected indent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    #@7
    .line 804
    return-void
.end method

.method protected indent(I)V
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 789
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 790
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V

    #@7
    .line 795
    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    #@9
    if-lez v0, :cond_1

    #@b
    .line 796
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    #@d
    mul-int/2addr v0, p1

    #@e
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToStream;->printSpace(I)V

    #@11
    .line 786
    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 342
    return-void

    #@5
    .line 345
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    #@8
    .line 346
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 338
    return-void

    #@c
    .line 349
    :catch_0
    move-exception v0

    #@d
    .line 350
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@f
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@12
    throw v1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pubID"    # Ljava/lang/String;
    .param p3, "sysID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 3492
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    #@3
    .line 3494
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@5
    const-string/jumbo v2, "<!NOTATION "

    #@8
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    .line 3495
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@d
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 3496
    if-eqz p2, :cond_0

    #@12
    .line 3497
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@14
    const-string/jumbo v2, " PUBLIC \""

    #@17
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 3498
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@1c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1f
    .line 3505
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@21
    const-string/jumbo v2, "\" >"

    #@24
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 3506
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@29
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@2b
    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    #@31
    .line 3489
    :goto_1
    return-void

    #@32
    .line 3502
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@34
    const-string/jumbo v2, " SYSTEM \""

    #@37
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3a
    .line 3503
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@3c
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0

    #@40
    .line 3507
    :catch_0
    move-exception v0

    #@41
    .line 3509
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@44
    goto :goto_1
.end method

.method outputDocTypeDecl(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "closeDecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2008
    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 2009
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@7
    .line 2012
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@9
    .line 2013
    .local v3, "writer":Ljava/io/Writer;
    const-string/jumbo v4, "<!DOCTYPE "

    #@c
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@f
    .line 2014
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@12
    .line 2016
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypePublic()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 2017
    .local v0, "doctypePublic":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@18
    .line 2019
    const-string/jumbo v4, " PUBLIC \""

    #@1b
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    .line 2020
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21
    .line 2021
    const/16 v4, 0x22

    #@23
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    #@26
    .line 2024
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypeSystem()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 2025
    .local v1, "doctypeSystem":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@2c
    .line 2027
    if-nez v0, :cond_3

    #@2e
    .line 2028
    const-string/jumbo v4, " SYSTEM \""

    #@31
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@34
    .line 2032
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@37
    .line 2034
    if-eqz p2, :cond_4

    #@39
    .line 2036
    const-string/jumbo v4, "\">"

    #@3c
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3f
    .line 2037
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@41
    iget v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@43
    const/4 v6, 0x0

    #@44
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/Writer;->write([CII)V

    #@47
    .line 2038
    const/4 p2, 0x0

    #@48
    .line 2006
    .end local p2    # "closeDecl":Z
    :cond_2
    :goto_1
    return-void

    #@49
    .line 2030
    .restart local p2    # "closeDecl":Z
    :cond_3
    const-string/jumbo v4, " \""

    #@4c
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    goto :goto_0

    #@50
    .line 2045
    .end local v0    # "doctypePublic":Ljava/lang/String;
    .end local v1    # "doctypeSystem":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    #@51
    .line 2046
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@53
    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@56
    throw v4

    #@57
    .line 2041
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "doctypePublic":Ljava/lang/String;
    .restart local v1    # "doctypeSystem":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_4
    const/16 v4, 0x22

    #@59
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    goto :goto_1
.end method

.method outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2
    .line 366
    .local v0, "writer":Ljava/io/Writer;
    const-string/jumbo v1, "<!ENTITY "

    #@5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@8
    .line 367
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    .line 368
    const-string/jumbo v1, " \""

    #@e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@11
    .line 369
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@14
    .line 370
    const-string/jumbo v1, "\">"

    #@17
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 371
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@1c
    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@22
    .line 363
    return-void
.end method

.method protected final outputLineSep()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@4
    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@a
    .line 379
    return-void
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "nAttrs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2070
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getEncoding()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2071
    .local v0, "encoding":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@7
    .line 2074
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@9
    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getQName(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 2075
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@f
    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 2076
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x20

    #@15
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    #@18
    .line 2077
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1b
    .line 2078
    const-string/jumbo v4, "=\""

    #@1e
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21
    .line 2079
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xml/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 2080
    const/16 v4, 0x22

    #@26
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    #@29
    .line 2071
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2062
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    #@0
    .prologue
    .line 3249
    const/4 v0, 0x0

    #@1
    .line 3250
    .local v0, "wasReset":Z
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 3252
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->resetToStream()V

    #@a
    .line 3253
    const/4 v0, 0x1

    #@b
    .line 3255
    :cond_0
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/TreeWalker;

    #@2
    invoke-direct {v1, p0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 221
    .local v1, "walker":Lorg/apache/xml/serializer/TreeWalker;
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 213
    return-void

    #@9
    .line 224
    .end local v1    # "walker":Lorg/apache/xml/serializer/TreeWalker;
    :catch_0
    move-exception v0

    #@a
    .line 225
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@c
    invoke-direct {v2, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@f
    throw v2
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 6
    .param p1, "URI_and_localNames"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 2812
    if-eqz p1, :cond_3

    #@2
    .line 2814
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v1, v5, -0x1

    #@8
    .line 2815
    .local v1, "len":I
    if-lez v1, :cond_3

    #@a
    .line 2817
    new-instance v3, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    .line 2818
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@12
    .line 2821
    if-eqz v0, :cond_0

    #@14
    .line 2822
    const/16 v5, 0x20

    #@16
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 2823
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/lang/String;

    #@1f
    .line 2825
    .local v4, "uri":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    #@21
    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/String;

    #@27
    .line 2826
    .local v2, "localName":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@29
    .line 2829
    const/16 v5, 0x7b

    #@2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2e
    .line 2830
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 2831
    const/16 v5, 0x7d

    #@33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    .line 2833
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 2818
    add-int/lit8 v0, v0, 0x2

    #@3b
    goto :goto_0

    #@3c
    .line 2835
    .end local v2    # "localName":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    iput-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    #@42
    .line 2838
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    #@44
    invoke-virtual {p0, v5}, Lorg/apache/xml/serializer/ToStream;->initCdataElems(Ljava/lang/String;)V

    #@47
    .line 2809
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 2983
    return-void
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0
    .param p1, "expand"    # Z

    #@0
    .prologue
    .line 3570
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    #@2
    .line 3569
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3300
    const-string/jumbo v0, "encoding"

    #@3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3298
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .param p1, "escape"    # Z

    #@0
    .prologue
    .line 771
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    #@2
    .line 772
    .local v0, "temp":Z
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    #@4
    .line 773
    return v0
.end method

.method public setIndentAmount(I)V
    .locals 0
    .param p1, "m_indentAmount"    # I

    #@0
    .prologue
    .line 2692
    iput p1, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    #@2
    .line 2690
    return-void
.end method

.method public setLineSepUse(Z)Z
    .locals 1
    .param p1, "use_sytem_line_break"    # Z

    #@0
    .prologue
    .line 691
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    #@2
    .line 692
    .local v0, "oldValue":Z
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    #@4
    .line 693
    return v0
.end method

.method public setNewLine([C)V
    .locals 1
    .param p1, "eolChars"    # [C

    #@0
    .prologue
    .line 3578
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@2
    .line 3579
    array-length v0, p1

    #@3
    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@5
    .line 3577
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 8
    .param p1, "format"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 564
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    #@2
    .line 566
    .local v5, "shouldFlush":Z
    if-eqz p1, :cond_2

    #@4
    .line 573
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@7
    move-result-object v4

    #@8
    .line 574
    .local v4, "propNames":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_2

    #@e
    .line 576
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/String;

    #@14
    .line 578
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 580
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    .line 581
    .local v1, "explicitValue":Ljava/lang/String;
    if-nez v1, :cond_1

    #@20
    if-eqz v6, :cond_1

    #@22
    .line 583
    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/serializer/ToStream;->setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 585
    :cond_1
    if-eqz v1, :cond_0

    #@27
    .line 587
    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    goto :goto_0

    #@2b
    .line 595
    .end local v1    # "explicitValue":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "propNames":Ljava/util/Enumeration;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "{http://xml.apache.org/xalan}entities"

    #@2e
    invoke-virtual {p1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    .line 597
    .local v0, "entitiesFileName":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@36
    .line 601
    const-string/jumbo v7, "method"

    #@39
    invoke-virtual {p1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Ljava/lang/String;

    #@3f
    .line 603
    .local v3, "method":Ljava/lang/String;
    invoke-static {v0, v3}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    #@42
    move-result-object v7

    #@43
    iput-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@45
    .line 609
    .end local v3    # "method":Ljava/lang/String;
    :cond_3
    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    #@47
    .line 561
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 709
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    #@4
    .line 707
    return-void
.end method

.method setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Z

    #@0
    .prologue
    .line 386
    if-eqz p2, :cond_1

    #@2
    .line 389
    invoke-static/range {p1 .. p1}, Lorg/apache/xml/serializer/ToStream;->getFirstCharLocName(Ljava/lang/String;)C

    #@5
    move-result v9

    #@6
    .line 390
    .local v9, "first":C
    packed-switch v9, :pswitch_data_0

    #@9
    .line 549
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    #@c
    .line 385
    .end local v9    # "first":C
    :cond_1
    return-void

    #@d
    .line 392
    .restart local v9    # "first":C
    :pswitch_1
    const-string/jumbo v20, "cdata-section-elements"

    #@10
    move-object/from16 v0, v20

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v20

    #@18
    if-eqz v20, :cond_0

    #@1a
    .line 393
    move-object/from16 v5, p2

    #@1c
    .line 394
    .local v5, "cdataSectionNames":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElements(Ljava/lang/String;)V

    #@21
    goto :goto_0

    #@22
    .line 398
    .end local v5    # "cdataSectionNames":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v20, "doctype-system"

    #@25
    move-object/from16 v0, v20

    #@27
    move-object/from16 v1, p1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v20

    #@2d
    if-eqz v20, :cond_2

    #@2f
    .line 399
    move-object/from16 v0, p2

    #@31
    move-object/from16 v1, p0

    #@33
    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_doctypeSystem:Ljava/lang/String;

    #@35
    goto :goto_0

    #@36
    .line 400
    :cond_2
    const-string/jumbo v20, "doctype-public"

    #@39
    move-object/from16 v0, v20

    #@3b
    move-object/from16 v1, p1

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v20

    #@41
    if-eqz v20, :cond_0

    #@43
    .line 401
    move-object/from16 v0, p2

    #@45
    move-object/from16 v1, p0

    #@47
    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_doctypePublic:Ljava/lang/String;

    #@49
    .line 402
    const-string/jumbo v20, "-//W3C//DTD XHTML"

    #@4c
    move-object/from16 v0, p2

    #@4e
    move-object/from16 v1, v20

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@53
    move-result v20

    #@54
    if-eqz v20, :cond_0

    #@56
    .line 403
    const/16 v20, 0x1

    #@58
    move/from16 v0, v20

    #@5a
    move-object/from16 v1, p0

    #@5c
    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    #@5e
    goto :goto_0

    #@5f
    .line 407
    :pswitch_3
    move-object/from16 v12, p2

    #@61
    .line 408
    .local v12, "newEncoding":Ljava/lang/String;
    const-string/jumbo v20, "encoding"

    #@64
    move-object/from16 v0, v20

    #@66
    move-object/from16 v1, p1

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v20

    #@6c
    if-eqz v20, :cond_0

    #@6e
    .line 409
    invoke-static/range {p2 .. p2}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v17

    #@72
    .line 410
    .local v17, "possible_encoding":Ljava/lang/String;
    if-eqz v17, :cond_3

    #@74
    .line 414
    const-string/jumbo v20, "mime-name"

    #@77
    move-object/from16 v0, p0

    #@79
    move-object/from16 v1, v20

    #@7b
    move-object/from16 v2, v17

    #@7d
    move/from16 v3, p3

    #@7f
    invoke-super {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    #@82
    .line 417
    :cond_3
    const-string/jumbo v20, "encoding"

    #@85
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, v20

    #@89
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v15

    #@8d
    .line 418
    .local v15, "oldExplicitEncoding":Ljava/lang/String;
    const-string/jumbo v20, "encoding"

    #@90
    move-object/from16 v0, p0

    #@92
    move-object/from16 v1, v20

    #@94
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    #@97
    move-result-object v13

    #@98
    .line 419
    .local v13, "oldDefaultEncoding":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@9a
    if-eqz v13, :cond_5

    #@9c
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9f
    move-result v20

    #@a0
    if-eqz v20, :cond_5

    #@a2
    .line 420
    :cond_4
    if-nez p3, :cond_0

    #@a4
    if-eqz v15, :cond_5

    #@a6
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a9
    move-result v20

    #@aa
    if-nez v20, :cond_0

    #@ac
    .line 424
    :cond_5
    invoke-static {v12}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    #@af
    move-result-object v7

    #@b0
    .line 425
    .local v7, "encodingInfo":Lorg/apache/xml/serializer/EncodingInfo;
    if-eqz v12, :cond_6

    #@b2
    iget-object v0, v7, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    #@b4
    move-object/from16 v20, v0

    #@b6
    if-nez v20, :cond_6

    #@b8
    .line 429
    sget-object v20, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@ba
    .line 430
    const-string/jumbo v21, "ER_ENCODING_NOT_SUPPORTED"

    #@bd
    const/16 v22, 0x1

    #@bf
    move/from16 v0, v22

    #@c1
    new-array v0, v0, [Ljava/lang/Object;

    #@c3
    move-object/from16 v22, v0

    #@c5
    const/16 v23, 0x0

    #@c7
    aput-object v12, v22, v23

    #@c9
    .line 429
    invoke-virtual/range {v20 .. v22}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@cc
    move-result-object v10

    #@cd
    .line 433
    .local v10, "msg":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v21, "Warning: encoding \""

    #@d5
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v20

    #@d9
    move-object/from16 v0, v20

    #@db
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v20

    #@df
    const-string/jumbo v21, "\" not supported, using "

    #@e2
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v20

    #@e6
    .line 434
    const-string/jumbo v21, "UTF-8"

    #@e9
    .line 433
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v20

    #@ed
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v11

    #@f1
    .line 437
    .local v11, "msg2":Ljava/lang/String;
    :try_start_0
    invoke-super/range {p0 .. p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    #@f4
    move-result-object v18

    #@f5
    .line 438
    .local v18, "tran":Ljavax/xml/transform/Transformer;
    if-eqz v18, :cond_b

    #@f7
    .line 439
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@fa
    move-result-object v8

    #@fb
    .line 442
    .local v8, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v8, :cond_a

    #@fd
    .line 443
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@101
    move-object/from16 v20, v0

    #@103
    if-eqz v20, :cond_a

    #@105
    .line 445
    new-instance v20, Ljavax/xml/transform/TransformerException;

    #@107
    .line 446
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@10b
    move-object/from16 v21, v0

    #@10d
    .line 445
    move-object/from16 v0, v20

    #@10f
    move-object/from16 v1, v21

    #@111
    invoke-direct {v0, v10, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@114
    .line 444
    move-object/from16 v0, v20

    #@116
    invoke-interface {v8, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@119
    .line 448
    new-instance v20, Ljavax/xml/transform/TransformerException;

    #@11b
    .line 449
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@11f
    move-object/from16 v21, v0

    #@121
    .line 448
    move-object/from16 v0, v20

    #@123
    move-object/from16 v1, v21

    #@125
    invoke-direct {v0, v11, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@128
    .line 447
    move-object/from16 v0, v20

    #@12a
    invoke-interface {v8, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12d
    .line 462
    .end local v8    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v18    # "tran":Ljavax/xml/transform/Transformer;
    :goto_1
    const-string/jumbo v12, "UTF-8"

    #@130
    .line 463
    const-string/jumbo p2, "UTF-8"

    #@133
    .line 464
    invoke-static {v12}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    #@136
    move-result-object v7

    #@137
    .line 473
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "msg2":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    #@139
    if-nez v15, :cond_0

    #@13b
    .line 474
    :cond_7
    move-object/from16 v0, p0

    #@13d
    iput-object v7, v0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@13f
    .line 475
    if-eqz v12, :cond_8

    #@141
    .line 476
    const-string/jumbo v20, "UTF-8"

    #@144
    move-object/from16 v0, v20

    #@146
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@149
    move-result v20

    #@14a
    move/from16 v0, v20

    #@14c
    move-object/from16 v1, p0

    #@14e
    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    #@150
    .line 479
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->getOutputStream()Ljava/io/OutputStream;

    #@153
    move-result-object v16

    #@154
    .line 480
    .local v16, "os":Ljava/io/OutputStream;
    if-eqz v16, :cond_0

    #@156
    .line 481
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->getWriter()Ljava/io/Writer;

    #@159
    move-result-object v19

    #@15a
    .line 486
    .local v19, "w":Ljava/io/Writer;
    const-string/jumbo v20, "encoding"

    #@15d
    move-object/from16 v0, p0

    #@15f
    move-object/from16 v1, v20

    #@161
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    #@164
    move-result-object v14

    #@165
    .line 487
    .local v14, "oldEncoding":Ljava/lang/String;
    if-eqz v19, :cond_9

    #@167
    move-object/from16 v0, p0

    #@169
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    #@16b
    move/from16 v20, v0

    #@16d
    if-nez v20, :cond_0

    #@16f
    .line 488
    :cond_9
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@172
    move-result v20

    #@173
    if-nez v20, :cond_0

    #@175
    .line 493
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    #@178
    .line 494
    const/16 v20, 0x0

    #@17a
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, v16

    #@17e
    move/from16 v2, v20

    #@180
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    #@183
    goto/16 :goto_0

    #@185
    .line 451
    .end local v14    # "oldEncoding":Ljava/lang/String;
    .end local v16    # "os":Ljava/io/OutputStream;
    .end local v19    # "w":Ljava/io/Writer;
    .restart local v8    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .restart local v10    # "msg":Ljava/lang/String;
    .restart local v11    # "msg2":Ljava/lang/String;
    .restart local v18    # "tran":Ljavax/xml/transform/Transformer;
    :cond_a
    :try_start_1
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@187
    move-object/from16 v0, v20

    #@189
    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18c
    .line 452
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18e
    move-object/from16 v0, v20

    #@190
    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@193
    goto :goto_1

    #@194
    .line 458
    .end local v8    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v18    # "tran":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v6

    #@195
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_1

    #@196
    .line 455
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v18    # "tran":Ljavax/xml/transform/Transformer;
    :cond_b
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@198
    move-object/from16 v0, v20

    #@19a
    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19d
    .line 456
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19f
    move-object/from16 v0, v20

    #@1a1
    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@1a4
    goto :goto_1

    #@1a5
    .line 502
    .end local v7    # "encodingInfo":Lorg/apache/xml/serializer/EncodingInfo;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "msg2":Ljava/lang/String;
    .end local v12    # "newEncoding":Ljava/lang/String;
    .end local v13    # "oldDefaultEncoding":Ljava/lang/String;
    .end local v15    # "oldExplicitEncoding":Ljava/lang/String;
    .end local v17    # "possible_encoding":Ljava/lang/String;
    .end local v18    # "tran":Ljavax/xml/transform/Transformer;
    :pswitch_4
    const-string/jumbo v20, "{http://xml.apache.org/xalan}indent-amount"

    #@1a8
    move-object/from16 v0, v20

    #@1aa
    move-object/from16 v1, p1

    #@1ac
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v20

    #@1b0
    if-eqz v20, :cond_c

    #@1b2
    .line 503
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b5
    move-result v20

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    move/from16 v1, v20

    #@1ba
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setIndentAmount(I)V

    #@1bd
    goto/16 :goto_0

    #@1bf
    .line 504
    :cond_c
    const-string/jumbo v20, "indent"

    #@1c2
    move-object/from16 v0, v20

    #@1c4
    move-object/from16 v1, p1

    #@1c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c9
    move-result v20

    #@1ca
    if-eqz v20, :cond_0

    #@1cc
    .line 505
    const-string/jumbo v20, "yes"

    #@1cf
    move-object/from16 v0, v20

    #@1d1
    move-object/from16 v1, p2

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d6
    move-result v20

    #@1d7
    if-eqz v20, :cond_d

    #@1d9
    const/4 v4, 0x1

    #@1da
    .line 506
    .local v4, "b":Z
    :goto_2
    move-object/from16 v0, p0

    #@1dc
    iput-boolean v4, v0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    #@1de
    goto/16 :goto_0

    #@1e0
    .line 505
    .end local v4    # "b":Z
    :cond_d
    const/4 v4, 0x0

    #@1e1
    .restart local v4    # "b":Z
    goto :goto_2

    #@1e2
    .line 511
    .end local v4    # "b":Z
    :pswitch_5
    const-string/jumbo v20, "{http://xml.apache.org/xalan}line-separator"

    #@1e5
    move-object/from16 v0, v20

    #@1e7
    move-object/from16 v1, p1

    #@1e9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ec
    move-result v20

    #@1ed
    if-eqz v20, :cond_0

    #@1ef
    .line 512
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    #@1f2
    move-result-object v20

    #@1f3
    move-object/from16 v0, v20

    #@1f5
    move-object/from16 v1, p0

    #@1f7
    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@1f9
    .line 513
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@1fd
    move-object/from16 v20, v0

    #@1ff
    move-object/from16 v0, v20

    #@201
    array-length v0, v0

    #@202
    move/from16 v20, v0

    #@204
    move/from16 v0, v20

    #@206
    move-object/from16 v1, p0

    #@208
    iput v0, v1, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@20a
    goto/16 :goto_0

    #@20c
    .line 518
    :pswitch_6
    const-string/jumbo v20, "media-type"

    #@20f
    move-object/from16 v0, v20

    #@211
    move-object/from16 v1, p1

    #@213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@216
    move-result v20

    #@217
    if-eqz v20, :cond_0

    #@219
    .line 519
    move-object/from16 v0, p2

    #@21b
    move-object/from16 v1, p0

    #@21d
    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_mediatype:Ljava/lang/String;

    #@21f
    goto/16 :goto_0

    #@221
    .line 523
    :pswitch_7
    const-string/jumbo v20, "omit-xml-declaration"

    #@224
    move-object/from16 v0, v20

    #@226
    move-object/from16 v1, p1

    #@228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22b
    move-result v20

    #@22c
    if-eqz v20, :cond_0

    #@22e
    .line 524
    const-string/jumbo v20, "yes"

    #@231
    move-object/from16 v0, v20

    #@233
    move-object/from16 v1, p2

    #@235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v20

    #@239
    if-eqz v20, :cond_e

    #@23b
    const/4 v4, 0x1

    #@23c
    .line 525
    .restart local v4    # "b":Z
    :goto_3
    move-object/from16 v0, p0

    #@23e
    iput-boolean v4, v0, Lorg/apache/xml/serializer/ToStream;->m_shouldNotWriteXMLHeader:Z

    #@240
    goto/16 :goto_0

    #@242
    .line 524
    .end local v4    # "b":Z
    :cond_e
    const/4 v4, 0x0

    #@243
    .restart local v4    # "b":Z
    goto :goto_3

    #@244
    .line 530
    .end local v4    # "b":Z
    :pswitch_8
    const-string/jumbo v20, "standalone"

    #@247
    move-object/from16 v0, v20

    #@249
    move-object/from16 v1, p1

    #@24b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24e
    move-result v20

    #@24f
    if-eqz v20, :cond_0

    #@251
    .line 531
    if-eqz p3, :cond_f

    #@253
    .line 532
    move-object/from16 v0, p0

    #@255
    move-object/from16 v1, p2

    #@257
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setStandaloneInternal(Ljava/lang/String;)V

    #@25a
    goto/16 :goto_0

    #@25c
    .line 534
    :cond_f
    const/16 v20, 0x1

    #@25e
    move/from16 v0, v20

    #@260
    move-object/from16 v1, p0

    #@262
    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_standaloneWasSpecified:Z

    #@264
    .line 535
    move-object/from16 v0, p0

    #@266
    move-object/from16 v1, p2

    #@268
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setStandaloneInternal(Ljava/lang/String;)V

    #@26b
    goto/16 :goto_0

    #@26d
    .line 541
    :pswitch_9
    const-string/jumbo v20, "version"

    #@270
    move-object/from16 v0, v20

    #@272
    move-object/from16 v1, p1

    #@274
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@277
    move-result v20

    #@278
    if-eqz v20, :cond_0

    #@27a
    .line 542
    move-object/from16 v0, p2

    #@27c
    move-object/from16 v1, p0

    #@27e
    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_version:Ljava/lang/String;

    #@280
    goto/16 :goto_0

    #@282
    .line 390
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 3
    .param p1, "transformer"    # Ljavax/xml/transform/Transformer;

    #@0
    .prologue
    .line 3233
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@3
    .line 3234
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3235
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@9
    instance-of v0, v0, Lorg/apache/xml/serializer/SerializerTraceWriter;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 3232
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3236
    :cond_1
    new-instance v0, Lorg/apache/xml/serializer/SerializerTraceWriter;

    #@10
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@12
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@14
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, v0, v1}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    #@1b
    goto :goto_0
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 652
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    #@4
    .line 650
    return-void
.end method

.method protected shouldIndent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2703
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@7
    if-nez v1, :cond_0

    #@9
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@10
    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@12
    if-lez v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2556
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2568
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    #@3
    .line 2566
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2669
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToStream;->setDoctypeSystem(Ljava/lang/String;)V

    #@3
    .line 2670
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->setDoctypePublic(Ljava/lang/String;)V

    #@6
    .line 2672
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@8
    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@a
    .line 2673
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    #@d
    .line 2667
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1995
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@4
    .line 1993
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "elementNamespaceURI"    # Ljava/lang/String;
    .param p2, "elementLocalName"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1990
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@4
    .line 1988
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1902
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1903
    return-void

    #@6
    .line 1905
    :cond_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@8
    if-eqz v2, :cond_9

    #@a
    .line 1907
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@d
    .line 1908
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    #@f
    .line 1909
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_docIsEmpty:Z

    #@11
    .line 1915
    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 1916
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypeSystem()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 1917
    const/4 v2, 0x1

    #@1c
    invoke-virtual {p0, p3, v2}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    #@1f
    .line 1919
    :cond_2
    const/4 v2, 0x0

    #@20
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    #@22
    .line 1925
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@24
    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 1927
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    #@2b
    .line 1928
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2d
    const/4 v3, 0x0

    #@2e
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@30
    .line 1931
    :cond_4
    if-eqz p1, :cond_5

    #@32
    .line 1932
    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/serializer/ToStream;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 1934
    :cond_5
    const/4 v2, 0x0

    #@36
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    #@38
    .line 1936
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_6

    #@3e
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    #@40
    if-eqz v2, :cond_6

    #@42
    .line 1938
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    #@45
    .line 1941
    :cond_6
    const/4 v2, 0x1

    #@46
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    #@48
    .line 1943
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@4a
    .line 1944
    .local v1, "writer":Ljava/io/Writer;
    const/16 v2, 0x3c

    #@4c
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@4f
    .line 1945
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 1953
    if-eqz p4, :cond_7

    #@54
    .line 1954
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToStream;->addAttributes(Lorg/xml/sax/Attributes;)V

    #@57
    .line 1956
    :cond_7
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@59
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@5f
    .line 1957
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    #@61
    .line 1959
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@63
    if-eqz v2, :cond_8

    #@65
    .line 1960
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    #@68
    .line 1900
    :cond_8
    return-void

    #@69
    .line 1911
    .end local v1    # "writer":Ljava/io/Writer;
    :cond_9
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@6b
    if-eqz v2, :cond_1

    #@6d
    .line 1912
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@70
    goto :goto_0

    #@71
    .line 1948
    :catch_0
    move-exception v0

    #@72
    .line 1949
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@74
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@77
    throw v2
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2588
    const-string/jumbo v0, "[dtd]"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2589
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    #@c
    .line 2591
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    #@e
    if-nez v0, :cond_1

    #@10
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 2601
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    #@16
    .line 2586
    return-void

    #@17
    .line 2596
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    #@1a
    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v1, "&"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const/16 v1, 0x3b

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->characters(Ljava/lang/String;)V

    #@37
    .line 2598
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    #@3a
    goto :goto_0
.end method

.method public startNonEscaping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1226
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    #@6
    .line 1224
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2299
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    .line 2296
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "shouldFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2338
    if-eqz p3, :cond_1

    #@2
    .line 2340
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    #@5
    .line 2342
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@9
    add-int/lit8 v10, v0, 0x1

    #@b
    .line 2349
    .local v10, "pushDepth":I
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@d
    invoke-virtual {v0, p1, p2, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    #@10
    move-result v11

    #@11
    .line 2351
    .local v11, "pushed":Z
    if-eqz v11, :cond_0

    #@13
    .line 2359
    const-string/jumbo v0, ""

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 2361
    const-string/jumbo v2, "xmlns"

    #@1f
    .line 2362
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@22
    const-string/jumbo v4, "CDATA"

    #@25
    const/4 v6, 0x0

    #@26
    move-object v0, p0

    #@27
    move-object v3, v2

    #@28
    move-object v5, p2

    #@29
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@2c
    .line 2379
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return v11

    #@2d
    .line 2347
    .end local v10    # "pushDepth":I
    .end local v11    # "pushed":Z
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2f
    iget v10, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@31
    .restart local v10    # "pushDepth":I
    goto :goto_0

    #@32
    .line 2366
    .restart local v11    # "pushed":Z
    :cond_2
    const-string/jumbo v0, ""

    #@35
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_0

    #@3b
    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "xmlns:"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 2375
    .restart local v2    # "name":Ljava/lang/String;
    const-string/jumbo v4, "http://www.w3.org/2000/xmlns/"

    #@52
    const-string/jumbo v7, "CDATA"

    #@55
    const/4 v9, 0x0

    #@56
    move-object v3, p0

    #@57
    move-object v5, p1

    #@58
    move-object v6, v2

    #@59
    move-object v8, p2

    #@5a
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@5d
    goto :goto_1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pubID"    # Ljava/lang/String;
    .param p3, "sysID"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 3522
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    #@3
    .line 3524
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@5
    const-string/jumbo v2, "<!ENTITY "

    #@8
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    .line 3525
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@d
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 3526
    if-eqz p2, :cond_0

    #@12
    .line 3527
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@14
    const-string/jumbo v2, " PUBLIC \""

    #@17
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 3528
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@1c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1f
    .line 3535
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@21
    const-string/jumbo v2, "\" NDATA "

    #@24
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 3536
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@29
    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2c
    .line 3537
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@2e
    const-string/jumbo v2, " >"

    #@31
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@34
    .line 3538
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@36
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@38
    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@3a
    const/4 v4, 0x0

    #@3b
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    #@3e
    .line 3519
    :goto_1
    return-void

    #@3f
    .line 3532
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@41
    const-string/jumbo v2, " SYSTEM \""

    #@44
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@47
    .line 3533
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@49
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    goto :goto_0

    #@4d
    .line 3539
    :catch_0
    move-exception v0

    #@4e
    .line 3541
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@51
    goto :goto_1
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x3b

    #@2
    const/4 v6, 0x0

    #@3
    .line 2099
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    .line 2100
    .local v5, "len":I
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    #@9
    array-length v0, v0

    #@a
    if-le v5, v0, :cond_0

    #@c
    .line 2102
    mul-int/lit8 v0, v5, 0x2

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    new-array v0, v0, [C

    #@12
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    #@14
    .line 2104
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    #@16
    invoke-virtual {p2, v6, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    #@19
    .line 2105
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    #@1b
    .line 2107
    .local v4, "stringChars":[C
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_7

    #@1e
    .line 2109
    aget-char v2, v4, v3

    #@20
    .line 2111
    .local v2, "ch":C
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@22
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 2115
    const/4 v7, 0x1

    #@29
    move-object v0, p0

    #@2a
    move-object v1, p1

    #@2b
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    #@2e
    .line 2107
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2118
    :cond_1
    if-ltz v2, :cond_2

    #@33
    const/16 v0, 0x1f

    #@35
    if-gt v2, v0, :cond_2

    #@37
    .line 2133
    packed-switch v2, :pswitch_data_0

    #@3a
    .line 2145
    :pswitch_0
    const-string/jumbo v0, "&#"

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@40
    .line 2146
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@47
    .line 2147
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    #@4a
    goto :goto_1

    #@4b
    .line 2136
    :pswitch_1
    const-string/jumbo v0, "&#9;"

    #@4e
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@51
    goto :goto_1

    #@52
    .line 2139
    :pswitch_2
    const-string/jumbo v0, "&#10;"

    #@55
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@58
    goto :goto_1

    #@59
    .line 2142
    :pswitch_3
    const-string/jumbo v0, "&#13;"

    #@5c
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5f
    goto :goto_1

    #@60
    .line 2152
    :cond_2
    const/16 v0, 0x7f

    #@62
    if-ge v2, v0, :cond_3

    #@64
    .line 2155
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    #@67
    goto :goto_1

    #@68
    .line 2157
    :cond_3
    const/16 v0, 0x9f

    #@6a
    if-gt v2, v0, :cond_4

    #@6c
    .line 2160
    const-string/jumbo v0, "&#"

    #@6f
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@72
    .line 2161
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@79
    .line 2162
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    #@7c
    goto :goto_1

    #@7d
    .line 2164
    :cond_4
    const/16 v0, 0x2028

    #@7f
    if-ne v2, v0, :cond_5

    #@81
    .line 2166
    const-string/jumbo v0, "&#8232;"

    #@84
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@87
    goto :goto_1

    #@88
    .line 2168
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@8a
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_6

    #@90
    .line 2172
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    #@93
    goto :goto_1

    #@94
    .line 2179
    :cond_6
    const-string/jumbo v0, "&#"

    #@97
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@9a
    .line 2180
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a1
    .line 2181
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    #@a4
    goto :goto_1

    #@a5
    .line 2097
    .end local v2    # "ch":C
    :cond_7
    return-void

    #@a6
    .line 2133
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method writeNormalizedChars([CIIZZ)V
    .locals 10
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isCData"    # Z
    .param p5, "useSystemLineSeparator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x5d

    #@2
    const/16 v8, 0x3b

    #@4
    .line 1115
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@6
    .line 1116
    .local v4, "writer":Ljava/io/Writer;
    add-int v1, p2, p3

    #@8
    .line 1118
    .local v1, "end":I
    move v2, p2

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_c

    #@b
    .line 1120
    aget-char v0, p1, v2

    #@d
    .line 1122
    .local v0, "c":C
    const/16 v5, 0xa

    #@f
    if-ne v5, v0, :cond_0

    #@11
    if-eqz p5, :cond_0

    #@13
    .line 1124
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    #@15
    iget v6, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    #@17
    const/4 v7, 0x0

    #@18
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/Writer;->write([CII)V

    #@1b
    .line 1118
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1126
    :cond_0
    if-eqz p4, :cond_1

    #@20
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 1156
    :cond_1
    if-eqz p4, :cond_5

    #@28
    .line 1157
    add-int/lit8 v5, v1, -0x2

    #@2a
    if-ge v2, v5, :cond_5

    #@2c
    .line 1158
    if-ne v9, v0, :cond_5

    #@2e
    .line 1159
    add-int/lit8 v5, v2, 0x1

    #@30
    aget-char v5, p1, v5

    #@32
    if-ne v9, v5, :cond_5

    #@34
    .line 1160
    add-int/lit8 v5, v2, 0x2

    #@36
    aget-char v5, p1, v5

    #@38
    const/16 v6, 0x3e

    #@3a
    if-ne v6, v5, :cond_5

    #@3c
    .line 1162
    const-string/jumbo v5, "]]]]><![CDATA[>"

    #@3f
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@42
    .line 1164
    add-int/lit8 v2, v2, 0x2

    #@44
    .line 1161
    goto :goto_1

    #@45
    .line 1129
    :cond_2
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@47
    if-eqz v5, :cond_3

    #@49
    .line 1130
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@4c
    .line 1133
    :cond_3
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_4

    #@52
    .line 1135
    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    #@55
    .line 1136
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_1

    #@58
    .line 1140
    :cond_4
    const-string/jumbo v5, "&#"

    #@5b
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5e
    .line 1142
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    .line 1144
    .local v3, "intStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@65
    .line 1145
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(I)V

    #@68
    goto :goto_1

    #@69
    .line 1168
    .end local v3    # "intStr":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_8

    #@6f
    .line 1170
    if-eqz p4, :cond_6

    #@71
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@73
    if-eqz v5, :cond_7

    #@75
    .line 1175
    :cond_6
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(I)V

    #@78
    goto :goto_1

    #@79
    .line 1172
    :cond_7
    const-string/jumbo v5, "<![CDATA["

    #@7c
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@7f
    .line 1173
    const/4 v5, 0x1

    #@80
    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@82
    goto :goto_2

    #@83
    .line 1179
    :cond_8
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    #@86
    move-result v5

    #@87
    if-eqz v5, :cond_a

    #@89
    .line 1181
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@8b
    if-eqz v5, :cond_9

    #@8d
    .line 1182
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@90
    .line 1183
    :cond_9
    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    #@93
    .line 1184
    add-int/lit8 v2, v2, 0x1

    #@95
    goto :goto_1

    #@96
    .line 1188
    :cond_a
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    #@98
    if-eqz v5, :cond_b

    #@9a
    .line 1189
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    #@9d
    .line 1190
    :cond_b
    const-string/jumbo v5, "&#"

    #@a0
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a3
    .line 1192
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    .line 1194
    .restart local v3    # "intStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@aa
    .line 1195
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(I)V

    #@ad
    goto/16 :goto_1

    #@af
    .line 1113
    .end local v0    # "c":C
    .end local v3    # "intStr":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method protected writeUTF16Surrogate(C[CII)I
    .locals 11
    .param p1, "c"    # C
    .param p2, "ch"    # [C
    .param p3, "i"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 986
    const/4 v0, 0x0

    #@1
    .line 987
    .local v0, "codePoint":I
    add-int/lit8 v5, p3, 0x1

    #@3
    if-lt v5, p4, :cond_0

    #@5
    .line 989
    new-instance v5, Ljava/io/IOException;

    #@7
    .line 990
    sget-object v6, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@9
    .line 991
    const-string/jumbo v7, "ER_INVALID_UTF16_SURROGATE"

    #@c
    .line 992
    const/4 v8, 0x1

    #@d
    new-array v8, v8, [Ljava/lang/Object;

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12
    move-result-object v9

    #@13
    const/4 v10, 0x0

    #@14
    aput-object v9, v8, v10

    #@16
    .line 990
    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 989
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 995
    :cond_0
    move v2, p1

    #@1f
    .line 996
    .local v2, "high":C
    add-int/lit8 v5, p3, 0x1

    #@21
    aget-char v3, p2, v5

    #@23
    .line 997
    .local v3, "low":C
    invoke-static {v3}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    #@26
    move-result v5

    #@27
    if-nez v5, :cond_1

    #@29
    .line 998
    new-instance v5, Ljava/io/IOException;

    #@2b
    .line 999
    sget-object v6, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@2d
    .line 1000
    const-string/jumbo v7, "ER_INVALID_UTF16_SURROGATE"

    #@30
    .line 1001
    const/4 v8, 0x1

    #@31
    new-array v8, v8, [Ljava/lang/Object;

    #@33
    .line 1002
    new-instance v9, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3b
    move-result-object v10

    #@3c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    .line 1003
    const-string/jumbo v10, " "

    #@43
    .line 1002
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    .line 1004
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    .line 1002
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    const/4 v10, 0x0

    #@54
    aput-object v9, v8, v10

    #@56
    .line 999
    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    .line 998
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v5

    #@5e
    .line 1007
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    #@60
    .line 1010
    .local v4, "writer":Ljava/io/Writer;
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    #@62
    invoke-virtual {v5, p1, v3}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(CC)Z

    #@65
    move-result v5

    #@66
    if-eqz v5, :cond_2

    #@68
    .line 1013
    const/4 v5, 0x2

    #@69
    invoke-virtual {v4, p2, p3, v5}, Ljava/io/Writer;->write([CII)V

    #@6c
    .line 1038
    :goto_0
    return v0

    #@6d
    .line 1019
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getEncoding()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 1020
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@73
    .line 1024
    invoke-static {v2, v3}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    #@76
    move-result v0

    #@77
    .line 1026
    const/16 v5, 0x26

    #@79
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    #@7c
    .line 1027
    const/16 v5, 0x23

    #@7e
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    #@81
    .line 1028
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@88
    .line 1029
    const/16 v5, 0x3b

    #@8a
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    #@8d
    goto :goto_0

    #@8e
    .line 1034
    :cond_3
    const/4 v5, 0x2

    #@8f
    invoke-virtual {v4, p2, p3, v5}, Ljava/io/Writer;->write([CII)V

    #@92
    goto :goto_0
.end method

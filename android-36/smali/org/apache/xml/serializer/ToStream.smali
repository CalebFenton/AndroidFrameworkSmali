.class public abstract Lorg/apache/xml/serializer/ToStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToStream$BoolStack;,
        Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
    }
.end annotation


# static fields
.field private static final greylist COMMENT_BEGIN:Ljava/lang/String; = "<!--"

.field private static final greylist COMMENT_END:Ljava/lang/String; = "-->"

.field private static final greylist s_systemLineSep:[C


# instance fields
.field protected greylist m_cdataStartCalled:Z

.field protected greylist m_charInfo:Lorg/apache/xml/serializer/CharInfo;

.field protected greylist m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field greylist m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

.field protected greylist m_escaping:Z

.field private greylist m_expandDTDEntities:Z

.field protected greylist m_inDoctype:Z

.field greylist m_isUTF8:Z

.field protected greylist m_ispreserve:Z

.field protected greylist m_isprevtext:Z

.field protected greylist m_lineSep:[C

.field protected greylist m_lineSepLen:I

.field protected greylist m_lineSepUse:Z

.field greylist m_outputStream:Ljava/io/OutputStream;

.field protected greylist m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field greylist m_shouldFlush:Z

.field protected greylist m_spaceBeforeClose:Z

.field greylist m_startNewLine:Z

.field private greylist m_writer_set_by_user:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 111
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v0

    .line 112
    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 184
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    .line 62
    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 76
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 87
    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 97
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 107
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 121
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 133
    array-length v0, v0

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    .line 142
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    .line 147
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 160
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    .line 165
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    .line 171
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 177
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    .line 232
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    return-void
.end method

.method private greylist DTDprolog()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3551
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 3552
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 3554
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 3555
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 3557
    :cond_10
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    if-eqz v1, :cond_22

    .line 3559
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3560
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 3561
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    :cond_22
    return-void
.end method

.method private greylist accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1794
    invoke-virtual/range {p0 .. p7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result p7

    if-ne p3, p7, :cond_c0

    .line 1798
    invoke-static {p2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v0

    const/16 v1, 0x3b

    const-string v2, "&#"

    if-eqz v0, :cond_72

    add-int/lit8 p3, p3, 0x1

    .line 1806
    const-string p0, "ER_INVALID_UTF16_SURROGATE"

    if-ge p3, p5, :cond_5e

    .line 1818
    aget-char p3, p4, p3

    .line 1820
    invoke-static {p3}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result p4

    if-eqz p4, :cond_32

    .line 1832
    invoke-static {p2, p3}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result p0

    .line 1835
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1836
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p7, p7, 0x2

    return p7

    .line 1821
    :cond_32
    new-instance p1, Ljava/io/IOException;

    sget-object p4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1826
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 1822
    invoke-virtual {p4, p0, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1808
    :cond_5e
    new-instance p1, Ljava/io/IOException;

    sget-object p3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1811
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 1809
    invoke-virtual {p3, p0, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1847
    :cond_72
    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isCharacterInC0orC1Range(C)Z

    move-result p3

    if-nez p3, :cond_b1

    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isNELorLSEPCharacter(C)Z

    move-result p3

    if-eqz p3, :cond_7f

    goto :goto_b1

    .line 1853
    :cond_7f
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result p3

    if-eqz p3, :cond_99

    if-eqz p6, :cond_8f

    iget-object p3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 1854
    invoke-virtual {p3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result p3

    if-nez p3, :cond_99

    :cond_8f
    if-nez p6, :cond_ad

    iget-object p3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 1855
    invoke-virtual {p3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result p3

    if-eqz p3, :cond_ad

    :cond_99
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-lez p0, :cond_ad

    .line 1858
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1859
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_be

    .line 1864
    :cond_ad
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    goto :goto_be

    .line 1849
    :cond_b1
    :goto_b1
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1850
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :goto_be
    add-int/lit8 p7, p7, 0x1

    :cond_c0
    return p7
.end method

.method private greylist addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 5

    .line 2783
    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, "{}"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2785
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 2786
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_18
    move-object p0, v1

    :goto_19
    if-nez p0, :cond_22

    .line 2791
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2792
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 2797
    :cond_22
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2798
    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static greylist isCharacterInC0orC1Range(C)Z
    .registers 4

    .line 0
    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xd

    if-ne p0, v0, :cond_e

    goto :goto_1e

    :cond_e
    const/16 v0, 0x7f

    const/4 v2, 0x1

    if-lt p0, v0, :cond_17

    const/16 v0, 0x9f

    if-le p0, v0, :cond_1d

    :cond_17
    if-lt p0, v2, :cond_1e

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_1e

    :cond_1d
    return v2

    :cond_1e
    :goto_1e
    return v1
.end method

.method private greylist isEscapingDisabled()Z
    .registers 1

    .line 1331
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result p0

    return p0
.end method

.method private static greylist isNELorLSEPCharacter(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x85

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2028

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private greylist printSpace(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_d

    const/16 v1, 0x20

    .line 819
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private greylist processDirty([CIICIZ)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p5, p5, 0x1

    if-le p3, p5, :cond_b

    sub-int v0, p3, p5

    .line 1720
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p5, v0}, Ljava/io/Writer;->write([CII)V

    :cond_b
    const/16 p5, 0xa

    if-ne p5, p4, :cond_1c

    if-eqz p6, :cond_1c

    .line 1726
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 p4, 0x0

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p1, p2, p4, p0}, Ljava/io/Writer;->write([CII)V

    return p3

    .line 1730
    :cond_1c
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v3, p3

    move v2, p4

    move v6, p6

    .line 1731
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private greylist processLineFeed([CIILjava/io/Writer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1641
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    aget-char v0, v0, v2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    goto :goto_1e

    .line 1648
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1649
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p4, p1, v2, p0}, Ljava/io/Writer;->write([CII)V

    return p2

    :cond_1e
    :goto_1e
    return p3
.end method

.method private greylist resetToStream()V
    .registers 4

    const/4 v0, 0x0

    .line 3264
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 3272
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    const/4 v1, 0x1

    .line 3275
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    .line 3278
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    .line 3279
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    .line 3280
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 3281
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 3282
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    .line 3283
    sget-object v2, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    iput-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 3284
    array-length v2, v2

    iput v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    .line 3285
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 3287
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    .line 3288
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    .line 3289
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 3290
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 3291
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    return-void
.end method

.method private greylist setCdataSectionElements(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 10

    .line 2725
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 2730
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 2731
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2733
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_17
    if-ge v3, v0, :cond_47

    .line 2740
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2742
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_36

    if-nez v4, :cond_41

    .line 2746
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_44

    .line 2748
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    .line 2749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_44

    :cond_36
    const/16 v6, 0x7b

    if-ne v6, v5, :cond_3c

    const/4 v4, 0x1

    goto :goto_41

    :cond_3c
    const/16 v6, 0x7d

    if-ne v6, v5, :cond_41

    move v4, v2

    .line 2759
    :cond_41
    :goto_41
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2762
    :cond_47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_57

    .line 2764
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    .line 2765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2768
    :cond_57
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->setCdataSectionElements(Ljava/util/Vector;)V

    :cond_5a
    return-void
.end method

.method private greylist setOutputStreamInternal(Ljava/io/OutputStream;Z)V
    .registers 9

    .line 714
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    .line 715
    const-string p2, "encoding"

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 716
    const-string v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 720
    new-instance p2, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    invoke-direct {p2, p1}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p2, v2}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    return-void

    .line 721
    :cond_1a
    const-string v1, "WINDOWS-1250"

    .line 722
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "US-ASCII"

    .line 723
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "ASCII"

    .line 724
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_74

    :cond_33
    if-eqz p2, :cond_6b

    .line 731
    :try_start_35
    invoke-static {p1, p2}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v1
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    const/4 v1, 0x0

    :goto_3b
    if-nez v1, :cond_67

    .line 740
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: encoding \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" not supported, using "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    .line 750
    :try_start_5e
    invoke-static {p1, v0}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v1
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    .line 754
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 757
    :cond_67
    :goto_67
    invoke-direct {p0, v1, v2}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    return-void

    .line 761
    :cond_6b
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 762
    invoke-direct {p0, p2, v2}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    return-void

    .line 726
    :cond_74
    :goto_74
    new-instance p2, Lorg/apache/xml/serializer/WriterToASCI;

    invoke-direct {p2, p1}, Lorg/apache/xml/serializer/WriterToASCI;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p2, v2}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    return-void
.end method

.method private greylist setWriterInternal(Ljava/io/Writer;Z)V
    .registers 4

    .line 658
    iput-boolean p2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    .line 659
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 662
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p2, :cond_23

    .line 665
    :goto_8
    instance-of p2, p1, Lorg/apache/xml/serializer/WriterChain;

    if-eqz p2, :cond_18

    .line 666
    instance-of p2, p1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    if-eqz p2, :cond_11

    return-void

    .line 670
    :cond_11
    check-cast p1, Lorg/apache/xml/serializer/WriterChain;

    invoke-interface {p1}, Lorg/apache/xml/serializer/WriterChain;->getWriter()Ljava/io/Writer;

    move-result-object p1

    goto :goto_8

    .line 673
    :cond_18
    new-instance p1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    invoke-direct {p1, p2, v0}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :cond_23
    return-void
.end method

.method private greylist writeOutCleanChars([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_a

    sub-int/2addr p2, p3

    .line 1661
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, p1, p3, p2}, Ljava/io/Writer;->write([CII)V

    :cond_a
    return-void
.end method


# virtual methods
.method greylist accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p7, :cond_f

    const/16 p4, 0xa

    if-ne p4, p2, :cond_f

    .line 1070
    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 p4, 0x0

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p1, p2, p4, p0}, Ljava/io/Writer;->write([CII)V

    goto :goto_2e

    :cond_f
    if-eqz p6, :cond_19

    .line 1076
    iget-object p4, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p4, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result p4

    if-nez p4, :cond_23

    :cond_19
    if-nez p6, :cond_30

    iget-object p4, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p4, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result p4

    if-eqz p4, :cond_30

    .line 1078
    :cond_23
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 1082
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2e
    add-int/lit8 p3, p3, 0x1

    :cond_30
    return p3
.end method

.method public greylist addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 3019
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 3022
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_18

    .line 3020
    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result v0

    :goto_18
    const/4 v1, 0x0

    if-ltz v0, :cond_39

    .line 3028
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 p2, 0x0

    if-eqz p1, :cond_2e

    .line 3030
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object p1

    .line 3031
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object p2, p1

    .line 3039
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p1, v0, p5}, Lorg/xml/sax/helpers/AttributesImpl;->setValue(ILjava/lang/String;)V

    if-eqz p2, :cond_38

    .line 3042
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_38
    return v1

    :cond_39
    if-eqz p6, :cond_88

    const/16 p6, 0x3a

    .line 3063
    invoke-virtual {p3, p6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_7f

    .line 3066
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3067
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 3072
    iget v1, v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-ne v1, v2, :cond_7f

    iget-object v0, v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    .line 3074
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 3086
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p3, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6d

    .line 3098
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p3}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p3

    .line 3101
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3113
    :cond_7f
    :try_start_7f
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_82
    .catch Lorg/xml/sax/SAXException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_88

    :catch_83
    move-exception v0

    move-object p6, v0

    .line 3121
    invoke-virtual {p6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :cond_88
    :goto_88
    move-object v3, p3

    .line 3124
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_99

    .line 3127
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_99
    const/4 p0, 0x1

    return p0
.end method

.method public greylist addCdataSectionElements(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 3595
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->initCdataElems(Ljava/lang/String;)V

    .line 3596
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 3597
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    return-void

    .line 3599
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 852
    iget-boolean p5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz p5, :cond_5

    return-void

    .line 856
    :cond_5
    :try_start_5
    iget-object p5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 857
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 859
    const-string v0, "<!ATTLIST "

    invoke-virtual {p5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 861
    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    .line 863
    invoke-virtual {p5, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    .line 865
    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_28

    .line 868
    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    .line 869
    invoke-virtual {p5, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_28
    const/16 p1, 0x3e

    .line 874
    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    .line 875
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 p2, 0x0

    invoke-virtual {p5, p1, p2, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p0

    .line 879
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method protected greylist cdata([CII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1263
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1266
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_e
    const/4 v0, 0x1

    .line 1268
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1270
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1271
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    :cond_1a
    if-lt p3, v0, :cond_25

    .line 1273
    aget-char v2, p1, p2

    .line 1274
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v2

    if-eqz v2, :cond_25

    move v1, v0

    :cond_25
    if-eqz v1, :cond_34

    .line 1280
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v2, :cond_34

    .line 1282
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v3, "<![CDATA["

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1283
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 1287
    :cond_34
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->isEscapingDisabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1289
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    goto :goto_4c

    .line 1292
    :cond_42
    iget-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/serializer/ToStream;->writeNormalizedChars([CIIZZ)V

    :goto_4c
    if-eqz v1, :cond_5a

    add-int p2, v4, v5

    sub-int/2addr p2, v0

    .line 1305
    aget-char p0, v3, p2

    const/16 p1, 0x5d

    if-ne p0, p1, :cond_5a

    .line 1306
    invoke-virtual {v2}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1310
    :cond_5a
    iget-object p0, v2, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p0, :cond_61

    .line 1311
    invoke-super {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializerBase;->fireCDATAEvent([CII)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_61} :catch_62

    :cond_61
    return-void

    :catch_62
    move-exception v0

    move-object p0, v0

    .line 1315
    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p3, "ER_OIERROR"

    const/4 v0, 0x0

    .line 1316
    invoke-virtual {p2, p3, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist characters(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1755
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_9

    return-void

    .line 1757
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1758
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_1a

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 1760
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 1762
    :cond_1a
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1763
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_161

    .line 1403
    iget-boolean v2, v0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v2, :cond_10

    iget-boolean v2, v0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v2, :cond_10

    goto/16 :goto_161

    :cond_10
    const/4 v2, 0x0

    .line 1406
    iput-boolean v2, v0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 1408
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_21

    .line 1410
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1411
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v2, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_28

    .line 1413
    :cond_21
    iget-boolean v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v3, :cond_28

    .line 1415
    invoke-virtual {v0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 1418
    :cond_28
    :goto_28
    iget-boolean v3, v0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    if-nez v3, :cond_15e

    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v3, :cond_34

    goto/16 :goto_15e

    .line 1428
    :cond_34
    iget-boolean v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v3, :cond_3b

    .line 1429
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1431
    :cond_3b
    iget-object v3, v0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result v3

    if-nez v3, :cond_153

    iget-boolean v3, v0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    if-nez v3, :cond_49

    goto/16 :goto_153

    .line 1442
    :cond_49
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_56

    .line 1444
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1445
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v2, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_56
    add-int v3, p2, p3

    add-int/lit8 v4, p2, -0x1

    .line 1460
    :try_start_5a
    iget-object v5, v0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5c} :catch_14c

    const/4 v6, 0x1

    move/from16 v7, p2

    move v8, v6

    .line 1465
    :goto_60
    const-string v9, "&#13;"

    const/16 v10, 0xd

    const/16 v11, 0xa

    const/16 v12, 0x9

    if-ge v7, v3, :cond_a8

    if-eqz v8, :cond_a8

    .line 1466
    :try_start_6c
    aget-char v13, v1, v7

    .line 1468
    iget-object v14, v0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v14, v13}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v14

    if-eqz v14, :cond_89

    .line 1473
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1474
    iget-object v4, v0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 1475
    invoke-virtual {v4, v13}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v4

    .line 1476
    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v7, 0x1

    move v8, v7

    move v7, v4

    move v4, v8

    :goto_87
    move v8, v2

    goto :goto_60

    :cond_89
    if-eq v13, v12, :cond_94

    if-eq v13, v11, :cond_a3

    if-eq v13, v10, :cond_97

    const/16 v9, 0x20

    if-eq v13, v9, :cond_94

    goto :goto_87

    :cond_94
    :goto_94
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 1497
    :cond_97
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1498
    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v7, 0x1

    move v15, v7

    move v7, v4

    move v4, v15

    goto :goto_60

    .line 1492
    :cond_a3
    invoke-direct {v0, v1, v7, v4, v5}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    move-result v4

    goto :goto_94

    :cond_a8
    if-lt v7, v3, :cond_ac

    if-nez v8, :cond_ae

    .line 1520
    :cond_ac
    iput-boolean v6, v0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    :cond_ae
    :goto_ae
    if-ge v7, v3, :cond_139

    .line 1525
    aget-char v2, v1, v7

    .line 1527
    iget-object v8, v0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v8, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 1531
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1532
    iget-object v4, v0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v4, v2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v2

    .line 1533
    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_c6} :catch_14c

    goto/16 :goto_134

    :cond_c8
    const/16 v8, 0x1f

    const/16 v13, 0x3b

    .line 1537
    const-string v14, "&#"

    if-gt v2, v8, :cond_f4

    if-eq v2, v12, :cond_135

    if-eq v2, v11, :cond_ee

    if-eq v2, v10, :cond_e7

    .line 1568
    :try_start_d6
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1569
    invoke-virtual {v5, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1570
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v5, v13}, Ljava/io/Writer;->write(I)V

    goto :goto_134

    .line 1562
    :cond_e7
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1563
    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_134

    .line 1559
    :cond_ee
    invoke-direct {v0, v1, v7, v4, v5}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    move-result v2

    move v4, v2

    goto :goto_135

    :cond_f4
    const/16 v8, 0x7f

    if-ge v2, v8, :cond_f9

    goto :goto_135

    :cond_f9
    const/16 v8, 0x9f

    if-gt v2, v8, :cond_10e

    .line 1586
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1587
    invoke-virtual {v5, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1588
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v5, v13}, Ljava/io/Writer;->write(I)V

    goto :goto_134

    :cond_10e
    const/16 v8, 0x2028

    if-ne v2, v8, :cond_11b

    .line 1594
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1595
    const-string v2, "&#8232;"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_134

    .line 1598
    :cond_11b
    iget-object v8, v0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v8, v2}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v8

    if-eqz v8, :cond_124

    goto :goto_135

    .line 1609
    :cond_124
    invoke-direct {v0, v1, v7, v4}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1610
    invoke-virtual {v5, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1611
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v5, v13}, Ljava/io/Writer;->write(I)V

    :goto_134
    move v4, v7

    :cond_135
    :goto_135
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_ae

    :cond_139
    add-int/2addr v4, v6

    if-le v7, v4, :cond_142

    sub-int/2addr v7, v4

    .line 1624
    iget-object v2, v0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v2, v1, v4, v7}, Ljava/io/Writer;->write([CII)V

    .line 1628
    :cond_142
    iput-boolean v6, v0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_144} :catch_14c

    .line 1636
    iget-object v2, v0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_161

    .line 1637
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    return-void

    :catch_14c
    move-exception v0

    .line 1632
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1433
    :cond_153
    :goto_153
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    .line 1436
    iget-object v2, v0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_161

    .line 1437
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    return-void

    .line 1423
    :cond_15e
    :goto_15e
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    :cond_161
    :goto_161
    return-void
.end method

.method protected greylist charactersRaw([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1348
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_5

    return-void

    .line 1352
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_13

    .line 1354
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1355
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_13
    const/4 v0, 0x1

    .line 1358
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1360
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 1364
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method protected greylist closeCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 202
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method protected greylist closeStartTag()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2613
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v1, :cond_4a

    .line 2618
    :try_start_6
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_f

    .line 2619
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 2620
    :cond_f
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-lez v0, :cond_21

    .line 2623
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    .line 2625
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 2627
    :cond_21
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_43

    .line 2638
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-eqz v0, :cond_34

    .line 2639
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->isCdataSection()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    .line 2641
    :cond_34
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    .line 2643
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 2644
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean p0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    return-void

    :catch_43
    move-exception p0

    .line 2631
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_4a
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2396
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_6

    goto/16 :goto_7c

    .line 2398
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2400
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 2401
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_1e

    .line 2403
    :cond_15
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_1e

    .line 2405
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 2406
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_1e
    :goto_1e
    add-int v0, p2, p3

    .line 2413
    :try_start_20
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v2, :cond_27

    .line 2414
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2416
    :cond_27
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2417
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 2419
    :cond_30
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 2420
    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v3, p2

    move v5, v3

    move v4, v1

    :goto_3a
    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ge v3, v0, :cond_5b

    if-eqz v4, :cond_51

    .line 2424
    aget-char v4, p1, v3

    if-ne v4, v6, :cond_51

    sub-int v4, v3, v5

    .line 2426
    invoke-virtual {v2, p1, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 2427
    const-string v4, " -"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    .line 2430
    :cond_51
    aget-char v4, p1, v3

    if-ne v4, v6, :cond_57

    move v4, v7

    goto :goto_58

    :cond_57
    move v4, v1

    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_5b
    if-lez p3, :cond_6e

    sub-int v1, v0, v5

    if-lez v1, :cond_64

    .line 2439
    invoke-virtual {v2, p1, v5, v1}, Ljava/io/Writer;->write([CII)V

    :cond_64
    sub-int/2addr v0, v7

    .line 2441
    aget-char v0, p1, v0

    if-ne v0, v6, :cond_6e

    const/16 v0, 0x20

    .line 2442
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(I)V

    .line 2444
    :cond_6e
    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_73} :catch_7d

    .line 2460
    iput-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 2462
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7c

    .line 2463
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_7c
    :goto_7c
    return-void

    :catch_7d
    move-exception p0

    .line 2448
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 303
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v0, :cond_5

    return-void

    .line 307
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 308
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 310
    const-string v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 312
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 313
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3e

    .line 314
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 315
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 319
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2474
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_7

    .line 2475
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_7
    const/4 v0, 0x0

    .line 2476
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2488
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2490
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 2491
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 2493
    :cond_e
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 2494
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    if-nez v2, :cond_1a

    .line 2495
    const-string v2, "]>"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1a
    const/16 v2, 0x3e

    .line 2498
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 2501
    :goto_1f
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v2, v1, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p0

    .line 2505
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public greylist endElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2277
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2207
    iget-boolean p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz p1, :cond_5

    return-void

    .line 2212
    :cond_5
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget p2, p2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    .line 2216
    :try_start_f
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 2217
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, p2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_42

    .line 2219
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_20

    .line 2220
    iget-object p2, p2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 2221
    :cond_20
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p2}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result p2

    if-lez p2, :cond_32

    .line 2224
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    .line 2226
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {p2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 2228
    :cond_32
    iget-boolean p2, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    if-eqz p2, :cond_3c

    .line 2229
    const-string p2, " />"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6a

    .line 2231
    :cond_3c
    const-string p2, "/>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6a

    .line 2240
    :cond_42
    iget-boolean p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz p2, :cond_49

    .line 2241
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2243
    :cond_49
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result p2

    if-eqz p2, :cond_58

    .line 2244
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget p2, p2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    :cond_58
    const/16 p2, 0x3c

    .line 2245
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    const/16 p2, 0x2f

    .line 2246
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 2247
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p2, 0x3e

    .line 2248
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_6a} :catch_97

    .line 2256
    :goto_6a
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/4 p2, 0x0

    if-nez p1, :cond_87

    iget-boolean p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz p1, :cond_87

    .line 2258
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7f

    move p1, p2

    goto :goto_85

    :cond_7f
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result p1

    :goto_85
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 2261
    :cond_87
    iput-boolean p2, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 2264
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_90

    .line 2265
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    .line 2266
    :cond_90
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    return-void

    :catch_97
    move-exception p0

    .line 2253
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist endNonEscaping()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1211
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected greylist ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_7a

    .line 2857
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7a

    .line 2863
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_16

    .line 2864
    const-string p3, ""

    :goto_14
    move-object v4, p3

    goto :goto_1b

    .line 2865
    :cond_16
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_14

    .line 2867
    :goto_1b
    const-string p3, "xmlns:"

    if-lez v0, :cond_4b

    .line 2870
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v4}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2871
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return-object p2

    .line 2881
    :cond_2e
    invoke-virtual {p0, v4, p1, v1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2882
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    const/4 v8, 0x0

    const-string v3, "http://www.w3.org/2000/xmlns/"

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/xml/serializer/SerializerBase;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v4

    :cond_4b
    move-object v2, p0

    move-object v7, p1

    .line 2895
    iget-object p0, v2, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_79

    .line 2900
    iget-object p0, v2, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p0

    .line 2901
    invoke-virtual {v2, p0, v7, v1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2902
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDATA"

    const/4 v11, 0x0

    const-string v6, "http://www.w3.org/2000/xmlns/"

    move-object v5, v2

    move-object v10, v7

    move-object v7, p0

    invoke-virtual/range {v5 .. v11}, Lorg/apache/xml/serializer/SerializerBase;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7

    :cond_79
    return-object p0

    :cond_7a
    return-object p2
.end method

.method greylist ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_57

    .line 2921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_57

    .line 2924
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eqz v2, :cond_19

    .line 2925
    const-string p2, ""

    goto :goto_1d

    :cond_19
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_1d
    if-eqz p2, :cond_57

    .line 2929
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 2931
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 2933
    :cond_2d
    invoke-virtual {p0, p2, p1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const-string v0, "xmlns"

    if-eqz v2, :cond_36

    move-object v5, v0

    goto :goto_37

    :cond_36
    move-object v5, p2

    :goto_37
    if-eqz v2, :cond_3b

    :goto_39
    move-object v6, v0

    goto :goto_4d

    .line 2941
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :goto_4d
    const-string v7, "CDATA"

    const/4 v9, 0x0

    .line 2938
    const-string v4, "http://www.w3.org/2000/xmlns/"

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_57
    return-void
.end method

.method protected greylist escapingNotNeeded(C)Z
    .registers 3

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_19

    const/16 p0, 0x20

    if-ge p1, p0, :cond_17

    const/16 p0, 0xa

    if-eq p0, p1, :cond_17

    const/16 p0, 0xd

    if-eq p0, p1, :cond_17

    const/16 p0, 0x9

    if-ne p0, p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    .line 954
    :cond_19
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 915
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 917
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_1e

    .line 920
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p3, " PUBLIC \""

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 921
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 925
    :cond_1e
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " SYSTEM \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 926
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 928
    :goto_2a
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, "\" >"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 929
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 932
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method protected greylist firePseudoAttributes()V
    .registers 5

    .line 3140
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_34

    .line 3145
    :try_start_4
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 3148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3149
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v1

    if-lez v1, :cond_1e

    .line 3154
    new-instance v2, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;

    invoke-direct {v2, p0, v0}, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;-><init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V

    .line 3157
    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    :cond_1e
    const/16 v1, 0x3e

    .line 3162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3167
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    array-length v1, v0

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_34} :catch_34
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    return-void
.end method

.method public greylist flushPending()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2957
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2959
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 2960
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 2962
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_17

    .line 2964
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 2965
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 2968
    :cond_17
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_20

    .line 2970
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2971
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 2973
    :cond_20
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz p0, :cond_27

    .line 2975
    :try_start_24
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method

.method protected final greylist flushWriter()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_30

    .line 246
    :try_start_4
    instance-of v1, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    if-eqz v1, :cond_19

    .line 248
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz v1, :cond_13

    .line 249
    move-object v1, v0

    check-cast v1, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flush()V

    goto :goto_19

    .line 251
    :cond_13
    move-object v1, v0

    check-cast v1, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 253
    :cond_19
    :goto_19
    instance-of v1, v0, Lorg/apache/xml/serializer/WriterToASCI;

    if-eqz v1, :cond_25

    .line 255
    iget-boolean p0, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz p0, :cond_30

    .line 256
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    .line 263
    :cond_25
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 268
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_30
    return-void
.end method

.method public greylist getIndentAmount()I
    .registers 1

    .line 2682
    iget p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return p0
.end method

.method public greylist getOutputFormat()Ljava/util/Properties;
    .registers 5

    .line 618
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 620
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropDefaultKeys()Ljava/util/Set;

    move-result-object v1

    .line 621
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 622
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 624
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 629
    :cond_21
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 631
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropKeys()Ljava/util/Set;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 633
    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 634
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 637
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_44
    return-object v1
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 282
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 890
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 2542
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    return-void
.end method

.method protected greylist indent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    return-void
.end method

.method protected greylist indent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    if-eqz v0, :cond_7

    .line 790
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V

    .line 795
    :cond_7
    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    if-lez v0, :cond_f

    mul-int/2addr p1, v0

    .line 796
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/ToStream;->printSpace(I)V

    :cond_f
    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 341
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v0, :cond_5

    return-void

    .line 345
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 346
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 350
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3492
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 3494
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!NOTATION "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3495
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_1e

    .line 3497
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p3, " PUBLIC \""

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3498
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 3502
    :cond_1e
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " SYSTEM \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3503
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3505
    :goto_2a
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, "\" >"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3506
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 3509
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method greylist outputDocTypeDecl(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2008
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_7

    .line 2009
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2012
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 2013
    const-string v1, "<!DOCTYPE "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x22

    if-eqz p1, :cond_24

    .line 2019
    const-string v2, " PUBLIC \""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 2024
    :cond_24
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    if-nez p1, :cond_32

    .line 2028
    const-string p1, " SYSTEM \""

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_37

    .line 2030
    :cond_32
    const-string p1, " \""

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2032
    :goto_37
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_4a

    .line 2036
    const-string p1, "\">"

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2037
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 2041
    :cond_4a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4d} :catch_4e

    :cond_4d
    return-void

    :catch_4e
    move-exception p0

    .line 2046
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method greylist outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 366
    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string p1, " \""

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string p1, "\">"

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 p2, 0x0

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method protected final greylist outputLineSep()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public greylist processAttributes(Ljava/io/Writer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2070
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p2, :cond_2b

    .line 2074
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 2075
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    .line 2076
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 2077
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2078
    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xml/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    .line 2080
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2b
    return-void
.end method

.method public greylist reset()Z
    .registers 2

    .line 3250
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3252
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->resetToStream()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist serialize(Lorg/w3c/dom/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    :try_start_0
    new-instance v0, Lorg/apache/xml/serializer/TreeWalker;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 221
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 225
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist setCdataSectionElements(Ljava/util/Vector;)V
    .registers 8

    if-eqz p1, :cond_42

    .line 2814
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_42

    .line 2817
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_3c

    if-eqz v2, :cond_19

    const/16 v3, 0x20

    .line 2822
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2823
    :cond_19
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 2825
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_36

    const/16 v5, 0x7b

    .line 2829
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2830
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x7d

    .line 2831
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2833
    :cond_36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_10

    .line 2835
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    .line 2838
    :cond_42
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->initCdataElems(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setDTDEntityExpansion(Z)V
    .registers 2

    .line 3570
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    return-void
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 3300
    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setEscaping(Z)Z
    .registers 3

    .line 771
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    .line 772
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    return v0
.end method

.method public greylist setIndentAmount(I)V
    .registers 2

    .line 2692
    iput p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return-void
.end method

.method public greylist setLineSepUse(Z)Z
    .registers 3

    .line 691
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 692
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    return v0
.end method

.method public greylist setNewLine([C)V
    .registers 2

    .line 3578
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 3579
    array-length p1, p1

    iput p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    return-void
.end method

.method public greylist setOutputFormat(Ljava/util/Properties;)V
    .registers 7

    .line 564
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz p1, :cond_2b

    .line 573
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 574
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 576
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 578
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_25

    if-eqz v3, :cond_25

    .line 583
    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/SerializerBase;->setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz v4, :cond_8

    .line 587
    invoke-virtual {p0, v2, v4}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 594
    :cond_2b
    const-string v1, "{http://xml.apache.org/xalan}entities"

    .line 595
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 600
    const-string v2, "method"

    .line 601
    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 603
    invoke-static {v1, p1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 609
    :cond_43
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    return-void
.end method

.method public greylist setOutputStream(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x1

    .line 709
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method greylist setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    if-eqz p2, :cond_190

    .line 389
    invoke-static {p1}, Lorg/apache/xml/serializer/SerializerBase;->getFirstCharLocName(Ljava/lang/String;)C

    move-result v0

    const/16 v1, 0x69

    .line 390
    const-string v2, "yes"

    if-eq v0, v1, :cond_16f

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_160

    const/16 v1, 0x73

    const/4 v2, 0x1

    if-eq v0, v1, :cond_14c

    const/16 v1, 0x76

    if-eq v0, v1, :cond_141

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_12f

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_124

    packed-switch v0, :pswitch_data_192

    goto/16 :goto_18d

    .line 408
    :pswitch_26
    const-string v0, "encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 409
    invoke-static {p2}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 414
    const-string v2, "mime-name"

    invoke-super {p0, v2, v1, p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    :cond_39
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_4b

    if-eqz v2, :cond_55

    .line 419
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_4b
    if-nez p3, :cond_18d

    if-eqz v1, :cond_55

    .line 420
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18d

    .line 424
    :cond_55
    invoke-static {p2}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v2

    .line 425
    iget-object v3, v2, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    const-string v4, "UTF-8"

    if-nez v3, :cond_c3

    .line 429
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_ENCODING_NOT_SUPPORTED"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: encoding \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" not supported, using "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 437
    :try_start_84
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    if-eqz v3, :cond_b4

    .line 440
    invoke-virtual {v3}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v3

    if-eqz v3, :cond_a9

    .line 442
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v5, :cond_a9

    .line 444
    new-instance v5, Ljavax/xml/transform/TransformerException;

    iget-object v6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v5, v2, v6}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 445
    invoke-interface {v3, v5}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 447
    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, p2, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 448
    invoke-interface {v3, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_be

    .line 451
    :cond_a9
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_be

    .line 455
    :cond_b4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_be} :catch_be

    .line 464
    :catch_be
    :goto_be
    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v2

    move-object p2, v4

    :cond_c3
    move-object v3, v2

    move-object v2, p2

    if-eqz p3, :cond_c9

    if-nez v1, :cond_f2

    .line 474
    :cond_c9
    iput-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 476
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    .line 479
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_f2

    .line 481
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getWriter()Ljava/io/Writer;

    move-result-object v3

    .line 486
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_e5

    .line 487
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    if-nez v3, :cond_f2

    .line 488
    :cond_e5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f2

    .line 493
    invoke-super {p0, p1, v2, p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x0

    .line 494
    invoke-direct {p0, v1, p2}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    :cond_f2
    move-object p2, v2

    goto/16 :goto_18d

    .line 398
    :pswitch_f5
    const-string v0, "doctype-system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 399
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    goto/16 :goto_18d

    .line 400
    :cond_101
    const-string v0, "doctype-public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 401
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    .line 402
    const-string v0, "-//W3C//DTD XHTML"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 403
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    goto/16 :goto_18d

    .line 392
    :pswitch_117
    const-string v0, "cdata-section-elements"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 394
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElements(Ljava/lang/String;)V

    goto/16 :goto_18d

    .line 518
    :cond_124
    const-string v0, "media-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 519
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    goto :goto_18d

    .line 511
    :cond_12f
    const-string v0, "{http://xml.apache.org/xalan}line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 513
    array-length v0, v0

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    goto :goto_18d

    .line 541
    :cond_141
    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 542
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    goto :goto_18d

    .line 530
    :cond_14c
    const-string v0, "standalone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    if-eqz p3, :cond_15a

    .line 532
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setStandaloneInternal(Ljava/lang/String;)V

    goto :goto_18d

    .line 534
    :cond_15a
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    .line 535
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setStandaloneInternal(Ljava/lang/String;)V

    goto :goto_18d

    .line 523
    :cond_160
    const-string v0, "omit-xml-declaration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 524
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 525
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    goto :goto_18d

    .line 502
    :cond_16f
    const-string v0, "{http://xml.apache.org/xalan}indent-amount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 503
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->setIndentAmount(I)V

    goto :goto_18d

    .line 504
    :cond_17f
    const-string v0, "indent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 505
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 549
    :cond_18d
    :goto_18d
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_190
    return-void

    nop

    :pswitch_data_192
    .packed-switch 0x63
        :pswitch_117
        :pswitch_f5
        :pswitch_26
    .end packed-switch
.end method

.method public greylist setTransformer(Ljavax/xml/transform/Transformer;)V
    .registers 4

    .line 3233
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 3234
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    instance-of p1, p1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    if-nez p1, :cond_1a

    .line 3236
    new-instance p1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    invoke-direct {p1, v0, v1}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    :cond_1a
    return-void
.end method

.method public greylist setWriter(Ljava/io/Writer;)V
    .registers 3

    const/4 v0, 0x1

    .line 652
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    return-void
.end method

.method protected greylist shouldIndent()Z
    .registers 2

    .line 2703
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-lez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2568
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2669
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->setDoctypeSystem(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setDoctypePublic(Ljava/lang/String;)V

    .line 2672
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, p2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2673
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1995
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1990
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1902
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_5

    goto :goto_6c

    .line 1905
    :cond_5
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1907
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 1908
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 1909
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    goto :goto_19

    .line 1911
    :cond_12
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_19

    .line 1912
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1915
    :cond_19
    :goto_19
    :try_start_19
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 1916
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1917
    invoke-virtual {p0, p3, v2}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 1919
    :cond_27
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 1925
    :cond_29
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_36

    .line 1927
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1928
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_36
    if-eqz p1, :cond_3b

    .line 1932
    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/serializer/ToStream;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :cond_3b
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1936
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    if-eqz v0, :cond_4a

    .line 1938
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 1941
    :cond_4a
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 1943
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v2, 0x3c

    .line 1944
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 1945
    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_56} :catch_6d

    if-eqz p4, :cond_5b

    .line 1954
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 1956
    :cond_5b
    iget-object p4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 1957
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 1959
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_6c

    .line 1960
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_6c
    :goto_6c
    return-void

    :catch_6d
    move-exception p0

    .line 1949
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2588
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 2589
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 2591
    :cond_b
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    if-nez v0, :cond_32

    .line 2596
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToStream;->characters(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    .line 2601
    :cond_32
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    return-void
.end method

.method public greylist startNonEscaping()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1226
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2299
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public greylist startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_c

    .line 2340
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 2342
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2347
    :cond_c
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    .line 2349
    :goto_10
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v3, p1, p2, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 2359
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2362
    const-string v4, "CDATA"

    const/4 v6, 0x0

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    move-object v3, v2

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    return v7

    .line 2366
    :cond_2e
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2375
    const-string v4, "CDATA"

    const/4 v6, 0x0

    const-string v1, "http://www.w3.org/2000/xmlns/"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_50
    return v7
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3522
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 3524
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3525
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_1e

    .line 3527
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p3, " PUBLIC \""

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3528
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 3532
    :cond_1e
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " SYSTEM \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3533
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3535
    :goto_2a
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, "\" NDATA "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3536
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3537
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " >"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3538
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 3541
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public greylist writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2099
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 2100
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    array-length p3, p3

    if-le v5, p3, :cond_11

    mul-int/lit8 p3, v5, 0x2

    add-int/lit8 p3, p3, 0x1

    .line 2102
    new-array p3, p3, [C

    iput-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    .line 2104
    :cond_11
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v5, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 2105
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    move v3, v0

    :goto_1a
    if-ge v3, v5, :cond_aa

    .line 2109
    aget-char v2, v4, v3

    .line 2111
    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p2, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result p2

    if-eqz p2, :cond_2f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 2115
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    goto/16 :goto_a4

    :cond_2f
    move-object v0, p0

    move-object v1, p1

    const/16 p0, 0x3b

    .line 2118
    const-string p1, "&#"

    if-ltz v2, :cond_67

    const/16 p2, 0x1f

    if-gt v2, p2, :cond_67

    const/16 p2, 0x9

    if-eq v2, p2, :cond_61

    const/16 p2, 0xa

    if-eq v2, p2, :cond_5b

    const/16 p2, 0xd

    if-eq v2, p2, :cond_55

    .line 2145
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2146
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_a4

    .line 2142
    :cond_55
    const-string p0, "&#13;"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a4

    .line 2139
    :cond_5b
    const-string p0, "&#10;"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a4

    .line 2136
    :cond_61
    const-string p0, "&#9;"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a4

    :cond_67
    const/16 p2, 0x7f

    if-ge v2, p2, :cond_6f

    .line 2155
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_a4

    :cond_6f
    const/16 p2, 0x9f

    if-gt v2, p2, :cond_81

    .line 2160
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2161
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_a4

    :cond_81
    const/16 p2, 0x2028

    if-ne v2, p2, :cond_8b

    .line 2166
    const-string p0, "&#8232;"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a4

    .line 2168
    :cond_8b
    iget-object p2, v0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {p2, v2}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result p2

    if-eqz p2, :cond_97

    .line 2172
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_a4

    .line 2179
    :cond_97
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2180
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(I)V

    :goto_a4
    add-int/lit8 v3, v3, 0x1

    move-object p0, v0

    move-object p1, v1

    goto/16 :goto_1a

    :cond_aa
    return-void
.end method

.method greylist writeNormalizedChars([CIIZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    add-int/2addr p3, p2

    :goto_3
    if-ge p2, p3, :cond_a4

    .line 1120
    aget-char v1, p1, p2

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v2, v1, :cond_18

    if-eqz p5, :cond_18

    .line 1124
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_a1

    :cond_18
    const/16 v2, 0x3b

    .line 1126
    const-string v4, "&#"

    if-eqz p4, :cond_46

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-nez v5, :cond_46

    .line 1129
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_2b

    .line 1130
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1133
    :cond_2b
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1135
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    :goto_34
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_a1

    .line 1140
    :cond_38
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1142
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_a1

    :cond_46
    if-eqz p4, :cond_65

    add-int/lit8 v5, p3, -0x2

    if-ge p2, v5, :cond_65

    const/16 v5, 0x5d

    if-ne v5, v1, :cond_65

    add-int/lit8 v6, p2, 0x1

    .line 1155
    aget-char v6, p1, v6

    if-ne v5, v6, :cond_65

    add-int/lit8 v5, p2, 0x2

    aget-char v6, p1, v5

    const/16 v7, 0x3e

    if-ne v7, v6, :cond_65

    .line 1162
    const-string p2, "]]]]><![CDATA[>"

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move p2, v5

    goto :goto_a1

    .line 1168
    :cond_65
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-eqz v5, :cond_7c

    if-eqz p4, :cond_78

    .line 1170
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v2, :cond_78

    .line 1172
    const-string v2, "<![CDATA["

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1173
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 1175
    :cond_78
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_a1

    .line 1179
    :cond_7c
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1181
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v2, :cond_89

    .line 1182
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1183
    :cond_89
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    goto :goto_34

    .line 1188
    :cond_8d
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_94

    .line 1189
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1190
    :cond_94
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1192
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :goto_a1
    add-int/2addr p2, v3

    goto/16 :goto_3

    :cond_a4
    return-void
.end method

.method protected greylist writeUTF16Surrogate(C[CII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    .line 987
    const-string v1, "ER_INVALID_UTF16_SURROGATE"

    if-ge v0, p4, :cond_6f

    .line 996
    aget-char p4, p2, v0

    .line 997
    invoke-static {p4}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1007
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 1010
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v1, p1, p4}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(CC)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 1013
    invoke-virtual {v0, p2, p3, v2}, Ljava/io/Writer;->write([CII)V

    return v3

    .line 1019
    :cond_1e
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 1024
    invoke-static {p1, p4}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result p0

    const/16 p1, 0x26

    .line 1026
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    const/16 p1, 0x23

    .line 1027
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 1028
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    .line 1029
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return p0

    .line 1034
    :cond_3f
    invoke-virtual {v0, p2, p3, v2}, Ljava/io/Writer;->write([CII)V

    return v3

    .line 998
    :cond_43
    new-instance p0, Ljava/io/IOException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 999
    invoke-virtual {p2, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 989
    :cond_6f
    new-instance p0, Ljava/io/IOException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 992
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 990
    invoke-virtual {p2, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lorg/apache/xml/dtm/ref/DTMDocumentImpl;
.super Ljava/lang/Object;
.source "DTMDocumentImpl.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final greylist DOCHANDLE_MASK:I = -0x800000

.field protected static final greylist DOCHANDLE_SHIFT:B = 0x16t

.field protected static final greylist NODEHANDLE_MASK:I = 0x7fffff

.field private static final greylist fixednames:[Ljava/lang/String;


# instance fields
.field private final greylist DEBUG:Z

.field greylist currentParent:I

.field private greylist done:Z

.field greylist gotslot:[I

.field private greylist m_char:Lorg/apache/xml/utils/FastStringBuffer;

.field private greylist m_char_current_start:I

.field protected greylist m_currentNode:I

.field greylist m_docElement:I

.field greylist m_docHandle:I

.field protected greylist m_documentBaseURI:Ljava/lang/String;

.field private greylist m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field private greylist m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field greylist m_isError:Z

.field private greylist m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private greylist m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private greylist m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private greylist m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

.field greylist nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

.field greylist previousSibling:I

.field private greylist previousSiblingWasParent:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 13

    .line 1586
    const-string v11, "#document-fragment"

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#text"

    const-string v4, "#cdata_section"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#comment"

    const-string v9, "#document"

    const/4 v10, 0x0

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;)V
    .registers 6

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    .line 77
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 p3, 0x0

    .line 80
    iput p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 81
    iput p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 82
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_currentNode:I

    .line 88
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    const/4 p1, 0x4

    .line 90
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    .line 93
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 94
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    .line 96
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->DEBUG:Z

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 121
    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-direct {v0, p1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    .line 125
    new-instance p1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {p1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    .line 128
    iput p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 135
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 136
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 137
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 145
    new-instance p1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 164
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    .line 165
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-void
.end method

.method private final greylist appendNode(IIII)I
    .registers 6

    .line 209
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->appendSlot(IIII)I

    move-result p1

    .line 213
    iget-boolean p2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz p2, :cond_12

    .line 214
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 p4, 0x2

    invoke-virtual {p2, p3, p4, p1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    :cond_12
    const/4 p2, 0x0

    .line 216
    iput-boolean p2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return p1
.end method

.method private greylist processAccumulatedText()V
    .registers 4

    .line 419
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v0

    .line 420
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    if-eq v0, v1, :cond_11

    sub-int v2, v0, v1

    .line 423
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendTextChild(II)V

    .line 424
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    :cond_11
    return-void
.end method


# virtual methods
.method greylist appendAttribute(IIIZII)V
    .registers 9

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x2

    .line 2240
    iget p4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    .line 2245
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set w3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p2, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xffff

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2247
    invoke-direct {p0, p1, p4, p3, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    .line 2248
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 p2, 0x3

    .line 2260
    invoke-direct {p0, p2, p1, p5, p6}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    const/4 p1, 0x1

    .line 2263
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method public greylist appendChild(IZZ)V
    .registers 4

    .line 0
    return-void
.end method

.method greylist appendComment(II)V
    .registers 5

    const/16 v0, 0x8

    .line 2120
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2126
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    .line 2127
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    return-void
.end method

.method greylist appendEndDocument()V
    .registers 2

    const/4 v0, 0x1

    .line 2353
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    return-void
.end method

.method greylist appendEndElement()V
    .registers 5

    .line 2320
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v0, :cond_d

    .line 2321
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    .line 2324
    :cond_d
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2325
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v1, v0, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 2326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const v2, 0xffff

    and-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2330
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method greylist appendNSDeclaration(IIZ)V
    .registers 5

    .line 2197
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string p3, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    .line 2200
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p1, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0xd

    .line 2203
    iget p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    const/4 v0, 0x0

    .line 2209
    invoke-direct {p0, p1, p3, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    .line 2210
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2211
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method greylist appendStartDocument()V
    .registers 2

    const/4 v0, -0x1

    .line 2344
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 v0, 0x0

    .line 2345
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    return-void
.end method

.method greylist appendStartElement(III)V
    .registers 7

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x1

    .line 2156
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    .line 2161
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set w3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xffff

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2164
    invoke-direct {p0, p1, v0, p3, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    .line 2165
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2166
    iput p3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2169
    iget p2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_45

    .line 2170
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    :cond_45
    return-void
.end method

.method greylist appendTextChild(II)V
    .registers 5

    const/4 v0, 0x3

    .line 2097
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2103
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    .line 2104
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    return-void
.end method

.method public greylist appendTextChild(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 413
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 570
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 572
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 573
    iget p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendComment(II)V

    .line 574
    iget p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    return-void
.end method

.method public greylist dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist documentRegistration()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist documentRelease()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndDocument()V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 441
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndElement()V

    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
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

.method public greylist getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1087
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p2

    .line 1088
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p3

    const v0, 0x7fffff

    and-int/2addr p1, v0

    .line 1090
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1091
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-short v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    add-int/lit8 p1, p1, 0x1

    :cond_26
    :goto_26
    const/4 v2, 0x2

    if-ne v0, v2, :cond_42

    .line 1097
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v4, v3, v1

    shl-int/lit8 v4, v4, 0x10

    if-ne p2, v4, :cond_3a

    const/4 v4, 0x3

    aget v4, v3, v4

    if-ne v4, p3, :cond_3a

    .line 1098
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, p1

    return p0

    .line 1100
    :cond_3a
    aget p1, v3, v2

    .line 1101
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_26

    :cond_42
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getContentBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 1

    .line 309
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    return-object p0
.end method

.method public greylist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 3

    .line 323
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_9

    .line 324
    check-cast v0, Lorg/xml/sax/ContentHandler;

    return-object v0

    :cond_9
    return-object p0
.end method

.method public greylist getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocument()I
    .registers 1

    .line 1371
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    return p0
.end method

.method public greylist getDocumentAllDeclarationsProcessed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getDocumentBaseURI()Ljava/lang/String;
    .registers 1

    .line 1777
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getDocumentEncoding(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentRoot()I
    .registers 2

    .line 1362
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    or-int/2addr p0, v0

    return p0
.end method

.method public greylist getDocumentRoot(I)I
    .registers 2

    .line 0
    const p0, 0x7fffff

    and-int/2addr p0, p1

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p0, p1

    return p0
.end method

.method public greylist getDocumentStandalone(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentSystemIdentifier(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentVersion(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getElementById(Ljava/lang/String;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getExpandedTypeID(I)I
    .registers 6

    .line 1511
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1512
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    .line 1515
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1516
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1518
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1521
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 1541
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1542
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist getFirstAttribute(I)I
    .registers 7

    const v0, 0x7fffff

    and-int/2addr p1, v0

    .line 1121
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v4, v0, :cond_14

    return v3

    :cond_14
    add-int/2addr p1, v4

    .line 1125
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_23

    .line 1126
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, p1

    return p0

    :cond_23
    return v3
.end method

.method public greylist getFirstChild(I)I
    .registers 10

    const v0, 0x7fffff

    and-int/2addr p1, v0

    .line 1015
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1018
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v2, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v5, :cond_20

    const/16 v6, 0x9

    if-eq v2, v6, :cond_20

    const/4 v6, 0x5

    if-ne v2, v6, :cond_42

    :cond_20
    add-int/lit8 v2, p1, 0x1

    .line 1032
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v6, v2, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1033
    :goto_27
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v6, v0, v1

    and-int/2addr v6, v3

    const/4 v7, 0x2

    if-ne v7, v6, :cond_3a

    .line 1035
    aget v2, v0, v7

    if-ne v2, v4, :cond_34

    return v4

    .line 1038
    :cond_34
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v6, v2, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_27

    .line 1041
    :cond_3a
    aget v0, v0, v5

    if-ne v0, p1, :cond_42

    .line 1043
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v2

    return p0

    :cond_42
    return v4
.end method

.method public greylist getFirstNamespaceNode(IZ)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getLastChild(I)I
    .registers 5

    const v0, 0x7fffff

    and-int/2addr p1, v0

    .line 1067
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result p1

    const/4 v0, -0x1

    move v1, v0

    :goto_a
    if-eq p1, v0, :cond_14

    .line 1068
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_a

    .line 1071
    :cond_14
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v1

    return p0
.end method

.method public greylist getLevel(I)S
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_e

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 1746
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p1

    goto :goto_1

    :cond_e
    return v0
.end method

.method public greylist getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 3

    .line 342
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_9

    .line 343
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    :cond_9
    return-object p0
.end method

.method public greylist getLocalName(I)Ljava/lang/String;
    .registers 6

    .line 1642
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1643
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v2, 0x1

    .line 1645
    const-string v3, ""

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    return-object v3

    :cond_1b
    :goto_1b
    const/4 v0, 0x3

    .line 1646
    aget p1, p1, v0

    .line 1647
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_28

    return-object v3

    :cond_28
    return-object p0
.end method

.method public greylist getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .registers 2

    .line 1557
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    .line 1559
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1560
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getLocalNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .registers 1

    .line 250
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object p0
.end method

.method public greylist getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .registers 3

    .line 1574
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    .line 1576
    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 1577
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceURI(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNextAttribute(I)I
    .registers 5

    const v0, 0x7fffff

    and-int/2addr p1, v0

    .line 1224
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1230
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstAttribute(I)I

    move-result p0

    return p0

    :cond_1d
    const/4 p1, -0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 1235
    aget v0, v0, v2

    if-eq v0, p1, :cond_29

    .line 1236
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v0

    return p0

    :cond_29
    return p1
.end method

.method public greylist getNextDescendant(II)I
    .registers 9

    const v0, 0x7fffff

    and-int/2addr p1, v0

    and-int/2addr p2, v0

    const/4 v0, -0x1

    if-nez p2, :cond_9

    return v0

    .line 1272
    :cond_9
    :goto_9
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    if-nez v1, :cond_4a

    .line 1274
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsUsed()I

    move-result v1

    if-le p2, v1, :cond_1a

    goto :goto_4a

    :cond_1a
    if-le p2, p1, :cond_47

    .line 1277
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1278
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x2

    aget v4, v1, v3

    if-eqz v4, :cond_42

    const/4 v4, 0x0

    .line 1279
    aget v4, v1, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    if-ne v4, v3, :cond_39

    add-int/lit8 p2, p2, 0x2

    goto :goto_9

    :cond_39
    const/4 p2, 0x1

    .line 1283
    aget p2, v1, p2

    if-lt p2, p1, :cond_4a

    .line 1285
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v2

    return p0

    .line 1289
    :cond_42
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-nez v1, :cond_4a

    goto :goto_9

    :cond_47
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_4a
    :goto_4a
    return v0
.end method

.method public greylist getNextFollowing(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getNextNamespaceNode(IIZ)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getNextPreceding(II)I
    .registers 5

    const v0, 0x7fffff

    and-int/2addr p2, v0

    :goto_4
    const/4 v0, 0x1

    if-le p2, v0, :cond_22

    add-int/lit8 p2, p2, -0x1

    .line 1327
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v1, v0, :cond_18

    goto :goto_4

    .line 1338
    :cond_18
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->specialFind(II)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getNextSibling(I)I
    .registers 7

    const v0, 0x7fffff

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-nez p1, :cond_8

    return v0

    .line 1170
    :cond_8
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1d

    if-eq v1, v2, :cond_1d

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2c

    .line 1173
    :cond_1d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    if-ne v1, v0, :cond_26

    return v0

    :cond_26
    if-eqz v1, :cond_2c

    .line 1177
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v1

    return p0

    .line 1181
    :cond_2c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    .line 1183
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/2addr p1, v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    if-ne v2, v1, :cond_3f

    .line 1184
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, p1

    return p0

    :cond_3f
    return v0
.end method

.method public greylist getNode(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNodeName(I)Ljava/lang/String;
    .registers 7

    .line 1605
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1606
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    .line 1607
    sget-object v2, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    aget-object v0, v2, v0

    if-nez v0, :cond_6d

    const/4 v0, 0x3

    .line 1609
    aget p1, p1, v0

    .line 1610
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, p1, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    .line 1613
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6c

    .line 1614
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6c
    return-object p1

    :cond_6d
    return-object v0
.end method

.method public greylist getNodeNameX(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNodeType(I)S
    .registers 3

    .line 1731
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public greylist getNodeValue(I)Ljava/lang/String;
    .registers 6

    .line 1701
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1702
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    if-eq v1, v2, :cond_24

    const/4 p1, 0x4

    if-eq v1, p1, :cond_24

    const/16 p1, 0x8

    if-eq v1, p1, :cond_24

    const/4 p0, 0x0

    return-object p0

    .line 1707
    :cond_1d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1711
    :cond_24
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v0, p0, v3

    aget p0, p0, v2

    invoke-virtual {p1, v0, p0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNsNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .registers 1

    .line 270
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object p0
.end method

.method public greylist getOwnerDocument(I)I
    .registers 2

    .line 0
    const p0, 0x7fffff

    and-int/2addr p0, p1

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p0, p1

    return p0
.end method

.method public greylist getParent(I)I
    .registers 4

    .line 1354
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public greylist getPrefix(I)Ljava/lang/String;
    .registers 5

    .line 1668
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1669
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v1, 0x1

    .line 1671
    const-string v2, ""

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    return-object v2

    :cond_1b
    :goto_1b
    const/4 v0, 0x3

    .line 1672
    aget p1, p1, v0

    .line 1673
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_29

    return-object v2

    :cond_29
    return-object p0
.end method

.method public greylist getPrefixNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .registers 1

    .line 290
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object p0
.end method

.method public greylist getPreviousSibling(I)I
    .registers 6

    const v0, 0x7fffff

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-nez p1, :cond_8

    return v0

    .line 1204
    :cond_8
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    .line 1206
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    :goto_13
    move v3, v1

    move v1, v0

    move v0, v3

    if-eq v0, p1, :cond_1d

    .line 1207
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_13

    .line 1210
    :cond_1d
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v1

    return p0
.end method

.method public greylist getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 5

    .line 1424
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1425
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1a

    const/4 p1, 0x0

    goto :goto_25

    .line 1432
    :cond_1a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v2, 0x2

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, v2, p1}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p1

    .line 1441
    :goto_25
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStringValueChunk(II[I)[C
    .registers 4

    const/4 p0, 0x0

    .line 1501
    new-array p0, p0, [C

    return-object p0
.end method

.method public greylist getStringValueChunkCount(I)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist hasChildNodes(I)Z
    .registers 2

    .line 999
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method final greylist initDocument(I)V
    .registers 8

    shl-int/lit8 p1, p1, 0x16

    .line 625
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    .line 628
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeSlot(IIIII)V

    const/4 p1, 0x0

    .line 630
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    return-void
.end method

.method public greylist isAttributeSpecified(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isCharacterElementContentWhitespace(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isDocumentAllDeclarationsProcessed(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isNodeAfter(II)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist needsTwoThreads()Z
    .registers 1

    .line 399
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    return-void
.end method

.method greylist setContentBuffer(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    return-void
.end method

.method public greylist setDocumentBaseURI(Ljava/lang/String;)V
    .registers 2

    .line 1788
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setFeature(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 184
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 185
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public greylist setLocalNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-void
.end method

.method public greylist setNsNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-void
.end method

.method public greylist setPrefixNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-void
.end method

.method public greylist setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartDocument()V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    .line 478
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    const/16 v8, 0x3a

    .line 482
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v9, 0x0

    const/4 v3, 0x0

    if-lez v2, :cond_16

    .line 484
    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v3

    .line 487
    :goto_17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prefix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v5, p2

    .line 489
    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 490
    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 488
    invoke-virtual {p0, v2, v4, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartElement(III)V

    if-nez v7, :cond_58

    move v1, v9

    goto :goto_5c

    .line 495
    :cond_58
    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    :goto_5c
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 497
    :goto_5f
    const-string v10, "ID"

    const-string v11, "xmlns:"

    const-string v12, "xmlns"

    if-ltz v2, :cond_a1

    .line 499
    invoke-interface {v7, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_77

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 503
    :cond_77
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_82

    .line 506
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_83

    :cond_82
    move-object v4, v3

    .line 515
    :goto_83
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 516
    invoke-virtual {v5, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 517
    invoke-interface {v7, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    .line 518
    invoke-interface {v7, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 515
    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNSDeclaration(IIZ)V

    :cond_9e
    add-int/lit8 v2, v2, -0x1

    goto :goto_5f

    :cond_a1
    move v13, v1

    :goto_a2
    if-ltz v13, :cond_10e

    .line 524
    invoke-interface {v7, v13}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10b

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    .line 531
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_c5

    .line 534
    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c8

    .line 540
    :cond_c5
    const-string v3, ""

    move-object v2, v1

    .line 544
    :goto_c8
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-interface {v7, v13}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 545
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v4}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v14

    .line 547
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_109

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    .line 548
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-interface {v7, v13}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 549
    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 550
    invoke-virtual {v4, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    .line 551
    invoke-interface {v7, v13}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v6, v14, v5

    move-object v0, p0

    .line 548
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendAttribute(IIIZII)V

    .line 553
    :cond_109
    iput v14, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    :cond_10b
    add-int/lit8 v13, v13, -0x1

    goto :goto_a2

    :cond_10e
    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist supportsPreStripping()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.class public Lorg/apache/xml/dtm/ref/DTMDocumentImpl;
.super Ljava/lang/Object;
.source "DTMDocumentImpl.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DOCHANDLE_MASK:I = -0x800000

.field protected static final DOCHANDLE_SHIFT:B = 0x16t

.field protected static final NODEHANDLE_MASK:I = 0x7fffff

.field private static final fixednames:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field currentParent:I

.field private done:Z

.field gotslot:[I

.field private m_char:Lorg/apache/xml/utils/FastStringBuffer;

.field private m_char_current_start:I

.field protected m_currentNode:I

.field m_docElement:I

.field m_docHandle:I

.field protected m_documentBaseURI:Ljava/lang/String;

.field private m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field private m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field m_isError:Z

.field private m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

.field nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

.field previousSibling:I

.field private previousSiblingWasParent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1587
    const/16 v0, 0xd

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    .line 1588
    const/4 v1, 0x0

    #@6
    aput-object v3, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    aput-object v3, v0, v1

    #@b
    .line 1589
    const/4 v1, 0x2

    #@c
    aput-object v3, v0, v1

    #@e
    const-string/jumbo v1, "#text"

    #@11
    const/4 v2, 0x3

    #@12
    aput-object v1, v0, v2

    #@14
    .line 1590
    const-string/jumbo v1, "#cdata_section"

    #@17
    const/4 v2, 0x4

    #@18
    aput-object v1, v0, v2

    #@1a
    const/4 v1, 0x5

    #@1b
    aput-object v3, v0, v1

    #@1d
    .line 1591
    const/4 v1, 0x6

    #@1e
    aput-object v3, v0, v1

    #@20
    const/4 v1, 0x7

    #@21
    aput-object v3, v0, v1

    #@23
    .line 1592
    const-string/jumbo v1, "#comment"

    #@26
    const/16 v2, 0x8

    #@28
    aput-object v1, v0, v2

    #@2a
    const-string/jumbo v1, "#document"

    #@2d
    const/16 v2, 0x9

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 1593
    const/16 v1, 0xa

    #@33
    aput-object v3, v0, v1

    #@35
    const-string/jumbo v1, "#document-fragment"

    #@38
    const/16 v2, 0xb

    #@3a
    aput-object v1, v0, v2

    #@3c
    .line 1594
    const/16 v1, 0xc

    #@3e
    aput-object v3, v0, v1

    #@40
    .line 1586
    sput-object v0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    #@42
    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;)V
    .locals 3
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "documentNumber"    # I
    .param p3, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p4, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v0, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 76
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@8
    .line 77
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    #@a
    .line 80
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@c
    .line 81
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@e
    .line 82
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_currentNode:I

    #@10
    .line 88
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@12
    .line 90
    new-array v0, v2, [I

    #@14
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@16
    .line 93
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    #@18
    .line 94
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    #@1a
    .line 96
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->DEBUG:Z

    #@1c
    .line 112
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@1f
    .line 121
    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@21
    invoke-direct {v0, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;-><init>(I)V

    #@24
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@26
    .line 125
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@28
    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    #@2b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@2d
    .line 128
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@2f
    .line 135
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@31
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    #@34
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@36
    .line 136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@38
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    #@3b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@3d
    .line 137
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@3f
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    #@42
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@44
    .line 146
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@46
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    #@49
    .line 145
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@4b
    .line 164
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    #@4e
    .line 165
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    #@50
    .line 163
    return-void
.end method

.method private final appendNode(IIII)I
    .locals 4
    .param p1, "w0"    # I
    .param p2, "w1"    # I
    .param p3, "w2"    # I
    .param p4, "w3"    # I

    #@0
    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->appendSlot(IIII)I

    #@5
    move-result v0

    #@6
    .line 213
    .local v0, "slotnumber":I
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 214
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@c
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@e
    const/4 v3, 0x2

    #@f
    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    #@12
    .line 216
    :cond_0
    const/4 v1, 0x0

    #@13
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@15
    .line 218
    return v0
.end method

.method private processAccumulatedText()V
    .locals 3

    #@0
    .prologue
    .line 419
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@2
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@5
    move-result v0

    #@6
    .line 420
    .local v0, "len":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 423
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@c
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@e
    sub-int v2, v0, v2

    #@10
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendTextChild(II)V

    #@13
    .line 424
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@15
    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method appendAttribute(IIIZII)V
    .locals 8
    .param p1, "namespaceIndex"    # I
    .param p2, "localNameIndex"    # I
    .param p3, "prefixIndex"    # I
    .param p4, "isID"    # Z
    .param p5, "m_char_current_start"    # I
    .param p6, "contentLength"    # I

    #@0
    .prologue
    .line 2237
    shl-int/lit8 v5, p1, 0x10

    #@2
    or-int/lit8 v1, v5, 0x2

    #@4
    .line 2240
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@6
    .line 2242
    .local v2, "w1":I
    const/4 v3, 0x0

    #@7
    .line 2244
    .local v3, "w2":I
    shl-int/lit8 v5, p3, 0x10

    #@9
    or-int v4, p2, v5

    #@b
    .line 2245
    .local v4, "w3":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "set w3="

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, " "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    shr-int/lit8 v7, v4, 0x10

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    const-string/jumbo v7, "/"

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    const v7, 0xffff

    #@34
    and-int/2addr v7, v4

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 2247
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    #@43
    move-result v0

    #@44
    .line 2248
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@46
    .line 2253
    const/4 v1, 0x3

    #@47
    .line 2255
    move v2, v0

    #@48
    .line 2257
    move v3, p5

    #@49
    .line 2259
    move v4, p6

    #@4a
    .line 2260
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    #@4d
    .line 2263
    const/4 v5, 0x1

    #@4e
    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@50
    .line 2264
    return-void
.end method

.method public appendChild(IZZ)V
    .locals 3
    .param p1, "newChild"    # I
    .param p2, "clone"    # Z
    .param p3, "cloneDepth"    # Z

    #@0
    .prologue
    .line 2056
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    #@2
    and-int/2addr v1, p1

    #@3
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@5
    if-ne v1, v2, :cond_1

    #@7
    const/4 v0, 0x1

    #@8
    .line 2057
    .local v0, "sameDoc":Z
    :goto_0
    if-nez p2, :cond_0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2055
    :cond_0
    return-void

    #@d
    .line 2056
    .end local v0    # "sameDoc":Z
    :cond_1
    const/4 v0, 0x0

    #@e
    .restart local v0    # "sameDoc":Z
    goto :goto_0
.end method

.method appendComment(II)V
    .locals 5
    .param p1, "m_char_current_start"    # I
    .param p2, "contentLength"    # I

    #@0
    .prologue
    .line 2118
    const/16 v1, 0x8

    #@2
    .line 2120
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@4
    .line 2122
    .local v2, "w1":I
    move v3, p1

    #@5
    .line 2124
    .local v3, "w2":I
    move v4, p2

    #@6
    .line 2126
    .local v4, "w3":I
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    #@9
    move-result v0

    #@a
    .line 2127
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@c
    .line 2114
    return-void
.end method

.method appendEndDocument()V
    .locals 1

    #@0
    .prologue
    .line 2353
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    #@3
    .line 2351
    return-void
.end method

.method appendEndElement()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2320
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2321
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@7
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@9
    const/4 v2, 0x2

    #@a
    const/4 v3, -0x1

    #@b
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    #@e
    .line 2324
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@10
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@12
    .line 2325
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@14
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@16
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@18
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@1b
    .line 2326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@1d
    aget v0, v0, v4

    #@1f
    const v1, 0xffff

    #@22
    and-int/2addr v0, v1

    #@23
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@25
    .line 2330
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@27
    .line 2316
    return-void
.end method

.method appendNSDeclaration(IIZ)V
    .locals 8
    .param p1, "prefixIndex"    # I
    .param p2, "namespaceIndex"    # I
    .param p3, "isID"    # Z

    #@0
    .prologue
    .line 2197
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    #@5
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 2200
    .local v0, "namespaceForNamespaces":I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@b
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    #@e
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@11
    move-result v6

    #@12
    shl-int/lit8 v6, v6, 0x10

    #@14
    or-int/lit8 v2, v6, 0xd

    #@16
    .line 2203
    .local v2, "w0":I
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@18
    .line 2205
    .local v3, "w1":I
    const/4 v4, 0x0

    #@19
    .line 2207
    .local v4, "w2":I
    move v5, p2

    #@1a
    .line 2209
    .local v5, "w3":I
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    #@1d
    move-result v1

    #@1e
    .line 2210
    .local v1, "ourslot":I
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@20
    .line 2211
    const/4 v6, 0x0

    #@21
    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    #@23
    .line 2212
    return-void
.end method

.method appendStartDocument()V
    .locals 1

    #@0
    .prologue
    .line 2344
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    #@3
    .line 2345
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    #@7
    .line 2339
    return-void
.end method

.method appendStartElement(III)V
    .locals 8
    .param p1, "namespaceIndex"    # I
    .param p2, "localNameIndex"    # I
    .param p3, "prefixIndex"    # I

    #@0
    .prologue
    .line 2154
    shl-int/lit8 v5, p1, 0x10

    #@2
    or-int/lit8 v1, v5, 0x1

    #@4
    .line 2156
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@6
    .line 2158
    .local v2, "w1":I
    const/4 v3, 0x0

    #@7
    .line 2160
    .local v3, "w2":I
    shl-int/lit8 v5, p3, 0x10

    #@9
    or-int v4, p2, v5

    #@b
    .line 2161
    .local v4, "w3":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "set w3="

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    const-string/jumbo v7, " "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    shr-int/lit8 v7, v4, 0x10

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    const-string/jumbo v7, "/"

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    const v7, 0xffff

    #@34
    and-int/2addr v7, v4

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 2164
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    #@43
    move-result v0

    #@44
    .line 2165
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@46
    .line 2166
    const/4 v5, 0x0

    #@47
    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@49
    .line 2169
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    #@4b
    const/4 v6, -0x1

    #@4c
    if-ne v5, v6, :cond_0

    #@4e
    .line 2170
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    #@50
    .line 2146
    :cond_0
    return-void
.end method

.method appendTextChild(II)V
    .locals 5
    .param p1, "m_char_current_start"    # I
    .param p2, "contentLength"    # I

    #@0
    .prologue
    .line 2095
    const/4 v1, 0x3

    #@1
    .line 2097
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    #@3
    .line 2099
    .local v2, "w1":I
    move v3, p1

    #@4
    .line 2101
    .local v3, "w2":I
    move v4, p2

    #@5
    .line 2103
    .local v4, "w3":I
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    #@8
    move-result v0

    #@9
    .line 2104
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    #@b
    .line 2091
    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2073
    return-void
.end method

.method public characters([CII)V
    .locals 1
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
    .line 413
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    #@5
    .line 408
    return-void
.end method

.method public comment([CII)V
    .locals 1
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
    .line 570
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    #@3
    .line 572
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    #@8
    .line 573
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@a
    invoke-virtual {p0, v0, p3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendComment(II)V

    #@d
    .line 574
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@f
    add-int/2addr v0, p3

    #@10
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@12
    .line 568
    return-void
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 0
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p3, "normalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2012
    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2024
    return-void
.end method

.method public documentRegistration()V
    .locals 0

    #@0
    .prologue
    .line 2387
    return-void
.end method

.method public documentRelease()V
    .locals 0

    #@0
    .prologue
    .line 2396
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 577
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 582
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndDocument()V

    #@3
    .line 428
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    #@3
    .line 441
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndElement()V

    #@6
    .line 436
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 587
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
    .line 444
    return-void
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "nodeHandle"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    .line 1087
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@4
    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 1088
    .local v1, "nsIndex":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@a
    invoke-virtual {v3, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 1089
    .local v0, "nameIndex":I
    const v3, 0x7fffff

    #@11
    and-int/2addr p1, v3

    #@12
    .line 1090
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@14
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@16
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@19
    .line 1091
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@1b
    aget v3, v3, v5

    #@1d
    const v4, 0xffff

    #@20
    and-int/2addr v3, v4

    #@21
    int-to-short v2, v3

    #@22
    .line 1093
    .local v2, "type":S
    const/4 v3, 0x1

    #@23
    if-ne v2, v3, :cond_0

    #@25
    .line 1094
    add-int/lit8 p1, p1, 0x1

    #@27
    .line 1096
    :cond_0
    :goto_0
    if-ne v2, v6, :cond_2

    #@29
    .line 1097
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@2b
    aget v3, v3, v5

    #@2d
    shl-int/lit8 v3, v3, 0x10

    #@2f
    if-ne v1, v3, :cond_1

    #@31
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@33
    const/4 v4, 0x3

    #@34
    aget v3, v3, v4

    #@36
    if-ne v3, v0, :cond_1

    #@38
    .line 1098
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@3a
    or-int/2addr v3, p1

    #@3b
    return v3

    #@3c
    .line 1100
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@3e
    aget p1, v3, v6

    #@40
    .line 1101
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@42
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@44
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@47
    goto :goto_0

    #@48
    .line 1103
    :cond_2
    const/4 v3, -0x1

    #@49
    return v3
.end method

.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 2293
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .locals 1
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 2277
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getContentBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@2
    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 324
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@8
    check-cast v0, Lorg/xml/sax/ContentHandler;

    #@a
    return-object v0

    #@b
    .line 326
    :cond_0
    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 367
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    #@0
    .prologue
    .line 389
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocument()I
    .locals 1

    #@0
    .prologue
    .line 1371
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@2
    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 1

    #@0
    .prologue
    .line 1843
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1777
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1807
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentRoot()I
    .locals 2

    #@0
    .prologue
    .line 1362
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getDocumentRoot(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1408
    const v0, 0x7fffff

    #@3
    and-int/2addr v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1409
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 1410
    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@a
    and-int/2addr v0, p1

    #@b
    return v0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1819
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1798
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1863
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1853
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "documentHandle"    # I

    #@0
    .prologue
    .line 1831
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1882
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 356
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 378
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getExpandedTypeID(I)I
    .locals 9
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1511
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@4
    invoke-virtual {v6, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@7
    .line 1512
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@9
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@b
    const/4 v8, 0x3

    #@c
    aget v7, v7, v8

    #@e
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 1515
    .local v5, "qName":Ljava/lang/String;
    const-string/jumbo v6, ":"

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    .line 1516
    .local v0, "colonpos":I
    add-int/lit8 v6, v0, 0x1

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1518
    .local v3, "localName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@21
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@23
    const/4 v8, 0x0

    #@24
    aget v7, v7, v8

    #@26
    shl-int/lit8 v7, v7, 0x10

    #@28
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 1520
    .local v4, "namespace":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    const-string/jumbo v7, ":"

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 1521
    .local v1, "expandedName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@46
    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@49
    move-result v2

    #@4a
    .line 1523
    .local v2, "expandedNameID":I
    return v2
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    const-string/jumbo v3, ":"

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 1542
    .local v0, "expandedName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@1a
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@1d
    move-result v1

    #@1e
    .line 1544
    .local v1, "expandedNameID":I
    return v1
.end method

.method public getFirstAttribute(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const v4, 0xffff

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v0, -0x1

    #@5
    .line 1113
    const v1, 0x7fffff

    #@8
    and-int/2addr p1, v1

    #@9
    .line 1121
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@b
    invoke-virtual {v1, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@e
    move-result v1

    #@f
    and-int/2addr v1, v4

    #@10
    const/4 v2, 0x1

    #@11
    if-eq v2, v1, :cond_0

    #@13
    .line 1122
    return v0

    #@14
    .line 1124
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@16
    .line 1125
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@18
    invoke-virtual {v1, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@1b
    move-result v1

    #@1c
    and-int/2addr v1, v4

    #@1d
    const/4 v2, 0x2

    #@1e
    if-ne v2, v1, :cond_1

    #@20
    .line 1126
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@22
    or-int/2addr v0, p1

    #@23
    .line 1125
    :cond_1
    return v0
.end method

.method public getFirstChild(I)I
    .locals 10
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const v9, 0xffff

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v7, 0x1

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v5, -0x1

    #@7
    .line 1013
    const v3, 0x7fffff

    #@a
    and-int/2addr p1, v3

    #@b
    .line 1015
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@d
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@f
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@12
    .line 1018
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@14
    aget v3, v3, v6

    #@16
    and-int/2addr v3, v9

    #@17
    int-to-short v2, v3

    #@18
    .line 1021
    .local v2, "type":S
    if-eq v2, v7, :cond_0

    #@1a
    const/16 v3, 0x9

    #@1c
    if-ne v2, v3, :cond_1

    #@1e
    .line 1031
    :cond_0
    add-int/lit8 v1, p1, 0x1

    #@20
    .line 1032
    .local v1, "kid":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@22
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@24
    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@27
    .line 1033
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@29
    aget v3, v3, v6

    #@2b
    and-int/2addr v3, v9

    #@2c
    if-ne v8, v3, :cond_4

    #@2e
    .line 1035
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@30
    aget v1, v3, v8

    #@32
    .line 1037
    if-ne v1, v5, :cond_3

    #@34
    return v5

    #@35
    .line 1022
    .end local v1    # "kid":I
    :cond_1
    const/4 v3, 0x5

    #@36
    if-eq v2, v3, :cond_0

    #@38
    .line 1050
    :cond_2
    return v5

    #@39
    .line 1038
    .restart local v1    # "kid":I
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@3b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@3d
    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@40
    goto :goto_0

    #@41
    .line 1041
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@43
    aget v3, v3, v7

    #@45
    if-ne v3, p1, :cond_2

    #@47
    .line 1043
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@49
    or-int v0, v1, v3

    #@4b
    .line 1045
    .local v0, "firstChild":I
    return v0
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 1
    .param p1, "nodeHandle"    # I
    .param p2, "inScope"    # Z

    #@0
    .prologue
    .line 1144
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getLastChild(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1064
    const v2, 0x7fffff

    #@3
    and-int/2addr p1, v2

    #@4
    .line 1066
    const/4 v0, -0x1

    #@5
    .line 1067
    .local v0, "lastChild":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    #@8
    move-result v1

    #@9
    .local v1, "nextkid":I
    :goto_0
    const/4 v2, -0x1

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 1069
    move v0, v1

    #@d
    .line 1068
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    #@10
    move-result v1

    #@11
    goto :goto_0

    #@12
    .line 1071
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@14
    or-int/2addr v2, v0

    #@15
    return v2
.end method

.method public getLevel(I)S
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1743
    const/4 v0, 0x0

    #@1
    .line 1744
    :goto_0
    if-eqz p1, :cond_0

    #@3
    .line 1745
    add-int/lit8 v1, v0, 0x1

    #@5
    int-to-short v0, v1

    #@6
    .line 1746
    .local v0, "count":S
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@c
    move-result p1

    #@d
    goto :goto_0

    #@e
    .line 1748
    .end local v0    # "count":S
    :cond_0
    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 343
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@8
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    #@a
    return-object v0

    #@b
    .line 345
    :cond_0
    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const v5, 0xffff

    #@3
    .line 1642
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@7
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@a
    .line 1643
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@c
    const/4 v4, 0x0

    #@d
    aget v3, v3, v4

    #@f
    and-int/2addr v3, v5

    #@10
    int-to-short v2, v3

    #@11
    .line 1644
    .local v2, "type":S
    const-string/jumbo v1, ""

    #@14
    .line 1645
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x1

    #@15
    if-eq v2, v3, :cond_0

    #@17
    const/4 v3, 0x2

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 1646
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@1c
    const/4 v4, 0x3

    #@1d
    aget v0, v3, v4

    #@1f
    .line 1647
    .local v0, "i":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@21
    and-int v4, v0, v5

    #@23
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1648
    if-nez v1, :cond_1

    #@29
    const-string/jumbo v1, ""

    #@2c
    .line 1650
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 4
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 1557
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1559
    .local v1, "expandedName":Ljava/lang/String;
    const-string/jumbo v3, ":"

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    .line 1560
    .local v0, "colonpos":I
    add-int/lit8 v3, v0, 0x1

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 1561
    .local v2, "localName":Ljava/lang/String;
    return-object v2
.end method

.method public getLocalNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 4
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 1574
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1576
    .local v1, "expandedName":Ljava/lang/String;
    const-string/jumbo v3, ":"

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    .line 1577
    .local v0, "colonpos":I
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 1579
    .local v2, "nsName":Ljava/lang/String;
    return-object v2
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1688
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNextAttribute(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x2

    #@2
    .line 1223
    const v1, 0x7fffff

    #@5
    and-int/2addr p1, v1

    #@6
    .line 1224
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@8
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@a
    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@d
    .line 1230
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@f
    const/4 v2, 0x0

    #@10
    aget v1, v1, v2

    #@12
    const v2, 0xffff

    #@15
    and-int/2addr v1, v2

    #@16
    int-to-short v0, v1

    #@17
    .line 1232
    .local v0, "type":S
    const/4 v1, 0x1

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstAttribute(I)I

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 1234
    :cond_0
    if-ne v0, v3, :cond_1

    #@21
    .line 1235
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@23
    aget v1, v1, v3

    #@25
    if-eq v1, v4, :cond_1

    #@27
    .line 1236
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@29
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@2b
    aget v2, v2, v3

    #@2d
    or-int/2addr v1, v2

    #@2e
    return v1

    #@2f
    .line 1238
    :cond_1
    return v4
.end method

.method public getNextDescendant(II)I
    .locals 8
    .param p1, "subtreeRootHandle"    # I
    .param p2, "nodeHandle"    # I

    #@0
    .prologue
    const v2, 0x7fffff

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, -0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 1267
    and-int/2addr p1, v2

    #@7
    .line 1268
    and-int/2addr p2, v2

    #@8
    .line 1270
    if-nez p2, :cond_1

    #@a
    .line 1271
    return v6

    #@b
    .line 1276
    :cond_0
    if-le p2, p1, :cond_5

    #@d
    .line 1277
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@f
    add-int/lit8 v3, p2, 0x1

    #@11
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@13
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@16
    .line 1278
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@18
    aget v2, v2, v7

    #@1a
    if-eqz v2, :cond_4

    #@1c
    .line 1279
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@1e
    aget v2, v2, v5

    #@20
    const v3, 0xffff

    #@23
    and-int/2addr v2, v3

    #@24
    int-to-short v1, v2

    #@25
    .line 1280
    .local v1, "type":S
    if-ne v1, v7, :cond_3

    #@27
    .line 1281
    add-int/lit8 p2, p2, 0x2

    #@29
    .line 1272
    .end local v1    # "type":S
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    #@2b
    if-nez v2, :cond_2

    #@2d
    .line 1274
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    #@2f
    if-eqz v2, :cond_0

    #@31
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@33
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsUsed()I

    #@36
    move-result v2

    #@37
    if-le p2, v2, :cond_0

    #@39
    .line 1298
    :cond_2
    return v6

    #@3a
    .line 1283
    .restart local v1    # "type":S
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@3c
    const/4 v3, 0x1

    #@3d
    aget v0, v2, v3

    #@3f
    .line 1284
    .local v0, "nextParentPos":I
    if-lt v0, p1, :cond_2

    #@41
    .line 1285
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@43
    add-int/lit8 v3, p2, 0x1

    #@45
    or-int/2addr v2, v3

    #@46
    return v2

    #@47
    .line 1289
    .end local v0    # "nextParentPos":I
    .end local v1    # "type":S
    :cond_4
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    #@49
    if-nez v2, :cond_2

    #@4b
    goto :goto_0

    #@4c
    .line 1294
    :cond_5
    add-int/lit8 p2, p2, 0x1

    #@4e
    goto :goto_0
.end method

.method public getNextFollowing(II)I
    .locals 1
    .param p1, "axisContextHandle"    # I
    .param p2, "nodeHandle"    # I

    #@0
    .prologue
    .line 1311
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 1
    .param p1, "baseHandle"    # I
    .param p2, "namespaceHandle"    # I
    .param p3, "inScope"    # Z

    #@0
    .prologue
    .line 1253
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getNextPreceding(II)I
    .locals 2
    .param p1, "axisContextHandle"    # I
    .param p2, "nodeHandle"    # I

    #@0
    .prologue
    .line 1324
    const v0, 0x7fffff

    #@3
    and-int/2addr p2, v0

    #@4
    .line 1325
    :cond_0
    const/4 v0, 0x1

    #@5
    if-le p2, v0, :cond_1

    #@7
    .line 1326
    add-int/lit8 p2, p2, -0x1

    #@9
    .line 1327
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, p2, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@f
    move-result v0

    #@10
    const v1, 0xffff

    #@13
    and-int/2addr v0, v1

    #@14
    const/4 v1, 0x2

    #@15
    if-eq v1, v0, :cond_0

    #@17
    .line 1338
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@19
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@1b
    invoke-virtual {v1, p1, p2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->specialFind(II)I

    #@1e
    move-result v1

    #@1f
    or-int/2addr v0, v1

    #@20
    return v0

    #@21
    .line 1340
    :cond_1
    const/4 v0, -0x1

    #@22
    return v0
.end method

.method public getNextSibling(I)I
    .locals 8
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, -0x1

    #@4
    .line 1165
    const v3, 0x7fffff

    #@7
    and-int/2addr p1, v3

    #@8
    .line 1167
    if-nez p1, :cond_0

    #@a
    .line 1168
    return v5

    #@b
    .line 1170
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@d
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@10
    move-result v3

    #@11
    const v4, 0xffff

    #@14
    and-int/2addr v3, v4

    #@15
    int-to-short v2, v3

    #@16
    .line 1171
    .local v2, "type":S
    if-eq v2, v6, :cond_1

    #@18
    if-ne v2, v7, :cond_2

    #@1a
    .line 1173
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@1c
    invoke-virtual {v3, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@1f
    move-result v0

    #@20
    .line 1174
    .local v0, "nextSib":I
    if-ne v0, v5, :cond_4

    #@22
    .line 1175
    return v5

    #@23
    .line 1172
    .end local v0    # "nextSib":I
    :cond_2
    const/4 v3, 0x5

    #@24
    if-eq v2, v3, :cond_1

    #@26
    .line 1181
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@28
    invoke-virtual {v3, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@2b
    move-result v1

    #@2c
    .line 1183
    .local v1, "thisParent":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2e
    add-int/lit8 p1, p1, 0x1

    #@30
    invoke-virtual {v3, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@33
    move-result v3

    #@34
    if-ne v3, v1, :cond_5

    #@36
    .line 1184
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@38
    or-int/2addr v3, p1

    #@39
    return v3

    #@3a
    .line 1176
    .end local v1    # "thisParent":I
    .restart local v0    # "nextSib":I
    :cond_4
    if-eqz v0, :cond_3

    #@3c
    .line 1177
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@3e
    or-int/2addr v3, v0

    #@3f
    return v3

    #@40
    .line 1186
    .end local v0    # "nextSib":I
    .restart local v1    # "thisParent":I
    :cond_5
    return v5
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 2035
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 8
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const v7, 0xffff

    #@4
    .line 1605
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@6
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@8
    invoke-virtual {v4, p1, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@b
    .line 1606
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@d
    aget v4, v4, v6

    #@f
    and-int/2addr v4, v7

    #@10
    int-to-short v3, v4

    #@11
    .line 1607
    .local v3, "type":S
    sget-object v4, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    #@13
    aget-object v1, v4, v3

    #@15
    .line 1608
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    #@17
    .line 1609
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@19
    const/4 v5, 0x3

    #@1a
    aget v0, v4, v5

    #@1c
    .line 1610
    .local v0, "i":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "got i="

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    const-string/jumbo v6, " "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    shr-int/lit8 v6, v0, 0x10

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, "/"

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    and-int v6, v0, v7

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 1612
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@51
    and-int v5, v0, v7

    #@53
    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 1613
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@59
    shr-int/lit8 v5, v0, 0x10

    #@5b
    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 1614
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@61
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@64
    move-result v4

    #@65
    if-lez v4, :cond_0

    #@67
    .line 1615
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    const-string/jumbo v5, ":"

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 1617
    .end local v0    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1628
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNodeType(I)S
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1731
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@6
    move-result v0

    #@7
    const v1, 0xffff

    #@a
    and-int/2addr v0, v1

    #@b
    int-to-short v0, v0

    #@c
    return v0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1701
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@4
    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@7
    .line 1702
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@9
    const/4 v3, 0x0

    #@a
    aget v2, v2, v3

    #@c
    and-int/lit16 v0, v2, 0xff

    #@e
    .line 1703
    .local v0, "nodetype":I
    const/4 v1, 0x0

    #@f
    .line 1705
    .local v1, "value":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    #@12
    .line 1719
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object v1

    #@13
    .line 1707
    .restart local v1    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@15
    add-int/lit8 v3, p1, 0x1

    #@17
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@19
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@1c
    .line 1711
    :pswitch_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@1e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@20
    const/4 v4, 0x2

    #@21
    aget v3, v3, v4

    #@23
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@25
    const/4 v5, 0x3

    #@26
    aget v4, v4, v5

    #@28
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 1705
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNsNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    return-object v0
.end method

.method public getOwnerDocument(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1389
    const v0, 0x7fffff

    #@3
    and-int/2addr v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1390
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 1391
    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@a
    and-int/2addr v0, p1

    #@b
    return v0
.end method

.method public getParent(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1354
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@8
    move-result v1

    #@9
    or-int/2addr v0, v1

    #@a
    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 5
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1668
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@4
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@7
    .line 1669
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@9
    const/4 v4, 0x0

    #@a
    aget v3, v3, v4

    #@c
    const v4, 0xffff

    #@f
    and-int/2addr v3, v4

    #@10
    int-to-short v2, v3

    #@11
    .line 1670
    .local v2, "type":S
    const-string/jumbo v1, ""

    #@14
    .line 1671
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x1

    #@15
    if-eq v2, v3, :cond_0

    #@17
    const/4 v3, 0x2

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 1672
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@1c
    const/4 v4, 0x3

    #@1d
    aget v0, v3, v4

    #@1f
    .line 1673
    .local v0, "i":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@21
    shr-int/lit8 v4, v0, 0x10

    #@23
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1674
    if-nez v1, :cond_1

    #@29
    const-string/jumbo v1, ""

    #@2c
    .line 1676
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public getPrefixNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    return-object v0
.end method

.method public getPreviousSibling(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1199
    const v3, 0x7fffff

    #@3
    and-int/2addr p1, v3

    #@4
    .line 1201
    if-nez p1, :cond_0

    #@6
    .line 1202
    const/4 v3, -0x1

    #@7
    return v3

    #@8
    .line 1204
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@a
    const/4 v4, 0x1

    #@b
    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    #@e
    move-result v2

    #@f
    .line 1205
    .local v2, "parent":I
    const/4 v0, -0x1

    #@10
    .line 1206
    .local v0, "kid":I
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    #@13
    move-result v1

    #@14
    .local v1, "nextkid":I
    :goto_0
    if-eq v1, p1, :cond_1

    #@16
    .line 1208
    move v0, v1

    #@17
    .line 1207
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    #@1a
    move-result v1

    #@1b
    goto :goto_0

    #@1c
    .line 1210
    :cond_1
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@1e
    or-int/2addr v3, v0

    #@1f
    return v3
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 2378
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1424
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@4
    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    #@7
    .line 1425
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@9
    const/4 v3, 0x0

    #@a
    aget v2, v2, v3

    #@c
    and-int/lit16 v0, v2, 0xff

    #@e
    .line 1426
    .local v0, "nodetype":I
    const/4 v1, 0x0

    #@f
    .line 1428
    .local v1, "value":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    #@12
    .line 1441
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    #@14
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 1432
    .restart local v1    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@1b
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@1d
    const/4 v4, 0x2

    #@1e
    aget v3, v3, v4

    #@20
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    #@22
    const/4 v5, 0x3

    #@23
    aget v4, v4, v5

    #@25
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 1428
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getStringValueChunk(II[I)[C
    .locals 1
    .param p1, "nodeHandle"    # I
    .param p2, "chunkIndex"    # I
    .param p3, "startAndLen"    # [I

    #@0
    .prologue
    .line 1501
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [C

    #@3
    return-object v0
.end method

.method public getStringValueChunkCount(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1472
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "axis"    # I
    .param p2, "type"    # I

    #@0
    .prologue
    .line 2309
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1918
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hasChildNodes(I)Z
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 999
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
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
    .line 449
    return-void
.end method

.method final initDocument(I)V
    .locals 6
    .param p1, "documentNumber"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 625
    shl-int/lit8 v0, p1, 0x16

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    #@6
    .line 628
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@8
    const/16 v2, 0x9

    #@a
    move v4, v3

    #@b
    move v5, v1

    #@c
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeSlot(IIIII)V

    #@f
    .line 630
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    #@11
    .line 622
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .param p1, "attributeHandle"    # I

    #@0
    .prologue
    .line 1993
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1968
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 1
    .param p1, "documentHandle"    # I

    #@0
    .prologue
    .line 1982
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isNodeAfter(II)Z
    .locals 1
    .param p1, "nodeHandle1"    # I
    .param p2, "nodeHandle2"    # I

    #@0
    .prologue
    .line 1950
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1765
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 2407
    return-void
.end method

.method public needsTwoThreads()Z
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

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

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    #@3
    .line 454
    return-void
.end method

.method setContentBuffer(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@2
    .line 299
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1788
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    #@2
    .line 1785
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 459
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z

    #@0
    .prologue
    .line 231
    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    .line 184
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 185
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    #@8
    .line 179
    return-void
.end method

.method public setLocalNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0
    .param p1, "poolRef"    # Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@0
    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    .line 240
    return-void
.end method

.method public setNsNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0
    .param p1, "poolRef"    # Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@0
    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    .line 260
    return-void
.end method

.method public setPrefixNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0
    .param p1, "poolRef"    # Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    .line 280
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2365
    return-void
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
    .line 466
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    #@3
    .line 464
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 592
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 598
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartDocument()V

    #@3
    .line 470
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    #@3
    .line 481
    const/4 v12, 0x0

    #@4
    .line 482
    .local v12, "prefix":Ljava/lang/String;
    const/16 v1, 0x3a

    #@6
    move-object/from16 v0, p3

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v8

    #@c
    .line 483
    .local v8, "colon":I
    if-lez v8, :cond_0

    #@e
    .line 484
    const/4 v1, 0x0

    #@f
    move-object/from16 v0, p3

    #@11
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v12

    #@15
    .line 487
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Prefix="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, " index="

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@30
    invoke-virtual {v3, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@33
    move-result v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    .line 488
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@41
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@44
    move-result v1

    #@45
    .line 489
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@47
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@4a
    move-result v2

    #@4b
    .line 490
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@4d
    invoke-virtual {v3, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@50
    move-result v3

    #@51
    .line 488
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartElement(III)V

    #@54
    .line 495
    if-nez p4, :cond_3

    #@56
    const/4 v11, 0x0

    #@57
    .line 497
    .local v11, "nAtts":I
    :goto_0
    add-int/lit8 v10, v11, -0x1

    #@59
    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_5

    #@5b
    .line 499
    move-object/from16 v0, p4

    #@5d
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@60
    move-result-object p3

    #@61
    .line 500
    const-string/jumbo v1, "xmlns:"

    #@64
    move-object/from16 v0, p3

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v1

    #@6a
    if-nez v1, :cond_1

    #@6c
    const-string/jumbo v1, "xmlns"

    #@6f
    move-object/from16 v0, p3

    #@71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_2

    #@77
    .line 502
    :cond_1
    const/4 v12, 0x0

    #@78
    .line 503
    .restart local v12    # "prefix":Ljava/lang/String;
    const/16 v1, 0x3a

    #@7a
    move-object/from16 v0, p3

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@7f
    move-result v8

    #@80
    .line 504
    if-lez v8, :cond_4

    #@82
    .line 506
    const/4 v1, 0x0

    #@83
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@88
    move-result-object v12

    #@89
    .line 516
    .end local v12    # "prefix":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@8b
    invoke-virtual {v1, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@8e
    move-result v1

    #@8f
    .line 517
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@91
    move-object/from16 v0, p4

    #@93
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@9a
    move-result v2

    #@9b
    .line 518
    move-object/from16 v0, p4

    #@9d
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    const-string/jumbo v4, "ID"

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a7
    move-result v3

    #@a8
    .line 515
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNSDeclaration(IIZ)V

    #@ab
    .line 497
    :cond_2
    add-int/lit8 v10, v10, -0x1

    #@ad
    goto :goto_1

    #@ae
    .line 495
    .end local v10    # "i":I
    .end local v11    # "nAtts":I
    :cond_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@b1
    move-result v11

    #@b2
    .restart local v11    # "nAtts":I
    goto :goto_0

    #@b3
    .line 511
    .restart local v10    # "i":I
    .restart local v12    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    #@b4
    goto :goto_2

    #@b5
    .line 522
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v11, -0x1

    #@b7
    :goto_3
    if-ltz v10, :cond_b

    #@b9
    .line 524
    move-object/from16 v0, p4

    #@bb
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@be
    move-result-object p3

    #@bf
    .line 525
    const-string/jumbo v1, "xmlns:"

    #@c2
    move-object/from16 v0, p3

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c7
    move-result v1

    #@c8
    if-nez v1, :cond_8

    #@ca
    const-string/jumbo v1, "xmlns"

    #@cd
    move-object/from16 v0, p3

    #@cf
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v1

    #@d3
    :goto_4
    if-nez v1, :cond_7

    #@d5
    .line 530
    const/4 v12, 0x0

    #@d6
    .line 531
    .restart local v12    # "prefix":Ljava/lang/String;
    const/16 v1, 0x3a

    #@d8
    move-object/from16 v0, p3

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@dd
    move-result v8

    #@de
    .line 532
    if-lez v8, :cond_9

    #@e0
    .line 534
    const/4 v1, 0x0

    #@e1
    move-object/from16 v0, p3

    #@e3
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e6
    move-result-object v12

    #@e7
    .line 535
    .local v12, "prefix":Ljava/lang/String;
    add-int/lit8 v1, v8, 0x1

    #@e9
    move-object/from16 v0, p3

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ee
    move-result-object p2

    #@ef
    .line 544
    :goto_5
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@f1
    move-object/from16 v0, p4

    #@f3
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@fa
    .line 545
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    #@fc
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@ff
    move-result v9

    #@100
    .line 547
    .local v9, "contentEnd":I
    const-string/jumbo v1, "xmlns"

    #@103
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v1

    #@107
    if-nez v1, :cond_a

    #@109
    const-string/jumbo v1, "xmlns"

    #@10c
    move-object/from16 v0, p3

    #@10e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v1

    #@112
    :goto_6
    if-nez v1, :cond_6

    #@114
    .line 548
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@116
    move-object/from16 v0, p4

    #@118
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@11b
    move-result-object v2

    #@11c
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@11f
    move-result v2

    #@120
    .line 549
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@122
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@125
    move-result v3

    #@126
    .line 550
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@128
    invoke-virtual {v1, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@12b
    move-result v4

    #@12c
    .line 551
    move-object/from16 v0, p4

    #@12e
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@131
    move-result-object v1

    #@132
    const-string/jumbo v5, "ID"

    #@135
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@138
    move-result v5

    #@139
    .line 552
    iget v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@13b
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@13d
    sub-int v7, v9, v1

    #@13f
    move-object v1, p0

    #@140
    .line 548
    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendAttribute(IIIZII)V

    #@143
    .line 553
    :cond_6
    iput v9, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    #@145
    .line 522
    .end local v9    # "contentEnd":I
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, -0x1

    #@147
    goto/16 :goto_3

    #@149
    .line 525
    :cond_8
    const/4 v1, 0x1

    #@14a
    goto :goto_4

    #@14b
    .line 539
    .local v12, "prefix":Ljava/lang/String;
    :cond_9
    const-string/jumbo v12, ""

    #@14e
    .line 540
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 p2, p3

    #@150
    goto :goto_5

    #@151
    .line 547
    .restart local v9    # "contentEnd":I
    :cond_a
    const/4 v1, 0x1

    #@152
    goto :goto_6

    #@153
    .line 476
    .end local v9    # "contentEnd":I
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 558
    return-void
.end method

.method public supportsPreStripping()Z
    .locals 1

    #@0
    .prologue
    .line 1930
    const/4 v0, 0x0

    #@1
    return v0
.end method

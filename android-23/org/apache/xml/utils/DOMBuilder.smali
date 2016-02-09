.class public Lorg/apache/xml/utils/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field protected m_currentNode:Lorg/w3c/dom/Node;

.field public m_doc:Lorg/w3c/dom/Document;

.field public m_docFrag:Lorg/w3c/dom/DocumentFragment;

.field protected m_elemStack:Ljava/util/Stack;

.field protected m_inCData:Z

.field protected m_nextSibling:Lorg/w3c/dom/Node;

.field protected m_prefixMappings:Ljava/util/Vector;

.field protected m_root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@6
    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    #@8
    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@a
    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@c
    .line 66
    new-instance v0, Ljava/util/Stack;

    #@e
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@11
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@13
    .line 69
    new-instance v0, Ljava/util/Vector;

    #@15
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@18
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@1a
    .line 637
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    #@1d
    .line 108
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@1f
    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "docFrag"    # Lorg/w3c/dom/DocumentFragment;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@6
    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    #@8
    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@a
    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@c
    .line 66
    new-instance v0, Ljava/util/Stack;

    #@e
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@11
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@13
    .line 69
    new-instance v0, Ljava/util/Vector;

    #@15
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@18
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@1a
    .line 637
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    #@1d
    .line 96
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@1f
    .line 97
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@21
    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@6
    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    #@8
    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@a
    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@c
    .line 66
    new-instance v0, Ljava/util/Stack;

    #@e
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@11
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@13
    .line 69
    new-instance v0, Ljava/util/Vector;

    #@15
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@18
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@1a
    .line 637
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    #@1d
    .line 80
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@1f
    .line 81
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    #@21
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@23
    .line 83
    instance-of v0, p2, Lorg/w3c/dom/Element;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 84
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@29
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 78
    :cond_0
    return-void
.end method

.method private isOutsideDocElem()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 596
    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@4
    if-nez v2, :cond_1

    #@6
    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@8
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@10
    if-eqz v2, :cond_0

    #@12
    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@14
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@17
    move-result v2

    #@18
    const/16 v3, 0x9

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    :cond_0
    :goto_0
    return v0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    goto :goto_0
.end method


# virtual methods
.method protected append(Lorg/w3c/dom/Node;)V
    .locals 7
    .param p1, "newNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 178
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@3
    .line 180
    .local v0, "currentNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    #@5
    .line 182
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    #@7
    if-ne v0, v4, :cond_1

    #@9
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 183
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@f
    invoke-interface {v0, p1, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@12
    .line 175
    :cond_0
    :goto_0
    return-void

    #@13
    .line 185
    :cond_1
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@16
    goto :goto_0

    #@17
    .line 189
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@19
    if-eqz v4, :cond_4

    #@1b
    .line 191
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@1d
    if-eqz v4, :cond_3

    #@1f
    .line 192
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@21
    iget-object v5, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@23
    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/DocumentFragment;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@26
    goto :goto_0

    #@27
    .line 194
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@29
    invoke-interface {v4, p1}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@2c
    goto :goto_0

    #@2d
    .line 198
    :cond_4
    const/4 v2, 0x1

    #@2e
    .line 199
    .local v2, "ok":Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@31
    move-result v3

    #@32
    .line 201
    .local v3, "type":S
    const/4 v4, 0x3

    #@33
    if-ne v3, v4, :cond_7

    #@35
    .line 203
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 205
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_5

    #@3b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@42
    move-result v4

    #@43
    if-lez v4, :cond_5

    #@45
    .line 207
    new-instance v4, Lorg/xml/sax/SAXException;

    #@47
    .line 209
    const-string/jumbo v5, "ER_CANT_OUTPUT_TEXT_BEFORE_DOC"

    #@4a
    .line 208
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 207
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@51
    throw v4

    #@52
    .line 212
    :cond_5
    const/4 v2, 0x0

    #@53
    .line 226
    .end local v1    # "data":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_0

    #@55
    .line 228
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@57
    if-eqz v4, :cond_8

    #@59
    .line 229
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@5b
    iget-object v5, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@5d
    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/Document;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@60
    goto :goto_0

    #@61
    .line 214
    :cond_7
    const/4 v4, 0x1

    #@62
    if-ne v3, v4, :cond_6

    #@64
    .line 216
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@66
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@69
    move-result-object v4

    #@6a
    if-eqz v4, :cond_6

    #@6c
    .line 218
    const/4 v2, 0x0

    #@6d
    .line 220
    new-instance v4, Lorg/xml/sax/SAXException;

    #@6f
    .line 222
    const-string/jumbo v5, "ER_CANT_HAVE_MORE_THAN_ONE_ROOT"

    #@72
    .line 221
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 220
    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@79
    throw v4

    #@7a
    .line 231
    :cond_8
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@7c
    invoke-interface {v4, p1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@7f
    goto :goto_0
.end method

.method public cdata([CII)V
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
    .line 685
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 686
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    #@9
    move-result v2

    #@a
    .line 685
    if-eqz v2, :cond_0

    #@c
    .line 687
    return-void

    #@d
    .line 689
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@f
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@12
    .line 691
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@14
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lorg/w3c/dom/CDATASection;

    #@1a
    .line 692
    .local v1, "section":Lorg/w3c/dom/CDATASection;
    invoke-interface {v1, v0}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    #@1d
    .line 683
    return-void
.end method

.method public characters([CII)V
    .locals 5
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
    .line 469
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 470
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    #@9
    move-result v3

    #@a
    .line 469
    if-eqz v3, :cond_0

    #@c
    .line 471
    return-void

    #@d
    .line 473
    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 475
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/utils/DOMBuilder;->cdata([CII)V

    #@14
    .line 477
    return-void

    #@15
    .line 480
    :cond_1
    new-instance v1, Ljava/lang/String;

    #@17
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@1a
    .line 482
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@20
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    #@23
    move-result-object v0

    #@24
    .line 483
    :goto_0
    if-eqz v0, :cond_3

    #@26
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@29
    move-result v3

    #@2a
    const/4 v4, 0x3

    #@2b
    if-ne v3, v4, :cond_3

    #@2d
    .line 484
    check-cast v0, Lorg/w3c/dom/Text;

    #@2f
    invoke-interface {v0, v1}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    #@32
    .line 467
    :goto_1
    return-void

    #@33
    .line 482
    :cond_2
    const/4 v0, 0x0

    #@34
    .local v0, "childNode":Lorg/w3c/dom/Node;
    goto :goto_0

    #@35
    .line 487
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@37
    invoke-interface {v3, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@3a
    move-result-object v2

    #@3b
    .line 488
    .local v2, "text":Lorg/w3c/dom/Text;
    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@3e
    goto :goto_1
.end method

.method public charactersRaw([CII)V
    .locals 4
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
    .line 505
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 506
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    #@9
    move-result v1

    #@a
    .line 505
    if-eqz v1, :cond_0

    #@c
    .line 507
    return-void

    #@d
    .line 510
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@f
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@12
    .line 512
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@14
    const-string/jumbo v2, "xslt-next-is-raw"

    #@17
    .line 513
    const-string/jumbo v3, "formatter-to-dom"

    #@1a
    .line 512
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@21
    .line 514
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@23
    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@2a
    .line 503
    return-void
.end method

.method public comment([CII)V
    .locals 2
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
    .line 633
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@2
    new-instance v1, Ljava/lang/String;

    #@4
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@7
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@e
    .line 631
    return-void
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
    .line 657
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    #@3
    .line 655
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
    .line 721
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
    .line 289
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    .line 429
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@7
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@10
    .line 426
    return-void

    #@11
    .line 429
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@13
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lorg/w3c/dom/Node;

    #@19
    goto :goto_0
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
    .line 544
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
    .line 777
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@2
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@9
    .line 551
    return-void
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getRootDocument()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@9
    goto :goto_0
.end method

.method public getRootNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
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
    .line 581
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 582
    return-void

    #@7
    .line 584
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@9
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@c
    .line 586
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@e
    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@15
    .line 579
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@9
    .line 615
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 261
    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "elem"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    .line 438
    return-void
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "nextSibling"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    #@2
    .line 145
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
    .line 794
    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    #@3
    .line 647
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@5
    const-string/jumbo v1, ""

    #@8
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@f
    .line 644
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
    .line 710
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
    .line 274
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "ns"    # Ljava/lang/String;
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
    const/4 v10, 0x0

    #@1
    .line 327
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v9

    #@7
    if-nez v9, :cond_5

    #@9
    .line 328
    :cond_0
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@b
    invoke-interface {v9, v10, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@e
    move-result-object v4

    #@f
    .line 332
    .local v4, "elem":Lorg/w3c/dom/Element;
    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    #@12
    .line 336
    :try_start_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@15
    move-result v6

    #@16
    .line 338
    .local v6, "nAtts":I
    if-eqz v6, :cond_6

    #@18
    .line 340
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_6

    #@1b
    .line 345
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    const-string/jumbo v10, "ID"

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_1

    #@28
    .line 346
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-virtual {p0, v9, v4}, Lorg/apache/xml/utils/DOMBuilder;->setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    #@2f
    .line 348
    :cond_1
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 350
    .local v0, "attrNS":Ljava/lang/String;
    const-string/jumbo v9, ""

    #@36
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_2

    #@3c
    .line 351
    const/4 v0, 0x0

    #@3d
    .line 356
    .end local v0    # "attrNS":Ljava/lang/String;
    :cond_2
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 360
    .local v1, "attrQName":Ljava/lang/String;
    const-string/jumbo v9, "xmlns:"

    #@44
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@47
    move-result v9

    #@48
    if-nez v9, :cond_3

    #@4a
    const-string/jumbo v9, "xmlns"

    #@4d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_4

    #@53
    .line 361
    :cond_3
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@56
    .line 365
    :cond_4
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    invoke-interface {v4, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 340
    add-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 330
    .end local v1    # "attrQName":Ljava/lang/String;
    .end local v4    # "elem":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    .end local v6    # "nAtts":I
    :cond_5
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    #@62
    invoke-interface {v9, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@65
    move-result-object v4

    #@66
    .restart local v4    # "elem":Lorg/w3c/dom/Element;
    goto :goto_0

    #@67
    .line 372
    .restart local v6    # "nAtts":I
    :cond_6
    :try_start_1
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@69
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@6c
    move-result v7

    #@6d
    .line 376
    .local v7, "nDecls":I
    const/4 v5, 0x0

    #@6e
    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v7, :cond_8

    #@70
    .line 378
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@72
    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@75
    move-result-object v8

    #@76
    check-cast v8, Ljava/lang/String;

    #@78
    .line 380
    .local v8, "prefix":Ljava/lang/String;
    if-nez v8, :cond_7

    #@7a
    .line 376
    :goto_3
    add-int/lit8 v5, v5, 0x2

    #@7c
    goto :goto_2

    #@7d
    .line 383
    :cond_7
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@7f
    add-int/lit8 v10, v5, 0x1

    #@81
    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@84
    move-result-object v3

    #@85
    check-cast v3, Ljava/lang/String;

    #@87
    .line 385
    .local v3, "declURL":Ljava/lang/String;
    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    #@8a
    invoke-interface {v4, v9, v8, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@8d
    goto :goto_3

    #@8e
    .line 399
    .end local v3    # "declURL":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "nAtts":I
    .end local v7    # "nDecls":I
    .end local v8    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@8f
    .line 401
    .local v2, "de":Ljava/lang/Exception;
    new-instance v9, Lorg/xml/sax/SAXException;

    #@91
    invoke-direct {v9, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@94
    throw v9

    #@95
    .line 388
    .end local v2    # "de":Ljava/lang/Exception;
    .restart local v5    # "i":I
    .restart local v6    # "nAtts":I
    .restart local v7    # "nDecls":I
    :cond_8
    :try_start_2
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@97
    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    #@9a
    .line 392
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    #@9c
    invoke-virtual {v9, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    .line 394
    iput-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@a1
    .line 320
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
    .line 531
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 758
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 759
    :cond_0
    const-string/jumbo p1, "xmlns"

    #@e
    .line 761
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@13
    .line 762
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    #@15
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@18
    .line 756
    return-void

    #@19
    .line 760
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "xmlns:"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object p1

    #@2d
    goto :goto_0
.end method

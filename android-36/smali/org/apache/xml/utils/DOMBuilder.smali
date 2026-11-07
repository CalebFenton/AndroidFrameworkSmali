.class public Lorg/apache/xml/utils/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field protected greylist m_currentNode:Lorg/w3c/dom/Node;

.field public greylist m_doc:Lorg/w3c/dom/Document;

.field public greylist m_docFrag:Lorg/w3c/dom/DocumentFragment;

.field protected greylist m_elemStack:Ljava/util/Stack;

.field protected greylist m_inCData:Z

.field protected greylist m_nextSibling:Lorg/w3c/dom/Node;

.field protected greylist m_prefixMappings:Ljava/util/Vector;

.field protected greylist m_root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor greylist <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 108
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 96
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 97
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 80
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 81
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 83
    instance-of p1, p2, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2c

    .line 84
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-void
.end method

.method private greylist isOutsideDocElem()Z
    .registers 2

    .line 596
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz p0, :cond_18

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected greylist append(Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_14

    .line 182
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_10

    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p0, :cond_10

    .line 183
    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 185
    :cond_10
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 189
    :cond_14
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_24

    .line 191
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz p0, :cond_20

    .line 192
    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/DocumentFragment;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 194
    :cond_20
    invoke-interface {v0, p1}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 199
    :cond_24
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4a

    .line 203
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_3d

    goto :goto_49

    .line 207
    :cond_3d
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_OUTPUT_TEXT_BEFORE_DOC"

    .line 208
    invoke-static {p1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    return-void

    :cond_4a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 216
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_56

    goto :goto_62

    .line 220
    :cond_56
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_HAVE_MORE_THAN_ONE_ROOT"

    .line 221
    invoke-static {p1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_62
    :goto_62
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_6c

    .line 229
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Document;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 231
    :cond_6c
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public greylist cdata([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 685
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 686
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 689
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 691
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/CDATASection;

    .line 692
    invoke-interface {p0, v0}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 470
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 473
    :cond_d
    iget-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    if-eqz v0, :cond_15

    .line 475
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/utils/DOMBuilder;->cdata([CII)V

    return-void

    .line 480
    :cond_15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 482
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    if-eqz p1, :cond_33

    .line 483
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_33

    .line 484
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    return-void

    .line 487
    :cond_33
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 488
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public greylist charactersRaw([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 505
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 506
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 510
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 512
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string p2, "xslt-next-is-raw"

    const-string p3, "formatter-to-dom"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 514
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 657
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

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

    .line 0
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 428
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 429
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_17

    :cond_f
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    :goto_17
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

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

.method public greylist entityReference(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public greylist getCurrentNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 136
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public greylist getNextSibling()Lorg/w3c/dom/Node;
    .registers 1

    .line 157
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public greylist getRootDocument()Lorg/w3c/dom/Node;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public greylist getRootNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 126
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 584
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 586
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist setNextSibling(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-void
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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 647
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

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

    .line 0
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_11

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_11

    .line 330
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_17

    .line 328
    :cond_11
    :goto_11
    iget-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 332
    :goto_17
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 336
    :try_start_1a
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_95

    .line 338
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const/4 v1, 0x0

    if-eqz p3, :cond_65

    move v2, v1

    :goto_24
    if-ge v2, p3, :cond_65

    .line 345
    :try_start_26
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 346
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/apache/xml/utils/DOMBuilder;->setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 348
    :cond_39
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    move-object v3, p2

    .line 356
    :cond_46
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    :cond_5a
    move-object v3, v0

    .line 365
    :cond_5b
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 372
    :cond_65
    iget-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    :goto_6b
    if-ge v1, p2, :cond_88

    .line 378
    iget-object p3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_78

    goto :goto_85

    .line 383
    :cond_78
    iget-object p4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 385
    invoke-interface {p1, v0, p3, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_85
    add-int/lit8 v1, v1, 0x2

    goto :goto_6b

    .line 388
    :cond_88
    iget-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 392
    iget-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception p0

    .line 401
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 758
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1d

    .line 760
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    .line 759
    :cond_1d
    :goto_1d
    const-string p1, "xmlns"

    .line 761
    :goto_1f
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 762
    iget-object p0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

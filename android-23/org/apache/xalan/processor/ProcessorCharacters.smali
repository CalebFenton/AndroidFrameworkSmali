.class public Lorg/apache/xalan/processor/ProcessorCharacters;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorCharacters.java"


# static fields
.field static final serialVersionUID:J = 0x77ce38d16b3ae8daL


# instance fields
.field private m_accumulator:Ljava/lang/StringBuffer;

.field protected m_firstBackPointer:Lorg/w3c/dom/Node;

.field private m_xslTextElement:Lorg/apache/xalan/templates/ElemText;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    .line 94
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    #@6
    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    #@d
    .line 37
    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "ch"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@5
    .line 116
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 117
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    #@f
    .line 120
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@12
    move-result-object v0

    #@13
    if-eq p0, v0, :cond_1

    #@15
    .line 121
    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    #@18
    .line 111
    :cond_1
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorCharacters;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    #@3
    .line 151
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 153
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@d
    .line 144
    return-void
.end method

.method setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V
    .locals 0
    .param p1, "xslTextElement"    # Lorg/apache/xalan/templates/ElemText;

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    #@2
    .line 175
    return-void
.end method

.method public startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V
    .locals 9
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 49
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@5
    move-result-object v6

    #@6
    if-ne p0, v6, :cond_0

    #@8
    .line 51
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@b
    .line 54
    :cond_0
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    #@d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@10
    move-result v3

    #@11
    .line 56
    .local v3, "nChars":I
    if-lez v3, :cond_1

    #@13
    .line 57
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    #@15
    if-nez v6, :cond_2

    #@17
    .line 58
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    #@19
    invoke-static {v6}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/StringBuffer;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 59
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->isSpacePreserve()Z

    #@22
    move-result v6

    #@23
    .line 56
    if-eqz v6, :cond_3

    #@25
    .line 61
    :cond_2
    new-instance v2, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@27
    invoke-direct {v2}, Lorg/apache/xalan/templates/ElemTextLiteral;-><init>()V

    #@2a
    .line 63
    .local v2, "elem":Lorg/apache/xalan/templates/ElemTextLiteral;
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    #@2c
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/ElemTextLiteral;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    #@2f
    .line 64
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/ElemTextLiteral;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@36
    .line 67
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/ElemTextLiteral;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 74
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    #@3f
    if-eqz v6, :cond_4

    #@41
    .line 75
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    #@43
    invoke-virtual {v6}, Lorg/apache/xalan/templates/ElemText;->getDisableOutputEscaping()Z

    #@46
    move-result v1

    #@47
    .line 77
    :goto_0
    invoke-virtual {v2, v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->setDisableOutputEscaping(Z)V

    #@4a
    .line 78
    const/4 v6, 0x1

    #@4b
    invoke-virtual {v2, v6}, Lorg/apache/xalan/templates/ElemTextLiteral;->setPreserveSpace(Z)V

    #@4e
    .line 80
    new-array v0, v3, [C

    #@50
    .line 82
    .local v0, "chars":[C
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    #@52
    invoke-virtual {v6, v7, v3, v0, v7}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    #@55
    .line 83
    invoke-virtual {v2, v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->setChars([C)V

    #@58
    .line 85
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5b
    move-result-object v4

    #@5c
    .line 87
    .local v4, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5f
    .line 90
    .end local v0    # "chars":[C
    .end local v2    # "elem":Lorg/apache/xalan/templates/ElemTextLiteral;
    .end local v4    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    iget-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    #@64
    .line 91
    iput-object v8, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    #@66
    .line 47
    return-void

    #@67
    .line 70
    .restart local v2    # "elem":Lorg/apache/xalan/templates/ElemTextLiteral;
    :catch_0
    move-exception v5

    #@68
    .line 71
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@6a
    invoke-direct {v6, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@6d
    throw v6

    #@6e
    .line 75
    .end local v5    # "te":Ljavax/xml/transform/TransformerException;
    :cond_4
    const/4 v1, 0x0

    #@6f
    .local v1, "doe":Z
    goto :goto_0
.end method

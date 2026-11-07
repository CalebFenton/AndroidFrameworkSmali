.class public Lorg/apache/xalan/processor/ProcessorCharacters;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorCharacters.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x77ce38d16b3ae8daL


# instance fields
.field private greylist m_accumulator:Ljava/lang/StringBuffer;

.field protected greylist m_firstBackPointer:Lorg/w3c/dom/Node;

.field private greylist m_xslTextElement:Lorg/apache/xalan/templates/ElemText;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public greylist characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 116
    iget-object p2, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    if-nez p2, :cond_f

    .line 117
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    .line 120
    :cond_f
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object p2

    if-eq p0, p2, :cond_18

    .line 121
    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    :cond_18
    return-void
.end method

.method public greylist endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorCharacters;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 151
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-void
.end method

.method greylist setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    return-void
.end method

.method public greylist startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    if-ne p0, v0, :cond_9

    .line 51
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 54
    :cond_9
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    .line 56
    iget-object v2, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    if-nez v2, :cond_24

    iget-object v2, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    .line 58
    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/StringBuffer;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 59
    :cond_1e
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->isSpacePreserve()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 61
    :cond_24
    new-instance v2, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-direct {v2}, Lorg/apache/xalan/templates/ElemTextLiteral;-><init>()V

    .line 63
    iget-object v3, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 64
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 67
    :try_start_35
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_3c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_35 .. :try_end_3c} :catch_5f

    .line 74
    iget-object v3, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    if-eqz v3, :cond_45

    .line 75
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemText;->getDisableOutputEscaping()Z

    move-result v3

    goto :goto_46

    :cond_45
    move v3, v1

    .line 77
    :goto_46
    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/ElemTextLiteral;->setDisableOutputEscaping(Z)V

    const/4 v3, 0x1

    .line 78
    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/ElemTextLiteral;->setPreserveSpace(Z)V

    .line 80
    new-array v3, v0, [C

    .line 82
    iget-object v4, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 83
    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/ElemTextLiteral;->setChars([C)V

    .line 85
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_66

    :catch_5f
    move-exception p0

    .line 71
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 90
    :cond_66
    :goto_66
    iget-object p1, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    return-void
.end method

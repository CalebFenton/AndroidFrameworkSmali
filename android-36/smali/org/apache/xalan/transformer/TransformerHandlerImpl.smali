.class public Lorg/apache/xalan/transformer/TransformerHandlerImpl;
.super Ljava/lang/Object;
.source "TransformerHandlerImpl.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# static fields
.field private static greylist DEBUG:Z = false


# instance fields
.field private greylist m_baseSystemID:Ljava/lang/String;

.field private greylist m_contentHandler:Lorg/xml/sax/ContentHandler;

.field private greylist m_declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private greylist m_dtdHandler:Lorg/xml/sax/DTDHandler;

.field greylist m_dtm:Lorg/apache/xml/dtm/DTM;

.field private greylist m_entityResolver:Lorg/xml/sax/EntityResolver;

.field private greylist m_errorHandler:Lorg/xml/sax/ErrorHandler;

.field private final greylist m_incremental:Z

.field private greylist m_insideParse:Z

.field private greylist m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private greylist m_locator:Lorg/xml/sax/Locator;

.field private final greylist m_optimizer:Z

.field private greylist m_result:Ljavax/xml/transform/Result;

.field private final greylist m_source_location:Z

.field private greylist m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V
    .registers 10

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 75
    iput-boolean p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    const/4 p2, 0x0

    .line 1055
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    .line 1058
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    .line 1061
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 1064
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 1067
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 1070
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 1073
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 1076
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 94
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 95
    iput-object p3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, p1

    .line 98
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 100
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 101
    invoke-interface {p1, p3}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    .line 103
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 104
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 105
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 106
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 107
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 108
    invoke-virtual {v3}, Lorg/apache/xalan/transformer/TransformerImpl;->getIncremental()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    .line 109
    invoke-virtual {v3}, Lorg/apache/xalan/transformer/TransformerImpl;->getOptimize()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_optimizer:Z

    .line 110
    invoke-virtual {v3}, Lorg/apache/xalan/transformer/TransformerImpl;->getSource_location()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_source_location:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 972
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 973
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#attributeDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", etc..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    :cond_27
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_2e

    .line 978
    invoke-interface/range {p0 .. p5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 541
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 542
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_29

    .line 547
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_29
    return-void
.end method

.method protected greylist clearCoRoutine()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine(Lorg/xml/sax/SAXException;)V

    return-void
.end method

.method protected greylist clearCoRoutine(Lorg/xml/sax/SAXException;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 127
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExceptionThrown(Ljava/lang/Exception;)V

    .line 129
    :cond_7
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    instance-of p1, p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz p1, :cond_49

    .line 131
    sget-boolean p1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz p1, :cond_18

    .line 132
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "In clearCoRoutine..."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_18
    :try_start_18
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    check-cast p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    .line 136
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2a

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_2a

    .line 139
    check-cast v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->deliverMoreNodes(Z)Ljava/lang/Object;

    :cond_2a
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 147
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 148
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 149
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 150
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :goto_3e
    sget-boolean p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz p0, :cond_49

    .line 158
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "...exiting clearCoRoutine"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 908
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 909
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 912
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_29

    .line 914
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_29
    return-void
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 938
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 939
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#elementDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_29

    .line 944
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 884
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 885
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 887
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_12

    .line 889
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_12
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 791
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 792
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDTD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 794
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_12

    .line 796
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_12
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 391
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDocument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    .line 396
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_15

    .line 398
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 401
    :cond_15
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v0, :cond_1f

    .line 403
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->waitTransformThread()V

    return-void

    .line 407
    :cond_1f
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    .line 408
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->run()V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 519
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_21

    .line 524
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 844
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 845
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_21

    .line 849
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 468
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 469
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_21

    .line 474
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 672
    instance-of v1, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_17

    .line 674
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 675
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_26

    .line 676
    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    return-void

    .line 682
    :cond_17
    :try_start_17
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    .line 683
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_26

    .line 684
    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17 .. :try_end_26} :catch_27

    :cond_26
    return-void

    .line 688
    :catch_27
    throw p1
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1028
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1029
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#externalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1032
    :cond_28
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_2f

    .line 1034
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_7

    .line 707
    :try_start_4
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_7} :catch_7

    .line 720
    :catch_7
    :cond_7
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 722
    instance-of v1, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_1e

    .line 724
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 725
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_2d

    .line 726
    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_2d

    .line 732
    :cond_1e
    :try_start_1e
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 733
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_2d

    .line 734
    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_2d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1e .. :try_end_2d} :catch_2e

    :cond_2d
    :goto_2d
    return-void

    .line 738
    :catch_2e
    throw p1
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 226
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 565
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 566
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#ignorableWhitespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_29

    .line 571
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_29
    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 999
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#internalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_29

    .line 1005
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 280
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_7

    .line 282
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 588
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 589
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#processingInstruction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_29

    .line 594
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public whitelist test-api resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz p0, :cond_9

    .line 254
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 5

    .line 321
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#setDocumentLocator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    :cond_1e
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    .line 327
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 329
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->setSystemId(Ljava/lang/String;)V

    .line 332
    :cond_2b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_32

    .line 334
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_32
    return-void
.end method

.method public whitelist test-api setResult(Ljavax/xml/transform/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 185
    :try_start_3
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 186
    invoke-virtual {v1, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    :try_end_e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_e} :catch_11

    .line 194
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    return-void

    .line 191
    :catch_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_RESULT_COULD_NOT_BE_SET"

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_RESULT_NULL"

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    .line 205
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 609
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 610
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#skippedEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_21

    .line 614
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 866
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 867
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#startCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_12

    .line 871
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_12
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 772
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 773
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startDTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    :cond_28
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_2f

    .line 778
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 348
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#startDocument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    .line 355
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_33

    .line 358
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v0, :cond_2e

    .line 360
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 366
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->runTransformThread(I)V

    .line 373
    :cond_2e
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_33
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 495
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 496
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_21

    .line 500
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_21
    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 825
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 826
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_21

    .line 830
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 447
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    :cond_22
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_29

    .line 453
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 302
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_7

    .line 304
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 636
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 637
    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_10

    .line 639
    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    return-void

    .line 645
    :cond_10
    :try_start_10
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_18} :catch_19

    return-void

    .line 649
    :catch_19
    throw p1
.end method

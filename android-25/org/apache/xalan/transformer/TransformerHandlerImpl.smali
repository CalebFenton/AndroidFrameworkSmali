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
.field private static DEBUG:Z


# instance fields
.field private m_baseSystemID:Ljava/lang/String;

.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field private m_declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_dtdHandler:Lorg/xml/sax/DTDHandler;

.field m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_entityResolver:Lorg/xml/sax/EntityResolver;

.field private m_errorHandler:Lorg/xml/sax/ErrorHandler;

.field private final m_incremental:Z

.field private m_insideParse:Z

.field private m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_locator:Lorg/xml/sax/Locator;

.field private final m_optimizer:Z

.field private m_result:Ljavax/xml/transform/Result;

.field private final m_source_location:Z

.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1043
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V
    .locals 7
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "doFragment"    # Z
    .param p3, "baseSystemID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    const/4 v3, 0x0

    #@6
    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    #@8
    .line 1055
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    #@a
    .line 1058
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    #@c
    .line 1061
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    #@e
    .line 1064
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@10
    .line 1067
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    .line 1070
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@14
    .line 1073
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@16
    .line 1076
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@18
    .line 94
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@1a
    .line 95
    iput-object p3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    #@1c
    .line 97
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@1f
    move-result-object v0

    #@20
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    move-object v3, p1

    #@21
    move v4, v2

    #@22
    move v5, v2

    #@23
    .line 98
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@26
    move-result-object v6

    #@27
    .line 100
    .local v6, "dtm":Lorg/apache/xml/dtm/DTM;
    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@29
    .line 101
    invoke-interface {v6, p3}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    #@2c
    .line 103
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@32
    .line 104
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@38
    .line 105
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    #@3e
    .line 106
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@44
    .line 107
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4a
    .line 108
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getIncremental()Z

    #@4d
    move-result v1

    #@4e
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    #@50
    .line 109
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getOptimize()Z

    #@53
    move-result v1

    #@54
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_optimizer:Z

    #@56
    .line 110
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSource_location()Z

    #@59
    move-result v1

    #@5a
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_source_location:Z

    #@5c
    .line 89
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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
    .line 972
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 973
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#attributeDecl: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 974
    const-string/jumbo v2, ", "

    #@19
    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 974
    const-string/jumbo v2, ", etc..."

    #@24
    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    .line 976
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 978
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@35
    move-object v1, p1

    #@36
    move-object v2, p2

    #@37
    move-object v3, p3

    #@38
    move-object v4, p4

    #@39
    move-object v5, p5

    #@3a
    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    .line 969
    :cond_1
    return-void
.end method

.method public characters([CII)V
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
    .line 541
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 542
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#characters: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 545
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 547
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2e
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@31
    .line 538
    :cond_1
    return-void
.end method

.method protected clearCoRoutine()V
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine(Lorg/xml/sax/SAXException;)V

    #@4
    .line 116
    return-void
.end method

.method protected clearCoRoutine(Lorg/xml/sax/SAXException;)V
    .locals 5
    .param p1, "ex"    # Lorg/xml/sax/SAXException;

    #@0
    .prologue
    .line 126
    if-eqz p1, :cond_0

    #@2
    .line 127
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@4
    invoke-virtual {v3, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExceptionThrown(Ljava/lang/Exception;)V

    #@7
    .line 129
    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@9
    instance-of v3, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    #@b
    if-eqz v3, :cond_3

    #@d
    .line 131
    sget-boolean v3, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 132
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    const-string/jumbo v4, "In clearCoRoutine..."

    #@16
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 135
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@1b
    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    #@1d
    .line 136
    .local v0, "sax2dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 137
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    instance-of v3, v3, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@25
    .line 136
    if-eqz v3, :cond_2

    #@27
    .line 140
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@29
    check-cast v1, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@2b
    .line 142
    .local v1, "sp":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    const/4 v3, 0x0

    #@2c
    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->deliverMoreNodes(Z)Ljava/lang/Object;

    #@2f
    .line 145
    .end local v1    # "sp":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    :cond_2
    const/4 v3, 0x1

    #@30
    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    #@33
    .line 146
    const/4 v3, 0x0

    #@34
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@36
    .line 147
    const/4 v3, 0x0

    #@37
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@39
    .line 148
    const/4 v3, 0x0

    #@3a
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    #@3c
    .line 149
    const/4 v3, 0x0

    #@3d
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@3f
    .line 150
    const/4 v3, 0x0

    #@40
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 157
    .end local v0    # "sax2dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    :goto_0
    sget-boolean v3, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 158
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    const-string/jumbo v4, "...exiting clearCoRoutine"

    #@4b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 124
    :cond_3
    return-void

    #@4f
    .line 153
    :catch_0
    move-exception v2

    #@50
    .line 154
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@53
    goto :goto_0
.end method

.method public comment([CII)V
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
    .line 908
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 909
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#comment: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 912
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 914
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2e
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@31
    .line 905
    :cond_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 938
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 939
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#elementDecl: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 942
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 944
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2e
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 935
    :cond_1
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 884
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 885
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    const-string/jumbo v1, "TransformerHandlerImpl#endCDATA"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 887
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 889
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@12
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@15
    .line 881
    :cond_1
    return-void
.end method

.method public endDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 791
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 792
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    const-string/jumbo v1, "TransformerHandlerImpl#endDTD"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 794
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 796
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@12
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@15
    .line 788
    :cond_1
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    const-string/jumbo v1, "TransformerHandlerImpl#endDocument"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 394
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    #@f
    .line 396
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 398
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@15
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@18
    .line 401
    :cond_1
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 403
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@1e
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->waitTransformThread()V

    #@21
    .line 388
    :goto_0
    return-void

    #@22
    .line 407
    :cond_2
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@24
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@26
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    #@2d
    .line 408
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2f
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->run()V

    #@32
    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#endElement: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 522
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 524
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 516
    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 844
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 845
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#endEntity: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 847
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 849
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@23
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@26
    .line 841
    :cond_1
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 469
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#endPrefixMapping: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 472
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 474
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@26
    .line 465
    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 671
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v0

    #@6
    .line 672
    .local v0, "errorListener":Ljavax/xml/transform/ErrorListener;
    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 674
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    #@c
    .end local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@f
    .line 675
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 676
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@15
    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@18
    .line 662
    :cond_0
    :goto_0
    return-void

    #@19
    .line 682
    .restart local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    :cond_1
    :try_start_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@1b
    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@1e
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    #@21
    .line 683
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 684
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@27
    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    goto :goto_0

    #@2b
    .line 687
    :catch_0
    move-exception v1

    #@2c
    .line 688
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .line 1028
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1029
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#externalEntityDecl: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1030
    const-string/jumbo v2, ", "

    #@19
    .line 1029
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1030
    const-string/jumbo v2, ", "

    #@24
    .line 1029
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 1032
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 1034
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@39
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 1025
    :cond_1
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 707
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-interface {v3, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    .line 720
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@b
    invoke-virtual {v3}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@e
    move-result-object v0

    #@f
    .line 722
    .local v0, "errorListener":Ljavax/xml/transform/ErrorListener;
    instance-of v3, v0, Lorg/xml/sax/ErrorHandler;

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 724
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    #@15
    .end local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@18
    .line 725
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 726
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@1e
    invoke-interface {v3, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@21
    .line 701
    :cond_1
    :goto_1
    return-void

    #@22
    .line 732
    .restart local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    :cond_2
    :try_start_1
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@24
    invoke-direct {v3, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@27
    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@2a
    .line 733
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 734
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    #@30
    invoke-interface {v3, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    goto :goto_1

    #@34
    .line 737
    :catch_0
    move-exception v2

    #@35
    .line 738
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    throw p1

    #@36
    .line 710
    .end local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    .end local v2    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v1

    #@37
    .local v1, "se":Lorg/xml/sax/SAXParseException;
    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
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
    .line 565
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 566
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#ignorableWhitespace: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 567
    const-string/jumbo v2, ", "

    #@19
    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 569
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 571
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2e
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@31
    .line 562
    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 999
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#internalEntityDecl: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1001
    const-string/jumbo v2, ", "

    #@19
    .line 1000
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 1003
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    #@2e
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 996
    :cond_1
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 280
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 282
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 277
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 588
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 589
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#processingInstruction: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 590
    const-string/jumbo v2, ", "

    #@19
    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 592
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 594
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2e
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 585
    :cond_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 254
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    #@7
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 258
    :cond_0
    return-object v1
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 3
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 321
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#setDocumentLocator: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 323
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 325
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    #@23
    .line 327
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    #@25
    if-nez v0, :cond_1

    #@27
    .line 329
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->setSystemId(Ljava/lang/String;)V

    #@2e
    .line 332
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 334
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@34
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@37
    .line 318
    :cond_2
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 5
    .param p1, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 177
    if-nez p1, :cond_0

    #@3
    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "ER_RESULT_NULL"

    #@8
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 186
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@12
    invoke-virtual {v2, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    #@15
    move-result-object v1

    #@16
    .line 187
    .local v1, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@18
    invoke-virtual {v2, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 194
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    #@1d
    .line 174
    return-void

    #@1e
    .line 190
    .end local v1    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v0

    #@1f
    .line 191
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v3, "ER_RESULT_COULD_NOT_BE_SET"

    #@24
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    #@2
    .line 205
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    #@7
    .line 202
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 609
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 610
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#skippedEntity: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 612
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 614
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    #@26
    .line 606
    :cond_1
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
    .line 866
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 867
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    const-string/jumbo v1, "TransformerHandlerImpl#startCDATA"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 869
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 871
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@12
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@15
    .line 863
    :cond_1
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .line 772
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 773
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#startDTD: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 774
    const-string/jumbo v2, ", "

    #@24
    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 776
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 778
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@39
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 769
    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    sget-boolean v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 349
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    const-string/jumbo v2, "TransformerHandlerImpl#startDocument"

    #@9
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 351
    :cond_0
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    #@f
    .line 355
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 358
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 360
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@19
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@1b
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    #@22
    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    #@29
    move-result v0

    #@2a
    .line 366
    .local v0, "cpriority":I
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2c
    invoke-virtual {v1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->runTransformThread(I)V

    #@2f
    .line 373
    .end local v0    # "cpriority":I
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@31
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@34
    .line 345
    :cond_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
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
    .line 495
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 496
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#startElement: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 498
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 500
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@26
    .line 492
    :cond_1
    return-void
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
    .line 825
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 826
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#startEntity: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 828
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 830
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@23
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@26
    .line 822
    :cond_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "TransformerHandlerImpl#startPrefixMapping: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 449
    const-string/jumbo v2, ", "

    #@19
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 451
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 453
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2e
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 444
    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 304
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 299
    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v0

    #@6
    .line 637
    .local v0, "errorListener":Ljavax/xml/transform/ErrorListener;
    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 639
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    #@c
    .end local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    #@f
    .line 630
    :goto_0
    return-void

    #@10
    .line 645
    .restart local v0    # "errorListener":Ljavax/xml/transform/ErrorListener;
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@12
    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@15
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    goto :goto_0

    #@19
    .line 648
    :catch_0
    move-exception v1

    #@1a
    .line 649
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    throw p1
.end method

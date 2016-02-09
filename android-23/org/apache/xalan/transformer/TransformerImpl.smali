.class public Lorg/apache/xalan/transformer/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/xml/dtm/DTMWSFilter;
.implements Lorg/apache/xpath/ExtensionsProvider;
.implements Lorg/apache/xml/serializer/SerializerTrace;


# instance fields
.field m_attrSetStack:Ljava/util/Stack;

.field m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

.field m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

.field m_currentMatchTemplates:Ljava/util/Stack;

.field m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

.field m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

.field m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

.field private m_doc:I

.field private m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_exceptionThrown:Ljava/lang/Exception;

.field private m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

.field private m_hasBeenReset:Z

.field private m_hasTransformThreadErrorCatcher:Z

.field private m_incremental:Z

.field m_inputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

.field private m_modes:Ljava/util/Stack;

.field private m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

.field private m_optimizer:Z

.field private m_outputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_outputTarget:Ljavax/xml/transform/Result;

.field private m_quietConflictWarnings:Z

.field private m_reentryGuard:Ljava/lang/Boolean;

.field private m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_shouldReset:Z

.field private m_source_location:Z

.field private m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_textformat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_transformThread:Ljava/lang/Thread;

.field private m_urlOfSource:Ljava/lang/String;

.field m_userParams:Ljava/util/Vector;

.field private m_xcontext:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 6
    .param p1, "stylesheet"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 335
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    #@6
    .line 112
    new-instance v1, Ljava/lang/Boolean;

    #@8
    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    #@b
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@d
    .line 117
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@f
    .line 123
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    #@11
    .line 126
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    #@13
    .line 142
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    #@15
    .line 156
    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    #@17
    const-class v2, Lorg/apache/xml/serializer/ToTextStream;

    #@19
    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    #@1c
    .line 155
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@1e
    .line 164
    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    #@20
    const-class v2, Ljava/io/StringWriter;

    #@22
    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    #@25
    .line 163
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@27
    .line 170
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    #@29
    const-string/jumbo v2, "text"

    #@2c
    invoke-direct {v1, v2}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@2f
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    #@31
    .line 192
    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    #@33
    const/16 v2, 0x1000

    #@35
    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    #@38
    .line 191
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@3a
    .line 204
    new-instance v1, Ljava/util/Stack;

    #@3c
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@3f
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    #@41
    .line 214
    new-instance v1, Lorg/apache/xml/utils/NodeVector;

    #@43
    invoke-direct {v1}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@46
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    #@48
    .line 219
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@4a
    .line 225
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    #@4c
    .line 240
    new-instance v1, Lorg/apache/xalan/transformer/KeyManager;

    #@4e
    invoke-direct {v1}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    #@51
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    #@53
    .line 246
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@55
    .line 251
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    #@57
    .line 256
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    #@59
    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    #@5c
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    #@5e
    .line 263
    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    #@60
    invoke-direct {v1}, Lorg/apache/xml/utils/ObjectStack;-><init>()V

    #@63
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    #@65
    .line 277
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    #@67
    .line 285
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    #@69
    .line 293
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    #@6b
    .line 299
    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@6d
    invoke-direct {v1, v4}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    #@70
    .line 298
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@72
    .line 306
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    #@74
    .line 316
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    #@76
    .line 319
    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    #@78
    .line 324
    new-instance v1, Ljava/util/Stack;

    #@7a
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@7d
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    #@7f
    .line 360
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    #@81
    .line 505
    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@83
    .line 338
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    #@86
    move-result v1

    #@87
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    #@89
    .line 339
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getIncremental()Z

    #@8c
    move-result v1

    #@8d
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    #@8f
    .line 340
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getSource_location()Z

    #@92
    move-result v1

    #@93
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    #@95
    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@98
    .line 342
    new-instance v0, Lorg/apache/xpath/XPathContext;

    #@9a
    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;)V

    #@9d
    .line 343
    .local v0, "xPath":Lorg/apache/xpath/XPathContext;
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    #@9f
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setIncremental(Z)V

    #@a2
    .line 344
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@a5
    move-result-object v1

    #@a6
    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    #@a8
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setIncremental(Z)V

    #@ab
    .line 345
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    #@ad
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSource_location(Z)V

    #@b0
    .line 346
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@b3
    move-result-object v1

    #@b4
    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    #@b6
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setSource_location(Z)V

    #@b9
    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    #@bc
    move-result v1

    #@bd
    if-eqz v1, :cond_0

    #@bf
    .line 349
    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->setSecureProcessing(Z)V

    #@c2
    .line 351
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setXPathContext(Lorg/apache/xpath/XPathContext;)V

    #@c5
    .line 352
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@cc
    .line 335
    return-void
.end method

.method private fatalError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 687
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@6
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    #@e
    check-cast p1, Lorg/xml/sax/SAXParseException;

    #@10
    .end local p1    # "throwable":Ljava/lang/Throwable;
    invoke-direct {v3, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    #@13
    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@16
    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@19
    .line 684
    :goto_0
    return-void

    #@1a
    .line 689
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@1c
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@1e
    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@21
    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@24
    goto :goto_0
.end method

.method private replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .locals 6
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;
    .param p2, "xval"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1464
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@6
    move-result v2

    #@7
    .line 1466
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 1468
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lorg/apache/xpath/Arg;

    #@13
    .line 1470
    .local v0, "arg":Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1472
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@1f
    new-instance v4, Lorg/apache/xpath/Arg;

    #@21
    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    #@24
    invoke-virtual {v3, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@27
    .line 1474
    return-void

    #@28
    .line 1466
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1478
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@2d
    new-instance v4, Lorg/apache/xpath/Arg;

    #@2f
    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    #@32
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    .line 1461
    return-void
.end method

.method private resetUserParameters()V
    .locals 8

    #@0
    .prologue
    .line 1540
    :try_start_0
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@2
    if-nez v7, :cond_0

    #@4
    .line 1541
    return-void

    #@5
    .line 1543
    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@7
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    #@a
    move-result v2

    #@b
    .line 1544
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@f
    .line 1546
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@11
    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lorg/apache/xpath/Arg;

    #@17
    .line 1547
    .local v0, "arg":Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    #@1a
    move-result-object v3

    #@1b
    .line 1550
    .local v3, "name":Lorg/apache/xml/utils/QName;
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 1551
    .local v5, "s1":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    .line 1553
    .local v6, "s2":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {p0, v6, v5, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 1544
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_0

    #@31
    .line 1559
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "name":Lorg/apache/xml/utils/QName;
    .end local v5    # "s1":Ljava/lang/String;
    .end local v6    # "s2":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@32
    .line 1534
    :cond_1
    return-void
.end method

.method public static runTransformThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2955
    const/4 v0, -0x1

    #@1
    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    #@4
    .line 2953
    return-void
.end method

.method private transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I
    .locals 8
    .param p1, "templateParent"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "dtmFrag"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1794
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    .line 1796
    .local v6, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@5
    move-result-object v2

    #@6
    .line 1805
    .local v2, "rtfHandler":Lorg/xml/sax/ContentHandler;
    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@8
    .line 1809
    .local v4, "savedRTreeHandler":Lorg/apache/xml/serializer/SerializationHandler;
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    #@a
    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    #@d
    .line 1810
    .local v0, "h":Lorg/apache/xml/serializer/ToSAXHandler;
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@10
    .line 1811
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@13
    .line 1814
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@15
    .line 1817
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@17
    .line 1821
    .local v3, "rth":Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    #@1a
    .line 1826
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 1832
    const/4 v7, 0x1

    #@1e
    :try_start_1
    invoke-virtual {p0, p1, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@21
    .line 1835
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    #@24
    .line 1841
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getDocument()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result v1

    #@28
    .line 1845
    .local v1, "resultFragment":I
    :try_start_2
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2b
    .line 1856
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2d
    .line 1859
    return v1

    #@2e
    .line 1844
    .end local v1    # "resultFragment":I
    :catchall_0
    move-exception v7

    #@2f
    .line 1845
    :try_start_3
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    #@32
    .line 1844
    throw v7
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@33
    .line 1849
    :catch_0
    move-exception v5

    #@34
    .line 1850
    .local v5, "se":Lorg/xml/sax/SAXException;
    :try_start_4
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@36
    invoke-direct {v7, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    .line 1853
    .end local v5    # "se":Lorg/xml/sax/SAXException;
    :catchall_1
    move-exception v7

    #@3b
    .line 1856
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@3d
    .line 1853
    throw v7
.end method


# virtual methods
.method public applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    .locals 22
    .param p1, "xslInstruction"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "template"    # Lorg/apache/xalan/templates/ElemTemplate;
    .param p3, "child"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1965
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@4
    move/from16 v0, p3

    #@6
    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@9
    move-result-object v10

    #@a
    .line 1966
    .local v10, "dtm":Lorg/apache/xml/dtm/DTM;
    move/from16 v0, p3

    #@c
    invoke-interface {v10, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@f
    move-result v20

    #@10
    .line 1967
    .local v20, "nodeType":S
    const/16 v19, 0x0

    #@12
    .line 1968
    .local v19, "isDefaultTextRule":Z
    const/16 v18, 0x0

    #@14
    .line 1970
    .local v18, "isApplyImports":Z
    if-nez p1, :cond_1

    #@16
    .line 1971
    const/16 v18, 0x0

    #@18
    .line 1975
    :goto_0
    if-eqz p2, :cond_0

    #@1a
    if-eqz v18, :cond_6

    #@1c
    .line 1977
    :cond_0
    const/4 v8, 0x0

    #@1d
    .line 1979
    .local v8, "endImportLevel":I
    if-eqz v18, :cond_3

    #@1f
    .line 1982
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    #@26
    move-result v3

    #@27
    add-int/lit8 v7, v3, -0x1

    #@29
    .line 1984
    .local v7, "maxImportLevel":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    #@30
    move-result v8

    #@31
    .line 1997
    :goto_1
    if-eqz v18, :cond_4

    #@33
    const/4 v3, -0x1

    #@34
    if-ne v7, v3, :cond_4

    #@36
    .line 1999
    const/16 p2, 0x0

    #@38
    .line 2030
    .end local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :goto_2
    if-nez p2, :cond_6

    #@3a
    .line 2032
    packed-switch v20, :pswitch_data_0

    #@3d
    .line 2050
    :pswitch_0
    const/4 v3, 0x0

    #@3e
    return v3

    #@3f
    .line 1972
    .end local v7    # "maxImportLevel":I
    .end local v8    # "endImportLevel":I
    .restart local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@42
    move-result v3

    #@43
    .line 1973
    const/16 v5, 0x48

    #@45
    .line 1972
    if-ne v3, v5, :cond_2

    #@47
    const/16 v18, 0x1

    #@49
    goto :goto_0

    #@4a
    :cond_2
    const/16 v18, 0x0

    #@4c
    goto :goto_0

    #@4d
    .line 1988
    .restart local v8    # "endImportLevel":I
    :cond_3
    const/4 v7, -0x1

    #@4e
    .restart local v7    # "maxImportLevel":I
    goto :goto_1

    #@4f
    .line 2006
    :cond_4
    move-object/from16 v0, p0

    #@51
    iget-object v4, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@53
    .line 2010
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@58
    .line 2012
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    #@5b
    move-result-object v6

    #@5c
    .line 2014
    .local v6, "mode":Lorg/apache/xml/utils/QName;
    if-eqz v18, :cond_5

    #@5e
    .line 2015
    move-object/from16 v0, p0

    #@60
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@62
    .line 2016
    move-object/from16 v0, p0

    #@64
    iget-boolean v9, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    #@66
    move/from16 v5, p3

    #@68
    .line 2015
    invoke-virtual/range {v3 .. v10}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    move-result-object p2

    #@6c
    .line 2024
    :goto_3
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@6f
    goto :goto_2

    #@70
    .line 2018
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@72
    iget-object v11, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@74
    .line 2019
    move-object/from16 v0, p0

    #@76
    iget-boolean v15, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    #@78
    move-object v12, v4

    #@79
    move/from16 v13, p3

    #@7b
    move-object v14, v6

    #@7c
    move-object/from16 v16, v10

    #@7e
    .line 2018
    invoke-virtual/range {v11 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@81
    move-result-object p2

    #@82
    goto :goto_3

    #@83
    .line 2023
    .end local v6    # "mode":Lorg/apache/xml/utils/QName;
    :catchall_0
    move-exception v3

    #@84
    .line 2024
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@87
    .line 2023
    throw v3

    #@88
    .line 2036
    .end local v4    # "xctxt":Lorg/apache/xpath/XPathContext;
    .end local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :pswitch_1
    move-object/from16 v0, p0

    #@8a
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@8c
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@8f
    move-result-object p2

    #@90
    .line 2059
    .end local v7    # "maxImportLevel":I
    .end local v8    # "endImportLevel":I
    :cond_6
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    #@92
    move-object/from16 v1, p2

    #@94
    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@97
    .line 2060
    move-object/from16 v0, p0

    #@99
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@9b
    move/from16 v0, p3

    #@9d
    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@a0
    .line 2061
    move-object/from16 v0, p0

    #@a2
    move-object/from16 v1, p2

    #@a4
    move/from16 v2, p3

    #@a6
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    #@a9
    .line 2064
    if-nez v18, :cond_7

    #@ab
    .line 2065
    new-instance v17, Lorg/apache/xpath/NodeSetDTM;

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@b1
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@b4
    move-result-object v3

    #@b5
    move-object/from16 v0, v17

    #@b7
    move/from16 v1, p3

    #@b9
    invoke-direct {v0, v1, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@bc
    .line 2066
    .local v17, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@c0
    move-object/from16 v0, v17

    #@c2
    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c5
    .line 2069
    .end local v17    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :cond_7
    if-eqz v19, :cond_c

    #@c7
    .line 2071
    packed-switch v20, :pswitch_data_1

    #@ca
    .line 2107
    :goto_5
    if-nez v19, :cond_8

    #@cc
    .line 2108
    move-object/from16 v0, p0

    #@ce
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@d0
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v3}, Lorg/apache/xpath/VariableStack;->unlink()V

    #@d7
    .line 2109
    :cond_8
    move-object/from16 v0, p0

    #@d9
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@db
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@de
    .line 2110
    if-nez v18, :cond_9

    #@e0
    .line 2111
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@e4
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@e7
    .line 2113
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    #@ea
    .line 2115
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@ed
    .line 2118
    const/4 v3, 0x1

    #@ee
    return v3

    #@ef
    .line 2041
    .restart local v7    # "maxImportLevel":I
    .restart local v8    # "endImportLevel":I
    :pswitch_2
    move-object/from16 v0, p0

    #@f1
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@f3
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@f6
    move-result-object p2

    #@f7
    .line 2042
    .restart local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    const/16 v19, 0x1

    #@f9
    .line 2043
    goto :goto_4

    #@fa
    .line 2045
    .end local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :pswitch_3
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@fe
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    #@101
    move-result-object p2

    #@102
    .restart local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    goto :goto_4

    #@103
    .line 2076
    .end local v7    # "maxImportLevel":I
    .end local v8    # "endImportLevel":I
    .end local p2    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :pswitch_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@106
    move-result-object v3

    #@107
    const/4 v5, 0x0

    #@108
    .line 2075
    move/from16 v0, p3

    #@10a
    move/from16 v1, v20

    #@10c
    invoke-static {v0, v1, v10, v3, v5}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@10f
    goto :goto_5

    #@110
    .line 2102
    :catch_0
    move-exception v21

    #@111
    .line 2103
    .local v21, "se":Lorg/xml/sax/SAXException;
    :try_start_4
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@113
    move-object/from16 v0, v21

    #@115
    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@118
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@119
    .line 2106
    .end local v21    # "se":Lorg/xml/sax/SAXException;
    :catchall_1
    move-exception v3

    #@11a
    .line 2107
    if-nez v19, :cond_a

    #@11c
    .line 2108
    move-object/from16 v0, p0

    #@11e
    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@120
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@123
    move-result-object v5

    #@124
    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->unlink()V

    #@127
    .line 2109
    :cond_a
    move-object/from16 v0, p0

    #@129
    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@12b
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@12e
    .line 2110
    if-nez v18, :cond_b

    #@130
    .line 2111
    move-object/from16 v0, p0

    #@132
    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@134
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@137
    .line 2113
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    #@13a
    .line 2115
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@13d
    .line 2106
    throw v3

    #@13e
    .line 2079
    :pswitch_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@141
    move-result-object v3

    #@142
    const/4 v5, 0x0

    #@143
    move/from16 v0, p3

    #@145
    invoke-interface {v10, v0, v3, v5}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@148
    goto :goto_5

    #@149
    .line 2095
    :cond_c
    move-object/from16 v0, p0

    #@14b
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@14d
    move-object/from16 v0, p2

    #@14f
    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    #@152
    .line 2097
    move-object/from16 v0, p0

    #@154
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@156
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@159
    move-result-object v3

    #@15a
    move-object/from16 v0, p2

    #@15c
    iget v5, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    #@15e
    invoke-virtual {v3, v5}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@161
    .line 2098
    const/4 v3, 0x1

    #@162
    move-object/from16 v0, p0

    #@164
    move-object/from16 v1, p2

    #@166
    invoke-virtual {v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@169
    goto/16 :goto_5

    #@16b
    .line 2032
    nop

    #@16c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@186
    .line 2071
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public clearParameters()V
    .locals 3

    #@0
    .prologue
    .line 1611
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@2
    monitor-enter v2

    #@3
    .line 1613
    :try_start_0
    new-instance v0, Lorg/apache/xpath/VariableStack;

    #@5
    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    #@8
    .line 1615
    .local v0, "varstack":Lorg/apache/xpath/VariableStack;
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@a
    invoke-virtual {v1, v0}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    #@d
    .line 1617
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 1608
    return-void

    #@12
    .line 1611
    .end local v0    # "varstack":Lorg/apache/xpath/VariableStack;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;
    .locals 2
    .param p1, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 935
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    move-result-object v0

    #@8
    .line 936
    .local v0, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    return-object v0
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;
    .locals 27
    .param p1, "outputTarget"    # Ljavax/xml/transform/Result;
    .param p2, "format"    # Lorg/apache/xalan/templates/OutputProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 961
    const/4 v12, 0x0

    #@1
    .line 963
    .local v12, "outputNode":Lorg/w3c/dom/Node;
    move-object/from16 v0, p1

    #@3
    instance-of v0, v0, Ljavax/xml/transform/dom/DOMResult;

    #@5
    move/from16 v22, v0

    #@7
    if-eqz v22, :cond_5

    #@9
    move-object/from16 v22, p1

    #@b
    .line 965
    check-cast v22, Ljavax/xml/transform/dom/DOMResult;

    #@d
    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    #@10
    move-result-object v12

    #@11
    .local v12, "outputNode":Lorg/w3c/dom/Node;
    move-object/from16 v22, p1

    #@13
    .line 966
    check-cast v22, Ljavax/xml/transform/dom/DOMResult;

    #@15
    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    #@18
    move-result-object v11

    #@19
    .line 971
    .local v11, "nextSibling":Lorg/w3c/dom/Node;
    if-eqz v12, :cond_3

    #@1b
    .line 973
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    #@1e
    move-result v20

    #@1f
    .line 974
    .local v20, "type":S
    const/16 v22, 0x9

    #@21
    move/from16 v0, v22

    #@23
    move/from16 v1, v20

    #@25
    if-ne v0, v1, :cond_2

    #@27
    move-object v2, v12

    #@28
    .line 975
    check-cast v2, Lorg/w3c/dom/Document;

    #@2a
    .line 989
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    .local v2, "doc":Lorg/w3c/dom/Document;
    :goto_0
    const/16 v22, 0xb

    #@2c
    move/from16 v0, v22

    #@2e
    move/from16 v1, v20

    #@30
    if-ne v0, v1, :cond_4

    #@32
    .line 990
    new-instance v5, Lorg/apache/xml/utils/DOMBuilder;

    #@34
    move-object/from16 v22, v12

    #@36
    check-cast v22, Lorg/w3c/dom/DocumentFragment;

    #@38
    move-object/from16 v0, v22

    #@3a
    invoke-direct {v5, v2, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    #@3d
    .line 993
    .local v5, "handler":Lorg/apache/xml/utils/DOMBuilder;
    :goto_1
    if-eqz v11, :cond_0

    #@3f
    .line 994
    invoke-virtual {v5, v11}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@42
    .line 996
    :cond_0
    const-string/jumbo v22, "encoding"

    #@45
    move-object/from16 v0, p2

    #@47
    move-object/from16 v1, v22

    #@49
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 997
    .local v3, "encoding":Ljava/lang/String;
    new-instance v21, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    #@4f
    move-object/from16 v0, v21

    #@51
    invoke-direct {v0, v5, v5, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    #@54
    .line 1104
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v5    # "handler":Lorg/apache/xml/utils/DOMBuilder;
    .end local v11    # "nextSibling":Lorg/w3c/dom/Node;
    .end local v12    # "outputNode":Lorg/w3c/dom/Node;
    .end local v20    # "type":S
    .local v21, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_1
    :goto_2
    move-object/from16 v0, v21

    #@56
    move-object/from16 v1, p0

    #@58
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@5b
    .line 1106
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@5e
    move-result-object v15

    #@5f
    .line 1107
    .local v15, "srcLocator":Ljavax/xml/transform/SourceLocator;
    move-object/from16 v0, v21

    #@61
    invoke-interface {v0, v15}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    #@64
    .line 1110
    return-object v21

    #@65
    .line 976
    .end local v15    # "srcLocator":Ljavax/xml/transform/SourceLocator;
    .end local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v11    # "nextSibling":Lorg/w3c/dom/Node;
    .restart local v12    # "outputNode":Lorg/w3c/dom/Node;
    .restart local v20    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_2
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@68
    move-result-object v2

    #@69
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@6a
    .line 980
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v20    # "type":S
    :cond_3
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@6e
    move-object/from16 v22, v0

    #@70
    invoke-virtual/range {v22 .. v22}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    #@73
    move-result v8

    #@74
    .line 981
    .local v8, "isSecureProcessing":Z
    invoke-static {v8}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    #@77
    move-result-object v2

    #@78
    .line 982
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    move-object v12, v2

    #@79
    .line 983
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    #@7c
    move-result v20

    #@7d
    .line 985
    .restart local v20    # "type":S
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    #@7f
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    move-object/from16 v0, p1

    #@81
    invoke-virtual {v0, v12}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@84
    goto :goto_0

    #@85
    .line 991
    .end local v8    # "isSecureProcessing":Z
    :cond_4
    new-instance v5, Lorg/apache/xml/utils/DOMBuilder;

    #@87
    invoke-direct {v5, v2, v12}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    #@8a
    .restart local v5    # "handler":Lorg/apache/xml/utils/DOMBuilder;
    goto :goto_1

    #@8b
    .line 999
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "handler":Lorg/apache/xml/utils/DOMBuilder;
    .end local v11    # "nextSibling":Lorg/w3c/dom/Node;
    .end local v20    # "type":S
    .local v12, "outputNode":Lorg/w3c/dom/Node;
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_5
    move-object/from16 v0, p1

    #@8d
    instance-of v0, v0, Ljavax/xml/transform/sax/SAXResult;

    #@8f
    move/from16 v22, v0

    #@91
    if-eqz v22, :cond_a

    #@93
    .line 1001
    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    #@95
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    #@98
    move-result-object v6

    #@99
    .line 1003
    .local v6, "handler":Lorg/xml/sax/ContentHandler;
    if-nez v6, :cond_6

    #@9b
    .line 1004
    new-instance v22, Ljava/lang/IllegalArgumentException;

    #@9d
    .line 1005
    const-string/jumbo v23, "handler can not be null for a SAXResult"

    #@a0
    .line 1004
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v22

    #@a4
    .line 1008
    :cond_6
    instance-of v0, v6, Lorg/xml/sax/ext/LexicalHandler;

    #@a6
    move/from16 v22, v0

    #@a8
    if-eqz v22, :cond_9

    #@aa
    move-object v9, v6

    #@ab
    .line 1009
    check-cast v9, Lorg/xml/sax/ext/LexicalHandler;

    #@ad
    .line 1013
    :goto_3
    const-string/jumbo v22, "encoding"

    #@b0
    move-object/from16 v0, p2

    #@b2
    move-object/from16 v1, v22

    #@b4
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    .line 1014
    .restart local v3    # "encoding":Ljava/lang/String;
    const-string/jumbo v22, "method"

    #@bb
    move-object/from16 v0, p2

    #@bd
    move-object/from16 v1, v22

    #@bf
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c2
    move-result-object v10

    #@c3
    .line 1016
    .local v10, "method":Ljava/lang/String;
    new-instance v19, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    #@c5
    move-object/from16 v0, v19

    #@c7
    invoke-direct {v0, v6, v9, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    #@ca
    .line 1017
    .local v19, "toXMLSAXHandler":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    const/16 v22, 0x0

    #@cc
    move-object/from16 v0, v19

    #@ce
    move/from16 v1, v22

    #@d0
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setShouldOutputNSAttr(Z)V

    #@d3
    .line 1018
    move-object/from16 v21, v19

    #@d5
    .line 1021
    .restart local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    const-string/jumbo v22, "doctype-public"

    #@d8
    move-object/from16 v0, p2

    #@da
    move-object/from16 v1, v22

    #@dc
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@df
    move-result-object v13

    #@e0
    .line 1022
    .local v13, "publicID":Ljava/lang/String;
    const-string/jumbo v22, "doctype-system"

    #@e3
    move-object/from16 v0, p2

    #@e5
    move-object/from16 v1, v22

    #@e7
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v18

    #@eb
    .line 1023
    .local v18, "systemID":Ljava/lang/String;
    if-eqz v18, :cond_7

    #@ed
    .line 1024
    move-object/from16 v0, v21

    #@ef
    move-object/from16 v1, v18

    #@f1
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    #@f4
    .line 1025
    :cond_7
    if-eqz v13, :cond_8

    #@f6
    .line 1026
    move-object/from16 v0, v21

    #@f8
    invoke-interface {v0, v13}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    #@fb
    .line 1028
    :cond_8
    instance-of v0, v6, Lorg/apache/xalan/transformer/TransformerClient;

    #@fd
    move/from16 v22, v0

    #@ff
    if-eqz v22, :cond_1

    #@101
    .line 1029
    new-instance v17, Lorg/apache/xalan/transformer/XalanTransformState;

    #@103
    invoke-direct/range {v17 .. v17}, Lorg/apache/xalan/transformer/XalanTransformState;-><init>()V

    #@106
    .line 1030
    .local v17, "state":Lorg/apache/xalan/transformer/XalanTransformState;
    check-cast v6, Lorg/apache/xalan/transformer/TransformerClient;

    #@108
    .end local v6    # "handler":Lorg/xml/sax/ContentHandler;
    move-object/from16 v0, v17

    #@10a
    invoke-interface {v6, v0}, Lorg/apache/xalan/transformer/TransformerClient;->setTransformState(Lorg/apache/xalan/transformer/TransformState;)V

    #@10d
    move-object/from16 v22, v21

    #@10f
    .line 1031
    check-cast v22, Lorg/apache/xml/serializer/ToSAXHandler;

    #@111
    move-object/from16 v0, v22

    #@113
    move-object/from16 v1, v17

    #@115
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V

    #@118
    goto/16 :goto_2

    #@11a
    .line 1011
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v13    # "publicID":Ljava/lang/String;
    .end local v17    # "state":Lorg/apache/xalan/transformer/XalanTransformState;
    .end local v18    # "systemID":Ljava/lang/String;
    .end local v19    # "toXMLSAXHandler":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    .end local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v6    # "handler":Lorg/xml/sax/ContentHandler;
    :cond_9
    const/4 v9, 0x0

    #@11b
    .local v9, "lexHandler":Lorg/xml/sax/ext/LexicalHandler;
    goto :goto_3

    #@11c
    .line 1039
    .end local v6    # "handler":Lorg/xml/sax/ContentHandler;
    .end local v9    # "lexHandler":Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_a
    move-object/from16 v0, p1

    #@11e
    instance-of v0, v0, Ljavax/xml/transform/stream/StreamResult;

    #@120
    move/from16 v22, v0

    #@122
    if-eqz v22, :cond_12

    #@124
    move-object/from16 v16, p1

    #@126
    .line 1041
    check-cast v16, Ljavax/xml/transform/stream/StreamResult;

    #@128
    .line 1046
    .local v16, "sresult":Ljavax/xml/transform/stream/StreamResult;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@12b
    move-result-object v22

    #@12c
    invoke-static/range {v22 .. v22}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    #@12f
    move-result-object v14

    #@130
    check-cast v14, Lorg/apache/xml/serializer/SerializationHandler;

    #@132
    .line 1048
    .local v14, "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    #@135
    move-result-object v22

    #@136
    if-eqz v22, :cond_b

    #@138
    .line 1049
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    #@13b
    move-result-object v22

    #@13c
    move-object/from16 v0, v22

    #@13e
    invoke-interface {v14, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    #@141
    .line 1084
    :goto_4
    move-object/from16 v21, v14

    #@143
    .restart local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    goto/16 :goto_2

    #@145
    .line 1050
    .end local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    #@148
    move-result-object v22

    #@149
    if-eqz v22, :cond_c

    #@14b
    .line 1051
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    #@14e
    move-result-object v22

    #@14f
    move-object/from16 v0, v22

    #@151
    invoke-interface {v14, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@154
    goto :goto_4

    #@155
    .line 1091
    .end local v14    # "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v7

    #@156
    .line 1092
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v22, Ljavax/xml/transform/TransformerException;

    #@158
    move-object/from16 v0, v22

    #@15a
    invoke-direct {v0, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@15d
    throw v22

    #@15e
    .line 1052
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v14    # "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_c
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    #@161
    move-result-object v22

    #@162
    if-eqz v22, :cond_11

    #@164
    .line 1054
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    #@167
    move-result-object v4

    #@168
    .line 1056
    .local v4, "fileURL":Ljava/lang/String;
    const-string/jumbo v22, "file:///"

    #@16b
    move-object/from16 v0, v22

    #@16d
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@170
    move-result v22

    #@171
    if-eqz v22, :cond_f

    #@173
    .line 1058
    const/16 v22, 0x8

    #@175
    move/from16 v0, v22

    #@177
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17a
    move-result-object v22

    #@17b
    const-string/jumbo v23, ":"

    #@17e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@181
    move-result v22

    #@182
    if-lez v22, :cond_e

    #@184
    .line 1059
    const/16 v22, 0x8

    #@186
    move/from16 v0, v22

    #@188
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18b
    move-result-object v4

    #@18c
    .line 1071
    :cond_d
    :goto_5
    new-instance v22, Ljava/io/FileOutputStream;

    #@18e
    move-object/from16 v0, v22

    #@190
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@193
    move-object/from16 v0, v22

    #@195
    move-object/from16 v1, p0

    #@197
    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@199
    .line 1073
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@19d
    move-object/from16 v22, v0

    #@19f
    move-object/from16 v0, v22

    #@1a1
    invoke-interface {v14, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@1a4
    .line 1075
    move-object/from16 v21, v14

    #@1a6
    .restart local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    goto :goto_4

    #@1a7
    .line 1061
    .end local v21    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :cond_e
    const/16 v22, 0x7

    #@1a9
    move/from16 v0, v22

    #@1ab
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1ae
    move-result-object v4

    #@1af
    goto :goto_5

    #@1b0
    .line 1063
    :cond_f
    const-string/jumbo v22, "file:/"

    #@1b3
    move-object/from16 v0, v22

    #@1b5
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b8
    move-result v22

    #@1b9
    if-eqz v22, :cond_d

    #@1bb
    .line 1065
    const/16 v22, 0x6

    #@1bd
    move/from16 v0, v22

    #@1bf
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c2
    move-result-object v22

    #@1c3
    const-string/jumbo v23, ":"

    #@1c6
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1c9
    move-result v22

    #@1ca
    if-lez v22, :cond_10

    #@1cc
    .line 1066
    const/16 v22, 0x6

    #@1ce
    move/from16 v0, v22

    #@1d0
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d3
    move-result-object v4

    #@1d4
    goto :goto_5

    #@1d5
    .line 1068
    :cond_10
    const/16 v22, 0x5

    #@1d7
    move/from16 v0, v22

    #@1d9
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1dc
    move-result-object v4

    #@1dd
    goto :goto_5

    #@1de
    .line 1078
    .end local v4    # "fileURL":Ljava/lang/String;
    :cond_11
    new-instance v22, Ljavax/xml/transform/TransformerException;

    #@1e0
    const-string/jumbo v23, "ER_NO_OUTPUT_SPECIFIED"

    #@1e3
    const/16 v24, 0x0

    #@1e5
    invoke-static/range {v23 .. v24}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e8
    move-result-object v23

    #@1e9
    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@1ec
    throw v22
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@1ed
    .line 1097
    .end local v14    # "serializer":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v16    # "sresult":Ljavax/xml/transform/stream/StreamResult;
    :cond_12
    new-instance v22, Ljavax/xml/transform/TransformerException;

    #@1ef
    const-string/jumbo v23, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    #@1f2
    const/16 v24, 0x1

    #@1f4
    move/from16 v0, v24

    #@1f6
    new-array v0, v0, [Ljava/lang/Object;

    #@1f8
    move-object/from16 v24, v0

    #@1fa
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1fd
    move-result-object v25

    #@1fe
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@201
    move-result-object v25

    #@202
    const/16 v26, 0x0

    #@204
    aput-object v25, v24, v26

    #@206
    invoke-static/range {v23 .. v24}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@209
    move-result-object v23

    #@20a
    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@20d
    throw v22
.end method

.method public currentFuncResultSeen()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2795
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    #@3
    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->empty()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 2796
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    #@b
    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 2795
    :cond_0
    return v0
.end method

.method public currentTemplateRuleIsNull()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2741
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    #@3
    invoke-virtual {v1}, Lorg/apache/xml/utils/BoolStack;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 2742
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    #@b
    invoke-virtual {v1}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 2741
    :cond_0
    return v0
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/QName;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "context"    # Lorg/w3c/dom/Node;
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 2141
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    .line 2145
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    if-eqz p3, :cond_0

    #@4
    .line 2146
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    #@7
    .line 2147
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@e
    .line 2148
    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 2152
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@14
    .line 2156
    if-eqz p3, :cond_1

    #@16
    .line 2157
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    #@19
    .line 2138
    :cond_1
    return-void

    #@1a
    .line 2151
    :catchall_0
    move-exception v1

    #@1b
    .line 2152
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@1e
    .line 2156
    if-eqz p3, :cond_2

    #@20
    .line 2157
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    #@23
    .line 2151
    :cond_2
    throw v1
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    .locals 8
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 2260
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    move-result-object v5

    #@4
    .line 2265
    .local v5, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    move-object v3, v5

    #@5
    .line 2269
    .local v3, "savedHandler":Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_0
    invoke-interface {v5}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    #@8
    .line 2272
    const/4 v2, 0x0

    #@9
    .line 2273
    .local v2, "lex":Lorg/xml/sax/ext/LexicalHandler;
    instance-of v6, p2, Lorg/xml/sax/ext/LexicalHandler;

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 2274
    move-object v0, p2

    #@e
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    #@10
    move-object v2, v0

    #@11
    .line 2276
    .end local v2    # "lex":Lorg/xml/sax/ext/LexicalHandler;
    :cond_0
    new-instance v6, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    #@13
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-direct {v6, p2, v2, v7}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    #@1a
    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@1c
    .line 2277
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@1e
    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@21
    .line 2278
    const/4 v6, 0x1

    #@22
    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 2289
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@27
    .line 2257
    return-void

    #@28
    .line 2284
    :catch_0
    move-exception v4

    #@29
    .line 2285
    .local v4, "se":Lorg/xml/sax/SAXException;
    :try_start_1
    new-instance v6, Ljavax/xml/transform/TransformerException;

    #@2b
    invoke-direct {v6, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 2288
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v6

    #@30
    .line 2289
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@32
    .line 2288
    throw v6

    #@33
    .line 2281
    :catch_1
    move-exception v1

    #@34
    .line 2282
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    .locals 10
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "shouldAddAttrs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2177
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4
    move-result-object v4

    #@5
    .line 2179
    .local v4, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v4, :cond_0

    #@7
    .line 2180
    return-void

    #@8
    .line 2182
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    iget-boolean v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    #@10
    if-eqz v7, :cond_1

    #@12
    move-object v7, v4

    #@13
    .line 2184
    check-cast v7, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@15
    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    #@18
    move-result-object v0

    #@19
    .line 2188
    .local v0, "chars":[C
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@1c
    .line 2189
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@1e
    array-length v8, v0

    #@1f
    const/4 v9, 0x0

    #@20
    invoke-interface {v7, v0, v9, v8}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2197
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@26
    .line 2199
    return-void

    #@27
    .line 2192
    :catch_0
    move-exception v3

    #@28
    .line 2193
    .local v3, "se":Lorg/xml/sax/SAXException;
    :try_start_1
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@2a
    invoke-direct {v7, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 2196
    .end local v3    # "se":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v7

    #@2f
    .line 2197
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    #@32
    .line 2196
    throw v7

    #@33
    .line 2208
    .end local v0    # "chars":[C
    :cond_1
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@35
    .line 2209
    .local v6, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    #@38
    .line 2210
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@3a
    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectStack;->size()I

    #@3d
    move-result v1

    #@3e
    .line 2211
    .local v1, "currentTemplateElementsTop":I
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@40
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 2217
    :goto_0
    if-eqz v4, :cond_3

    #@45
    .line 2219
    if-nez p2, :cond_2

    #@47
    .line 2220
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@4a
    move-result v7

    #@4b
    const/16 v8, 0x30

    #@4d
    if-ne v7, v8, :cond_2

    #@4f
    .line 2217
    :goto_1
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@52
    move-result-object v4

    #@53
    goto :goto_0

    #@54
    .line 2223
    :cond_2
    invoke-virtual {v6, v4}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    #@57
    .line 2224
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@59
    invoke-virtual {v7, v4, v1}, Lorg/apache/xml/utils/ObjectStack;->setElementAt(Ljava/lang/Object;I)V

    #@5c
    .line 2225
    invoke-virtual {v4, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5f
    goto :goto_1

    #@60
    .line 2229
    :catch_1
    move-exception v2

    #@61
    .line 2230
    .local v2, "re":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@63
    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@66
    .line 2231
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v5, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@69
    .line 2232
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 2235
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .end local v5    # "te":Ljavax/xml/transform/TransformerException;
    :catchall_1
    move-exception v7

    #@6b
    .line 2236
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@6d
    invoke-virtual {v8}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@70
    .line 2237
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@73
    .line 2235
    throw v7

    #@74
    .line 2236
    :cond_3
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@76
    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@79
    .line 2237
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    #@7c
    .line 2173
    return-void
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "argVec"    # Ljava/util/Vector;
    .param p4, "methodKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    #@3
    move-result-object v0

    #@4
    .line 413
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    #@b
    move-result-object v5

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    move-object v3, p3

    #@f
    move-object v4, p4

    #@10
    .line 411
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 2
    .param p1, "extFunction"    # Lorg/apache/xpath/functions/FuncExtFunction;
    .param p2, "argVec"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    #@3
    move-result-object v0

    #@4
    .line 420
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    #@b
    move-result-object v1

    #@c
    .line 419
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public fireGenerateEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 3241
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3234
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3227
    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "atts"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 3221
    return-void
.end method

.method public fireGenerateEvent(I[CII)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "ch"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 3211
    return-void
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 1735
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2552
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@3
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@6
    move-result-object v0

    #@7
    .line 2554
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v2

    #@a
    :cond_0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    goto :goto_0

    #@f
    .line 2557
    .end local v0    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :catch_0
    move-exception v1

    #@10
    .line 2560
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    return-object v2
.end method

.method public getCountersTable()Lorg/apache/xalan/transformer/CountersTable;
    .locals 1

    #@0
    .prologue
    .line 2727
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2728
    new-instance v0, Lorg/apache/xalan/transformer/CountersTable;

    #@6
    invoke-direct {v0}, Lorg/apache/xalan/transformer/CountersTable;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    #@b
    .line 2730
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    #@d
    return-object v0
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 2453
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 2454
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@a
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    .line 2453
    :goto_0
    return-object v0

    #@11
    .line 2454
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getCurrentNode()I
    .locals 1

    #@0
    .prologue
    .line 2465
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 3

    #@0
    .prologue
    .line 2482
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 2484
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_0

    #@6
    .line 2485
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0x13

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 2487
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 2490
    :cond_0
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    #@15
    .end local v0    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    return-object v0
.end method

.method public getCurrentTemplateElements()Lorg/apache/xml/utils/ObjectStack;
    .locals 1

    #@0
    .prologue
    .line 2410
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2
    return-object v0
.end method

.method public getCurrentTemplateElementsCount()I
    .locals 1

    #@0
    .prologue
    .line 2398
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    #@0
    .prologue
    .line 2839
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@2
    return-object v0
.end method

.method public getExceptionThrown()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 3006
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    #@2
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2878
    const-string/jumbo v0, "http://xml.org/trax/features/sax/input"

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2879
    return v1

    #@b
    .line 2880
    :cond_0
    const-string/jumbo v0, "http://xml.org/trax/features/dom/input"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 2881
    return v1

    #@15
    .line 2883
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@17
    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method public getIncremental()Z
    .locals 1

    #@0
    .prologue
    .line 3255
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    #@2
    return v0
.end method

.method public getInputContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 1313
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;
    .locals 2
    .param p1, "doDocFrag"    # Z

    #@0
    .prologue
    .line 1329
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1334
    new-instance v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@6
    .line 1335
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    #@8
    .line 1334
    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V

    #@b
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@d
    .line 1338
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@f
    return-object v0
.end method

.method public getKeyManager()Lorg/apache/xalan/transformer/KeyManager;
    .locals 1

    #@0
    .prologue
    .line 2669
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    #@2
    return-object v0
.end method

.method public getMatchedNode()I
    .locals 1

    #@0
    .prologue
    .line 2539
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepTail()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 2527
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    #@8
    return-object v0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 2896
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    #@c
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xml/utils/QName;

    #@12
    goto :goto_0
.end method

.method public getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;
    .locals 1

    #@0
    .prologue
    .line 2807
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2808
    new-instance v0, Lorg/apache/xalan/transformer/MsgMgr;

    #@6
    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/MsgMgr;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    #@b
    .line 2810
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    #@d
    return-object v0
.end method

.method public getOptimize()Z
    .locals 1

    #@0
    .prologue
    .line 3262
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    #@2
    return v0
.end method

.method public getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;
    .locals 2

    #@0
    .prologue
    .line 1365
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1366
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    #@b
    move-result-object v0

    #@c
    .line 1369
    .local v0, "format":Lorg/apache/xalan/templates/OutputProperties;
    :goto_0
    return-object v0

    #@d
    .line 1367
    .end local v0    # "format":Lorg/apache/xalan/templates/OutputProperties;
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@f
    .restart local v0    # "format":Lorg/apache/xalan/templates/OutputProperties;
    goto :goto_0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 916
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Properties;

    #@e
    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "qnameString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    const/4 v1, 0x0

    #@1
    .line 725
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    #@4
    move-result-object v0

    #@5
    .line 727
    .local v0, "props":Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 729
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 731
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 732
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    #@16
    const/4 v4, 0x1

    #@17
    new-array v4, v4, [Ljava/lang/Object;

    #@19
    const/4 v5, 0x0

    #@1a
    aput-object p1, v4, v5

    #@1c
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 736
    :cond_0
    return-object v1
.end method

.method public getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "qnameString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 755
    const/4 v1, 0x0

    #@1
    .line 756
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    #@4
    move-result-object v0

    #@5
    .line 758
    .local v0, "props":Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@f
    .line 760
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    #@11
    .line 762
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 763
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    #@1c
    const/4 v4, 0x1

    #@1d
    new-array v4, v4, [Ljava/lang/Object;

    #@1f
    const/4 v5, 0x0

    #@20
    aput-object p1, v4, v5

    #@22
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 767
    :cond_0
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1501
    :try_start_0
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    #@4
    move-result-object v4

    #@5
    .line 1503
    .local v4, "qname":Lorg/apache/xml/utils/QName;
    iget-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 1504
    return-object v6

    #@a
    .line 1506
    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@c
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@f
    move-result v2

    #@10
    .line 1508
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    #@12
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@14
    .line 1510
    iget-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@16
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lorg/apache/xpath/Arg;

    #@1c
    .line 1512
    .local v0, "arg":Lorg/apache/xpath/Arg;
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 1514
    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result-object v5

    #@2e
    return-object v5

    #@2f
    .line 1508
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@31
    goto :goto_0

    #@32
    .line 1518
    .end local v0    # "arg":Lorg/apache/xpath/Arg;
    :cond_2
    return-object v6

    #@33
    .line 1521
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "qname":Lorg/apache/xml/utils/QName;
    :catch_0
    move-exception v3

    #@34
    .line 1524
    .local v3, "nsee":Ljava/util/NoSuchElementException;
    return-object v6
.end method

.method public getQuietConflictWarnings()Z
    .locals 1

    #@0
    .prologue
    .line 2614
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    #@2
    return v0
.end method

.method public getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .locals 1

    #@0
    .prologue
    .line 2647
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    return-object v0
.end method

.method public getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .locals 1

    #@0
    .prologue
    .line 2658
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    return-object v0
.end method

.method public getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S
    .locals 5
    .param p1, "elementHandle"    # I
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 3165
    :try_start_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@5
    invoke-virtual {v2, v3, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@8
    move-result-object v0

    #@9
    .line 3167
    .local v0, "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    if-nez v0, :cond_0

    #@b
    .line 3169
    return v4

    #@c
    .line 3175
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 3176
    const/4 v2, 0x2

    #@13
    .line 3175
    :goto_0
    return v2

    #@14
    .line 3176
    :cond_1
    const/4 v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 3180
    .end local v0    # "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :catch_0
    move-exception v1

    #@17
    .line 3181
    .local v1, "se":Ljavax/xml/transform/TransformerException;
    return v4
.end method

.method public getSource_location()Z
    .locals 1

    #@0
    .prologue
    .line 3269
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    #@2
    return v0
.end method

.method public final getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    #@0
    .prologue
    .line 2601
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    return-object v0
.end method

.method public getTransformThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    #@0
    .prologue
    .line 2571
    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    #@0
    .prologue
    .line 1690
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->getURIResolver()Ljavax/xml/transform/URIResolver;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    #@0
    .prologue
    .line 2636
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    return-object v0
.end method

.method public hasTraceListeners()Z
    .locals 1

    #@0
    .prologue
    .line 3248
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasTransformThreadErrorCatcher()Z
    .locals 1

    #@0
    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@2
    return v0
.end method

.method public init(Lorg/apache/xml/serializer/ToXMLSAXHandler;Ljavax/xml/transform/Transformer;Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "h"    # Lorg/apache/xml/serializer/ToXMLSAXHandler;
    .param p2, "transformer"    # Ljavax/xml/transform/Transformer;
    .param p3, "realHandler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 3192
    invoke-virtual {p1, p2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@3
    .line 3193
    invoke-virtual {p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@6
    .line 3190
    return-void
.end method

.method public isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z
    .locals 2
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    #@0
    .prologue
    .line 2682
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2684
    new-instance v1, Ljava/util/Stack;

    #@6
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@b
    .line 2687
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@d
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 2689
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    .line 2691
    .local v0, "loc":I
    const/4 v1, -0x1

    #@1a
    if-le v0, v1, :cond_1

    #@1c
    .line 2693
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 2697
    .end local v0    # "loc":I
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public popCurrentFuncResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2784
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public popCurrentMatched()V
    .locals 1

    #@0
    .prologue
    .line 2512
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    .line 2513
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    #@7
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->pop()I

    #@a
    .line 2510
    return-void
.end method

.method public popCurrentTemplateRuleIsNull()V
    .locals 1

    #@0
    .prologue
    .line 2763
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    #@5
    .line 2761
    return-void
.end method

.method public popElemAttributeSet()V
    .locals 1

    #@0
    .prologue
    .line 2716
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    .line 2714
    return-void
.end method

.method public popElemTemplateElement()V
    .locals 1

    #@0
    .prologue
    .line 2429
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@5
    .line 2427
    return-void
.end method

.method public popMode()V
    .locals 1

    #@0
    .prologue
    .line 2920
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    .line 2918
    return-void
.end method

.method postExceptionFromThread(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 3062
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    #@2
    .line 3065
    monitor-enter p0

    #@3
    .line 3072
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 3038
    return-void

    #@8
    .line 3065
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;
    .locals 20
    .param p1, "foreach"    # Lorg/apache/xalan/templates/ElemForEach;
    .param p2, "sourceNodeContext"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 2310
    const/4 v15, 0x0

    #@1
    .line 2311
    .local v15, "keys":Ljava/util/Vector;
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@5
    move-object/from16 v19, v0

    #@7
    .line 2312
    .local v19, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    #@a
    move-result v16

    #@b
    .line 2314
    .local v16, "nElems":I
    if-lez v16, :cond_0

    #@d
    .line 2315
    new-instance v15, Ljava/util/Vector;

    #@f
    .end local v15    # "keys":Ljava/util/Vector;
    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    #@12
    .line 2318
    :cond_0
    const/4 v14, 0x0

    #@13
    .local v14, "i":I
    :goto_0
    move/from16 v0, v16

    #@15
    if-ge v14, v0, :cond_c

    #@17
    .line 2320
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v14}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    #@1c
    move-result-object v18

    #@1d
    .line 2323
    .local v18, "sort":Lorg/apache/xalan/templates/ElemSort;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    #@20
    move-result-object v3

    #@21
    if-eqz v3, :cond_4

    #@23
    .line 2324
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    #@26
    move-result-object v3

    #@27
    move-object/from16 v0, v19

    #@29
    move/from16 v1, p2

    #@2b
    move-object/from16 v2, p1

    #@2d
    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    .line 2325
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getDataType()Lorg/apache/xalan/templates/AVT;

    #@34
    move-result-object v3

    #@35
    move-object/from16 v0, v19

    #@37
    move/from16 v1, p2

    #@39
    move-object/from16 v2, p1

    #@3b
    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@3e
    move-result-object v13

    #@3f
    .line 2328
    .local v13, "dataTypeString":Ljava/lang/String;
    const-string/jumbo v3, ":"

    #@42
    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@45
    move-result v3

    #@46
    if-ltz v3, :cond_5

    #@48
    .line 2329
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    .line 2330
    const-string/jumbo v4, "TODO: Need to write the hooks for QNAME sort data type"

    #@4d
    .line 2329
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 2339
    :cond_1
    :goto_2
    if-eqz v13, :cond_6

    #@52
    .line 2340
    const-string/jumbo v3, "number"

    #@55
    .line 2339
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_6

    #@5b
    .line 2340
    const/4 v6, 0x1

    #@5c
    .line 2341
    .local v6, "treatAsNumbers":Z
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getOrder()Lorg/apache/xalan/templates/AVT;

    #@5f
    move-result-object v3

    #@60
    move-object/from16 v0, v19

    #@62
    move/from16 v1, p2

    #@64
    move-object/from16 v2, p1

    #@66
    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@69
    move-result-object v17

    #@6a
    .line 2344
    .local v17, "orderString":Ljava/lang/String;
    const-string/jumbo v3, "ascending"

    #@6d
    move-object/from16 v0, v17

    #@6f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@72
    move-result v3

    #@73
    if-nez v3, :cond_2

    #@75
    .line 2346
    const-string/jumbo v3, "descending"

    #@78
    .line 2345
    move-object/from16 v0, v17

    #@7a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7d
    move-result v3

    #@7e
    if-eqz v3, :cond_7

    #@80
    .line 2352
    :cond_2
    :goto_4
    if-eqz v17, :cond_8

    #@82
    .line 2353
    const-string/jumbo v3, "descending"

    #@85
    .line 2352
    move-object/from16 v0, v17

    #@87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v3

    #@8b
    if-eqz v3, :cond_8

    #@8d
    .line 2353
    const/4 v7, 0x1

    #@8e
    .line 2354
    .local v7, "descending":Z
    :goto_5
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getCaseOrder()Lorg/apache/xalan/templates/AVT;

    #@91
    move-result-object v11

    #@92
    .line 2357
    .local v11, "caseOrder":Lorg/apache/xalan/templates/AVT;
    if-eqz v11, :cond_b

    #@94
    .line 2359
    move-object/from16 v0, v19

    #@96
    move/from16 v1, p2

    #@98
    move-object/from16 v2, p1

    #@9a
    invoke-virtual {v11, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@9d
    move-result-object v12

    #@9e
    .line 2362
    .local v12, "caseOrderString":Ljava/lang/String;
    const-string/jumbo v3, "upper-first"

    #@a1
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a4
    move-result v3

    #@a5
    if-nez v3, :cond_3

    #@a7
    .line 2364
    const-string/jumbo v3, "lower-first"

    #@aa
    .line 2363
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ad
    move-result v3

    #@ae
    if-eqz v3, :cond_9

    #@b0
    .line 2370
    :cond_3
    :goto_6
    if-eqz v12, :cond_a

    #@b2
    .line 2371
    const-string/jumbo v3, "upper-first"

    #@b5
    .line 2370
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v3

    #@b9
    if-eqz v3, :cond_a

    #@bb
    .line 2371
    const/4 v9, 0x1

    #@bc
    .line 2378
    .end local v12    # "caseOrderString":Ljava/lang/String;
    .local v9, "caseOrderUpper":Z
    :goto_7
    new-instance v3, Lorg/apache/xalan/transformer/NodeSortKey;

    #@be
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getSelect()Lorg/apache/xpath/XPath;

    #@c1
    move-result-object v5

    #@c2
    move-object/from16 v4, p0

    #@c4
    move-object/from16 v10, p1

    #@c6
    invoke-direct/range {v3 .. v10}, Lorg/apache/xalan/transformer/NodeSortKey;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V

    #@c9
    invoke-virtual {v15, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@cc
    .line 2318
    add-int/lit8 v14, v14, 0x1

    #@ce
    goto/16 :goto_0

    #@d0
    .line 2324
    .end local v6    # "treatAsNumbers":Z
    .end local v7    # "descending":Z
    .end local v9    # "caseOrderUpper":Z
    .end local v11    # "caseOrder":Lorg/apache/xalan/templates/AVT;
    .end local v13    # "dataTypeString":Ljava/lang/String;
    .end local v17    # "orderString":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    #@d1
    .local v8, "langString":Ljava/lang/String;
    goto/16 :goto_1

    #@d3
    .line 2331
    .end local v8    # "langString":Ljava/lang/String;
    .restart local v13    # "dataTypeString":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "text"

    #@d6
    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d9
    move-result v3

    #@da
    if-nez v3, :cond_1

    #@dc
    .line 2333
    const-string/jumbo v3, "number"

    #@df
    .line 2332
    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e2
    move-result v3

    #@e3
    if-nez v3, :cond_1

    #@e5
    .line 2334
    const-string/jumbo v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    #@e8
    .line 2335
    const/4 v4, 0x2

    #@e9
    new-array v4, v4, [Ljava/lang/Object;

    #@eb
    const-string/jumbo v5, "data-type"

    #@ee
    const/4 v10, 0x0

    #@ef
    aput-object v5, v4, v10

    #@f1
    .line 2336
    const/4 v5, 0x1

    #@f2
    aput-object v13, v4, v5

    #@f4
    .line 2334
    move-object/from16 v0, p1

    #@f6
    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@f9
    goto/16 :goto_2

    #@fb
    .line 2340
    :cond_6
    const/4 v6, 0x0

    #@fc
    .restart local v6    # "treatAsNumbers":Z
    goto/16 :goto_3

    #@fe
    .line 2347
    .restart local v17    # "orderString":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    #@101
    .line 2348
    const/4 v4, 0x2

    #@102
    new-array v4, v4, [Ljava/lang/Object;

    #@104
    const-string/jumbo v5, "order"

    #@107
    const/4 v10, 0x0

    #@108
    aput-object v5, v4, v10

    #@10a
    .line 2349
    const/4 v5, 0x1

    #@10b
    aput-object v17, v4, v5

    #@10d
    .line 2347
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@112
    goto/16 :goto_4

    #@114
    .line 2353
    :cond_8
    const/4 v7, 0x0

    #@115
    .restart local v7    # "descending":Z
    goto/16 :goto_5

    #@117
    .line 2365
    .restart local v11    # "caseOrder":Lorg/apache/xalan/templates/AVT;
    .restart local v12    # "caseOrderString":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    #@11a
    .line 2366
    const/4 v4, 0x2

    #@11b
    new-array v4, v4, [Ljava/lang/Object;

    #@11d
    const-string/jumbo v5, "case-order"

    #@120
    const/4 v10, 0x0

    #@121
    aput-object v5, v4, v10

    #@123
    .line 2367
    const/4 v5, 0x1

    #@124
    aput-object v12, v4, v5

    #@126
    .line 2365
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@12b
    goto :goto_6

    #@12c
    .line 2371
    :cond_a
    const/4 v9, 0x0

    #@12d
    .restart local v9    # "caseOrderUpper":Z
    goto :goto_7

    #@12e
    .line 2375
    .end local v9    # "caseOrderUpper":Z
    .end local v12    # "caseOrderString":Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    #@12f
    .restart local v9    # "caseOrderUpper":Z
    goto :goto_7

    #@130
    .line 2383
    .end local v6    # "treatAsNumbers":Z
    .end local v7    # "descending":Z
    .end local v9    # "caseOrderUpper":Z
    .end local v11    # "caseOrder":Lorg/apache/xalan/templates/AVT;
    .end local v13    # "dataTypeString":Ljava/lang/String;
    .end local v17    # "orderString":Ljava/lang/String;
    .end local v18    # "sort":Lorg/apache/xalan/templates/ElemSort;
    :cond_c
    return-object v15
.end method

.method public pushCurrentFuncResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2775
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2774
    return-void
.end method

.method public pushCurrentTemplateRuleIsNull(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 2754
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@5
    .line 2752
    return-void
.end method

.method public pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 1
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    #@0
    .prologue
    .line 2708
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2706
    return-void
.end method

.method public pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 2421
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2419
    return-void
.end method

.method protected pushGlobalVars(I)V
    .locals 12
    .param p1, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1644
    iget-object v11, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@3
    .line 1645
    .local v11, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v11}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@6
    move-result-object v10

    #@7
    .line 1646
    .local v10, "vs":Lorg/apache/xpath/VariableStack;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@a
    move-result-object v8

    #@b
    .line 1647
    .local v8, "sr":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    #@e
    move-result-object v9

    #@f
    .line 1649
    .local v9, "vars":Ljava/util/Vector;
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@12
    move-result v7

    #@13
    .line 1650
    .local v7, "i":I
    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@16
    .line 1652
    :cond_0
    :goto_0
    add-int/lit8 v7, v7, -0x1

    #@18
    if-ltz v7, :cond_1

    #@1a
    .line 1654
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lorg/apache/xalan/templates/ElemVariable;

    #@20
    .line 1657
    .local v1, "v":Lorg/apache/xalan/templates/ElemVariable;
    new-instance v0, Lorg/apache/xalan/templates/XUnresolvedVariable;

    #@22
    .line 1658
    invoke-virtual {v10}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@25
    move-result v4

    #@26
    const/4 v6, 0x1

    #@27
    move v2, p1

    #@28
    move-object v3, p0

    #@29
    .line 1657
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/XUnresolvedVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V

    #@2c
    .line 1660
    .local v0, "xobj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->elementAt(I)Lorg/apache/xpath/objects/XObject;

    #@2f
    move-result-object v2

    #@30
    if-nez v2, :cond_0

    #@32
    .line 1661
    invoke-virtual {v10, v7, v0}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@35
    goto :goto_0

    #@36
    .line 1641
    .end local v0    # "xobj":Lorg/apache/xpath/objects/XObject;
    .end local v1    # "v":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-void
.end method

.method public pushMode(Lorg/apache/xml/utils/QName;)V
    .locals 1
    .param p1, "mode"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 2909
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2907
    return-void
.end method

.method public pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V
    .locals 1
    .param p1, "template"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "child"    # I

    #@0
    .prologue
    .line 2503
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2504
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    #@7
    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    #@a
    .line 2501
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 432
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 434
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    #@c
    .line 436
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 440
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 445
    :cond_0
    :goto_0
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    #@17
    .line 449
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    #@19
    .line 451
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@1b
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->reset()V

    #@1e
    .line 453
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@20
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lorg/apache/xpath/VariableStack;->reset()V

    #@27
    .line 454
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->resetUserParameters()V

    #@2a
    .line 457
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2c
    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    #@2f
    .line 458
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    #@31
    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    #@34
    .line 459
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    #@36
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    #@39
    .line 461
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@3b
    .line 462
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    #@3d
    .line 463
    new-instance v1, Lorg/apache/xalan/transformer/KeyManager;

    #@3f
    invoke-direct {v1}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    #@42
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    #@44
    .line 464
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    #@46
    .line 465
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    #@48
    .line 466
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    #@4a
    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    #@4d
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    #@4f
    .line 468
    const/4 v1, -0x1

    #@50
    iput v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    #@52
    .line 470
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    #@54
    .line 474
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@56
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Lorg/apache/xpath/SourceTreeManager;->reset()V

    #@5d
    .line 429
    :cond_1
    return-void

    #@5e
    .line 442
    :catch_0
    move-exception v0

    #@5f
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 3090
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    #@3
    .line 3108
    :try_start_0
    iget v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    #@5
    invoke-virtual {p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 3125
    :try_start_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@a
    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3127
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@10
    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@12
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@15
    .line 3087
    :cond_0
    :goto_0
    return-void

    #@16
    .line 3112
    :catch_0
    move-exception v0

    #@17
    .line 3116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 3117
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    .line 3125
    :try_start_3
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@20
    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 3127
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@26
    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@28
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@2b
    goto :goto_0

    #@2c
    .line 3137
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@2d
    .line 3140
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 3141
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V

    #@34
    goto :goto_0

    #@35
    .line 3119
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    #@37
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3f
    .line 3122
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@40
    move-object v2, v1

    #@41
    .line 3125
    :try_start_5
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@43
    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 3127
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    #@49
    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    #@4b
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V

    #@4e
    .line 3122
    :cond_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@4f
    .line 3143
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@51
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1
.end method

.method public runTransformThread()V
    .locals 1

    #@0
    .prologue
    .line 2944
    const/4 v0, -0x1

    #@1
    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    #@4
    .line 2942
    return-void
.end method

.method public runTransformThread(I)V
    .locals 1
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 2933
    invoke-static {p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 2934
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V

    #@7
    .line 2929
    return-void
.end method

.method public setBaseURLOfSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/String;

    #@0
    .prologue
    .line 702
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    #@2
    .line 700
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1706
    if-nez p1, :cond_0

    #@3
    .line 1708
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "ER_NULL_CONTENT_HANDLER"

    #@8
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 1712
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    .line 1714
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 1716
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    #@18
    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    #@1b
    .line 1717
    .local v0, "h":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1e
    .line 1718
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@21
    .line 1720
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@23
    .line 1703
    .end local v0    # "h":Lorg/apache/xml/serializer/ToXMLSAXHandler;
    :goto_0
    return-void

    #@24
    .line 1723
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@26
    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@29
    goto :goto_0
.end method

.method public setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 2441
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    #@5
    .line 2439
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 4
    .param p1, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 2823
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@2
    monitor-enter v1

    #@3
    .line 2825
    if-nez p1, :cond_0

    #@5
    .line 2826
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "ER_NULL_ERROR_HANDLER"

    #@a
    const/4 v3, 0x0

    #@b
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 2823
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 2828
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 2820
    return-void
.end method

.method public setExceptionThrown(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 3018
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    #@2
    .line 3016
    return-void
.end method

.method setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 386
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 387
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionsTable;

    #@e
    invoke-direct {v1, p1}, Lorg/apache/xalan/extensions/ExtensionsTable;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@11
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 380
    :cond_0
    :goto_0
    return-void

    #@14
    .line 390
    :catch_0
    move-exception v0

    #@15
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    #@18
    goto :goto_0
.end method

.method public setOutputFormat(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 0
    .param p1, "oformat"    # Lorg/apache/xalan/templates/OutputProperties;

    #@0
    .prologue
    .line 1351
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    .line 1349
    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 4
    .param p1, "oformat"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 874
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@2
    monitor-enter v2

    #@3
    .line 876
    if-eqz p1, :cond_2

    #@5
    .line 880
    :try_start_0
    const-string/jumbo v1, "method"

    #@8
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 882
    .local v0, "method":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@10
    .line 883
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    #@12
    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@15
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@17
    .line 887
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@19
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    #@1c
    .line 891
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@1e
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@20
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputProperties()Ljava/util/Properties;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v0    # "method":Ljava/lang/String;
    :goto_1
    monitor-exit v2

    #@28
    .line 871
    return-void

    #@29
    .line 884
    .restart local v0    # "method":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 885
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    #@2f
    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    #@32
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 874
    .end local v0    # "method":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 896
    :cond_2
    const/4 v1, 0x0

    #@39
    :try_start_2
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 833
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@2
    monitor-enter v1

    #@3
    .line 838
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 841
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    #@15
    .line 840
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@17
    .line 844
    :cond_0
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    #@22
    const/4 v3, 0x1

    #@23
    new-array v3, v3, [Ljava/lang/Object;

    #@25
    const/4 v4, 0x0

    #@26
    aput-object p1, v3, v4

    #@28
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 833
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0

    #@33
    .line 848
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    #@35
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v1

    #@39
    .line 830
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1419
    if-nez p2, :cond_0

    #@3
    .line 1420
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "ER_INVALID_SET_PARAM_VALUE"

    #@8
    const/4 v6, 0x1

    #@9
    new-array v6, v6, [Ljava/lang/Object;

    #@b
    aput-object p1, v6, v7

    #@d
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 1423
    :cond_0
    new-instance v3, Ljava/util/StringTokenizer;

    #@17
    const-string/jumbo v4, "{}"

    #@1a
    invoke-direct {v3, p1, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@1d
    .line 1430
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 1431
    .local v1, "s1":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 1433
    :goto_0
    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@2d
    if-nez v4, :cond_1

    #@2f
    .line 1434
    new-instance v4, Ljava/util/Vector;

    #@31
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@34
    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    #@36
    .line 1436
    :cond_1
    if-nez v2, :cond_3

    #@38
    .line 1438
    new-instance v4, Lorg/apache/xml/utils/QName;

    #@3a
    invoke-direct {v4, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@40
    move-result-object v5

    #@41
    invoke-static {p2, v5}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@44
    move-result-object v5

    #@45
    invoke-direct {p0, v4, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    #@48
    .line 1439
    const/4 v4, 0x0

    #@49
    invoke-virtual {p0, v1, v4, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@4c
    .line 1416
    .end local v1    # "s1":Ljava/lang/String;
    :goto_1
    return-void

    #@4d
    .line 1431
    .restart local v1    # "s1":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    #@4e
    .local v2, "s2":Ljava/lang/String;
    goto :goto_0

    #@4f
    .line 1443
    .end local v2    # "s2":Ljava/lang/String;
    :cond_3
    new-instance v4, Lorg/apache/xml/utils/QName;

    #@51
    invoke-direct {v4, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@57
    move-result-object v5

    #@58
    invoke-static {p2, v5}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5b
    move-result-object v5

    #@5c
    invoke-direct {p0, v4, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    #@5f
    .line 1444
    invoke-virtual {p0, v2, v1, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    goto :goto_1

    #@63
    .line 1448
    .end local v1    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@64
    .local v0, "nsee":Ljava/util/NoSuchElementException;
    goto :goto_1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1385
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v7

    #@4
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@7
    move-result-object v5

    #@8
    .line 1386
    .local v5, "varstack":Lorg/apache/xpath/VariableStack;
    new-instance v1, Lorg/apache/xml/utils/QName;

    #@a
    invoke-direct {v1, p2, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1387
    .local v1, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@10
    move-result-object v7

    #@11
    invoke-static {p3, v7}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@14
    move-result-object v6

    #@15
    .line 1389
    .local v6, "xobject":Lorg/apache/xpath/objects/XObject;
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@17
    .line 1390
    .local v2, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    #@1a
    move-result-object v4

    #@1b
    .line 1391
    .local v4, "vars":Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@1e
    move-result v0

    #@1f
    .line 1392
    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@21
    if-ltz v0, :cond_1

    #@23
    .line 1394
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    #@29
    .line 1395
    .local v3, "variable":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    #@2c
    move-result v7

    #@2d
    const/16 v8, 0x29

    #@2f
    if-ne v7, v8, :cond_0

    #@31
    .line 1396
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    .line 1395
    if-eqz v7, :cond_0

    #@3b
    .line 1398
    invoke-virtual {v5, v0, v6}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1382
    .end local v3    # "variable":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-void
.end method

.method public setParameters(Ljava/util/Properties;)V
    .locals 8
    .param p1, "params"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 1575
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->clearParameters()V

    #@3
    .line 1577
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@6
    move-result-object v1

    #@7
    .line 1579
    .local v1, "names":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_2

    #@d
    .line 1581
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Ljava/lang/String;

    #@13
    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 1582
    .local v0, "name":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    #@19
    const-string/jumbo v6, "{}"

    #@1c
    const/4 v7, 0x0

    #@1d
    invoke-direct {v5, v0, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@20
    .line 1589
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 1590
    .local v3, "s1":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_0

    #@2a
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 1592
    :goto_1
    if-nez v4, :cond_1

    #@30
    .line 1593
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    const/4 v7, 0x0

    #@35
    invoke-virtual {p0, v3, v7, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@38
    goto :goto_0

    #@39
    .line 1598
    .end local v3    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@3a
    .local v2, "nsee":Ljava/util/NoSuchElementException;
    goto :goto_0

    #@3b
    .line 1590
    .end local v2    # "nsee":Ljava/util/NoSuchElementException;
    .restart local v3    # "s1":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    #@3c
    .local v4, "s2":Ljava/lang/String;
    goto :goto_1

    #@3d
    .line 1595
    .end local v4    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {p0, v4, v3, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 1572
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "s1":Ljava/lang/String;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_2
    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 0
    .param p1, "xoh"    # Lorg/apache/xml/serializer/SerializationHandler;

    #@0
    .prologue
    .line 3198
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    .line 3196
    return-void
.end method

.method public setSourceTreeDocForThread(I)V
    .locals 0
    .param p1, "doc"    # I

    #@0
    .prologue
    .line 3029
    iput p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    #@2
    .line 3027
    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "stylesheetRoot"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 2590
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    .line 2588
    return-void
.end method

.method public setTransformThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 501
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    #@2
    .line 499
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 2
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    #@0
    .prologue
    .line 1675
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@2
    monitor-enter v1

    #@3
    .line 1677
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@5
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Lorg/apache/xpath/SourceTreeManager;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1672
    return-void

    #@e
    .line 1675
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public setXPathContext(Lorg/apache/xpath/XPathContext;)V
    .locals 0
    .param p1, "xcontext"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 2626
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    .line 2624
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;)V
    .locals 1
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    #@4
    .line 524
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 1
    .param p1, "xmlSource"    # Ljavax/xml/transform/Source;
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1125
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V

    #@4
    .line 1123
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V
    .locals 3
    .param p1, "xmlSource"    # Ljavax/xml/transform/Source;
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .param p3, "shouldRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1140
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    #@2
    monitor-enter v2

    #@3
    .line 1142
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    #@6
    move-result-object v0

    #@7
    .line 1143
    .local v0, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    #@a
    .line 1145
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    #@c
    .line 1147
    invoke-virtual {p0, p1, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 1137
    return-void

    #@11
    .line 1140
    .end local v0    # "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public transform(Ljavax/xml/transform/Source;Z)V
    .locals 23
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "shouldRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@7
    move-result-object v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 547
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@d
    move-result-object v3

    #@e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@15
    .line 549
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    .line 552
    .local v8, "base":Ljava/lang/String;
    if-nez v8, :cond_1

    #@1b
    .line 554
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@1f
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getBaseIdentifier()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 558
    :cond_1
    if-nez v8, :cond_2

    #@25
    .line 560
    const-string/jumbo v11, ""
    :try_end_0
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@28
    .line 562
    .local v11, "currentDir":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v3, "user.dir"

    #@2b
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    move-result-object v11

    #@2f
    .line 566
    :goto_0
    :try_start_2
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@31
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_7

    #@37
    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "file://"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    .line 571
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 572
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 571
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    .line 574
    .end local v11    # "currentDir":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setBaseURLOfSource(Ljava/lang/String;)V

    #@6f
    .line 575
    move-object/from16 v0, p0

    #@71
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@73
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@76
    move-result-object v2

    #@77
    .line 584
    .local v2, "mgr":Lorg/apache/xml/dtm/DTMManager;
    move-object/from16 v0, p1

    #@79
    instance-of v3, v0, Ljavax/xml/transform/stream/StreamSource;

    #@7b
    if-eqz v3, :cond_8

    #@7d
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    if-nez v3, :cond_8

    #@83
    .line 585
    move-object/from16 v0, p1

    #@85
    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    #@87
    move-object v3, v0

    #@88
    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    #@8b
    move-result-object v3

    #@8c
    if-nez v3, :cond_8

    #@8e
    .line 586
    move-object/from16 v0, p1

    #@90
    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    #@92
    move-object v3, v0

    #@93
    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;
    :try_end_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@96
    move-result-object v3

    #@97
    if-nez v3, :cond_8

    #@99
    .line 593
    :cond_3
    :goto_2
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@9c
    move-result-object v10

    #@9d
    .line 594
    .local v10, "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@a0
    move-result-object v9

    #@a1
    .line 595
    .local v9, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@a4
    move-result-object v20

    #@a5
    .line 596
    .local v20, "systemID":Ljava/lang/String;
    new-instance v18, Ljavax/xml/transform/dom/DOMSource;

    #@a7
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    #@aa
    move-result-object v3

    #@ab
    move-object/from16 v0, v18

    #@ad
    invoke-direct {v0, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@b0
    .line 599
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .local v18, "source":Ljavax/xml/transform/Source;
    if-eqz v20, :cond_4

    #@b2
    .line 600
    :try_start_4
    move-object/from16 v0, v18

    #@b4
    move-object/from16 v1, v20

    #@b6
    invoke-interface {v0, v1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@b9
    :cond_4
    move-object/from16 p1, v18

    #@bb
    .line 606
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .end local v20    # "systemID":Ljava/lang/String;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_5
    :goto_3
    const/4 v4, 0x0

    #@bc
    const/4 v6, 0x1

    #@bd
    const/4 v7, 0x1

    #@be
    move-object/from16 v3, p1

    #@c0
    move-object/from16 v5, p0

    #@c2
    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@c5
    move-result-object v12

    #@c6
    .line 607
    .local v12, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v8}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@c9
    .line 609
    const/4 v15, 0x1

    #@ca
    .line 616
    .local v15, "hardDelete":Z
    :try_start_6
    invoke-interface {v12}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@cd
    move-result v3

    #@ce
    move-object/from16 v0, p0

    #@d0
    invoke-virtual {v0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d3
    .line 620
    if-eqz p2, :cond_6

    #@d5
    .line 621
    :try_start_7
    invoke-virtual {v2, v12, v15}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    #@d8
    .line 629
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    #@db
    move-result-object v13

    #@dc
    .line 631
    .local v13, "e":Ljava/lang/Exception;
    if-eqz v13, :cond_e

    #@de
    .line 633
    instance-of v3, v13, Ljavax/xml/transform/TransformerException;

    #@e0
    if-eqz v3, :cond_b

    #@e2
    .line 635
    check-cast v13, Ljavax/xml/transform/TransformerException;

    #@e4
    .end local v13    # "e":Ljava/lang/Exception;
    throw v13
    :try_end_7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@e5
    .line 653
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v15    # "hardDelete":Z
    :catch_0
    move-exception v22

    #@e6
    .line 654
    .local v22, "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :goto_4
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@e9
    move-result-object v21

    #@ea
    .line 656
    .local v21, "throwable":Ljava/lang/Throwable;
    :goto_5
    move-object/from16 v0, v21

    #@ec
    instance-of v3, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@ee
    if-eqz v3, :cond_f

    #@f0
    .line 660
    check-cast v21, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@f2
    .end local v21    # "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@f5
    move-result-object v21

    #@f6
    .restart local v21    # "throwable":Ljava/lang/Throwable;
    goto :goto_5

    #@f7
    .line 569
    .end local v21    # "throwable":Ljava/lang/Throwable;
    .end local v22    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v11    # "currentDir":Ljava/lang/String;
    :cond_7
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v4, "file:///"

    #@ff
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v3

    #@103
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v3

    #@107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v8

    #@10b
    goto/16 :goto_1

    #@10d
    .line 587
    .end local v11    # "currentDir":Ljava/lang/String;
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    :cond_8
    move-object/from16 v0, p1

    #@10f
    instance-of v3, v0, Ljavax/xml/transform/sax/SAXSource;

    #@111
    if-eqz v3, :cond_9

    #@113
    .line 588
    move-object/from16 v0, p1

    #@115
    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    #@117
    move-object v3, v0

    #@118
    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    #@11b
    move-result-object v3

    #@11c
    if-nez v3, :cond_9

    #@11e
    .line 589
    move-object/from16 v0, p1

    #@120
    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    #@122
    move-object v3, v0

    #@123
    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    #@126
    move-result-object v3

    #@127
    if-eqz v3, :cond_3

    #@129
    .line 590
    :cond_9
    move-object/from16 v0, p1

    #@12b
    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    #@12d
    if-eqz v3, :cond_5

    #@12f
    move-object/from16 v0, p1

    #@131
    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    #@133
    move-object v3, v0

    #@134
    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    #@137
    move-result-object v3

    #@138
    if-nez v3, :cond_5

    #@13a
    goto/16 :goto_2

    #@13c
    .line 602
    :catch_1
    move-exception v14

    #@13d
    .line 603
    .local v14, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    move-object/from16 v0, p0

    #@13f
    invoke-direct {v0, v14}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@142
    goto/16 :goto_3

    #@144
    .line 668
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v14    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v19

    #@145
    .line 669
    .local v19, "spe":Lorg/xml/sax/SAXParseException;
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    #@147
    move-object/from16 v1, v19

    #@149
    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@14c
    .line 677
    const/4 v3, 0x0

    #@14d
    move-object/from16 v0, p0

    #@14f
    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@151
    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    #@154
    .line 536
    .end local v19    # "spe":Lorg/xml/sax/SAXParseException;
    :goto_8
    return-void

    #@155
    .line 619
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v15    # "hardDelete":Z
    :catchall_0
    move-exception v3

    #@156
    .line 620
    if-eqz p2, :cond_a

    #@158
    .line 621
    :try_start_b
    invoke-virtual {v2, v12, v15}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    #@15b
    .line 619
    :cond_a
    throw v3
    :try_end_b
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@15c
    .line 672
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v15    # "hardDelete":Z
    :catch_3
    move-exception v17

    #@15d
    .line 673
    .local v17, "se":Lorg/xml/sax/SAXException;
    :goto_9
    :try_start_c
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@161
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@163
    move-object/from16 v0, v17

    #@165
    invoke-direct {v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@168
    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@16b
    .line 677
    const/4 v3, 0x0

    #@16c
    move-object/from16 v0, p0

    #@16e
    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@170
    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    #@173
    goto :goto_8

    #@174
    .line 637
    .end local v17    # "se":Lorg/xml/sax/SAXException;
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "hardDelete":Z
    :cond_b
    :try_start_d
    instance-of v3, v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@176
    if-eqz v3, :cond_d

    #@178
    .line 640
    check-cast v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@17a
    .end local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@17d
    move-result-object v3

    #@17e
    .line 639
    move-object/from16 v0, p0

    #@180
    invoke-direct {v0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@183
    .line 677
    :cond_c
    :goto_a
    const/4 v3, 0x0

    #@184
    move-object/from16 v0, p0

    #@186
    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@188
    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    #@18b
    goto :goto_8

    #@18c
    .line 644
    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_d
    :try_start_e
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@18e
    invoke-direct {v3, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@191
    throw v3
    :try_end_e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@192
    .line 676
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "hardDelete":Z
    :catchall_1
    move-exception v3

    #@193
    .line 677
    :goto_b
    const/4 v4, 0x0

    #@194
    move-object/from16 v0, p0

    #@196
    iput-boolean v4, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@198
    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    #@19b
    .line 676
    throw v3

    #@19c
    .line 647
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "hardDelete":Z
    :cond_e
    :try_start_f
    move-object/from16 v0, p0

    #@19e
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@1a0
    if-eqz v3, :cond_c

    #@1a2
    .line 649
    move-object/from16 v0, p0

    #@1a4
    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@1a6
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_f
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@1a9
    goto :goto_a

    #@1aa
    .line 663
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v8    # "base":Ljava/lang/String;
    .end local v12    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "hardDelete":Z
    .restart local v21    # "throwable":Ljava/lang/Throwable;
    .restart local v22    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_f
    :try_start_10
    move-object/from16 v0, p0

    #@1ac
    move-object/from16 v1, v21

    #@1ae
    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@1b1
    .line 677
    const/4 v3, 0x0

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    #@1b6
    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    #@1b9
    goto :goto_8

    #@1ba
    .line 676
    .end local v21    # "throwable":Ljava/lang/Throwable;
    .end local v22    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .restart local v8    # "base":Ljava/lang/String;
    .restart local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    .restart local v20    # "systemID":Ljava/lang/String;
    :catchall_2
    move-exception v3

    #@1bb
    move-object/from16 p1, v18

    #@1bd
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto :goto_b

    #@1be
    .line 653
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :catch_4
    move-exception v22

    #@1bf
    .restart local v22    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    move-object/from16 p1, v18

    #@1c1
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_4

    #@1c3
    .line 668
    .end local v22    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :catch_5
    move-exception v19

    #@1c4
    .restart local v19    # "spe":Lorg/xml/sax/SAXParseException;
    move-object/from16 p1, v18

    #@1c6
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_7

    #@1c8
    .line 672
    .end local v19    # "spe":Lorg/xml/sax/SAXParseException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :catch_6
    move-exception v17

    #@1c9
    .restart local v17    # "se":Lorg/xml/sax/SAXException;
    move-object/from16 p1, v18

    #@1cb
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto :goto_9

    #@1cc
    .line 602
    .end local v17    # "se":Lorg/xml/sax/SAXException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v18    # "source":Ljavax/xml/transform/Source;
    :catch_7
    move-exception v14

    #@1cd
    .restart local v14    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object/from16 p1, v18

    #@1cf
    .end local v18    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_6

    #@1d1
    .line 564
    .end local v2    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v20    # "systemID":Ljava/lang/String;
    .restart local v11    # "currentDir":Ljava/lang/String;
    :catch_8
    move-exception v16

    #@1d2
    .local v16, "se":Ljava/lang/SecurityException;
    goto/16 :goto_0
.end method

.method public transformNode(I)V
    .locals 25
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1186
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    move-result-object v19

    #@4
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, v19

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@b
    .line 1188
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@f
    move-object/from16 v20, v0

    #@11
    monitor-enter v20

    #@12
    .line 1190
    const/16 v19, 0x0

    #@14
    :try_start_0
    move/from16 v0, v19

    #@16
    move-object/from16 v1, p0

    #@18
    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    #@1a
    .line 1192
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@1d
    move-result-object v18

    #@1e
    .line 1193
    .local v18, "xctxt":Lorg/apache/xpath/XPathContext;
    move-object/from16 v0, v18

    #@20
    move/from16 v1, p1

    #@22
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@25
    move-result-object v5

    #@26
    .line 1197
    .local v5, "dtm":Lorg/apache/xml/dtm/DTM;
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushGlobalVars(I)V

    #@29
    .line 1202
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    #@2c
    move-result-object v16

    #@2d
    .line 1203
    .local v16, "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    #@30
    move-result v13

    #@31
    .line 1205
    .local v13, "n":I
    const/4 v8, 0x0

    #@32
    .local v8, "i":I
    :goto_0
    if-ge v8, v13, :cond_2

    #@34
    .line 1207
    move-object/from16 v0, v16

    #@36
    invoke-virtual {v0, v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@39
    move-result-object v9

    #@3a
    .line 1208
    .local v9, "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    #@3d
    move-result v11

    #@3e
    .line 1210
    .local v11, "includedCount":I
    const/4 v12, -0x1

    #@3f
    .local v12, "j":I
    :goto_1
    if-ge v12, v11, :cond_1

    #@41
    .line 1212
    invoke-virtual {v9, v12}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    #@44
    move-result-object v10

    #@45
    .line 1214
    .local v10, "included":Lorg/apache/xalan/templates/Stylesheet;
    move-object/from16 v0, p0

    #@47
    invoke-virtual {v10, v0}, Lorg/apache/xalan/templates/Stylesheet;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@4a
    .line 1216
    invoke-virtual {v10}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4d
    move-result-object v4

    #@4e
    .local v4, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2
    if-eqz v4, :cond_0

    #@50
    .line 1219
    move-object/from16 v0, p0

    #@52
    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@55
    .line 1217
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@58
    move-result-object v4

    #@59
    goto :goto_2

    #@5a
    .line 1210
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 1205
    .end local v4    # "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v10    # "included":Lorg/apache/xalan/templates/Stylesheet;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1225
    .end local v9    # "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v11    # "includedCount":I
    .end local v12    # "j":I
    :cond_2
    new-instance v6, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    #@62
    invoke-direct {v6}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>()V

    #@65
    .line 1226
    .local v6, "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    move/from16 v0, p1

    #@67
    move-object/from16 v1, v18

    #@69
    invoke-interface {v6, v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    #@6c
    .line 1227
    move-object/from16 v0, v18

    #@6e
    invoke-virtual {v0, v6}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@71
    .line 1230
    const/16 v19, 0x0

    #@73
    const/16 v21, 0x0

    #@75
    :try_start_2
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, v19

    #@79
    move-object/from16 v2, v21

    #@7b
    move/from16 v3, p1

    #@7d
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@80
    .line 1234
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@83
    .line 1239
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@87
    move-object/from16 v19, v0

    #@89
    if-eqz v19, :cond_3

    #@8b
    .line 1241
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@8f
    move-object/from16 v19, v0

    #@91
    invoke-interface/range {v19 .. v19}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@94
    .line 1299
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@97
    .end local v6    # "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    .end local v8    # "i":I
    .end local v13    # "n":I
    .end local v16    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    :goto_3
    monitor-exit v20

    #@98
    .line 1183
    return-void

    #@99
    .line 1233
    .restart local v6    # "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    .restart local v8    # "i":I
    .restart local v13    # "n":I
    .restart local v16    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    :catchall_0
    move-exception v19

    #@9a
    .line 1234
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    #@9d
    .line 1233
    throw v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@9e
    .line 1245
    .end local v6    # "dtmIter":Lorg/apache/xml/dtm/DTMIterator;
    .end local v8    # "i":I
    .end local v13    # "n":I
    .end local v16    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    :catch_0
    move-exception v14

    #@9f
    .line 1254
    .local v14, "se":Ljava/lang/Exception;
    :cond_4
    :goto_4
    :try_start_6
    instance-of v0, v14, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@a1
    move/from16 v19, v0

    #@a3
    if-eqz v19, :cond_5

    #@a5
    .line 1256
    move-object v0, v14

    #@a6
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@a8
    move-object/from16 v19, v0

    #@aa
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@ad
    move-result-object v7

    #@ae
    .line 1257
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_4

    #@b0
    .line 1258
    move-object v14, v7

    #@b1
    goto :goto_4

    #@b2
    .line 1261
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@b6
    move-object/from16 v19, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@b8
    if-eqz v19, :cond_6

    #@ba
    .line 1265
    :try_start_7
    instance-of v0, v14, Lorg/xml/sax/SAXParseException;

    #@bc
    move/from16 v19, v0

    #@be
    if-eqz v19, :cond_7

    #@c0
    .line 1266
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@c4
    move-object/from16 v21, v0

    #@c6
    move-object v0, v14

    #@c7
    check-cast v0, Lorg/xml/sax/SAXParseException;

    #@c9
    move-object/from16 v19, v0

    #@cb
    move-object/from16 v0, v21

    #@cd
    move-object/from16 v1, v19

    #@cf
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@d2
    .line 1281
    :cond_6
    :goto_5
    :try_start_8
    instance-of v0, v14, Ljavax/xml/transform/TransformerException;

    #@d4
    move/from16 v19, v0

    #@d6
    if-eqz v19, :cond_9

    #@d8
    .line 1283
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@dc
    move-object/from16 v19, v0

    #@de
    check-cast v14, Ljavax/xml/transform/TransformerException;

    #@e0
    .end local v14    # "se":Ljava/lang/Exception;
    move-object/from16 v0, v19

    #@e2
    invoke-interface {v0, v14}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@e5
    .line 1299
    :goto_6
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@e8
    goto :goto_3

    #@e9
    .line 1188
    .end local v5    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v18    # "xctxt":Lorg/apache/xpath/XPathContext;
    :catchall_1
    move-exception v19

    #@ea
    monitor-exit v20

    #@eb
    throw v19

    #@ec
    .line 1267
    .restart local v5    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v14    # "se":Ljava/lang/Exception;
    .restart local v18    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_7
    :try_start_a
    instance-of v0, v14, Ljavax/xml/transform/TransformerException;

    #@ee
    move/from16 v19, v0

    #@f0
    if-eqz v19, :cond_8

    #@f2
    .line 1269
    move-object v0, v14

    #@f3
    check-cast v0, Ljavax/xml/transform/TransformerException;

    #@f5
    move-object/from16 v17, v0

    #@f7
    .line 1270
    .local v17, "te":Ljavax/xml/transform/TransformerException;
    new-instance v15, Lorg/apache/xml/utils/SAXSourceLocator;

    #@f9
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@fc
    move-result-object v19

    #@fd
    move-object/from16 v0, v19

    #@ff
    invoke-direct {v15, v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Ljavax/xml/transform/SourceLocator;)V

    #@102
    .line 1271
    .local v15, "sl":Lorg/apache/xml/utils/SAXSourceLocator;
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@106
    move-object/from16 v19, v0

    #@108
    new-instance v21, Lorg/xml/sax/SAXParseException;

    #@10a
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@10d
    move-result-object v22

    #@10e
    move-object/from16 v0, v21

    #@110
    move-object/from16 v1, v22

    #@112
    move-object/from16 v2, v17

    #@114
    invoke-direct {v0, v1, v15, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@117
    move-object/from16 v0, v19

    #@119
    move-object/from16 v1, v21

    #@11b
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@11e
    goto :goto_5

    #@11f
    .line 1278
    .end local v15    # "sl":Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v17    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v7

    #@120
    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_5

    #@121
    .line 1275
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@125
    move-object/from16 v19, v0

    #@127
    new-instance v21, Lorg/xml/sax/SAXParseException;

    #@129
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@12c
    move-result-object v22

    #@12d
    new-instance v23, Lorg/apache/xml/utils/SAXSourceLocator;

    #@12f
    invoke-direct/range {v23 .. v23}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    #@132
    move-object/from16 v0, v21

    #@134
    move-object/from16 v1, v22

    #@136
    move-object/from16 v2, v23

    #@138
    invoke-direct {v0, v1, v2, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@13b
    move-object/from16 v0, v19

    #@13d
    move-object/from16 v1, v21

    #@13f
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@142
    goto :goto_5

    #@143
    .line 1298
    .end local v14    # "se":Ljava/lang/Exception;
    :catchall_2
    move-exception v19

    #@144
    .line 1299
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    #@147
    .line 1298
    throw v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@148
    .line 1285
    .restart local v14    # "se":Ljava/lang/Exception;
    :cond_9
    :try_start_c
    instance-of v0, v14, Lorg/xml/sax/SAXParseException;

    #@14a
    move/from16 v19, v0

    #@14c
    if-eqz v19, :cond_a

    #@14e
    .line 1287
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@152
    move-object/from16 v21, v0

    #@154
    new-instance v22, Ljavax/xml/transform/TransformerException;

    #@156
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@159
    move-result-object v23

    #@15a
    .line 1288
    new-instance v24, Lorg/apache/xml/utils/SAXSourceLocator;

    #@15c
    move-object v0, v14

    #@15d
    check-cast v0, Lorg/xml/sax/SAXParseException;

    #@15f
    move-object/from16 v19, v0

    #@161
    move-object/from16 v0, v24

    #@163
    move-object/from16 v1, v19

    #@165
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    #@168
    .line 1287
    move-object/from16 v0, v22

    #@16a
    move-object/from16 v1, v23

    #@16c
    move-object/from16 v2, v24

    #@16e
    invoke-direct {v0, v1, v2, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@171
    invoke-interface/range {v21 .. v22}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@174
    goto/16 :goto_6

    #@176
    .line 1293
    :cond_a
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    #@17a
    move-object/from16 v19, v0

    #@17c
    new-instance v21, Ljavax/xml/transform/TransformerException;

    #@17e
    move-object/from16 v0, v21

    #@180
    invoke-direct {v0, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@183
    move-object/from16 v0, v19

    #@185
    move-object/from16 v1, v21

    #@187
    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@18a
    goto/16 :goto_6
.end method

.method public transformNode(ILjavax/xml/transform/Result;)V
    .locals 1
    .param p1, "node"    # I
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1166
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    move-result-object v0

    #@4
    .line 1167
    .local v0, "xoh":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    #@7
    .line 1169
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    #@9
    .line 1171
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V

    #@c
    .line 1162
    return-void
.end method

.method public transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .locals 2
    .param p1, "templateParent"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1776
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    .line 1777
    .local v0, "dtmFrag":Lorg/apache/xml/dtm/DTM;
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .locals 2
    .param p1, "templateParent"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1753
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    .line 1754
    .local v0, "dtmFrag":Lorg/apache/xml/dtm/DTM;
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;
    .locals 10
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1877
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4
    move-result-object v0

    #@5
    .line 1878
    .local v0, "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v0, :cond_0

    #@7
    .line 1879
    const-string/jumbo v7, ""

    #@a
    return-object v7

    #@b
    .line 1880
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_1

    #@11
    iget-boolean v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 1882
    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@17
    .end local v0    # "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    return-object v7

    #@1c
    .line 1886
    .restart local v0    # "firstChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@1e
    .line 1890
    .local v3, "savedRTreeHandler":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@20
    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Ljava/io/StringWriter;

    #@26
    .line 1893
    .local v6, "sw":Ljava/io/StringWriter;
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@28
    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Lorg/apache/xml/serializer/ToTextStream;

    #@2e
    .line 1892
    iput-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@30
    .line 1895
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@32
    if-nez v7, :cond_2

    #@34
    .line 1901
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    #@36
    invoke-virtual {v7}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@39
    move-result-object v7

    #@3a
    .line 1900
    invoke-static {v7}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    #@3d
    move-result-object v5

    #@3e
    .line 1902
    .local v5, "serializer":Lorg/apache/xml/serializer/Serializer;
    check-cast v5, Lorg/apache/xml/serializer/SerializationHandler;

    #@40
    .end local v5    # "serializer":Lorg/apache/xml/serializer/Serializer;
    iput-object v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@42
    .line 1905
    :cond_2
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@44
    invoke-interface {v7, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@47
    .line 1906
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@49
    invoke-interface {v7, v6}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    #@4c
    .line 1919
    const/4 v7, 0x1

    #@4d
    :try_start_0
    invoke-virtual {p0, p1, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@50
    .line 1920
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@52
    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    #@55
    .line 1922
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    move-result-object v2

    #@59
    .line 1930
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@60
    .line 1934
    :try_start_1
    invoke-virtual {v6}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@63
    .line 1938
    :goto_0
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@65
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    #@68
    .line 1939
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@6a
    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    #@6d
    .line 1940
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@6f
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@71
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    #@74
    .line 1943
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@76
    .line 1946
    return-object v2

    #@77
    .line 1936
    :catch_0
    move-exception v1

    #@78
    .local v1, "ioe":Ljava/lang/Exception;
    goto :goto_0

    #@79
    .line 1925
    .end local v1    # "ioe":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/lang/String;
    :catch_1
    move-exception v4

    #@7a
    .line 1926
    .local v4, "se":Lorg/xml/sax/SAXException;
    :try_start_2
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@7c
    invoke-direct {v7, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@7f
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@80
    .line 1929
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v7

    #@81
    .line 1930
    invoke-virtual {v6}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@88
    .line 1934
    :try_start_3
    invoke-virtual {v6}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@8b
    .line 1938
    :goto_1
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@8d
    invoke-virtual {v8, v6}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    #@90
    .line 1939
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@92
    invoke-interface {v8}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    #@95
    .line 1940
    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    #@97
    iget-object v9, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@99
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    #@9c
    .line 1943
    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9e
    .line 1929
    throw v7

    #@9f
    .line 1936
    :catch_2
    move-exception v1

    #@a0
    .restart local v1    # "ioe":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public waitTransformThread()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2972
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getTransformThread()Ljava/lang/Thread;

    #@3
    move-result-object v2

    #@4
    .line 2974
    .local v2, "transformThread":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@6
    .line 2978
    :try_start_0
    invoke-static {v2, p0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    #@9
    .line 2980
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->hasTransformThreadErrorCatcher()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_1

    #@f
    .line 2982
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    #@12
    move-result-object v0

    #@13
    .line 2984
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    #@15
    .line 2986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@18
    .line 2987
    new-instance v3, Lorg/xml/sax/SAXException;

    #@1a
    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@1d
    throw v3

    #@1e
    .line 2993
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    #@1f
    .line 2964
    :cond_0
    :goto_0
    return-void

    #@20
    .line 2991
    :cond_1
    const/4 v3, 0x0

    #@21
    invoke-virtual {p0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0
.end method

.class public Lorg/apache/xalan/transformer/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/xml/dtm/DTMWSFilter;
.implements Lorg/apache/xpath/ExtensionsProvider;
.implements Lorg/apache/xml/serializer/SerializerTrace;


# instance fields
.field greylist m_attrSetStack:Ljava/util/Stack;

.field greylist m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

.field greylist m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

.field greylist m_currentMatchTemplates:Ljava/util/Stack;

.field greylist m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

.field greylist m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

.field greylist m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

.field private greylist m_doc:I

.field private greylist m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private greylist m_exceptionThrown:Ljava/lang/Exception;

.field private greylist m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

.field private greylist m_hasBeenReset:Z

.field private greylist m_hasTransformThreadErrorCatcher:Z

.field private greylist m_incremental:Z

.field greylist m_inputContentHandler:Lorg/xml/sax/ContentHandler;

.field private greylist m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

.field private greylist m_modes:Ljava/util/Stack;

.field private greylist m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

.field private greylist m_optimizer:Z

.field private greylist m_outputContentHandler:Lorg/xml/sax/ContentHandler;

.field private greylist m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private greylist m_outputStream:Ljava/io/FileOutputStream;

.field private greylist m_outputTarget:Ljavax/xml/transform/Result;

.field private greylist m_quietConflictWarnings:Z

.field private greylist m_reentryGuard:Ljava/lang/Boolean;

.field private greylist m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private greylist m_shouldReset:Z

.field private greylist m_source_location:Z

.field private greylist m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private greylist m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private greylist m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private greylist m_textformat:Lorg/apache/xalan/templates/OutputProperties;

.field private greylist m_transformThread:Ljava/lang/Thread;

.field private greylist m_urlOfSource:Ljava/lang/String;

.field greylist m_userParams:Ljava/util/Vector;

.field private greylist m_xcontext:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6

    .line 337
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 123
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 142
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 155
    new-instance v2, Lorg/apache/xml/utils/ObjectPool;

    const-class v3, Lorg/apache/xml/serializer/ToTextStream;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 163
    new-instance v2, Lorg/apache/xml/utils/ObjectPool;

    const-class v3, Ljava/io/StringWriter;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 170
    new-instance v2, Lorg/apache/xalan/templates/OutputProperties;

    const-string v3, "text"

    invoke-direct {v2, v3}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    .line 191
    new-instance v2, Lorg/apache/xml/utils/ObjectStack;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    .line 204
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    .line 214
    new-instance v2, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v2}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    .line 219
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 225
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    .line 240
    new-instance v2, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v2}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    .line 246
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 251
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 256
    new-instance v2, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v2}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    .line 263
    new-instance v2, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v2}, Lorg/apache/xml/utils/ObjectStack;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    .line 277
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    const/4 v2, 0x0

    .line 285
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    .line 293
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    .line 298
    new-instance v3, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v3, v2}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 306
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 316
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 319
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    .line 324
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    .line 360
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    .line 505
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 338
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    .line 339
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getIncremental()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    .line 340
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getSource_location()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 342
    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;)V

    .line 343
    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/DTMManager;->setIncremental(Z)V

    .line 344
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/DTMManager;->setIncremental(Z)V

    .line 345
    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/DTMManager;->setSource_location(Z)V

    .line 346
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/DTMManager;->setSource_location(Z)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 349
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSecureProcessing(Z)V

    .line 351
    :cond_c1
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setXPathContext(Lorg/apache/xpath/XPathContext;)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method private greylist fatalError(Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 686
    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_1a

    .line 687
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/xml/utils/SAXSourceLocator;

    check-cast p1, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 689
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void
.end method

.method private greylist replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .registers 6

    .line 1464
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2a

    .line 1468
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/Arg;

    .line 1470
    invoke-virtual {v2}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1472
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v2, Lorg/apache/xpath/Arg;

    invoke-direct {v2, p1, p2, v1}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {p0, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1478
    :cond_2a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xpath/Arg;

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private greylist resetUserParameters()V
    .registers 5

    .line 1540
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v0, :cond_5

    goto :goto_2f

    .line 1543
    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_2f

    .line 1546
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/Arg;

    .line 1547
    invoke-virtual {v1}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    .line 1550
    invoke-virtual {v2}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 1551
    invoke-virtual {v2}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 1553
    invoke-virtual {v1}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_2c} :catch_2f

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :catch_2f
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static greylist runTransformThread(Ljava/lang/Runnable;)V
    .registers 2

    const/4 v0, -0x1

    .line 2955
    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method private greylist transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1796
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 1805
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1809
    new-instance v2, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    .line 1810
    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1811
    invoke-virtual {v2, p0}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1814
    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1821
    :try_start_13
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 1826
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_19} :catch_2c
    .catchall {:try_start_13 .. :try_end_19} :catchall_2a

    const/4 v0, 0x1

    .line 1832
    :try_start_1a
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 1835
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 1841
    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2e

    .line 1845
    :try_start_24
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_27
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_27} :catch_2c
    .catchall {:try_start_24 .. :try_end_27} :catchall_2a

    .line 1856
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return p1

    :catchall_2a
    move-exception p1

    goto :goto_39

    :catch_2c
    move-exception p1

    goto :goto_33

    :catchall_2e
    move-exception p1

    .line 1845
    :try_start_2f
    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 1846
    throw p1
    :try_end_33
    .catch Lorg/xml/sax/SAXException; {:try_start_2f .. :try_end_33} :catch_2c
    .catchall {:try_start_2f .. :try_end_33} :catchall_2a

    .line 1850
    :goto_33
    :try_start_33
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_2a

    .line 1856
    :goto_39
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1857
    throw p1
.end method


# virtual methods
.method public greylist applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v4, p3

    .line 1965
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 1966
    invoke-interface {v7, v4}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_16

    :cond_14
    move v13, v12

    goto :goto_1f

    .line 1972
    :cond_16
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_14

    move v13, v11

    :goto_1f
    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v2, 0x2

    if-eqz p2, :cond_2e

    if-eqz v13, :cond_27

    goto :goto_2e

    :cond_27
    move v0, v2

    move-object v9, v7

    move v3, v12

    move-object/from16 v2, p2

    goto/16 :goto_a8

    :cond_2e
    :goto_2e
    const/4 v3, -0x1

    if-eqz v13, :cond_46

    .line 1982
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v5

    sub-int/2addr v5, v11

    .line 1984
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v6

    move-object v9, v7

    move v7, v6

    move v6, v5

    goto :goto_49

    :cond_46
    move v6, v3

    move-object v9, v7

    move v7, v12

    :goto_49
    if-eqz v13, :cond_54

    if-ne v6, v3, :cond_54

    const/4 v0, 0x0

    move/from16 v16, v2

    move-object v2, v0

    move/from16 v0, v16

    goto :goto_7e

    .line 2006
    :cond_54
    iget-object v3, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2010
    :try_start_56
    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 2012
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v5

    if-eqz v13, :cond_6e

    move v0, v2

    .line 2015
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v8, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    invoke-virtual/range {v2 .. v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    move/from16 v4, p3

    goto :goto_7b

    :catchall_6b
    move-exception v0

    goto/16 :goto_138

    :cond_6e
    move v0, v2

    .line 2018
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v6, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move/from16 v4, p3

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_6b

    move-object v9, v7

    .line 2024
    :goto_7b
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    :goto_7e
    if-nez v2, :cond_97

    if-eq v10, v11, :cond_a1

    if-eq v10, v0, :cond_99

    if-eq v10, v15, :cond_99

    if-eq v10, v14, :cond_99

    const/16 v2, 0x9

    if-eq v10, v2, :cond_91

    const/16 v2, 0xb

    if-eq v10, v2, :cond_a1

    return v12

    .line 2045
    :cond_91
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    :cond_97
    :goto_97
    move v3, v12

    goto :goto_a8

    .line 2041
    :cond_99
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    move v3, v11

    goto :goto_a8

    .line 2036
    :cond_a1
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    goto :goto_97

    .line 2059
    :goto_a8
    :try_start_a8
    invoke-virtual {v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 2060
    iget-object v5, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5, v4}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 2061
    invoke-virtual {v1, v2, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    if-nez v13, :cond_ca

    .line 2065
    new-instance v5, Lorg/apache/xpath/NodeSetDTM;

    iget-object v6, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 2066
    iget-object v6, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v6, v5}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_ca

    :catchall_c6
    move-exception v0

    goto :goto_11a

    :catch_c8
    move-exception v0

    goto :goto_114

    :cond_ca
    :goto_ca
    if-eqz v3, :cond_e3

    if-eq v10, v0, :cond_db

    if-eq v10, v15, :cond_d3

    if-eq v10, v14, :cond_d3

    goto :goto_f6

    .line 2076
    :cond_d3
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 2075
    invoke-static {v4, v10, v9, v0, v12}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V

    goto :goto_f6

    .line 2079
    :cond_db
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    invoke-interface {v9, v4, v0, v12}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_f6

    .line 2095
    :cond_e3
    iget-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2097
    iget-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    iget v4, v2, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v0, v4}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 2098
    invoke-virtual {v1, v2, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_f6
    .catch Lorg/xml/sax/SAXException; {:try_start_a8 .. :try_end_f6} :catch_c8
    .catchall {:try_start_a8 .. :try_end_f6} :catchall_c6

    :goto_f6
    if-nez v3, :cond_101

    .line 2108
    iget-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->unlink()V

    .line 2109
    :cond_101
    iget-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-nez v13, :cond_10d

    .line 2111
    iget-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 2113
    :cond_10d
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    .line 2115
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    return v11

    .line 2103
    :goto_114
    :try_start_114
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_11a
    .catchall {:try_start_114 .. :try_end_11a} :catchall_c6

    :goto_11a
    if-nez v3, :cond_125

    .line 2108
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->unlink()V

    .line 2109
    :cond_125
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-nez v13, :cond_131

    .line 2111
    iget-object v2, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 2113
    :cond_131
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    .line 2115
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 2116
    throw v0

    .line 2024
    :goto_138
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 2025
    throw v0
.end method

.method public whitelist test-api clearParameters()V
    .registers 4

    .line 1611
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1613
    :try_start_3
    new-instance v1, Lorg/apache/xpath/VariableStack;

    invoke-direct {v1}, Lorg/apache/xpath/VariableStack;-><init>()V

    .line 1615
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    const/4 v1, 0x0

    .line 1617
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    .line 1618
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public greylist createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p0

    return-object p0
.end method

.method public greylist createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 963
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMResult;

    const-string v1, "encoding"

    if-eqz v0, :cond_57

    .line 965
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 966
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v0, :cond_23

    .line 973
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v3, 0x9

    if-ne v3, p1, :cond_1e

    .line 975
    move-object v3, v0

    check-cast v3, Lorg/w3c/dom/Document;

    goto :goto_36

    .line 976
    :cond_1e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_36

    .line 980
    :cond_23
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v0

    .line 981
    invoke-static {v0}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 983
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    .line 985
    invoke-virtual {p1, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    move p1, v3

    move-object v3, v0

    :goto_36
    const/16 v4, 0xb

    if-ne v4, p1, :cond_42

    .line 990
    new-instance p1, Lorg/apache/xml/utils/DOMBuilder;

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    invoke-direct {p1, v3, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_47

    .line 991
    :cond_42
    new-instance p1, Lorg/apache/xml/utils/DOMBuilder;

    invoke-direct {p1, v3, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    :goto_47
    if-eqz v2, :cond_4c

    .line 994
    invoke-virtual {p1, v2}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 996
    :cond_4c
    invoke-virtual {p2, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 997
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0, p1, p1, p2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    goto/16 :goto_12e

    .line 999
    :cond_57
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    const/4 v2, 0x0

    if-eqz v0, :cond_af

    .line 1001
    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 1008
    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_6b

    .line 1009
    move-object v2, p1

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    .line 1013
    :cond_6b
    invoke-virtual {p2, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    const-string v1, "method"

    invoke-virtual {p2, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 1016
    new-instance v1, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/ToSAXHandler;->setShouldOutputNSAttr(Z)V

    .line 1021
    const-string v0, "doctype-public"

    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    const-string v2, "doctype-system"

    invoke-virtual {p2, v2}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8e

    .line 1024
    invoke-interface {v1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    :cond_8e
    if-eqz v0, :cond_93

    .line 1026
    invoke-interface {v1, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 1028
    :cond_93
    instance-of p2, p1, Lorg/apache/xalan/transformer/TransformerClient;

    if-eqz p2, :cond_a4

    .line 1029
    new-instance p2, Lorg/apache/xalan/transformer/XalanTransformState;

    invoke-direct {p2}, Lorg/apache/xalan/transformer/XalanTransformState;-><init>()V

    .line 1030
    check-cast p1, Lorg/apache/xalan/transformer/TransformerClient;

    invoke-interface {p1, p2}, Lorg/apache/xalan/transformer/TransformerClient;->setTransformState(Lorg/apache/xalan/transformer/TransformState;)V

    .line 1031
    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V

    :cond_a4
    move-object v0, v1

    goto/16 :goto_12e

    .line 1004
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler can not be null for a SAXResult"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1039
    :cond_af
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_14c

    .line 1041
    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    .line 1046
    :try_start_b5
    invoke-virtual {p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/apache/xml/serializer/SerializationHandler;

    .line 1048
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p2

    if-eqz p2, :cond_ce

    .line 1049
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_12e

    .line 1050
    :cond_ce
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_dc

    .line 1051
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_12e

    .line 1052
    :cond_dc
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_139

    .line 1054
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p1

    .line 1056
    const-string p2, "file:///"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_ec} :catch_145

    const-string v1, ":"

    if-eqz p2, :cond_107

    const/16 p2, 0x8

    .line 1058
    :try_start_f2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_101

    .line 1059
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_124

    :cond_101
    const/4 p2, 0x7

    .line 1061
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_124

    .line 1063
    :cond_107
    const-string p2, "file:/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_124

    const/4 p2, 0x6

    .line 1065
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_11f

    .line 1066
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_124

    :cond_11f
    const/4 p2, 0x5

    .line 1068
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1071
    :cond_124
    :goto_124
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 1073
    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_12e} :catch_145

    .line 1104
    :goto_12e
    invoke-interface {v0, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1106
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    .line 1107
    invoke-interface {v0, p0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object v0

    .line 1078
    :cond_139
    :try_start_139
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_NO_OUTPUT_SPECIFIED"

    invoke-static {p1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_145} :catch_145

    :catch_145
    move-exception p0

    .line 1092
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1097
    :cond_14c
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist currentFuncResultSeen()Z
    .registers 2

    .line 2795
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->empty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    .line 2796
    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public greylist currentTemplateRuleIsNull()Z
    .registers 2

    .line 2741
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    .line 2742
    invoke-virtual {p0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public greylist elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/QName;Lorg/xml/sax/ContentHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2141
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    if-eqz p3, :cond_a

    .line 2146
    :try_start_4
    invoke-virtual {p0, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    goto :goto_a

    :catchall_8
    move-exception p1

    goto :goto_1d

    .line 2147
    :cond_a
    :goto_a
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 2148
    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_8

    .line 2152
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-eqz p3, :cond_1c

    .line 2157
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_1c
    return-void

    .line 2152
    :goto_1d
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-eqz p3, :cond_25

    .line 2157
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 2158
    :cond_25
    throw p1
.end method

.method public greylist executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2260
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 2269
    :try_start_4
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 2273
    instance-of v1, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_15

    .line 2274
    move-object v1, p2

    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_16

    :catchall_f
    move-exception p1

    goto :goto_32

    :catch_11
    move-exception p1

    goto :goto_2b

    :catch_13
    move-exception p1

    goto :goto_31

    :cond_15
    const/4 v1, 0x0

    .line 2276
    :goto_16
    new-instance v2, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v1, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 2277
    invoke-interface {v2, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    const/4 p2, 0x1

    .line 2278
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_28} :catch_13
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_28} :catch_11
    .catchall {:try_start_4 .. :try_end_28} :catchall_f

    .line 2289
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void

    .line 2285
    :goto_2b
    :try_start_2b
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2282
    :goto_31
    throw p1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_f

    .line 2289
    :goto_32
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 2290
    throw p1
.end method

.method public greylist executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2177
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2182
    :cond_7
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz p1, :cond_33

    .line 2184
    move-object p1, v0

    check-cast p1, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object p1

    .line 2188
    :try_start_18
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 2189
    iget-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_22
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_22} :catch_28
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    .line 2197
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    return-void

    :catchall_26
    move-exception p1

    goto :goto_2f

    :catch_28
    move-exception p1

    .line 2193
    :try_start_29
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 2197
    :goto_2f
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 2198
    throw p1

    .line 2208
    :cond_33
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2209
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 2210
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v1

    .line 2211
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_44
    if-eqz v0, :cond_77

    if-nez p2, :cond_55

    .line 2220
    :try_start_48
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_55

    goto :goto_60

    :catchall_51
    move-exception p2

    goto :goto_6e

    :catch_53
    move-exception p2

    goto :goto_65

    .line 2223
    :cond_55
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2224
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v2, v0, v1}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2225
    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 2217
    :goto_60
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_64} :catch_53
    .catchall {:try_start_48 .. :try_end_64} :catchall_51

    goto :goto_44

    .line 2230
    :goto_65
    :try_start_65
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 2231
    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 2232
    throw v1
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_51

    .line 2236
    :goto_6e
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2237
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 2238
    throw p2

    .line 2236
    :cond_77
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 2237
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    return-void
.end method

.method public greylist extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 411
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object p0

    .line 419
    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist fireGenerateEvent(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist fireGenerateEvent(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public greylist fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 4

    .line 0
    return-void
.end method

.method public greylist fireGenerateEvent(I[CII)V
    .registers 5

    .line 0
    return-void
.end method

.method public greylist functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1

    .line 1735
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public greylist getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    const/4 v0, 0x0

    .line 2552
    :try_start_1
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    if-nez p0, :cond_a

    return-object v0

    .line 2554
    :cond_a
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    return-object v0
.end method

.method public greylist getCountersTable()Lorg/apache/xalan/transformer/CountersTable;
    .registers 2

    .line 2727
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    if-nez v0, :cond_b

    .line 2728
    new-instance v0, Lorg/apache/xalan/transformer/CountersTable;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/CountersTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 2730
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    return-object p0
.end method

.method public greylist getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 2

    .line 2453
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 2454
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getCurrentNode()I
    .registers 1

    .line 2465
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    return p0
.end method

.method public greylist getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 3

    .line 2482
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_13

    .line 2485
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_13

    .line 2487
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    goto :goto_4

    .line 2490
    :cond_13
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public greylist getCurrentTemplateElements()Lorg/apache/xml/utils/ObjectStack;
    .registers 1

    .line 2410
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    return-object p0
.end method

.method public greylist getCurrentTemplateElementsCount()I
    .registers 1

    .line 2398
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 1

    .line 2839
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public greylist getExceptionThrown()Ljava/lang/Exception;
    .registers 1

    .line 3006
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-object p0
.end method

.method public greylist getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;
    .registers 1

    .line 369
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    return-object p0
.end method

.method public greylist getFeature(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 2878
    const-string p0, "http://xml.org/trax/features/sax/input"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    return v0

    .line 2880
    :cond_a
    const-string p0, "http://xml.org/trax/features/dom/input"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    .line 2883
    :cond_13
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getIncremental()Z
    .registers 1

    .line 3255
    iget-boolean p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    return p0
.end method

.method public greylist getInputContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    const/4 v0, 0x0

    .line 1313
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object p0

    return-object p0
.end method

.method public greylist getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;
    .registers 4

    .line 1329
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_d

    .line 1334
    new-instance v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 1338
    :cond_d
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public greylist getKeyManager()Lorg/apache/xalan/transformer/KeyManager;
    .registers 1

    .line 2669
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    return-object p0
.end method

.method public greylist getMatchedNode()I
    .registers 1

    .line 2539
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->peepTail()I

    move-result p0

    return p0
.end method

.method public greylist getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 1

    .line 2527
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public greylist getMode()Lorg/apache/xml/utils/QName;
    .registers 2

    .line 2896
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public greylist getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;
    .registers 2

    .line 2807
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    if-nez v0, :cond_b

    .line 2808
    new-instance v0, Lorg/apache/xalan/transformer/MsgMgr;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/MsgMgr;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    .line 2810
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    return-object p0
.end method

.method public greylist getOptimize()Z
    .registers 1

    .line 3262
    iget-boolean p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    return p0
.end method

.method public greylist getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;
    .registers 2

    .line 1365
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v0, :cond_d

    .line 1366
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v0
.end method

.method public whitelist test-api getOutputProperties()Ljava/util/Properties;
    .registers 1

    .line 916
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public whitelist test-api getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object p0

    .line 727
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_21

    .line 731
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_21

    .line 732
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public greylist getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object p0

    .line 758
    invoke-virtual {p0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_27

    .line 762
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_27

    .line 763
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    :goto_27
    return-object p0
.end method

.method public whitelist test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 1501
    :try_start_1
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object p1

    .line 1503
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v1, :cond_a

    return-object v0

    .line 1506
    :cond_a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_30

    .line 1510
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/Arg;

    .line 1512
    invoke-virtual {v2}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1514
    invoke-virtual {v2}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0
    :try_end_2c
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_2c} :catch_30

    return-object p0

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :catch_30
    :cond_30
    return-object v0
.end method

.method public greylist getQuietConflictWarnings()Z
    .registers 1

    .line 2614
    iget-boolean p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    return p0
.end method

.method public greylist getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .registers 1

    .line 2647
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object p0
.end method

.method public greylist getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .registers 1

    .line 2658
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object p0
.end method

.method public greylist getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S
    .registers 5

    const/4 v0, 0x3

    .line 3164
    :try_start_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 3165
    invoke-virtual {v1, p0, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object p0

    if-nez p0, :cond_c

    return v0

    .line 3175
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    move-result p0
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_10} :catch_16

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0

    :catch_16
    return v0
.end method

.method public greylist getSource_location()Z
    .registers 1

    .line 3269
    iget-boolean p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    return p0
.end method

.method public final greylist getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 1

    .line 2601
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object p0
.end method

.method public greylist getTransformThread()Ljava/lang/Thread;
    .registers 1

    .line 490
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public greylist getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist test-api getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 1

    .line 1690
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/SourceTreeManager;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 1

    .line 2636
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    return-object p0
.end method

.method public greylist hasTraceListeners()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist hasTransformThreadErrorCatcher()Z
    .registers 1

    .line 515
    iget-boolean p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    return p0
.end method

.method public greylist init(Lorg/apache/xml/serializer/ToXMLSAXHandler;Ljavax/xml/transform/Transformer;Lorg/xml/sax/ContentHandler;)V
    .registers 4

    .line 3192
    invoke-virtual {p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 3193
    invoke-virtual {p1, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public greylist isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z
    .registers 3

    .line 2682
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    if-nez v0, :cond_b

    .line 2684
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 2687
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2689
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public greylist popCurrentFuncResult()Ljava/lang/Object;
    .registers 1

    .line 2784
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist popCurrentMatched()V
    .registers 2

    .line 2512
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2513
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->pop()I

    return-void
.end method

.method public greylist popCurrentTemplateRuleIsNull()V
    .registers 1

    .line 2763
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    return-void
.end method

.method public greylist popElemAttributeSet()V
    .registers 1

    .line 2716
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public greylist popElemTemplateElement()V
    .registers 1

    .line 2429
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public greylist popMode()V
    .registers 1

    .line 2920
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method greylist postExceptionFromThread(Ljava/lang/Exception;)V
    .registers 2

    .line 3062
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    .line 3065
    monitor-enter p0

    .line 3072
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3081
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public greylist processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v1, p0

    move/from16 v8, p2

    .line 2311
    iget-object v9, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 2312
    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v10

    if-lez v10, :cond_15

    .line 2315
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v12, v0

    goto :goto_16

    :cond_15
    const/4 v12, 0x0

    :goto_16
    const/4 v13, 0x0

    move v14, v13

    :goto_18
    if-ge v14, v10, :cond_cb

    .line 2320
    invoke-virtual {v7, v14}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v0

    .line 2323
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2324
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v2

    invoke-virtual {v2, v9, v8, v7}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    .line 2325
    :goto_2f
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemSort;->getDataType()Lorg/apache/xalan/templates/AVT;

    move-result-object v2

    invoke-virtual {v2, v9, v8, v7}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    .line 2328
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    const-string v6, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    if-ltz v3, :cond_4b

    .line 2329
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "TODO: Need to write the hooks for QNAME sort data type"

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_62

    .line 2331
    :cond_4b
    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2332
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2334
    const-string v3, "data-type"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v6, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2339
    :cond_62
    :goto_62
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2341
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemSort;->getOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v2

    invoke-virtual {v2, v9, v8, v7}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    .line 2344
    const-string v4, "ascending"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v15, "descending"

    if-nez v4, :cond_87

    .line 2345
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 2347
    const-string v4, "order"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2352
    :cond_87
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2354
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemSort;->getCaseOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 2359
    invoke-virtual {v2, v9, v8, v7}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    .line 2362
    const-string v15, "upper-first"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_ae

    const-string v11, "lower-first"

    .line 2363
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_ae

    .line 2365
    const-string v11, "case-order"

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v6, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2370
    :cond_ae
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v6, v2

    :goto_b3
    move-object v2, v0

    goto :goto_b7

    :cond_b5
    move v6, v13

    goto :goto_b3

    .line 2378
    :goto_b7
    new-instance v0, Lorg/apache/xalan/transformer/NodeSortKey;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemSort;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v2

    invoke-direct/range {v0 .. v7}, Lorg/apache/xalan/transformer/NodeSortKey;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    goto/16 :goto_18

    :cond_cb
    return-object v12
.end method

.method public greylist pushCurrentFuncResult(Ljava/lang/Object;)V
    .registers 2

    .line 2775
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist pushCurrentTemplateRuleIsNull(Z)V
    .registers 2

    .line 2754
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void
.end method

.method public greylist pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 2

    .line 2708
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 2

    .line 2421
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected greylist pushGlobalVars(I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    .line 1645
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 1646
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    .line 1647
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v1

    .line 1649
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1650
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->link(I)I

    :goto_15
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_39

    .line 1654
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/apache/xalan/templates/ElemVariable;

    .line 1657
    new-instance v4, Lorg/apache/xalan/templates/XUnresolvedVariable;

    .line 1658
    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, p0

    move v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/xalan/templates/XUnresolvedVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V

    .line 1660
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->elementAt(I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    if-nez p0, :cond_36

    .line 1661
    invoke-virtual {v0, v2, v4}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    :cond_36
    move p1, v6

    move-object p0, v7

    goto :goto_15

    :cond_39
    return-void
.end method

.method public greylist pushMode(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 2909
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V
    .registers 4

    .line 2503
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    return-void
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 432
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 436
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_12

    .line 440
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 449
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 451
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->reset()V

    .line 453
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/VariableStack;->reset()V

    .line 454
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->resetUserParameters()V

    .line 457
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->removeAllElements()V

    .line 458
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    .line 459
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    .line 461
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 462
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 463
    new-instance v1, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v1}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    .line 464
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    .line 465
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    .line 466
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    const/4 v1, -0x1

    .line 468
    iput v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    .line 470
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    .line 474
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/SourceTreeManager;->reset()V

    :cond_5b
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    const/4 v0, 0x0

    .line 3090
    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 3108
    :try_start_3
    iget v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_18
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 3125
    :try_start_8
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_46

    .line 3127
    check-cast v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    :goto_10
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_46

    :catch_14
    move-exception v0

    goto :goto_3f

    :catchall_16
    move-exception v0

    goto :goto_33

    :catch_18
    move-exception v0

    .line 3116
    :try_start_19
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_29

    .line 3117
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 3125
    :try_start_20
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_46

    .line 3127
    check-cast v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_14

    goto :goto_10

    .line 3119
    :cond_29
    :try_start_29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_16

    .line 3125
    :goto_33
    :try_start_33
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v2, :cond_3e

    .line 3127
    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V

    .line 3134
    :cond_3e
    throw v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_14

    .line 3140
    :goto_3f
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_47

    .line 3141
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V

    :cond_46
    :goto_46
    return-void

    .line 3143
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist runTransformThread()V
    .registers 2

    const/4 v0, -0x1

    .line 2944
    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method public greylist runTransformThread(I)V
    .registers 2

    .line 2933
    invoke-static {p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object p1

    .line 2934
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V

    return-void
.end method

.method public greylist setBaseURLOfSource(Ljava/lang/String;)V
    .registers 2

    .line 702
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    return-void
.end method

.method public greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 3

    if-eqz p1, :cond_1a

    .line 1712
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    .line 1714
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v0, :cond_16

    .line 1716
    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    .line 1717
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1718
    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1720
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void

    .line 1723
    :cond_16
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    .line 1708
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ER_NULL_CONTENT_HANDLER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 2

    .line 2441
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2823
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    if-eqz p1, :cond_b

    .line 2828
    :try_start_5
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 2829
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_18

    .line 2826
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NULL_ERROR_HANDLER"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2829
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_9

    throw p0
.end method

.method public greylist setExceptionThrown(Ljava/lang/Exception;)V
    .registers 2

    .line 3018
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-void
.end method

.method greylist setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 386
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 387
    new-instance v0, Lorg/apache/xalan/extensions/ExtensionsTable;

    invoke-direct {v0, p1}, Lorg/apache/xalan/extensions/ExtensionsTable;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :try_end_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 390
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    :cond_18
    return-void
.end method

.method public greylist setOutputFormat(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 2

    .line 1351
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    return-void
.end method

.method public whitelist test-api setOutputProperties(Ljava/util/Properties;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    if-eqz p1, :cond_35

    .line 880
    :try_start_5
    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 883
    new-instance v2, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v2, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_24

    :catchall_17
    move-exception p0

    goto :goto_3a

    .line 884
    :cond_19
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_24

    .line 885
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 887
    :cond_24
    :goto_24
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 891
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    goto :goto_38

    :cond_35
    const/4 p1, 0x0

    .line 896
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 898
    :goto_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_17

    throw p0
.end method

.method public whitelist test-api setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 838
    :try_start_3
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_1a

    .line 841
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/OutputProperties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/OutputProperties;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_37

    .line 844
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 848
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    monitor-exit v0

    return-void

    .line 845
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 849
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_18

    throw p0
.end method

.method public whitelist test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-eqz p2, :cond_50

    .line 1423
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "{}"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1430
    :try_start_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 1431
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v2

    .line 1433
    :goto_1b
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v1, :cond_26

    .line 1434
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    :cond_26
    if-nez v0, :cond_3c

    .line 1438
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    .line 1439
    invoke-virtual {p0, p1, v2, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1443
    :cond_3c
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    .line 1444
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_4f} :catch_4f

    :catch_4f
    return-void

    .line 1420
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_INVALID_SET_PARAM_VALUE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 1385
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 1386
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p2, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 1389
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1390
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p0

    .line 1391
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p2

    :cond_1f
    :goto_1f
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3f

    .line 1394
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/xalan/templates/ElemVariable;

    .line 1395
    invoke-virtual {p3}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1f

    .line 1396
    invoke-virtual {p3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 1398
    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_1f

    :cond_3f
    return-void
.end method

.method public greylist setParameters(Ljava/util/Properties;)V
    .registers 8

    .line 1575
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->clearParameters()V

    .line 1577
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1579
    :catch_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1581
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1582
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "{}"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1589
    :try_start_1f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1590
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_2f
    move-object v2, v5

    :goto_30
    if-nez v2, :cond_3a

    .line 1593
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v5, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 1595
    :cond_3a
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/util/NoSuchElementException; {:try_start_1f .. :try_end_41} :catch_7

    goto :goto_7

    :cond_42
    return-void
.end method

.method public greylist setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2

    .line 3198
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method

.method public greylist setSourceTreeDocForThread(I)V
    .registers 2

    .line 3029
    iput p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    return-void
.end method

.method public greylist setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 2590
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-void
.end method

.method public greylist setTransformThread(Ljava/lang/Thread;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-void
.end method

.method public whitelist test-api setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 3

    .line 1675
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1677
    :try_start_3
    iget-object p0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/SourceTreeManager;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 1678
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public greylist setXPathContext(Lorg/apache/xpath/XPathContext;)V
    .registers 2

    .line 2626
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method public greylist transform(Ljavax/xml/transform/Source;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 526
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    return-void
.end method

.method public whitelist test-api transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1125
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V

    return-void
.end method

.method public greylist transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1142
    :try_start_3
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    .line 1143
    invoke-virtual {p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 1145
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 1147
    invoke-virtual {p0, p1, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    .line 1148
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public greylist transform(Ljavax/xml/transform/Source;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 546
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v0
    :try_end_9
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1 .. :try_end_9} :catch_15d
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_9} :catch_15a
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_9} :catch_157
    .catchall {:try_start_1 .. :try_end_9} :catchall_154

    if-nez v0, :cond_2b

    .line 547
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    :try_end_16
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_b .. :try_end_16} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_b .. :try_end_16} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_16} :catch_1c
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_2b

    :catchall_17
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_183

    :catch_1c
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_160

    :catch_21
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_16b

    :catch_26
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_16f

    .line 549
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_2b .. :try_end_2f} :catch_15d
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2b .. :try_end_2f} :catch_15a
    .catch Lorg/xml/sax/SAXException; {:try_start_2b .. :try_end_2f} :catch_157
    .catchall {:try_start_2b .. :try_end_2f} :catchall_154

    if-nez v0, :cond_37

    .line 554
    :try_start_31
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v0

    :cond_37
    if-nez v0, :cond_88

    .line 560
    const-string v0, ""
    :try_end_3b
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_31 .. :try_end_3b} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_31 .. :try_end_3b} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_31 .. :try_end_3b} :catch_1c
    .catchall {:try_start_31 .. :try_end_3b} :catchall_17

    .line 562
    :try_start_3b
    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_41} :catch_41
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_3b .. :try_end_41} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3b .. :try_end_41} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_3b .. :try_end_41} :catch_1c
    .catchall {:try_start_3b .. :try_end_41} :catchall_17

    .line 566
    :catch_41
    :try_start_41
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    .line 569
    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_88
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_41 .. :try_end_88} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_41 .. :try_end_88} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_41 .. :try_end_88} :catch_1c
    .catchall {:try_start_41 .. :try_end_88} :catchall_17

    :cond_88
    move-object v2, v0

    .line 574
    :try_start_89
    invoke-virtual {p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setBaseURLOfSource(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    .line 584
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;
    :try_end_94
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_89 .. :try_end_94} :catch_15d
    .catch Lorg/xml/sax/SAXParseException; {:try_start_89 .. :try_end_94} :catch_15a
    .catch Lorg/xml/sax/SAXException; {:try_start_89 .. :try_end_94} :catch_157
    .catchall {:try_start_89 .. :try_end_94} :catchall_154

    if-eqz v0, :cond_ae

    :try_start_96
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ae

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    .line 585
    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_ae

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    .line 586
    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0
    :try_end_ac
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_96 .. :try_end_ac} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_96 .. :try_end_ac} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_96 .. :try_end_ac} :catch_1c
    .catchall {:try_start_96 .. :try_end_ac} :catchall_17

    if-eqz v0, :cond_d1

    :cond_ae
    :try_start_ae
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;
    :try_end_b0
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_ae .. :try_end_b0} :catch_15d
    .catch Lorg/xml/sax/SAXParseException; {:try_start_ae .. :try_end_b0} :catch_15a
    .catch Lorg/xml/sax/SAXException; {:try_start_ae .. :try_end_b0} :catch_157
    .catchall {:try_start_ae .. :try_end_b0} :catchall_154

    if-eqz v0, :cond_c4

    :try_start_b2
    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    .line 588
    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    if-nez v0, :cond_c4

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    .line 589
    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_c2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_b2 .. :try_end_c2} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_b2 .. :try_end_c2} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_b2 .. :try_end_c2} :catch_1c
    .catchall {:try_start_b2 .. :try_end_c2} :catchall_17

    if-eqz v0, :cond_d1

    :cond_c4
    :try_start_c4
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;
    :try_end_c6
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c4 .. :try_end_c6} :catch_15d
    .catch Lorg/xml/sax/SAXParseException; {:try_start_c4 .. :try_end_c6} :catch_15a
    .catch Lorg/xml/sax/SAXException; {:try_start_c4 .. :try_end_c6} :catch_157
    .catchall {:try_start_c4 .. :try_end_c6} :catchall_154

    if-eqz v0, :cond_f8

    :try_start_c8
    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    .line 590
    invoke-virtual {v0}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_cf
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c8 .. :try_end_cf} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_c8 .. :try_end_cf} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_c8 .. :try_end_cf} :catch_1c
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_17

    if-nez v0, :cond_f8

    .line 593
    :cond_d1
    :try_start_d1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 595
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 596
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {v5, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_e6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d1 .. :try_end_e6} :catch_f1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_d1 .. :try_end_e6} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_d1 .. :try_end_e6} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_d1 .. :try_end_e6} :catch_1c
    .catchall {:try_start_d1 .. :try_end_e6} :catchall_17

    if-eqz v4, :cond_ef

    .line 600
    :try_start_e8
    invoke-interface {v5, v4}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_eb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e8 .. :try_end_eb} :catch_ec
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e8 .. :try_end_eb} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_e8 .. :try_end_eb} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_e8 .. :try_end_eb} :catch_1c
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_17

    goto :goto_ef

    :catch_ec
    move-exception v0

    :goto_ed
    move-object p1, v0

    goto :goto_f4

    :cond_ef
    :goto_ef
    move-object v4, v5

    goto :goto_f9

    :catch_f1
    move-exception v0

    move-object v5, p1

    goto :goto_ed

    .line 603
    :goto_f4
    :try_start_f4
    invoke-direct {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_f7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f4 .. :try_end_f7} :catch_26
    .catch Lorg/xml/sax/SAXParseException; {:try_start_f4 .. :try_end_f7} :catch_21
    .catch Lorg/xml/sax/SAXException; {:try_start_f4 .. :try_end_f7} :catch_1c
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_17

    goto :goto_ef

    :cond_f8
    move-object v4, p1

    :goto_f9
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v6, p0

    .line 606
    :try_start_fd
    invoke-virtual/range {v3 .. v8}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 607
    invoke-interface {p0, v2}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V
    :try_end_104
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_fd .. :try_end_104} :catch_11c
    .catch Lorg/xml/sax/SAXParseException; {:try_start_fd .. :try_end_104} :catch_119
    .catch Lorg/xml/sax/SAXException; {:try_start_fd .. :try_end_104} :catch_116
    .catchall {:try_start_fd .. :try_end_104} :catchall_112

    const/4 p1, 0x1

    .line 616
    :try_start_105
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_10c
    .catchall {:try_start_105 .. :try_end_10c} :catchall_14d

    if-eqz p2, :cond_11f

    .line 621
    :try_start_10e
    invoke-virtual {v3, p0, p1}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    goto :goto_11f

    :catchall_112
    move-exception v0

    :goto_113
    move-object p1, v0

    goto/16 :goto_183

    :catch_116
    move-exception v0

    :goto_117
    move-object p1, v0

    goto :goto_160

    :catch_119
    move-exception v0

    :goto_11a
    move-object p1, v0

    goto :goto_16b

    :catch_11c
    move-exception v0

    :goto_11d
    move-object p1, v0

    goto :goto_16f

    .line 629
    :cond_11f
    :goto_11f
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_140

    .line 633
    instance-of p1, p0, Ljavax/xml/transform/TransformerException;

    if-nez p1, :cond_13d

    .line 637
    instance-of p1, p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz p1, :cond_137

    .line 639
    check-cast p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    .line 640
    invoke-virtual {p0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p0

    .line 639
    invoke-direct {v6, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V

    goto :goto_147

    .line 644
    :cond_137
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 635
    :cond_13d
    check-cast p0, Ljavax/xml/transform/TransformerException;

    throw p0

    .line 647
    :cond_140
    iget-object p0, v6, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz p0, :cond_147

    .line 649
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_147
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_10e .. :try_end_147} :catch_11c
    .catch Lorg/xml/sax/SAXParseException; {:try_start_10e .. :try_end_147} :catch_119
    .catch Lorg/xml/sax/SAXException; {:try_start_10e .. :try_end_147} :catch_116
    .catchall {:try_start_10e .. :try_end_147} :catchall_112

    .line 677
    :cond_147
    :goto_147
    iput-boolean v1, v6, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 680
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_182

    :catchall_14d
    move-exception v0

    if-eqz p2, :cond_153

    .line 621
    :try_start_150
    invoke-virtual {v3, p0, p1}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    .line 622
    :cond_153
    throw v0
    :try_end_154
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_150 .. :try_end_154} :catch_11c
    .catch Lorg/xml/sax/SAXParseException; {:try_start_150 .. :try_end_154} :catch_119
    .catch Lorg/xml/sax/SAXException; {:try_start_150 .. :try_end_154} :catch_116
    .catchall {:try_start_150 .. :try_end_154} :catchall_112

    :catchall_154
    move-exception v0

    move-object v6, p0

    goto :goto_113

    :catch_157
    move-exception v0

    move-object v6, p0

    goto :goto_117

    :catch_15a
    move-exception v0

    move-object v6, p0

    goto :goto_11a

    :catch_15d
    move-exception v0

    move-object v6, p0

    goto :goto_11d

    .line 673
    :goto_160
    :try_start_160
    iget-object p0, v6, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_147

    .line 669
    :goto_16b
    invoke-direct {v6, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V

    goto :goto_147

    .line 654
    :goto_16f
    invoke-virtual {p1}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p0

    .line 656
    :goto_173
    instance-of p1, p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz p1, :cond_17e

    .line 659
    check-cast p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    .line 660
    invoke-virtual {p0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p0

    goto :goto_173

    .line 663
    :cond_17e
    invoke-direct {v6, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_181
    .catchall {:try_start_160 .. :try_end_181} :catchall_112

    goto :goto_147

    :goto_182
    return-void

    .line 677
    :goto_183
    iput-boolean v1, v6, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    .line 680
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    .line 681
    throw p1
.end method

.method public greylist transformNode(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1186
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 1188
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1190
    :try_start_b
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    .line 1192
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 1193
    invoke-virtual {v2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_6a

    .line 1197
    :try_start_14
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushGlobalVars(I)V

    .line 1202
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v3

    .line 1203
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v4

    :goto_1f
    if-ge v1, v4, :cond_4c

    .line 1207
    invoke-virtual {v3, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    .line 1208
    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v6

    const/4 v7, -0x1

    :goto_2a
    if-ge v7, v6, :cond_49

    .line 1212
    invoke-virtual {v5, v7}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v8

    .line 1214
    invoke-virtual {v8, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1216
    invoke-virtual {v8}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v8

    :goto_37
    if-eqz v8, :cond_46

    .line 1219
    invoke-virtual {v8, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1217
    invoke-virtual {v8}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v8

    goto :goto_37

    :catchall_41
    move-exception p1

    goto/16 :goto_f6

    :catch_44
    move-exception p1

    goto :goto_72

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1225
    :cond_4c
    new-instance v1, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v1}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>()V

    .line 1226
    invoke-interface {v1, p1, v2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 1227
    invoke-virtual {v2, v1}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_57} :catch_44
    .catchall {:try_start_14 .. :try_end_57} :catchall_41

    const/4 v1, 0x0

    .line 1230
    :try_start_58
    invoke-virtual {p0, v1, v1, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6d

    .line 1234
    :try_start_5b
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 1239
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz p1, :cond_65

    .line 1241
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_65} :catch_44
    .catchall {:try_start_5b .. :try_end_65} :catchall_41

    .line 1299
    :cond_65
    :goto_65
    :try_start_65
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_6a

    goto/16 :goto_f4

    :catchall_6a
    move-exception p0

    goto/16 :goto_fa

    :catchall_6d
    move-exception p1

    .line 1234
    :try_start_6e
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 1235
    throw p1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_44
    .catchall {:try_start_6e .. :try_end_72} :catchall_41

    .line 1254
    :cond_72
    :goto_72
    :try_start_72
    instance-of v1, p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v1, :cond_81

    .line 1256
    move-object v1, p1

    check-cast v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v1}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_72

    move-object p1, v1

    goto :goto_72

    .line 1261
    :cond_81
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;
    :try_end_83
    .catchall {:try_start_72 .. :try_end_83} :catchall_41

    if-eqz v1, :cond_c0

    .line 1265
    :try_start_85
    instance-of v2, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v2, :cond_90

    .line 1266
    move-object v2, p1

    check-cast v2, Lorg/xml/sax/SAXParseException;

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_c0

    .line 1267
    :cond_90
    instance-of v2, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_af

    .line 1269
    move-object v1, p1

    check-cast v1, Ljavax/xml/transform/TransformerException;

    .line 1270
    new-instance v2, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Ljavax/xml/transform/SourceLocator;)V

    .line 1271
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_c0

    .line 1275
    :cond_af
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v4}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    invoke-direct {v2, v3, v4, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_c0} :catch_c0
    .catchall {:try_start_85 .. :try_end_c0} :catchall_41

    .line 1281
    :catch_c0
    :cond_c0
    :goto_c0
    :try_start_c0
    instance-of v1, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_cc

    .line 1283
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-interface {v1, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_65

    .line 1285
    :cond_cc
    instance-of v1, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v1, :cond_e8

    .line 1287
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v5, p1

    check-cast v5, Lorg/xml/sax/SAXParseException;

    invoke-direct {v4, v5}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v2, v3, v4, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto/16 :goto_65

    .line 1293
    :cond_e8
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_f2
    .catchall {:try_start_c0 .. :try_end_f2} :catchall_41

    goto/16 :goto_65

    .line 1301
    :goto_f4
    :try_start_f4
    monitor-exit v0

    return-void

    .line 1299
    :goto_f6
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    .line 1300
    throw p1

    .line 1301
    :goto_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_6a

    throw p0
.end method

.method public greylist transformNode(ILjavax/xml/transform/Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 1167
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 1169
    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    .line 1171
    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V

    return-void
.end method

.method public greylist transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 1777
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result p0

    return p0
.end method

.method public greylist transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1753
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 1754
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result p0

    return p0
.end method

.method public greylist transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1877
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1879
    const-string p0, ""

    return-object p0

    .line 1880
    :cond_9
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v1, :cond_1a

    .line 1882
    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1886
    :cond_1a
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1890
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 1892
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    .line 1893
    invoke-virtual {v2}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/serializer/ToTextStream;

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v2, :cond_3e

    .line 1900
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    .line 1901
    invoke-virtual {v2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v2

    .line 1900
    invoke-static {v2}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v2

    .line 1902
    check-cast v2, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1905
    :cond_3e
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1906
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1919
    :try_start_4a
    invoke-virtual {p0, p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 1920
    iget-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 1922
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_56
    .catch Lorg/xml/sax/SAXException; {:try_start_4a .. :try_end_56} :catch_76
    .catchall {:try_start_4a .. :try_end_56} :catchall_74

    .line 1930
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1934
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_60

    .line 1938
    :catch_60
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1939
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 1940
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1943
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object p1

    :catchall_74
    move-exception p1

    goto :goto_7d

    :catch_76
    move-exception p1

    .line 1926
    :try_start_77
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_74

    .line 1930
    :goto_7d
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1934
    :try_start_84
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_87

    .line 1938
    :catch_87
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1939
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    .line 1940
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    .line 1943
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 1944
    throw p1
.end method

.method public greylist waitTransformThread()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2972
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getTransformThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2978
    :try_start_6
    invoke-static {v0, p0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 2980
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->hasTransformThreadErrorCatcher()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2982
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_1f

    .line 2986
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2987
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    .line 2991
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    return-void
.end method

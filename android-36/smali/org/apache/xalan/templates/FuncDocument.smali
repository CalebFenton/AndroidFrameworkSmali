.class public Lorg/apache/xalan/templates/FuncDocument;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncDocument.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x227678209ab58610L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist checkNumberArgs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/4 v0, 0x2

    if-le p1, v0, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 441
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncDocument;->reportWrongNumberArgs()V

    return-void
.end method

.method public greylist error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 393
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    .line 395
    new-instance p3, Ljavax/xml/transform/TransformerException;

    .line 396
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_17

    .line 399
    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 401
    :cond_17
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 76
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 78
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v1

    .line 79
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v3, :cond_4f

    .line 91
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    .line 93
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v8

    if-ne v4, v8, :cond_49

    .line 95
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v7

    if-ne v7, v6, :cond_40

    .line 102
    const-string v0, "WG_EMPTY_SECOND_ARG"

    invoke-virtual {p0, p1, v0, v5}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance p0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    return-object p0

    .line 106
    :cond_40
    invoke-virtual {p1, v7}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 107
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    goto :goto_65

    .line 125
    :cond_49
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    const-string v7, ""

    goto :goto_65

    .line 140
    :cond_4f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    goto :goto_58

    :cond_57
    const/4 v7, 0x0

    :goto_58
    const-string v8, "Namespace context can not be null!"

    invoke-virtual {p0, v7, v8}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 144
    :goto_65
    new-instance v8, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 145
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v9

    .line 146
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v10

    if-ne v4, v10, :cond_7d

    .line 147
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v4

    goto :goto_7e

    :cond_7d
    move-object v4, v5

    :goto_7e
    move v10, v6

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_87

    .line 150
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    if-eq v6, v10, :cond_d6

    :cond_87
    if-eqz v4, :cond_92

    .line 153
    invoke-virtual {p1, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v11

    goto :goto_96

    :cond_92
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v11

    :goto_96
    if-nez v3, :cond_a2

    if-eq v6, v10, :cond_a2

    .line 165
    invoke-virtual {p1, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 166
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    :cond_a2
    if-nez v11, :cond_a5

    goto :goto_7f

    :cond_a5
    if-ne v6, v1, :cond_ac

    .line 174
    const-string v12, "ER_NO_CONTEXT_OWNERDOC"

    invoke-virtual {p0, p1, v12, v5}, Lorg/apache/xalan/templates/FuncDocument;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ac
    const/16 v12, 0x3a

    .line 183
    invoke-interface {v11, v12}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v12

    const/16 v13, 0x2f

    .line 184
    invoke-interface {v11, v13}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v13

    if-eq v12, v6, :cond_bf

    if-eq v13, v6, :cond_bf

    if-ge v12, v13, :cond_bf

    move-object v7, v5

    .line 194
    :cond_bf
    invoke-interface {v11}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p1, v0, v11, v7}, Lorg/apache/xalan/templates/FuncDocument;->getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eq v6, v11, :cond_d2

    .line 200
    invoke-virtual {v9, v11}, Lorg/apache/xpath/NodeSetDTM;->contains(I)Z

    move-result v12

    if-nez v12, :cond_d2

    .line 202
    invoke-virtual {v9, v11}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    :cond_d2
    if-eqz v4, :cond_d6

    if-ne v11, v6, :cond_7f

    :cond_d6
    return-object v8
.end method

.method greylist getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object p2

    .line 237
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v0

    invoke-virtual {p2, p4, p3, v0}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v0

    .line 238
    invoke-virtual {p2, v0}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_177
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_10} :catch_179

    const/4 v2, -0x1

    if-eq v2, v1, :cond_14

    return v1

    .line 254
    :cond_14
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3a

    .line 257
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p3

    .line 260
    :try_start_22
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v0

    invoke-virtual {p2, p4, p3, v0}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_3a

    :catch_2b
    move-exception p0

    .line 264
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 265
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p2, p3, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw p2

    .line 273
    :cond_3a
    :goto_3a
    const-string v3, ""

    const/4 v4, 0x0

    if-eqz p3, :cond_51

    :try_start_3f
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_51

    .line 275
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I

    move-result v1

    goto/16 :goto_140

    :catchall_4f
    move-exception p2

    goto :goto_70

    .line 280
    :cond_51
    const-string p2, "WG_CANNOT_MAKE_URL_FROM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_5c

    move-object v5, v3

    goto :goto_5d

    :cond_5c
    move-object v5, p4

    .line 281
    :goto_5d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_3f .. :try_end_6e} :catchall_4f

    goto/16 :goto_140

    .line 290
    :goto_70
    instance-of v0, p2, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v0, :cond_7b

    .line 293
    check-cast p2, Lorg/apache/xml/utils/WrappedRuntimeException;

    .line 294
    invoke-virtual {p2}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_70

    .line 297
    :cond_7b
    instance-of v0, p2, Ljava/lang/NullPointerException;

    if-nez v0, :cond_16f

    instance-of v0, p2, Ljava/lang/ClassCastException;

    if-nez v0, :cond_16f

    .line 304
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 305
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 307
    instance-of v0, p2, Ljavax/xml/transform/TransformerException;

    const-string v5, "): "

    const-string v6, " ("

    if-eqz v0, :cond_117

    .line 309
    move-object v0, p2

    check-cast v0, Ljavax/xml/transform/TransformerException;

    :cond_98
    :goto_98
    if-eqz v0, :cond_13b

    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c4

    .line 318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    :cond_c4
    instance-of v7, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v7, :cond_115

    .line 324
    check-cast v0, Ljavax/xml/transform/TransformerException;

    .line 326
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v7

    if-eqz v7, :cond_106

    .line 327
    invoke-interface {v7}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_106

    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Line #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-interface {v7}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Column #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-interface {v7}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_106
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 335
    instance-of v7, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v7, :cond_98

    .line 336
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_98

    :cond_115
    move-object v0, v4

    goto :goto_98

    .line 345
    :cond_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :cond_13b
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v1, v2

    :goto_140
    if-ne v2, v1, :cond_16e

    .line 356
    const-string p2, "WG_CANNOT_LOAD_REQUESTED_DOC"

    if-eqz v4, :cond_14e

    .line 358
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16e

    :cond_14e
    if-nez p3, :cond_163

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_158

    move-object p4, v3

    :cond_158
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_167

    :cond_163
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_167
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16e
    :goto_16e
    return v1

    .line 300
    :cond_16f
    new-instance p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :catch_177
    move-exception p0

    goto :goto_180

    :catch_179
    move-exception p0

    .line 247
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 242
    :goto_180
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 243
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p2, p3, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public greylist isNodesetExpr()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 451
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "ER_ONE_OR_TWO"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 419
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    .line 421
    new-instance p3, Ljavax/xml/transform/TransformerException;

    .line 422
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_17

    .line 425
    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 427
    :cond_17
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

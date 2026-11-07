.class public Lorg/apache/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field private static final greylist DEBUG_MATCHES:Z = false

.field public static final greylist MATCH:I = 0x1

.field public static final greylist MATCH_SCORE_NODETEST:D = -0.5

.field public static final greylist MATCH_SCORE_NONE:D = -Infinity

.field public static final greylist MATCH_SCORE_NSWILD:D = -0.25

.field public static final greylist MATCH_SCORE_OTHER:D = 0.5

.field public static final greylist MATCH_SCORE_QNAME:D = 0.0

.field public static final greylist SELECT:I = 0x0

.field static final whitelist serialVersionUID:J = 0x372f57bff437e299L


# instance fields
.field private transient greylist m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private greylist m_mainExp:Lorg/apache/xpath/Expression;

.field greylist m_patternString:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 266
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 168
    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    if-nez p5, :cond_10

    .line 170
    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    .line 172
    :cond_10
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    .line 174
    new-instance v0, Lorg/apache/xpath/compiler/XPathParser;

    invoke-direct {v0, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    .line 175
    new-instance v1, Lorg/apache/xpath/compiler/Compiler;

    iget-object v2, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v1, p5, p2, v2}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    if-nez p4, :cond_24

    .line 178
    invoke-virtual {v0, v1, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_2a

    :cond_24
    const/4 p5, 0x1

    if-ne p5, p4, :cond_3e

    .line 180
    invoke-virtual {v0, v1, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    :goto_2a
    const/4 p1, 0x0

    .line 185
    invoke-virtual {v1, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    if-eqz p2, :cond_3d

    .line 190
    instance-of p0, p2, Lorg/apache/xpath/ExpressionNode;

    if-eqz p0, :cond_3d

    .line 192
    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    invoke-virtual {p1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_3d
    return-void

    .line 182
    :cond_3e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_CANNOT_DEAL_XPATH_TYPE"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p6, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    if-nez p5, :cond_c

    .line 219
    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    .line 221
    :cond_c
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    .line 223
    new-instance p6, Lorg/apache/xpath/compiler/XPathParser;

    invoke-direct {p6, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    .line 224
    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    iget-object v1, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0, p5, p2, v1}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    if-nez p4, :cond_20

    .line 227
    invoke-virtual {p6, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_26

    :cond_20
    const/4 p5, 0x1

    if-ne p5, p4, :cond_3a

    .line 229
    invoke-virtual {p6, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    :goto_26
    const/4 p1, 0x0

    .line 237
    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    if-eqz p2, :cond_39

    .line 242
    instance-of p0, p2, Lorg/apache/xpath/ExpressionNode;

    if-eqz p0, :cond_39

    .line 244
    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    invoke-virtual {p1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_39
    return-void

    .line 231
    :cond_3a
    new-instance p0, Ljava/lang/RuntimeException;

    .line 233
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 231
    const-string p2, "ER_CANNOT_DEAL_XPATH_TYPE"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 279
    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    return-void
.end method

.method private greylist initFunctionTable()V
    .registers 2

    .line 62
    new-instance v0, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method


# virtual methods
.method public greylist assertion(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 553
    :cond_3
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 557
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 406
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 408
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 412
    :try_start_6
    iget-object p2, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {p2, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result p0
    :try_end_c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_15
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return p0

    :catchall_13
    move-exception p0

    goto :goto_65

    :catch_15
    move-exception p2

    goto :goto_19

    :catch_17
    move-exception p2

    goto :goto_51

    .line 427
    :goto_19
    :try_start_19
    instance-of p3, p2, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz p3, :cond_24

    .line 429
    check-cast p2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {p2}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_19

    .line 433
    :cond_24
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_30

    .line 435
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_37

    .line 436
    :cond_30
    const-string p3, "ER_XPATH_ERROR"

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 441
    :cond_37
    new-instance v0, Ljavax/xml/transform/TransformerException;

    .line 442
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-direct {v0, p3, p0, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 443
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 447
    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_13

    .line 454
    :goto_49
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_62

    .line 450
    :cond_50
    :try_start_50
    throw v0

    .line 416
    :goto_51
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 417
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 420
    invoke-interface {p0, p2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    goto :goto_49

    :goto_62
    const/4 p0, 0x0

    return p0

    .line 423
    :cond_64
    throw p2
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_13

    .line 454
    :goto_65
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 457
    throw p0
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 609
    iget-object p1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-interface {p1, p0, p2}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public greylist error(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 581
    invoke-static {p3, p4}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 582
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 586
    new-instance p3, Ljavax/xml/transform/TransformerException;

    .line 587
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 586
    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 591
    :cond_19
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    .line 592
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; file "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; line "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; column "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 329
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 331
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    const/4 p2, 0x0

    .line 337
    :try_start_7
    iget-object p3, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {p3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_d} :catch_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_16
    .catchall {:try_start_7 .. :try_end_d} :catchall_14

    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object p0

    :catchall_14
    move-exception p0

    goto :goto_64

    :catch_16
    move-exception p3

    goto :goto_1a

    :catch_18
    move-exception p3

    goto :goto_51

    .line 352
    :goto_1a
    :try_start_1a
    instance-of v0, p3, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v0, :cond_25

    .line 354
    check-cast p3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {p3}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p3

    goto :goto_1a

    .line 358
    :cond_25
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 361
    :cond_31
    const-string v0, "ER_XPATH_ERROR"

    invoke-static {v0, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_37
    new-instance v1, Ljavax/xml/transform/TransformerException;

    .line 366
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-direct {v1, v0, p0, p3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 367
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 371
    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_49
    .catchall {:try_start_1a .. :try_end_49} :catchall_14

    .line 378
    :goto_49
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_62

    .line 374
    :cond_50
    :try_start_50
    throw v1

    .line 341
    :goto_51
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 342
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_63

    .line 345
    invoke-interface {p0, p3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    goto :goto_49

    :goto_62
    return-object p2

    .line 348
    :cond_63
    throw p3
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_14

    .line 378
    :goto_64
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 381
    throw p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 304
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 88
    iget-object p0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 73
    iget-object p0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getLocator()Ljavax/xml/transform/SourceLocator;
    .registers 1

    .line 112
    iget-object p0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 482
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 483
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 487
    :try_start_6
    iget-object p0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    .line 501
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v0

    :catchall_17
    move-exception p0

    .line 501
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 503
    throw p0
.end method

.method public greylist getPatternString()Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 101
    :cond_b
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist warn(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 528
    invoke-static {p3, p4}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 529
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 535
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_18
    return-void
.end method

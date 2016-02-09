.class public Lorg/apache/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field public static final MATCH:I = 0x1

.field public static final MATCH_SCORE_NODETEST:D = -0.5

.field public static final MATCH_SCORE_NONE:D = -Infinity

.field public static final MATCH_SCORE_NSWILD:D = -0.25

.field public static final MATCH_SCORE_OTHER:D = 0.5

.field public static final MATCH_SCORE_QNAME:D = 0.0

.field public static final SELECT:I = 0x0

.field static final serialVersionUID:J = 0x372f57bff437e299L


# instance fields
.field private transient m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private m_mainExp:Lorg/apache/xpath/Expression;

.field m_patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V
    .locals 6
    .param p1, "exprString"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@9
    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V
    .locals 8
    .param p1, "exprString"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p4, "type"    # I
    .param p5, "errorListener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 56
    iput-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@8
    .line 168
    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    #@b
    .line 169
    if-nez p5, :cond_0

    #@d
    .line 170
    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@f
    .end local p5    # "errorListener":Ljavax/xml/transform/ErrorListener;
    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    #@12
    .line 172
    .restart local p5    # "errorListener":Ljavax/xml/transform/ErrorListener;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    #@14
    .line 174
    new-instance v2, Lorg/apache/xpath/compiler/XPathParser;

    #@16
    invoke-direct {v2, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    #@19
    .line 175
    .local v2, "parser":Lorg/apache/xpath/compiler/XPathParser;
    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    #@1b
    iget-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@1d
    invoke-direct {v0, p5, p2, v3}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    #@20
    .line 177
    .local v0, "compiler":Lorg/apache/xpath/compiler/Compiler;
    if-nez p4, :cond_2

    #@22
    .line 178
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@25
    .line 185
    :goto_0
    invoke-virtual {v0, v7}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@28
    move-result-object v1

    #@29
    .line 188
    .local v1, "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {p0, v1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    #@2c
    .line 190
    if-eqz p2, :cond_1

    #@2e
    instance-of v3, p2, Lorg/apache/xpath/ExpressionNode;

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 192
    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    #@34
    .end local p2    # "locator":Ljavax/xml/transform/SourceLocator;
    invoke-virtual {v1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@37
    .line 166
    :cond_1
    return-void

    #@38
    .line 179
    .end local v1    # "expr":Lorg/apache/xpath/Expression;
    .restart local p2    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_2
    if-ne v5, p4, :cond_3

    #@3a
    .line 180
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@3d
    goto :goto_0

    #@3e
    .line 182
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@40
    const-string/jumbo v4, "ER_CANNOT_DEAL_XPATH_TYPE"

    #@43
    new-array v5, v5, [Ljava/lang/Object;

    #@45
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    aput-object v6, v5, v7

    #@4b
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V
    .locals 8
    .param p1, "exprString"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p4, "type"    # I
    .param p5, "errorListener"    # Ljavax/xml/transform/ErrorListener;
    .param p6, "aTable"    # Lorg/apache/xpath/compiler/FunctionTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 56
    iput-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@8
    .line 217
    iput-object p6, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@a
    .line 218
    if-nez p5, :cond_0

    #@c
    .line 219
    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@e
    .end local p5    # "errorListener":Ljavax/xml/transform/ErrorListener;
    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    #@11
    .line 221
    .restart local p5    # "errorListener":Ljavax/xml/transform/ErrorListener;
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    #@13
    .line 223
    new-instance v2, Lorg/apache/xpath/compiler/XPathParser;

    #@15
    invoke-direct {v2, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    #@18
    .line 224
    .local v2, "parser":Lorg/apache/xpath/compiler/XPathParser;
    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    #@1a
    iget-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@1c
    invoke-direct {v0, p5, p2, v3}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    #@1f
    .line 226
    .local v0, "compiler":Lorg/apache/xpath/compiler/Compiler;
    if-nez p4, :cond_2

    #@21
    .line 227
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@24
    .line 237
    :goto_0
    invoke-virtual {v0, v7}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@27
    move-result-object v1

    #@28
    .line 240
    .local v1, "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {p0, v1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    #@2b
    .line 242
    if-eqz p2, :cond_1

    #@2d
    instance-of v3, p2, Lorg/apache/xpath/ExpressionNode;

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 244
    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    #@33
    .end local p2    # "locator":Ljavax/xml/transform/SourceLocator;
    invoke-virtual {v1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@36
    .line 215
    :cond_1
    return-void

    #@37
    .line 228
    .end local v1    # "expr":Lorg/apache/xpath/Expression;
    .restart local p2    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_2
    if-ne v5, p4, :cond_3

    #@39
    .line 229
    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@3c
    goto :goto_0

    #@3d
    .line 231
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@3f
    .line 232
    const-string/jumbo v4, "ER_CANNOT_DEAL_XPATH_TYPE"

    #@42
    .line 233
    new-array v5, v5, [Ljava/lang/Object;

    #@44
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    aput-object v6, v5, v7

    #@4a
    .line 231
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw v3
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@6
    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    #@9
    .line 279
    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    #@c
    .line 276
    return-void
.end method

.method private initFunctionTable()V
    .locals 1

    #@0
    .prologue
    .line 62
    new-instance v0, Lorg/apache/xpath/compiler/FunctionTable;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    #@5
    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@7
    .line 61
    return-void
.end method


# virtual methods
.method public assertion(ZLjava/lang/String;)V
    .locals 4
    .param p1, "b"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    if-nez p1, :cond_0

    #@2
    .line 554
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@5
    .line 555
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p2, v2, v3

    #@b
    .line 553
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 557
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 548
    .end local v0    # "fMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .param p3, "namespaceContext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 406
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 408
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@7
    .line 412
    :try_start_0
    iget-object v4, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@9
    invoke-virtual {v4, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v4

    #@d
    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@10
    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@13
    .line 412
    return v4

    #@14
    .line 427
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    instance-of v4, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 429
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1a
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@1d
    move-result-object v0

    #@1e
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    #@1f
    .line 433
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 435
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 437
    :cond_1
    const-string/jumbo v4, "ER_XPATH_ERROR"

    #@2e
    const/4 v5, 0x0

    #@2f
    .line 436
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 441
    :cond_2
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@35
    .line 442
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@38
    move-result-object v4

    #@39
    .line 441
    invoke-direct {v3, v2, v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@3c
    .line 443
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@3f
    move-result-object v1

    #@40
    .line 445
    .local v1, "el":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_3

    #@42
    .line 447
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@48
    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@4b
    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_1
    return v6

    #@4c
    .line 450
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_3
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "el":Ljavax/xml/transform/ErrorListener;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v4

    #@4e
    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@51
    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@54
    .line 453
    throw v4

    #@55
    .line 415
    :catch_0
    move-exception v3

    #@56
    .line 416
    .restart local v3    # "te":Ljavax/xml/transform/TransformerException;
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@5d
    .line 417
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@60
    move-result-object v1

    #@61
    .line 418
    .restart local v1    # "el":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_4

    #@63
    .line 420
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    .line 454
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@69
    .line 456
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@6c
    goto :goto_1

    #@6d
    .line 423
    :cond_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6e
    .line 426
    .end local v1    # "el":Ljavax/xml/transform/ErrorListener;
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v0

    #@6f
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@5
    .line 607
    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "sourceNode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    invoke-static {p3, p4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 582
    .local v1, "fmsg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 584
    .local v0, "ehandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@a
    .line 586
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@c
    .line 587
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lorg/apache/xml/utils/SAXSourceLocator;

    #@12
    .line 586
    invoke-direct {v4, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@15
    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@18
    .line 578
    :goto_0
    return-void

    #@19
    .line 591
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@1c
    move-result-object v2

    #@1d
    .line 592
    .local v2, "slocator":Ljavax/xml/transform/SourceLocator;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, "; file "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 593
    const-string/jumbo v5, "; line "

    #@3a
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 593
    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@41
    move-result v5

    #@42
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    .line 593
    const-string/jumbo v5, "; column "

    #@49
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 594
    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@50
    move-result v5

    #@51
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5c
    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .param p3, "namespaceContext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@3
    .line 331
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@6
    .line 333
    const/4 v4, 0x0

    #@7
    .line 337
    .local v4, "xobj":Lorg/apache/xpath/objects/XObject;
    :try_start_0
    iget-object v5, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@9
    invoke-virtual {v5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v4

    #@d
    .line 378
    .local v4, "xobj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@10
    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@13
    .line 383
    .end local v4    # "xobj":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v4

    #@14
    .line 352
    .local v0, "e":Ljava/lang/Exception;
    .local v4, "xobj":Lorg/apache/xpath/objects/XObject;
    :goto_1
    :try_start_1
    instance-of v5, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@16
    if-eqz v5, :cond_0

    #@18
    .line 354
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1a
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@1d
    move-result-object v0

    #@1e
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    #@1f
    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 360
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_2

    #@2b
    .line 362
    :cond_1
    const-string/jumbo v5, "ER_XPATH_ERROR"

    #@2e
    const/4 v6, 0x0

    #@2f
    .line 361
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 365
    :cond_2
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@35
    .line 366
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@38
    move-result-object v5

    #@39
    .line 365
    invoke-direct {v3, v2, v5, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@3c
    .line 367
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@3f
    move-result-object v1

    #@40
    .line 369
    .local v1, "el":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_3

    #@42
    .line 371
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@48
    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@4b
    goto :goto_0

    #@4c
    .line 374
    :cond_3
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "el":Ljavax/xml/transform/ErrorListener;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v5

    #@4e
    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@51
    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@54
    .line 377
    throw v5

    #@55
    .line 340
    :catch_0
    move-exception v3

    #@56
    .line 341
    .restart local v3    # "te":Ljavax/xml/transform/TransformerException;
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v3, v5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@5d
    .line 342
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@60
    move-result-object v1

    #@61
    .line 343
    .restart local v1    # "el":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_4

    #@63
    .line 345
    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    .line 378
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@69
    .line 380
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@6c
    goto :goto_0

    #@6d
    .line 348
    :cond_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6e
    .line 351
    .end local v1    # "el":Ljavax/xml/transform/ErrorListener;
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v0

    #@6f
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # Lorg/w3c/dom/Node;
    .param p3, "namespaceContext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@3
    move-result v0

    #@4
    .line 303
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@5
    .line 86
    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@3
    .line 483
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    #@6
    .line 487
    :try_start_0
    iget-object v1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@8
    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@b
    move-result-object v0

    #@c
    .line 497
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-wide v2

    #@10
    .line 501
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@13
    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@16
    .line 497
    return-wide v2

    #@17
    .line 500
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v1

    #@18
    .line 501
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@1b
    .line 502
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@1e
    .line 500
    throw v1
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 100
    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@d
    .line 101
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    #@f
    .line 97
    return-void
.end method

.method public warn(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "sourceNode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 528
    invoke-static {p3, p4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 529
    .local v1, "fmsg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 531
    .local v0, "ehandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@a
    .line 535
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lorg/apache/xml/utils/SAXSourceLocator;

    #@12
    invoke-direct {v3, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@15
    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@18
    .line 525
    :cond_0
    return-void
.end method

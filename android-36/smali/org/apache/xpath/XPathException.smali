.class public Lorg/apache/xpath/XPathException;
.super Ljavax/xml/transform/TransformerException;
.source "XPathException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x3b2b2be100e6764bL


# instance fields
.field protected greylist m_exception:Ljava/lang/Exception;

.field greylist m_styleNode:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 165
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 167
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 132
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 134
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 76
    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathException;->setStylesheetNode(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V
    .registers 4

    .line 149
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 151
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 152
    iput-object p3, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public whitelist test-api getException()Ljava/lang/Throwable;
    .registers 1

    .line 326
    iget-object p0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-object p0
.end method

.method protected greylist getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;
    .registers 2

    .line 114
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_f

    .line 115
    instance-of p1, p0, Lorg/apache/xpath/Expression;

    if-eqz p1, :cond_f

    .line 116
    invoke-interface {p0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    goto :goto_4

    :cond_f
    return-object p0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 220
    invoke-super {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object p0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    :goto_6
    if-eqz p0, :cond_21

    .line 225
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v0, v1

    .line 230
    :cond_f
    instance-of v1, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_1f

    .line 232
    move-object v1, p0

    check-cast v1, Ljavax/xml/transform/TransformerException;

    .line 235
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-ne p0, v1, :cond_1d

    goto :goto_21

    :cond_1d
    move-object p0, v1

    goto :goto_6

    :cond_1f
    const/4 p0, 0x0

    goto :goto_6

    :cond_21
    :goto_21
    if-eqz v0, :cond_24

    return-object v0

    .line 246
    :cond_24
    const-string p0, ""

    return-object p0
.end method

.method public greylist getStylesheetNode()Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathException;->getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 100
    instance-of p1, p0, Lorg/w3c/dom/Node;

    if-eqz p1, :cond_d

    .line 102
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 4

    if-nez p1, :cond_4

    .line 180
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 184
    :cond_4
    :try_start_4
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    .line 188
    :catch_7
    iget-object p0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2c

    if-eqz p0, :cond_2c

    .line 192
    const-string v1, "---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 195
    instance-of v1, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_28

    .line 197
    move-object v1, p0

    check-cast v1, Ljavax/xml/transform/TransformerException;

    .line 200
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-ne p0, v1, :cond_26

    goto :goto_2c

    :cond_26
    move-object p0, v1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2c
    :goto_2c
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 7

    if-nez p1, :cond_9

    .line 259
    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 263
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_c

    :catch_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 270
    :try_start_e
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "getCause"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_45

    .line 281
    :catch_1b
    iget-object p0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    :goto_1d
    const/16 v2, 0xa

    if-ge v1, v2, :cond_45

    if-eqz p0, :cond_45

    .line 285
    const-string v2, "---------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    :try_start_28
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_31

    .line 293
    :catch_2c
    const-string v2, "Could not print stack trace..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    :goto_31
    instance-of v2, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_41

    .line 298
    move-object v2, p0

    check-cast v2, Ljavax/xml/transform/TransformerException;

    .line 301
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-ne p0, v2, :cond_3f

    goto :goto_45

    :cond_3f
    move-object p0, v2

    goto :goto_42

    :cond_41
    move-object p0, v0

    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_45
    :goto_45
    return-void
.end method

.method public greylist setStylesheetNode(Ljava/lang/Object;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

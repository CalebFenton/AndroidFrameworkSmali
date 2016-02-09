.class public Lorg/apache/xpath/XPathException;
.super Ljavax/xml/transform/TransformerException;
.source "XPathException.java"


# static fields
.field static final serialVersionUID:J = 0x3b2b2be100e6764bL


# instance fields
.field protected m_exception:Ljava/lang/Exception;

.field m_styleNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@6
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 165
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@6
    .line 167
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    #@8
    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "styleNode"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 132
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@6
    .line 134
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@8
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@6
    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@9
    .line 76
    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Lorg/apache/xpath/XPathException;->setStylesheetNode(Ljava/lang/Object;)V

    #@10
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "styleNode"    # Lorg/w3c/dom/Node;
    .param p3, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 149
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@6
    .line 151
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@8
    .line 152
    iput-object p3, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    #@a
    .line 146
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method protected getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;
    .locals 2
    .param p1, "ex"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    .line 114
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@3
    move-result-object v0

    #@4
    .line 115
    .local v0, "parent":Lorg/apache/xpath/ExpressionNode;
    :goto_0
    if-eqz v0, :cond_0

    #@6
    instance-of v1, v0, Lorg/apache/xpath/Expression;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 116
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@d
    move-result-object v0

    #@e
    goto :goto_0

    #@f
    .line 117
    :cond_0
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 220
    invoke-super {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 221
    .local v1, "lastMessage":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    #@6
    .line 223
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@8
    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 227
    .local v2, "nextMessage":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@e
    .line 228
    move-object v1, v2

    #@f
    .line 230
    :cond_1
    instance-of v5, v0, Ljavax/xml/transform/TransformerException;

    #@11
    if-eqz v5, :cond_3

    #@13
    move-object v4, v0

    #@14
    .line 232
    check-cast v4, Ljavax/xml/transform/TransformerException;

    #@16
    .line 233
    .local v4, "se":Ljavax/xml/transform/TransformerException;
    move-object v3, v0

    #@17
    .line 235
    .local v3, "prev":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@1a
    move-result-object v0

    #@1b
    .line 237
    .local v0, "exception":Ljava/lang/Throwable;
    if-ne v3, v0, :cond_0

    #@1d
    .line 246
    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local v2    # "nextMessage":Ljava/lang/String;
    .end local v3    # "prev":Ljava/lang/Throwable;
    .end local v4    # "se":Ljavax/xml/transform/TransformerException;
    :cond_2
    if-eqz v1, :cond_4

    #@1f
    .end local v1    # "lastMessage":Ljava/lang/String;
    :goto_1
    return-object v1

    #@20
    .line 242
    .restart local v1    # "lastMessage":Ljava/lang/String;
    .restart local v2    # "nextMessage":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    #@21
    .local v0, "exception":Ljava/lang/Throwable;
    goto :goto_0

    #@22
    .line 246
    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local v2    # "nextMessage":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, ""

    #@25
    goto :goto_1
.end method

.method public getStylesheetNode()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "ex"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathException;->getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;

    #@4
    move-result-object v0

    #@5
    .line 100
    .local v0, "owner":Lorg/apache/xpath/ExpressionNode;
    if-eqz v0, :cond_0

    #@7
    instance-of v1, v0, Lorg/w3c/dom/Node;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 102
    check-cast v0, Lorg/w3c/dom/Node;

    #@d
    .end local v0    # "owner":Lorg/apache/xpath/ExpressionNode;
    return-object v0

    #@e
    .line 104
    .restart local v0    # "owner":Lorg/apache/xpath/ExpressionNode;
    :cond_0
    return-object v2
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 179
    if-nez p1, :cond_0

    #@2
    .line 180
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4
    .line 184
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 188
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    #@9
    .line 190
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    #@a
    .end local v1    # "exception":Ljava/lang/Throwable;
    .local v2, "i":I
    :goto_1
    const/16 v5, 0xa

    #@c
    if-ge v2, v5, :cond_1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 192
    const-string/jumbo v5, "---------"

    #@13
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@19
    .line 195
    instance-of v5, v1, Ljavax/xml/transform/TransformerException;

    #@1b
    if-eqz v5, :cond_2

    #@1d
    move-object v4, v1

    #@1e
    .line 197
    check-cast v4, Ljavax/xml/transform/TransformerException;

    #@20
    .line 198
    .local v4, "se":Ljavax/xml/transform/TransformerException;
    move-object v3, v1

    #@21
    .line 200
    .local v3, "prev":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@24
    move-result-object v1

    #@25
    .line 202
    .restart local v1    # "exception":Ljava/lang/Throwable;
    if-ne v3, v1, :cond_3

    #@27
    .line 176
    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v3    # "prev":Ljava/lang/Throwable;
    .end local v4    # "se":Ljavax/xml/transform/TransformerException;
    :cond_1
    return-void

    #@28
    .line 186
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    #@2a
    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    #@2b
    .line 190
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 258
    if-nez p1, :cond_0

    #@2
    .line 259
    new-instance p1, Ljava/io/PrintWriter;

    #@4
    .end local p1    # "s":Ljava/io/PrintWriter;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    invoke-direct {p1, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@9
    .line 263
    .restart local p1    # "s":Ljava/io/PrintWriter;
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 268
    :goto_0
    const/4 v3, 0x0

    #@d
    .line 270
    .local v3, "isJdk14OrHigher":Z
    :try_start_1
    const-class v8, Ljava/lang/Throwable;

    #@f
    const-string/jumbo v9, "getCause"

    #@12
    const/4 v7, 0x1

    #@13
    new-array v10, v7, [Ljava/lang/Class;

    #@15
    const/4 v7, 0x0

    #@16
    check-cast v7, Ljava/lang/Class;

    #@18
    const/4 v11, 0x0

    #@19
    aput-object v7, v10, v11

    #@1b
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    #@1e
    .line 271
    const/4 v3, 0x1

    #@1f
    .line 279
    :goto_1
    if-nez v3, :cond_1

    #@21
    .line 281
    iget-object v1, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    #@23
    .line 283
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    #@24
    .end local v1    # "exception":Ljava/lang/Throwable;
    .local v2, "i":I
    :goto_2
    const/16 v7, 0xa

    #@26
    if-ge v2, v7, :cond_1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 285
    const-string/jumbo v7, "---------"

    #@2d
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 289
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@33
    .line 296
    :goto_3
    instance-of v7, v1, Ljavax/xml/transform/TransformerException;

    #@35
    if-eqz v7, :cond_2

    #@37
    move-object v6, v1

    #@38
    .line 298
    check-cast v6, Ljavax/xml/transform/TransformerException;

    #@3a
    .line 299
    .local v6, "se":Ljavax/xml/transform/TransformerException;
    move-object v5, v1

    #@3b
    .line 301
    .local v5, "prev":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@3e
    move-result-object v1

    #@3f
    .line 303
    .restart local v1    # "exception":Ljava/lang/Throwable;
    if-ne v5, v1, :cond_3

    #@41
    .line 305
    const/4 v1, 0x0

    #@42
    .line 255
    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v2    # "i":I
    .end local v5    # "prev":Ljava/lang/Throwable;
    .end local v6    # "se":Ljavax/xml/transform/TransformerException;
    :cond_1
    return-void

    #@43
    .line 265
    .end local v3    # "isJdk14OrHigher":Z
    :catch_0
    move-exception v0

    #@44
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    #@45
    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "isJdk14OrHigher":Z
    :catch_1
    move-exception v0

    #@46
    .line 293
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Could not print stack trace..."

    #@49
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    goto :goto_3

    #@4d
    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    #@4e
    .line 283
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_2

    #@51
    .line 272
    .end local v2    # "i":I
    :catch_2
    move-exception v4

    #@52
    .local v4, "nsme":Ljava/lang/NoSuchMethodException;
    goto :goto_1
.end method

.method public setStylesheetNode(Ljava/lang/Object;)V
    .locals 0
    .param p1, "styleNode"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    #@2
    .line 57
    return-void
.end method

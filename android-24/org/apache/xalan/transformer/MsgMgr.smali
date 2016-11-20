.class public Lorg/apache/xalan/transformer/MsgMgr;
.super Ljava/lang/Object;
.source "MsgMgr.java"


# instance fields
.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@5
    .line 43
    return-void
.end method


# virtual methods
.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V
    .locals 6
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, v2

    #@4
    move-object v4, p2

    #@5
    move-object v5, v2

    #@6
    .line 197
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 195
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@4
    .line 229
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, v2

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    .line 214
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 212
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 257
    .local v1, "formattedMsg":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9
    move-result-object v0

    #@a
    .line 259
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@c
    .line 260
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@e
    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 247
    return-void

    #@15
    .line 262
    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@17
    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@1a
    throw v2
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 6
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "styleNode"    # Lorg/w3c/dom/Node;
    .param p3, "sourceNode"    # Lorg/w3c/dom/Node;
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
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
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 279
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "styleNode"    # Lorg/w3c/dom/Node;
    .param p3, "sourceNode"    # Lorg/w3c/dom/Node;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    invoke-static {p4, p5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 308
    .local v1, "formattedMsg":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9
    move-result-object v0

    #@a
    .line 310
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@c
    .line 311
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@e
    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 299
    return-void

    #@15
    .line 313
    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@17
    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@1a
    throw v2
.end method

.method public message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "terminate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v1, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v0

    #@6
    .line 67
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@8
    .line 69
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@a
    invoke-direct {v1, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@d
    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@10
    .line 62
    :goto_0
    return-void

    #@11
    .line 73
    :cond_0
    if-eqz p3, :cond_1

    #@13
    .line 74
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@15
    invoke-direct {v1, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@18
    throw v1

    #@19
    .line 76
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b
    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e
    goto :goto_0
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V
    .locals 6
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, v2

    #@4
    move-object v4, p2

    #@5
    move-object v5, v2

    #@6
    .line 92
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 90
    return-void
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, v2

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    .line 108
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 106
    return-void
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 6
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "styleNode"    # Lorg/w3c/dom/Node;
    .param p3, "sourceNode"    # Lorg/w3c/dom/Node;
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
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
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 125
    return-void
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "srcLctr"    # Ljavax/xml/transform/SourceLocator;
    .param p2, "styleNode"    # Lorg/w3c/dom/Node;
    .param p3, "sourceNode"    # Lorg/w3c/dom/Node;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-static {p4, p5}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 148
    .local v1, "formattedMsg":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9
    move-result-object v0

    #@a
    .line 150
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@c
    .line 151
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@e
    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 144
    :goto_0
    return-void

    #@15
    .line 153
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    goto :goto_0
.end method

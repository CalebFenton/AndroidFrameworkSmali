.class public Lorg/apache/xalan/transformer/MsgMgr;
.super Ljava/lang/Object;
.source "MsgMgr.java"


# instance fields
.field private greylist m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-void
.end method


# virtual methods
.method public greylist error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 197
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public greylist error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 214
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 251
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 257
    iget-object p0, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 260
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, p3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 262
    :cond_15
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public greylist error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
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

    move-object v4, p4

    .line 281
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 302
    invoke-static {p4, p5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 308
    iget-object p0, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 311
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, p3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 313
    :cond_15
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public greylist message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 69
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_11
    if-nez p3, :cond_19

    .line 76
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_19
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public greylist warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 92
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 108
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
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

    move-object v4, p4

    .line 127
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 147
    invoke-static {p4, p5}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 148
    iget-object p0, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 151
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 153
    :cond_15
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

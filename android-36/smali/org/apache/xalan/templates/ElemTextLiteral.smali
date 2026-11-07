.class public Lorg/apache/xalan/templates/ElemTextLiteral;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTextLiteral.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x6d412a2f6b050c38L


# instance fields
.field private greylist m_ch:[C

.field private greylist m_disableOutputEscaping:Z

.field private greylist m_preserveSpace:Z

.field private greylist m_str:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    .line 208
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_6} :catch_20

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 210
    :try_start_a
    const-string v0, "javax.xml.transform.disable-output-escaping"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_f
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 215
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    if-eqz p0, :cond_1f

    .line 217
    const-string p0, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p1, p0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    :catch_20
    move-exception p0

    .line 222
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist getChars()[C
    .registers 1

    .line 95
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    return-object p0
.end method

.method public greylist getDisableOutputEscaping()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 190
    const-string p0, "#Text"

    return-object p0
.end method

.method public declared-synchronized whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 108
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_15

    .line 111
    :cond_11
    :goto_11
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_f

    monitor-exit p0

    return-object v0

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v0
.end method

.method public greylist getPreserveSpace()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_preserveSpace:Z

    return p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x4e

    return p0
.end method

.method public greylist setChars([C)V
    .registers 2

    .line 85
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    return-void
.end method

.method public greylist setDisableOutputEscaping(Z)V
    .registers 2

    .line 143
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return-void
.end method

.method public greylist setPreserveSpace(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_preserveSpace:Z

    return-void
.end method

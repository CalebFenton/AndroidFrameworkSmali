.class public Lorg/apache/xalan/templates/ElemTextLiteral;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTextLiteral.java"


# static fields
.field static final serialVersionUID:J = -0x6d412a2f6b050c38L


# instance fields
.field private m_ch:[C

.field private m_disableOutputEscaping:Z

.field private m_preserveSpace:Z

.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 119
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    #@6
    .line 34
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 5
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    move-result-object v0

    #@4
    .line 208
    .local v0, "rth":Lorg/apache/xml/serializer/SerializationHandler;
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 210
    const-string/jumbo v2, "javax.xml.transform.disable-output-escaping"

    #@b
    const-string/jumbo v3, ""

    #@e
    invoke-interface {v0, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 213
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    #@13
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    #@15
    array-length v3, v3

    #@16
    const/4 v4, 0x0

    #@17
    invoke-interface {v0, v2, v4, v3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    #@1a
    .line 215
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 217
    const-string/jumbo v2, "javax.xml.transform.enable-output-escaping"

    #@21
    const-string/jumbo v3, ""

    #@24
    invoke-interface {v0, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 202
    :cond_1
    return-void

    #@28
    .line 221
    .end local v0    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v1

    #@29
    .line 222
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@2b
    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v2
.end method

.method public getChars()[C
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    #@2
    return-object v0
.end method

.method public getDisableOutputEscaping()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    #@2
    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, "#Text"

    #@3
    return-object v0
.end method

.method public declared-synchronized getNodeValue()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 108
    new-instance v0, Ljava/lang/String;

    #@7
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    #@9
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@c
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    #@e
    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public getPreserveSpace()Z
    .locals 1

    #@0
    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_preserveSpace:Z

    #@2
    return v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 180
    const/16 v0, 0x4e

    #@2
    return v0
.end method

.method public setChars([C)V
    .locals 0
    .param p1, "v"    # [C

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    #@2
    .line 83
    return-void
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 143
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    #@2
    .line 141
    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_preserveSpace:Z

    #@2
    .line 50
    return-void
.end method

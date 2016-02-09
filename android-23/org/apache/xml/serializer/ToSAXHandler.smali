.class public abstract Lorg/apache/xml/serializer/ToSAXHandler;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToSAXHandler.java"


# instance fields
.field protected m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected m_saxHandler:Lorg/xml/sax/ContentHandler;

.field private m_shouldGenerateNSAttribute:Z

.field protected m_state:Lorg/apache/xml/serializer/TransformStateSetter;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    #@3
    .line 80
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    #@6
    .line 86
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@9
    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    #@3
    .line 80
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    #@6
    .line 86
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@9
    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@c
    .line 58
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->setEncoding(Ljava/lang/String;)V

    #@f
    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "hdlr"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lex"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p3, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    #@3
    .line 80
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    #@6
    .line 86
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@9
    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@c
    .line 52
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    #@f
    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->setEncoding(Ljava/lang/String;)V

    #@12
    .line 49
    return-void
.end method

.method private resetToSAXHandler()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 424
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@3
    .line 425
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@5
    .line 426
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@7
    .line 427
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    #@a
    .line 422
    return-void
.end method


# virtual methods
.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 434
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 123
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 125
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@12
    .line 127
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 128
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@19
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToSAXHandler;->characters([CII)V

    #@1c
    .line 120
    return-void
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 353
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@6
    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    #@9
    .line 358
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 359
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@f
    .line 360
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToSAXHandler;->characters(Ljava/lang/String;)V

    #@12
    .line 348
    :cond_1
    return-void
.end method

.method protected closeCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    return-void
.end method

.method protected closeStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 138
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    #@4
    .line 141
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    .line 144
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@e
    array-length v1, v1

    #@f
    if-le v0, v1, :cond_0

    #@11
    .line 146
    mul-int/lit8 v1, v0, 0x2

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    new-array v1, v1, [C

    #@17
    iput-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@19
    .line 148
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@1b
    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@1e
    .line 149
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@20
    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@22
    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@25
    .line 151
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 152
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    #@2b
    invoke-super {p0, v1, v3, v0}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    #@2e
    .line 136
    .end local v0    # "len":I
    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->error(Lorg/xml/sax/SAXParseException;)V

    #@3
    .line 383
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@5
    instance-of v0, v0, Lorg/xml/sax/ErrorHandler;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 384
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@b
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    #@d
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@10
    .line 380
    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@3
    .line 370
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    #@6
    .line 372
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@8
    instance-of v0, v0, Lorg/xml/sax/ErrorHandler;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 373
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@e
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    #@10
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@13
    .line 367
    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 271
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->startDocumentInternal()V

    #@8
    .line 274
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    #@a
    .line 277
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@c
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 279
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->closeStartTag()V

    #@13
    .line 280
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@15
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@17
    .line 283
    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_cdataTagOpen:Z

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 285
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->closeCDATA()V

    #@1e
    .line 286
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_cdataTagOpen:Z

    #@20
    .line 268
    :cond_2
    return-void
.end method

.method getShouldOutputNSAttr()Z
    .locals 1

    #@0
    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    #@2
    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    return-void
.end method

.method public reset()Z
    .locals 2

    #@0
    .prologue
    .line 409
    const/4 v0, 0x0

    #@1
    .line 410
    .local v0, "wasReset":Z
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 412
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->resetToSAXHandler()V

    #@a
    .line 413
    const/4 v0, 0x1

    #@b
    .line 415
    :cond_0
    return v0
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 0
    .param p1, "URI_and_localNames"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 237
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "_saxHandler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 223
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 224
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4
    if-nez v0, :cond_0

    #@6
    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 228
    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    #@c
    .end local p1    # "_saxHandler":Lorg/xml/sax/ContentHandler;
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@e
    .line 221
    :cond_0
    return-void
.end method

.method public setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "_lexHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    #@0
    .prologue
    .line 214
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    .line 212
    return-void
.end method

.method public setShouldOutputNSAttr(Z)V
    .locals 0
    .param p1, "doOutputNSAttr"    # Z

    #@0
    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    #@2
    .line 248
    return-void
.end method

.method public setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V
    .locals 0
    .param p1, "ts"    # Lorg/apache/xml/serializer/TransformStateSetter;

    #@0
    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@2
    .line 299
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    return-void
.end method

.method protected startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    #@7
    .line 97
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@9
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@c
    .line 98
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    #@f
    .line 91
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 334
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    #@d
    .line 337
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 338
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    #@14
    .line 332
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 317
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    #@d
    .line 321
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 322
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    #@14
    .line 314
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 200
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    #@6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    #@d
    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 205
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    #@14
    .line 197
    :cond_1
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->warning(Lorg/xml/sax/SAXParseException;)V

    #@3
    .line 394
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@5
    instance-of v0, v0, Lorg/xml/sax/ErrorHandler;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 395
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    #@b
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    #@d
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    #@10
    .line 391
    :cond_0
    return-void
.end method

.class public abstract Lorg/apache/xml/serializer/ToSAXHandler;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToSAXHandler.java"


# instance fields
.field protected greylist m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected greylist m_saxHandler:Lorg/xml/sax/ContentHandler;

.field private greylist m_shouldGenerateNSAttribute:Z

.field protected greylist m_state:Lorg/apache/xml/serializer/TransformStateSetter;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 58
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .registers 5

    .line 50
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 52
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method private greylist resetToSAXHandler()V
    .registers 2

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 425
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    .line 426
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return-void
.end method


# virtual methods
.method public greylist addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist characters(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 123
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 125
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 127
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 128
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p0, p1, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public greylist characters(Lorg/w3c/dom/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v0, :cond_7

    .line 353
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    .line 358
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 360
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->characters(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method protected greylist closeCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected greylist closeStartTag()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist comment(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 141
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2e

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_18

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 146
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 148
    :cond_18
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 149
    iget-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p1, v1, v2, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 151
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_2e

    .line 152
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-super {p0, p1, v2, v0}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_2e
    return-void
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 381
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->error(Lorg/xml/sax/SAXParseException;)V

    .line 383
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_e

    .line 384
    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_e
    return-void
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fatalError(Lorg/xml/sax/SAXParseException;)V

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 372
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_11

    .line 373
    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    :cond_11
    return-void
.end method

.method public greylist flushPending()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 271
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->startDocumentInternal()V

    .line 274
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 277
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_17

    .line 279
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->closeStartTag()V

    .line 280
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 283
    :cond_17
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_20

    .line 285
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->closeCDATA()V

    .line 286
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_20
    return-void
.end method

.method greylist getShouldOutputNSAttr()Z
    .registers 1

    .line 261
    iget-boolean p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return p0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist reset()Z
    .registers 2

    .line 410
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 412
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->resetToSAXHandler()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist setCdataSectionElements(Ljava/util/Vector;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    .line 224
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_e

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_e

    .line 228
    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_e
    return-void
.end method

.method public greylist setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public greylist setShouldOutputNSAttr(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return-void
.end method

.method public greylist setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected greylist startDocumentInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_f

    .line 95
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 97
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_f
    return-void
.end method

.method public greylist startElement(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v0, :cond_b

    .line 334
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 337
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_12

    .line 338
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 316
    iget-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz p1, :cond_b

    .line 317
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 321
    :cond_b
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_12

    .line 322
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz p1, :cond_b

    .line 200
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 204
    :cond_b
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_12

    .line 205
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 392
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 394
    iget-object p0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_e

    .line 395
    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    :cond_e
    return-void
.end method

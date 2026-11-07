.class public final Lorg/apache/xml/serializer/ToUnknownStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToUnknownStream.java"


# static fields
.field private static final greylist EMPTYSTRING:Ljava/lang/String; = ""


# instance fields
.field private greylist m_firstElementLocalName:Ljava/lang/String;

.field private greylist m_firstElementName:Ljava/lang/String;

.field private greylist m_firstElementPrefix:Ljava/lang/String;

.field private greylist m_firstElementURI:Ljava/lang/String;

.field private greylist m_firstTagNotEmitted:Z

.field private greylist m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field private greylist m_namespacePrefix:Ljava/util/Vector;

.field private greylist m_namespaceURI:Ljava/util/Vector;

.field private greylist m_needToCallStartDocument:Z

.field private greylist m_setDoctypePublic_called:Z

.field private greylist m_setDoctypeSystem_called:Z

.field private greylist m_setMediaType_called:Z

.field private greylist m_setVersion_called:Z

.field private greylist m_wrapped_handler_not_initialized:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 4

    .line 140
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 95
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    .line 101
    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 106
    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 112
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 117
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    .line 122
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    .line 127
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    .line 132
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    .line 141
    new-instance v0, Lorg/apache/xml/serializer/ToXMLStream;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method

.method private greylist emitFirstTag()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 1048
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1050
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->initStreamOutput()V

    .line 1051
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 1054
    :cond_e
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1056
    iput-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    .line 1059
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v0, :cond_43

    .line 1061
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_25
    if-ge v2, v0, :cond_3f

    .line 1064
    iget-object v3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 1065
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1066
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1067
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v3, v4, v1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1069
    :cond_3f
    iput-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 1070
    iput-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 1072
    :cond_43
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    :cond_45
    return-void
.end method

.method private greylist flush()V
    .registers 2

    .line 1208
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 1210
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 1212
    :cond_7
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_13

    .line 1214
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    .line 1215
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception p0

    .line 1220
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 p0, 0x3a

    .line 1084
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_e

    add-int/lit8 p0, p0, 0x1

    .line 1086
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_e
    const/16 p0, 0x40

    .line 1087
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_1d

    add-int/lit8 p0, p0, 0x1

    .line 1089
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object p1
.end method

.method private greylist getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 p0, 0x3a

    .line 1101
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_e

    const/4 v0, 0x0

    .line 1102
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, ""

    return-object p0
.end method

.method private greylist initStreamOutput()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 970
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->isFirstElemHTML()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 977
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 984
    const-string v1, "html"

    .line 985
    invoke-static {v1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 987
    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v1

    .line 993
    check-cast v1, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 996
    invoke-interface {v0}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 999
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_2d

    .line 1002
    :cond_22
    invoke-interface {v0}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1005
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1012
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getDoctypePublic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/XSLOutputAttributes;->setMediaType(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1034
    :cond_5a
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 1036
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 1037
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 1041
    :cond_66
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    return-void
.end method

.method private greylist isFirstElemHTML()Z
    .registers 9

    .line 1117
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    .line 1118
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1121
    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-object v3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 1123
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move v0, v2

    :cond_1c
    if-eqz v0, :cond_4d

    .line 1129
    iget-object v3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v3, :cond_4d

    .line 1135
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v2

    :goto_27
    if-ge v4, v3, :cond_4d

    .line 1138
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1139
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1141
    iget-object v7, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    if-eqz v7, :cond_4a

    .line 1142
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1143
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_4d
    return v0
.end method


# virtual methods
.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 289
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 293
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 277
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 279
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface/range {p0 .. p6}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist addAttributes(Lorg/xml/sax/Attributes;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1176
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 303
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 305
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 307
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public greylist asContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public greylist asDOM3Serializer()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1314
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 726
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface/range {p0 .. p5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist characters(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 320
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 322
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 324
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 325
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->characters([CII)V

    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 780
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 782
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 785
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public greylist close()V
    .registers 1

    .line 163
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->close()V

    return-void
.end method

.method public greylist comment(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 529
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 531
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    goto :goto_18

    .line 533
    :cond_c
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_18

    .line 535
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 539
    :cond_18
    :goto_18
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedLexicalHandler;->comment(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 890
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 892
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 895
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 735
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 737
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 739
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 905
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 915
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 795
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 797
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 800
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public greylist endElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 334
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 336
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 338
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->endElement(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 812
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_15

    .line 814
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    if-nez p1, :cond_e

    .line 815
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object p1, v0

    :cond_e
    if-nez p2, :cond_15

    .line 819
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    if-eqz v0, :cond_15

    move-object p2, v0

    .line 823
    :cond_15
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 924
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 926
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 928
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 832
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public greylist entityReference(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1238
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->entityReference(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 752
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 754
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 756
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected greylist firePseudoElement(Ljava/lang/String;)V
    .registers 5

    .line 1291
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_22

    .line 1292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x3c

    .line 1294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1295
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1301
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    array-length v0, p1

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v2, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_22
    return-void
.end method

.method public greylist flushPending()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1199
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 1201
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    return-void
.end method

.method public greylist getDoctypePublic()Ljava/lang/String;
    .registers 1

    .line 549
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getDoctypePublic()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDoctypeSystem()Ljava/lang/String;
    .registers 1

    .line 558
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getDoctypeSystem()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getEncoding()Ljava/lang/String;
    .registers 1

    .line 567
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getIndent()Z
    .registers 1

    .line 576
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getIndent()Z

    move-result p0

    return p0
.end method

.method public greylist getIndentAmount()I
    .registers 1

    .line 585
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getIndentAmount()I

    move-result p0

    return p0
.end method

.method public greylist getMediaType()Ljava/lang/String;
    .registers 1

    .line 594
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getMediaType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .registers 1

    .line 1187
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz p0, :cond_9

    .line 1189
    invoke-interface {p0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 1246
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1251
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getOmitXMLDeclaration()Z
    .registers 1

    .line 603
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getOmitXMLDeclaration()Z

    move-result p0

    return p0
.end method

.method public greylist getOutputFormat()Ljava/util/Properties;
    .registers 1

    .line 172
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 181
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public greylist getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1231
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStandalone()Ljava/lang/String;
    .registers 1

    .line 612
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getStandalone()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getTransformer()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 1266
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public greylist getVersion()Ljava/lang/String;
    .registers 1

    .line 621
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/XSLOutputAttributes;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 190
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 842
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 844
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 846
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 766
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 768
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 770
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 367
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 369
    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 370
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 376
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    :cond_1c
    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 856
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 858
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 861
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist reset()Z
    .registers 1

    .line 200
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->reset()Z

    move-result p0

    return p0
.end method

.method public greylist serialize(Lorg/w3c/dom/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 213
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 215
    :cond_7
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->serialize(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public greylist setCdataSectionElements(Ljava/util/Vector;)V
    .registers 2

    .line 1169
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/XSLOutputAttributes;->setCdataSectionElements(Ljava/util/Vector;)V

    return-void
.end method

.method public greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    .line 1274
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public greylist setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 629
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 630
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setDoctypePublic(Ljava/lang/String;)V
    .registers 3

    .line 641
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 642
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    return-void
.end method

.method public greylist setDoctypeSystem(Ljava/lang/String;)V
    .registers 3

    .line 653
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 654
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 870
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 663
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setEscaping(Z)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 223
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEscaping(Z)Z

    move-result p0

    return p0
.end method

.method public greylist setIndent(Z)V
    .registers 2

    .line 672
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    return-void
.end method

.method public greylist setIndentAmount(I)V
    .registers 2

    .line 680
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    return-void
.end method

.method public greylist setMediaType(Ljava/lang/String;)V
    .registers 3

    .line 688
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/XSLOutputAttributes;->setMediaType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 689
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    return-void
.end method

.method public greylist setOmitXMLDeclaration(Z)V
    .registers 2

    .line 698
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    return-void
.end method

.method public greylist setOutputFormat(Ljava/util/Properties;)V
    .registers 2

    .line 233
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public greylist setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    .line 243
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public greylist setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2

    .line 1285
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public greylist setStandalone(Ljava/lang/String;)V
    .registers 2

    .line 707
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/XSLOutputAttributes;->setStandalone(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setTransformer(Ljavax/xml/transform/Transformer;)V
    .registers 3

    .line 1256
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1257
    instance-of v0, p1, Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/apache/xml/serializer/SerializerTrace;

    .line 1258
    invoke-interface {p1}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1259
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    return-void

    :cond_14
    const/4 p1, 0x0

    .line 1261
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    return-void
.end method

.method public greylist setVersion(Ljava/lang/String;)V
    .registers 3

    .line 429
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 433
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    return-void
.end method

.method public greylist setWriter(Ljava/io/Writer;)V
    .registers 2

    .line 253
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 879
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 937
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 947
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 463
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_32

    .line 466
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 472
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 473
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 483
    iput-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    .line 486
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    .line 492
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    .line 494
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p1, :cond_27

    .line 495
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->firePseudoElement(Ljava/lang/String;)V

    :cond_27
    if-eqz p4, :cond_2c

    .line 505
    invoke-super {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_2c
    if-eqz p4, :cond_31

    .line 511
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    :cond_31
    return-void

    .line 519
    :cond_32
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 956
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 349
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public greylist startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_40

    .line 388
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_14

    if-eqz p3, :cond_14

    .line 394
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 395
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 399
    :cond_14
    iget-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-nez p3, :cond_26

    .line 401
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 402
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 404
    :cond_26
    iget-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 405
    iget-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 407
    iget-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p3, :cond_3f

    .line 409
    iget-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 410
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    :cond_3f
    return v0

    .line 417
    :cond_40
    iget-object p0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

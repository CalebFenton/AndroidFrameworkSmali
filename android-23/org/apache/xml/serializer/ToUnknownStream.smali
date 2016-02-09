.class public final Lorg/apache/xml/serializer/ToUnknownStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToUnknownStream.java"


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""


# instance fields
.field private m_firstElementLocalName:Ljava/lang/String;

.field private m_firstElementName:Ljava/lang/String;

.field private m_firstElementPrefix:Ljava/lang/String;

.field private m_firstElementURI:Ljava/lang/String;

.field private m_firstTagNotEmitted:Z

.field private m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_namespacePrefix:Ljava/util/Vector;

.field private m_namespaceURI:Ljava/util/Vector;

.field private m_needToCallStartDocument:Z

.field private m_setDoctypePublic_called:Z

.field private m_setDoctypeSystem_called:Z

.field private m_setMediaType_called:Z

.field private m_setVersion_called:Z

.field private m_wrapped_handler_not_initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 139
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    #@5
    .line 70
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    #@7
    .line 90
    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    #@9
    .line 95
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@c
    .line 101
    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    #@e
    .line 106
    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@10
    .line 112
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@12
    .line 117
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    #@14
    .line 122
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    #@16
    .line 127
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    #@18
    .line 132
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    #@1a
    .line 141
    new-instance v0, Lorg/apache/xml/serializer/ToXMLStream;

    #@1c
    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLStream;-><init>()V

    #@1f
    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@21
    .line 139
    return-void
.end method

.method private emitFirstTag()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1046
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@4
    if-eqz v4, :cond_3

    #@6
    .line 1048
    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 1050
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->initStreamOutput()V

    #@d
    .line 1051
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    #@f
    .line 1054
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@11
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@13
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@15
    iget-object v7, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@17
    invoke-interface {v4, v5, v8, v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@1a
    .line 1056
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@1c
    .line 1059
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 1061
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@22
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@25
    move-result v1

    #@26
    .line 1062
    .local v1, "n":I
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@29
    .line 1065
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@2b
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/String;

    #@31
    .line 1066
    .local v2, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    #@33
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/lang/String;

    #@39
    .line 1067
    .local v3, "uri":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@3b
    invoke-interface {v4, v2, v3, v9}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@3e
    .line 1062
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1069
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_1
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@43
    .line 1070
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    #@45
    .line 1072
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@47
    .line 1044
    :cond_3
    return-void
.end method

.method private flush()V
    .locals 3

    #@0
    .prologue
    .line 1208
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1210
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    #@7
    .line 1212
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1214
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@d
    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    #@10
    .line 1215
    const/4 v1, 0x0

    #@11
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1204
    :cond_1
    return-void

    #@14
    .line 1219
    :catch_0
    move-exception v0

    #@15
    .line 1220
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1
.end method

.method private getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1084
    const/16 v1, 0x3a

    #@2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 1085
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 1086
    add-int/lit8 v1, v0, 0x1

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 1087
    :cond_0
    const/16 v1, 0x40

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@13
    move-result v0

    #@14
    .line 1088
    if-ltz v0, :cond_1

    #@16
    .line 1089
    add-int/lit8 v1, v0, 0x1

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    .line 1090
    :cond_1
    return-object p1
.end method

.method private getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1101
    const/16 v1, 0x3a

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 1102
    .local v0, "index":I
    if-lez v0, :cond_0

    #@9
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    const-string/jumbo v1, ""

    #@11
    goto :goto_0
.end method

.method private initStreamOutput()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 970
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->isFirstElemHTML()Z

    #@4
    move-result v0

    #@5
    .line 972
    .local v0, "firstElementIsHTML":Z
    if-eqz v0, :cond_1

    #@7
    .line 977
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    .line 985
    .local v2, "oldHandler":Lorg/apache/xml/serializer/SerializationHandler;
    const-string/jumbo v6, "html"

    #@c
    invoke-static {v6}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    #@f
    move-result-object v1

    #@10
    .line 987
    .local v1, "htmlProperties":Ljava/util/Properties;
    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    #@13
    move-result-object v4

    #@14
    .line 993
    .local v4, "serializer":Lorg/apache/xml/serializer/Serializer;
    check-cast v4, Lorg/apache/xml/serializer/SerializationHandler;

    #@16
    .end local v4    # "serializer":Lorg/apache/xml/serializer/Serializer;
    iput-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@18
    .line 996
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    #@1b
    move-result-object v5

    #@1c
    .line 998
    .local v5, "writer":Ljava/io/Writer;
    if-eqz v5, :cond_3

    #@1e
    .line 999
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@20
    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    #@23
    .line 1012
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@25
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getVersion()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    #@2c
    .line 1016
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2e
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypeSystem()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    #@35
    .line 1020
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@37
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypePublic()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    #@3e
    .line 1024
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@40
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getMediaType()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    #@47
    .line 1027
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@49
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@4c
    move-result-object v7

    #@4d
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@50
    .line 1034
    .end local v1    # "htmlProperties":Ljava/util/Properties;
    .end local v2    # "oldHandler":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v5    # "writer":Ljava/io/Writer;
    :cond_1
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@52
    if-eqz v6, :cond_2

    #@54
    .line 1036
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@56
    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    #@59
    .line 1037
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@5b
    .line 1041
    :cond_2
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    #@5d
    .line 966
    return-void

    #@5e
    .line 1002
    .restart local v1    # "htmlProperties":Ljava/util/Properties;
    .restart local v2    # "oldHandler":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v5    # "writer":Ljava/io/Writer;
    :cond_3
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputStream()Ljava/io/OutputStream;

    #@61
    move-result-object v3

    #@62
    .line 1004
    .local v3, "os":Ljava/io/OutputStream;
    if-eqz v3, :cond_0

    #@64
    .line 1005
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@66
    invoke-interface {v6, v3}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@69
    goto :goto_0
.end method

.method private isFirstElemHTML()Z
    .locals 7

    #@0
    .prologue
    .line 1118
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@2
    invoke-direct {p0, v5}, Lorg/apache/xml/serializer/ToUnknownStream;->getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v5

    #@6
    const-string/jumbo v6, "html"

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    .line 1121
    .local v1, "isHTML":Z
    if-eqz v1, :cond_0

    #@f
    .line 1122
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 1123
    const-string/jumbo v5, ""

    #@16
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 1129
    .end local v1    # "isHTML":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    #@20
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@22
    if-eqz v5, :cond_4

    #@24
    .line 1135
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@26
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@29
    move-result v2

    #@2a
    .line 1136
    .local v2, "max":I
    const/4 v0, 0x0

    #@2b
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    #@2d
    .line 1138
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@2f
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Ljava/lang/String;

    #@35
    .line 1139
    .local v3, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    #@37
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Ljava/lang/String;

    #@3d
    .line 1141
    .local v4, "uri":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    #@3f
    if-eqz v5, :cond_1

    #@41
    .line 1142
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    #@43
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v5

    #@47
    .line 1141
    if-eqz v5, :cond_1

    #@49
    .line 1143
    const-string/jumbo v5, ""

    #@4c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_3

    #@52
    .line 1136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_1

    #@55
    .line 1126
    .end local v0    # "i":I
    .end local v2    # "max":I
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    .restart local v1    # "isHTML":Z
    :cond_2
    const/4 v1, 0x0

    #@56
    .local v1, "isHTML":Z
    goto :goto_0

    #@57
    .line 1146
    .end local v1    # "isHTML":Z
    .restart local v0    # "i":I
    .restart local v2    # "max":I
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    #@58
    .line 1152
    .end local v0    # "i":I
    .end local v2    # "max":I
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_4
    return v1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rawName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 291
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 287
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "XSLAttribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 277
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move-object v4, p4

    #@d
    move-object v5, p5

    #@e
    move v6, p6

    #@f
    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@12
    .line 273
    return-void
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    #@5
    .line 1174
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "rawName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 305
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    #@c
    .line 301
    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    return-object p0
.end method

.method public asDOM3Serializer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1314
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->asDOM3Serializer()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1159
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Lorg/apache/xml/serializer/SerializationHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 724
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 320
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    #@7
    array-length v1, v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 322
    mul-int/lit8 v1, v0, 0x2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    new-array v1, v1, [C

    #@10
    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    #@12
    .line 324
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    #@14
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 325
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    #@19
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->characters([CII)V

    #@1c
    .line 317
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "characters"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 782
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 785
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    #@c
    .line 778
    return-void
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->close()V

    #@5
    .line 161
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 531
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    #@b
    .line 539
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@d
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    #@10
    .line 527
    return-void

    #@11
    .line 533
    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 535
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@17
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    #@1a
    .line 536
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@1d
    goto :goto_0
.end method

.method public comment([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 890
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 892
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 895
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->comment([CII)V

    #@c
    .line 888
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 735
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 737
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    #@7
    .line 739
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 733
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 905
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endCDATA()V

    #@5
    .line 902
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endDTD()V

    #@5
    .line 912
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 795
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 797
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 800
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    #@c
    .line 793
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 336
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;)V

    #@c
    .line 332
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 814
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 815
    if-nez p1, :cond_0

    #@9
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 816
    iget-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@f
    .line 819
    :cond_0
    if-nez p2, :cond_1

    #@11
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 820
    iget-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    #@17
    .line 823
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@19
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 810
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 924
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 926
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    #@7
    .line 928
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endEntity(Ljava/lang/String;)V

    #@c
    .line 922
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 832
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@5
    .line 830
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "entityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1238
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    #@5
    .line 1236
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 754
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 756
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 750
    return-void
.end method

.method protected firePseudoElement(Ljava/lang/String;)V
    .locals 6
    .param p1, "elementName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1291
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1292
    new-instance v1, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 1294
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x3c

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@e
    .line 1295
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 1300
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    #@18
    move-result-object v0

    #@19
    .line 1301
    .local v0, "ch":[C
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1b
    .line 1305
    array-length v3, v0

    #@1c
    .line 1302
    const/16 v4, 0xb

    #@1e
    .line 1304
    const/4 v5, 0x0

    #@1f
    .line 1301
    invoke-interface {v2, v4, v0, v5, v3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    #@22
    .line 1288
    .end local v0    # "ch":[C
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1199
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@3
    .line 1201
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@5
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    #@8
    .line 1196
    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypePublic()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypeSystem()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIndent()Z
    .locals 1

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getIndent()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIndentAmount()I
    .locals 1

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getIndentAmount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 594
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getMediaType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .locals 2

    #@0
    .prologue
    .line 1186
    const/4 v0, 0x0

    #@1
    .line 1187
    .local v0, "mappings":Lorg/apache/xml/serializer/NamespaceMappings;
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1189
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    #@a
    move-result-object v0

    #@b
    .line 1191
    .end local v0    # "mappings":Lorg/apache/xml/serializer/NamespaceMappings;
    :cond_0
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "isElement"    # Z

    #@0
    .prologue
    .line 1246
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1251
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOmitXMLDeclaration()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputFormat()Ljava/util/Properties;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1231
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getStandalone()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    #@0
    .prologue
    .line 1266
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getVersion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 844
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 846
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->ignorableWhitespace([CII)V

    #@c
    .line 840
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 766
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 768
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 770
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 764
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 369
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@e
    invoke-static {v1}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 370
    .local v0, "prefix1":Ljava/lang/String;
    if-nez v0, :cond_0

    #@14
    const-string/jumbo v1, ""

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 376
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@1f
    .line 379
    .end local v0    # "prefix1":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@20
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@23
    .line 364
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 856
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 858
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 861
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 854
    return-void
.end method

.method public reset()Z
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 213
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@7
    .line 215
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->serialize(Lorg/w3c/dom/Node;)V

    #@c
    .line 209
    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 1
    .param p1, "URI_and_localNames"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 1169
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    #@5
    .line 1167
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 1274
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 1272
    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "system"    # Ljava/lang/String;
    .param p2, "pub"    # Ljava/lang/String;

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    #@5
    .line 630
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    #@a
    .line 627
    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1
    .param p1, "doctype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    #@5
    .line 642
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    #@8
    .line 639
    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1
    .param p1, "doctype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    #@5
    .line 654
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    #@8
    .line 651
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 870
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@5
    .line 868
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    #@5
    .line 661
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .param p1, "escape"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEscaping(Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setIndent(Z)V
    .locals 1
    .param p1, "indent"    # Z

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    #@5
    .line 670
    return-void
.end method

.method public setIndentAmount(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    #@5
    .line 678
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 688
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    #@5
    .line 689
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    #@8
    .line 686
    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    #@5
    .line 696
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 1
    .param p1, "format"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputFormat(Ljava/util/Properties;)V

    #@5
    .line 231
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@5
    .line 241
    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 1285
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    #@5
    .line 1283
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 1
    .param p1, "standalone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    #@5
    .line 705
    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 1
    .param p1, "t"    # Ljavax/xml/transform/Transformer;

    #@0
    .prologue
    .line 1256
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    #@5
    .line 1257
    instance-of v0, p1, Lorg/apache/xml/serializer/SerializerTrace;

    #@7
    if-eqz v0, :cond_0

    #@9
    move-object v0, p1

    #@a
    .line 1258
    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    #@c
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    #@f
    move-result v0

    #@10
    .line 1257
    if-eqz v0, :cond_0

    #@12
    .line 1259
    check-cast p1, Lorg/apache/xml/serializer/SerializerTrace;

    #@14
    .end local p1    # "t":Ljavax/xml/transform/Transformer;
    iput-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@16
    .line 1254
    :goto_0
    return-void

    #@17
    .line 1261
    .restart local p1    # "t":Ljavax/xml/transform/Transformer;
    :cond_0
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1a
    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    #@5
    .line 433
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    #@8
    .line 427
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    #@5
    .line 251
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->skippedEntity(Ljava/lang/String;)V

    #@5
    .line 877
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 937
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->startCDATA()V

    #@5
    .line 935
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 945
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    #@3
    .line 439
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 448
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@4
    .line 446
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@4
    .line 451
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@2
    if-eqz v0, :cond_4

    #@4
    .line 466
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 472
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@b
    .line 473
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@d
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@10
    .line 460
    :cond_0
    :goto_0
    return-void

    #@11
    .line 482
    :cond_1
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    #@14
    .line 483
    iput-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@16
    .line 486
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    #@1c
    .line 489
    iput-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@1e
    .line 492
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    #@20
    .line 494
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 495
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->firePseudoElement(Ljava/lang/String;)V

    #@27
    .line 504
    :cond_2
    if-eqz p4, :cond_3

    #@29
    .line 505
    invoke-super {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    #@2c
    .line 510
    :cond_3
    if-eqz p4, :cond_0

    #@2e
    .line 511
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@31
    goto :goto_0

    #@32
    .line 519
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@34
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@37
    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 956
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->startEntity(Ljava/lang/String;)V

    #@5
    .line 954
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    .line 347
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "shouldFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    const/4 v0, 0x0

    #@1
    .line 386
    .local v0, "pushed":Z
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    #@3
    if-eqz v1, :cond_3

    #@5
    .line 388
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_1

    #@9
    if-eqz p3, :cond_1

    #@b
    .line 394
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    #@e
    .line 395
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@10
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@13
    move-result v0

    #@14
    .line 419
    .end local v0    # "pushed":Z
    :cond_0
    :goto_0
    return v0

    #@15
    .line 399
    .restart local v0    # "pushed":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@17
    if-nez v1, :cond_2

    #@19
    .line 401
    new-instance v1, Ljava/util/Vector;

    #@1b
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@1e
    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@20
    .line 402
    new-instance v1, Ljava/util/Vector;

    #@22
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@25
    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    #@27
    .line 404
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    #@29
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2c
    .line 405
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    #@2e
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@31
    .line 407
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@33
    if-nez v1, :cond_0

    #@35
    .line 409
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    #@37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 410
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    #@3f
    goto :goto_0

    #@40
    .line 417
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    #@42
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@45
    move-result v0

    #@46
    .local v0, "pushed":Z
    goto :goto_0
.end method

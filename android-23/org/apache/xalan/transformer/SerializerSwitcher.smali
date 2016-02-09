.class public Lorg/apache/xalan/transformer/SerializerSwitcher;
.super Ljava/lang/Object;
.source "SerializerSwitcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "qnameString"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-virtual {p1, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    .line 136
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public static switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    .locals 8
    .param p0, "ns"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "oldSerializer"    # Lorg/apache/xml/serializer/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    move-object v2, p3

    #@1
    .line 155
    .local v2, "newSerializer":Lorg/apache/xml/serializer/Serializer;
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v7

    #@7
    if-nez v7, :cond_3

    #@9
    .line 156
    :cond_0
    const-string/jumbo v7, "html"

    #@c
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v7

    #@10
    .line 155
    if-eqz v7, :cond_3

    #@12
    .line 161
    const-string/jumbo v7, "method"

    #@15
    invoke-static {v7, p2}, Lorg/apache/xalan/transformer/SerializerSwitcher;->getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    if-eqz v7, :cond_1

    #@1b
    .line 162
    return-object v2

    #@1c
    .line 166
    :cond_1
    move-object v4, p2

    #@1d
    .line 171
    .local v4, "prevProperties":Ljava/util/Properties;
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    #@1f
    const-string/jumbo v7, "html"

    #@22
    invoke-direct {v0, v7}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@25
    .line 173
    .local v0, "htmlOutputProperties":Lorg/apache/xalan/templates/OutputProperties;
    const/4 v7, 0x1

    #@26
    invoke-virtual {v0, v4, v7}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    #@29
    .line 174
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@2c
    move-result-object v1

    #@2d
    .line 178
    .local v1, "htmlProperties":Ljava/util/Properties;
    if-eqz p3, :cond_3

    #@2f
    .line 181
    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    #@32
    move-result-object v5

    #@33
    .line 183
    .local v5, "serializer":Lorg/apache/xml/serializer/Serializer;
    invoke-interface {p3}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    #@36
    move-result-object v6

    #@37
    .line 185
    .local v6, "writer":Ljava/io/Writer;
    if-eqz v6, :cond_4

    #@39
    .line 186
    invoke-interface {v5, v6}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    #@3c
    .line 194
    :cond_2
    :goto_0
    move-object v2, v5

    #@3d
    .line 202
    .end local v0    # "htmlOutputProperties":Lorg/apache/xalan/templates/OutputProperties;
    .end local v1    # "htmlProperties":Ljava/util/Properties;
    .end local v4    # "prevProperties":Ljava/util/Properties;
    .end local v5    # "serializer":Lorg/apache/xml/serializer/Serializer;
    .end local v6    # "writer":Ljava/io/Writer;
    :cond_3
    return-object v2

    #@3e
    .line 189
    .restart local v0    # "htmlOutputProperties":Lorg/apache/xalan/templates/OutputProperties;
    .restart local v1    # "htmlProperties":Ljava/util/Properties;
    .restart local v4    # "prevProperties":Ljava/util/Properties;
    .restart local v5    # "serializer":Lorg/apache/xml/serializer/Serializer;
    .restart local v6    # "writer":Ljava/io/Writer;
    :cond_4
    invoke-interface {v5}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    #@41
    move-result-object v3

    #@42
    .line 191
    .local v3, "os":Ljava/io/OutputStream;
    if-eqz v3, :cond_2

    #@44
    .line 192
    invoke-interface {v5, v3}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    #@47
    goto :goto_0
.end method

.method public static switchSerializerIfHTML(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    if-nez p0, :cond_0

    #@2
    .line 60
    return-void

    #@3
    .line 62
    :cond_0
    if-eqz p1, :cond_1

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_3

    #@b
    .line 63
    :cond_1
    const-string/jumbo v4, "html"

    #@e
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    .line 62
    if-eqz v4, :cond_3

    #@14
    .line 68
    const-string/jumbo v4, "method"

    #@17
    invoke-virtual {p0, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 69
    return-void

    #@1e
    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@25
    move-result-object v3

    #@26
    .line 78
    .local v3, "prevProperties":Ljava/util/Properties;
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    #@28
    const-string/jumbo v4, "html"

    #@2b
    invoke-direct {v0, v4}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@2e
    .line 80
    .local v0, "htmlOutputProperties":Lorg/apache/xalan/templates/OutputProperties;
    const/4 v4, 0x1

    #@2f
    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    #@32
    .line 81
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@35
    move-result-object v1

    #@36
    .line 86
    .local v1, "htmlProperties":Ljava/util/Properties;
    const/4 v2, 0x0

    #@37
    .line 56
    .end local v0    # "htmlOutputProperties":Lorg/apache/xalan/templates/OutputProperties;
    .end local v1    # "htmlProperties":Ljava/util/Properties;
    .end local v3    # "prevProperties":Ljava/util/Properties;
    :cond_3
    return-void
.end method

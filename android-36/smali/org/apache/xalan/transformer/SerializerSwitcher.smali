.class public Lorg/apache/xalan/transformer/SerializerSwitcher;
.super Ljava/lang/Object;
.source "SerializerSwitcher.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static greylist switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_40

    .line 156
    :cond_8
    const-string p0, "html"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 161
    const-string p1, "method"

    invoke-static {p1, p2}, Lorg/apache/xalan/transformer/SerializerSwitcher;->getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    goto :goto_40

    .line 171
    :cond_19
    new-instance p1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {p1, p0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 173
    invoke-virtual {p1, p2, p0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 174
    invoke-virtual {p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    if-eqz p3, :cond_40

    .line 181
    invoke-static {p0}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object p0

    .line 183
    invoke-interface {p3}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 186
    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    return-object p0

    .line 189
    :cond_36
    invoke-interface {p0}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 192
    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    :cond_3f
    return-object p0

    :cond_40
    :goto_40
    return-object p3
.end method

.method public static greylist switchSerializerIfHTML(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_30

    :cond_3
    if-eqz p1, :cond_b

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_30

    .line 63
    :cond_b
    const-string p1, "html"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 68
    const-string p2, "method"

    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c

    goto :goto_30

    .line 73
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    .line 78
    new-instance p2, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {p2, p1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p2, p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 81
    invoke-virtual {p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    :cond_30
    :goto_30
    return-void
.end method

.class Lorg/ksoap2/serialization/DM;
.super Ljava/lang/Object;
.source "DM.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 37
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    #@11
    throw v1

    #@12
    .line 39
    :sswitch_0
    return-object v0

    #@13
    .line 41
    :sswitch_1
    new-instance v1, Ljava/lang/Integer;

    #@15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result v2

    #@19
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    #@1c
    return-object v1

    #@1d
    .line 43
    :sswitch_2
    new-instance v1, Ljava/lang/Long;

    #@1f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@22
    move-result-wide v2

    #@23
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@26
    return-object v1

    #@27
    .line 45
    :sswitch_3
    new-instance v1, Ljava/lang/Boolean;

    #@29
    invoke-static {v0}, Lorg/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    #@2c
    move-result v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    #@30
    return-object v1

    #@31
    .line 37
    nop

    #@32
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_3
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@0
    .prologue
    .line 73
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "int"

    #@5
    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->INTEGER_CLASS:Ljava/lang/Class;

    #@7
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@a
    .line 74
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@c
    const-string/jumbo v1, "long"

    #@f
    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->LONG_CLASS:Ljava/lang/Class;

    #@11
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@14
    .line 75
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@16
    const-string/jumbo v1, "string"

    #@19
    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    #@1b
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@1e
    .line 76
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@20
    const-string/jumbo v1, "boolean"

    #@23
    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->BOOLEAN_CLASS:Ljava/lang/Class;

    #@25
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@28
    .line 72
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    instance-of v4, p2, Lorg/ksoap2/serialization/AttributeContainer;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v0, p2

    #@5
    .line 60
    check-cast v0, Lorg/ksoap2/serialization/AttributeContainer;

    #@7
    .line 61
    .local v0, "attributeContainer":Lorg/ksoap2/serialization/AttributeContainer;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeCount()I

    #@a
    move-result v2

    #@b
    .line 62
    .local v2, "cnt":I
    const/4 v3, 0x0

    #@c
    .local v3, "counter":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@e
    .line 63
    new-instance v1, Lorg/ksoap2/serialization/AttributeInfo;

    #@10
    invoke-direct {v1}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    #@13
    .line 64
    .local v1, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v0, v3, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    #@16
    .line 65
    invoke-virtual {v1}, Lorg/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v1}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 66
    invoke-virtual {v1}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    .line 65
    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 62
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 69
    .end local v0    # "attributeContainer":Lorg/ksoap2/serialization/AttributeContainer;
    .end local v1    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v2    # "cnt":I
    .end local v3    # "counter":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 58
    return-void
.end method

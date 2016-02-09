.class public Lorg/ksoap2/serialization/MarshalFloat;
.super Ljava/lang/Object;
.source "MarshalFloat.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
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
    .param p4, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 35
    .local v1, "stringValue":Ljava/lang/String;
    const-string/jumbo v2, "float"

    #@7
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 36
    new-instance v0, Ljava/lang/Float;

    #@f
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    #@12
    .line 44
    .local v0, "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@13
    .line 37
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "double"

    #@16
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 38
    new-instance v0, Ljava/lang/Double;

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    #@21
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@22
    .line 39
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, "decimal"

    #@25
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 40
    new-instance v0, Ljava/math/BigDecimal;

    #@2d
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@30
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@31
    .line 42
    .end local v0    # "result":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    #@33
    const-string/jumbo v3, "float, double, or decimal expected"

    #@36
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@0
    .prologue
    .line 52
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "float"

    #@5
    const-class v2, Ljava/lang/Float;

    #@7
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@a
    .line 53
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@c
    const-string/jumbo v1, "double"

    #@f
    const-class v2, Ljava/lang/Double;

    #@11
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@14
    .line 54
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@16
    const-string/jumbo v1, "decimal"

    #@19
    const-class v2, Ljava/math/BigDecimal;

    #@1b
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@1e
    .line 51
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 47
    return-void
.end method

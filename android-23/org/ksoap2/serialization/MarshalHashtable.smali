.class public Lorg/ksoap2/serialization/MarshalHashtable;
.super Ljava/lang/Object;
.source "MarshalHashtable.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;
    }
.end annotation


# static fields
.field public static final HASHTABLE_CLASS:Ljava/lang/Class;

.field public static final NAME:Ljava/lang/String; = "Map"

.field public static final NAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xml-soap"


# instance fields
.field envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lorg/ksoap2/serialization/MarshalHashtable;->HASHTABLE_CLASS:Ljava/lang/Class;

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 11
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
    .line 52
    new-instance v8, Ljava/util/Hashtable;

    #@2
    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 53
    .local v8, "instance":Ljava/util/Hashtable;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 54
    .local v7, "elementName":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x3

    #@e
    if-eq v0, v1, :cond_2

    #@10
    .line 55
    new-instance v2, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;

    #@12
    invoke-direct {v2, p0, v8}, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;-><init>(Lorg/ksoap2/serialization/MarshalHashtable;Ljava/util/Hashtable;)V

    #@15
    .line 56
    .local v2, "item":Lorg/ksoap2/serialization/SoapObject;
    const-string/jumbo v0, "item"

    #@18
    const/4 v1, 0x2

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@20
    .line 58
    iget-object v0, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@22
    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x0

    #@26
    const/4 v5, 0x0

    #@27
    move-object v1, p1

    #@28
    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@2b
    move-result-object v9

    #@2c
    .line 59
    .local v9, "key":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@2f
    .line 60
    if-eqz v9, :cond_0

    #@31
    .line 61
    const/4 v0, 0x0

    #@32
    invoke-virtual {v2, v0, v9}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    #@35
    .line 63
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@37
    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@39
    const/4 v3, 0x1

    #@3a
    const/4 v4, 0x0

    #@3b
    const/4 v5, 0x0

    #@3c
    move-object v1, p1

    #@3d
    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@40
    move-result-object v10

    #@41
    .line 64
    .local v10, "value":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@44
    .line 65
    if-eqz v10, :cond_1

    #@46
    .line 66
    const/4 v0, 0x1

    #@47
    invoke-virtual {v2, v0, v10}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    #@4a
    .line 68
    :cond_1
    const-string/jumbo v0, "item"

    #@4d
    const/4 v1, 0x3

    #@4e
    const/4 v3, 0x0

    #@4f
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@52
    goto :goto_0

    #@53
    .line 70
    .end local v2    # "item":Lorg/ksoap2/serialization/SoapObject;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x3

    #@54
    const/4 v1, 0x0

    #@55
    invoke-interface {p1, v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@58
    .line 71
    return-object v8
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@2
    .line 119
    const-string/jumbo v0, "http://xml.apache.org/xml-soap"

    #@5
    const-string/jumbo v1, "Map"

    #@8
    sget-object v2, Lorg/ksoap2/serialization/MarshalHashtable;->HASHTABLE_CLASS:Ljava/lang/Class;

    #@a
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@d
    .line 117
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p2

    #@2
    .line 75
    check-cast v0, Ljava/util/Hashtable;

    #@4
    .line 76
    .local v0, "h":Ljava/util/Hashtable;
    new-instance v1, Lorg/ksoap2/serialization/SoapObject;

    #@6
    invoke-direct {v1, v5, v5}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 77
    .local v1, "item":Lorg/ksoap2/serialization/SoapObject;
    const-string/jumbo v4, "key"

    #@c
    invoke-virtual {v1, v4, v5}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@f
    .line 78
    const-string/jumbo v4, "value"

    #@12
    invoke-virtual {v1, v4, v5}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@15
    .line 79
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@18
    move-result-object v3

    #@19
    .local v3, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 80
    const-string/jumbo v4, ""

    #@22
    const-string/jumbo v5, "item"

    #@25
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28
    .line 81
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .line 82
    .local v2, "key":Ljava/lang/Object;
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v1, v4, v2}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    #@30
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    const/4 v5, 0x1

    #@35
    invoke-virtual {v1, v5, v4}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    #@38
    .line 84
    iget-object v4, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@3a
    invoke-virtual {v4, p1, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    #@3d
    .line 85
    const-string/jumbo v4, ""

    #@40
    const-string/jumbo v5, "item"

    #@43
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@46
    goto :goto_0

    #@47
    .line 74
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

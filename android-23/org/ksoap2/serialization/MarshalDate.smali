.class public Lorg/ksoap2/serialization/MarshalDate;
.super Ljava/lang/Object;
.source "MarshalDate.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# static fields
.field public static DATE_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lorg/ksoap2/serialization/MarshalDate;->DATE_CLASS:Ljava/lang/Class;

    #@b
    .line 31
    return-void
.end method

.method public constructor <init>()V
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
    .locals 2
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
    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    invoke-static {v0, v1}, Lorg/ksoap2/kobjects/isodate/IsoDate;->stringToDate(Ljava/lang/String;I)Ljava/util/Date;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    #@0
    .prologue
    .line 45
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "dateTime"

    #@5
    sget-object v2, Lorg/ksoap2/serialization/MarshalDate;->DATE_CLASS:Ljava/lang/Class;

    #@7
    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@a
    .line 44
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    check-cast p2, Ljava/util/Date;

    #@2
    .end local p2    # "obj":Ljava/lang/Object;
    const/4 v0, 0x3

    #@3
    invoke-static {p2, v0}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dateToString(Ljava/util/Date;I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a
    .line 40
    return-void
.end method

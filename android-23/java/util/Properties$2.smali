.class Ljava/util/Properties$2;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Properties;


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 610
    iput-object p1, p0, Ljava/util/Properties$2;->this$0:Ljava/util/Properties;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    const-string/jumbo v1, "http://java.sun.com/dtd/properties.dtd"

    #@3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 614
    new-instance v0, Lorg/xml/sax/InputSource;

    #@b
    new-instance v1, Ljava/io/StringReader;

    #@d
    .line 615
    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

    #@10
    .line 614
    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    #@16
    .line 616
    .local v0, "result":Lorg/xml/sax/InputSource;
    const-string/jumbo v1, "http://java.sun.com/dtd/properties.dtd"

    #@19
    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@1c
    .line 617
    return-object v0

    #@1d
    .line 619
    .end local v0    # "result":Lorg/xml/sax/InputSource;
    :cond_0
    new-instance v1, Lorg/xml/sax/SAXException;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Invalid DOCTYPE declaration: "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1
.end method

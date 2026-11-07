.class Ljava/util/prefs/XmlSupport$Resolver;
.super Ljava/lang/Object;
.source "XmlSupport.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolver"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/XmlSupport-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/prefs/XmlSupport$Resolver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 7
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 456
    const-string v0, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 458
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for preferences --><!ELEMENT preferences (root) ><!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\"  ><!ELEMENT root (map, node*) ><!ATTLIST root          type (system|user) #REQUIRED ><!ELEMENT node (map, node*) ><!ATTLIST node          name CDATA #REQUIRED ><!ELEMENT map (entry*) ><!ATTLIST map  MAP_XML_VERSION CDATA \"0.0\"  ><!ELEMENT entry EMPTY ><!ATTLIST entry          key CDATA #REQUIRED          value CDATA #REQUIRED >"

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 459
    .local v1, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 460
    return-object v1

    .line 462
    .end local v1    # "is":Lorg/xml/sax/InputSource;
    :cond_18
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid system identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

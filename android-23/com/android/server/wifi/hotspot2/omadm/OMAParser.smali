.class public Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OMAParser.java"


# instance fields
.field private mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public characters([CII)V
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
    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addText([CII)V

    #@5
    .line 60
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 47
    new-instance v1, Lorg/xml/sax/SAXException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "End tag \'"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "\' doesn\'t match current node: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 48
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@27
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@35
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 56
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@3a
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@40
    .line 45
    return-void

    #@41
    .line 52
    :catch_0
    move-exception v0

    #@42
    .line 53
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@44
    const-string/jumbo v2, "Failed to close element"

    #@47
    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4a
    throw v1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "urn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@7
    move-result-object v0

    #@8
    .line 24
    .local v0, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lorg/xml/sax/InputSource;

    #@a
    new-instance v3, Ljava/io/StringReader;

    #@c
    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    #@12
    invoke-virtual {v0, v2, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    #@15
    .line 25
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@17
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@19
    invoke-direct {v2, v3, p2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v2

    #@1d
    .line 26
    .end local v0    # "parser":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v1

    #@1e
    .line 27
    .local v1, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@20
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@23
    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    .line 36
    .local v0, "parent":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@4
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@6
    invoke-direct {v1, v2, p3, p4}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@b
    .line 38
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 39
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@11
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@13
    .line 33
    :goto_0
    return-void

    #@14
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    #@19
    goto :goto_0
.end method

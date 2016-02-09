.class public Lorg/ccil/cowan/tagsoup/jaxp/JAXPTest;
.super Ljava/lang/Object;
.source "JAXPTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 30
    new-instance v0, Lorg/ccil/cowan/tagsoup/jaxp/JAXPTest;

    #@2
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/jaxp/JAXPTest;-><init>()V

    #@5
    invoke-direct {v0, p0}, Lorg/ccil/cowan/tagsoup/jaxp/JAXPTest;->test([Ljava/lang/String;)V

    #@8
    .line 28
    return-void
.end method

.method private test([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 36
    array-length v3, p1

    #@2
    if-eq v3, v6, :cond_0

    #@4
    .line 37
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Usage: java "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/jaxp/JAXPTest;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, " [input-file]"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 38
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    #@2b
    .line 40
    :cond_0
    new-instance v1, Ljava/io/File;

    #@2d
    const/4 v3, 0x0

    #@2e
    aget-object v3, p1, v3

    #@30
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@33
    .line 42
    .local v1, "f":Ljava/io/File;
    const-string/jumbo v3, "javax.xml.parsers.SAXParserFactory"

    #@36
    const-string/jumbo v4, "org.ccil.cowan.tagsoup.jaxp.SAXFactoryImpl"

    #@39
    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    .line 44
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@3f
    move-result-object v2

    #@40
    .line 45
    .local v2, "spf":Ljavax/xml/parsers/SAXParserFactory;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "Ok, SAX factory JAXP creates is: "

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59
    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5b
    const-string/jumbo v4, "Let\'s parse..."

    #@5e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 47
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@64
    move-result-object v3

    #@65
    new-instance v4, Lorg/xml/sax/helpers/DefaultHandler;

    #@67
    invoke-direct {v4}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@6a
    invoke-virtual {v3, v1, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    #@6d
    .line 48
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6f
    const-string/jumbo v4, "Done. And then DOM build:"

    #@72
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@75
    .line 50
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    #@80
    move-result-object v0

    #@81
    .line 52
    .local v0, "doc":Lorg/w3c/dom/Document;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@83
    new-instance v4, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v5, "Succesfully built DOM tree from \'"

    #@8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    const-string/jumbo v5, "\', -> "

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a5
    .line 34
    return-void
.end method

.class public final Lorg/xml/sax/helpers/XMLReaderFactory;
.super Ljava/lang/Object;
.source "XMLReaderFactory.java"


# static fields
.field private static final property:Ljava/lang/String; = "org.xml.sax.driver"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    .line 110
    .local v0, "className":Ljava/lang/String;
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    #@4
    move-result-object v4

    #@5
    .line 113
    .local v4, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string/jumbo v7, "org.xml.sax.driver"

    #@8
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    #@b
    move-result-object v0

    #@c
    .line 117
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    #@e
    .line 119
    :try_start_1
    const-string/jumbo v6, "META-INF/services/org.xml.sax.driver"

    #@11
    .line 123
    .local v6, "service":Ljava/lang/String;
    if-nez v4, :cond_2

    #@13
    .line 124
    invoke-static {v6}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@16
    move-result-object v3

    #@17
    .line 128
    .local v3, "in":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_0

    #@19
    .line 129
    new-instance v5, Ljava/io/BufferedReader;

    #@1b
    new-instance v7, Ljava/io/InputStreamReader;

    #@1d
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1f
    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@22
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@25
    .line 130
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 131
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 138
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "service":Ljava/lang/String;
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    #@2e
    .line 149
    :cond_1
    if-eqz v0, :cond_3

    #@30
    .line 150
    invoke-static {v4, v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    #@33
    move-result-object v7

    #@34
    return-object v7

    #@35
    .line 126
    .restart local v6    # "service":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@38
    move-result-object v3

    #@39
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1

    #@3a
    .line 154
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "service":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v7, Lorg/xml/sax/helpers/ParserAdapter;

    #@3c
    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    #@3f
    move-result-object v8

    #@40
    invoke-direct {v7, v8}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@43
    return-object v7

    #@44
    .line 155
    :catch_0
    move-exception v1

    #@45
    .line 156
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/xml/sax/SAXException;

    #@47
    const-string/jumbo v8, "Can\'t create default XMLReader; is system property org.xml.sax.driver set?"

    #@4a
    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v7

    #@4e
    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@4f
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@50
    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "className":Ljava/lang/String;
    :catch_2
    move-exception v2

    #@51
    .local v2, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .locals 7
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    :try_start_0
    invoke-static {p0, p1}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v4

    #@4
    check-cast v4, Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v4

    #@7
    .line 200
    :catch_0
    move-exception v3

    #@8
    .line 201
    .local v3, "e4":Ljava/lang/ClassCastException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@a
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "SAX2 driver class "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    .line 202
    const-string/jumbo v6, " does not implement XMLReader"

    #@1d
    .line 201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v4, v5, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@28
    throw v4

    #@29
    .line 196
    .end local v3    # "e4":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@2a
    .line 197
    .local v2, "e3":Ljava/lang/InstantiationException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@2c
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v6, "SAX2 driver class "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 198
    const-string/jumbo v6, " loaded but cannot be instantiated (no empty public constructor?)"

    #@3f
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4a
    throw v4

    #@4b
    .line 193
    .end local v2    # "e3":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@4c
    .line 194
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@4e
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "SAX2 driver class "

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    .line 195
    const-string/jumbo v6, " found but cannot be loaded"

    #@61
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-direct {v4, v5, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@6c
    throw v4

    #@6d
    .line 190
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    #@6e
    .line 191
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@70
    new-instance v5, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v6, "SAX2 driver class "

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 192
    const-string/jumbo v6, " not found"

    #@83
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-direct {v4, v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@8e
    throw v4
.end method

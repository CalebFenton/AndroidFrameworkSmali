.class public final Lorg/xml/sax/helpers/XMLReaderFactory;
.super Ljava/lang/Object;
.source "XMLReaderFactory.java"


# static fields
.field private static final greylist-max-o property:Ljava/lang/String; = "org.xml.sax.driver"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static whitelist test-api createXMLReader()Lorg/xml/sax/XMLReader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "className":Ljava/lang/String;
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 116
    .local v1, "loader":Ljava/lang/ClassLoader;
    :try_start_5
    const-string v2, "org.xml.sax.driver"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_d

    move-object v0, v2

    goto :goto_e

    .line 117
    :catch_d
    move-exception v2

    :goto_e
    nop

    .line 120
    if-nez v0, :cond_40

    .line 122
    :try_start_11
    const-string v2, "META-INF/services/org.xml.sax.driver"

    .line 126
    .local v2, "service":Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 127
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .local v3, "in":Ljava/io/InputStream;
    goto :goto_1e

    .line 129
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_1a
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_3f

    .line 131
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1e
    if-eqz v3, :cond_3e

    .line 133
    :try_start_20
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 134
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_38

    .line 136
    .end local v0    # "className":Ljava/lang/String;
    .local v5, "className":Ljava/lang/String;
    :try_start_30
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_35

    .line 137
    move-object v0, v5

    goto :goto_3e

    .line 139
    .end local v2    # "service":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_35
    move-exception v0

    move-object v0, v5

    goto :goto_40

    .line 136
    .end local v5    # "className":Ljava/lang/String;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "service":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_38
    move-exception v4

    :try_start_39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    nop

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    throw v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_3f

    .line 140
    .end local v2    # "service":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_3e
    :goto_3e
    goto :goto_40

    .line 139
    :catch_3f
    move-exception v2

    .line 144
    :cond_40
    :goto_40
    nop

    .line 155
    if-eqz v0, :cond_48

    .line 156
    invoke-static {v1, v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    return-object v2

    .line 160
    :cond_48
    :try_start_48
    new-instance v2, Lorg/xml/sax/helpers/ParserAdapter;

    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_52

    return-object v2

    .line 161
    :catch_52
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Can\'t create default XMLReader; is system property org.xml.sax.driver set?"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist test-api createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .registers 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 188
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method private static greylist loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .registers 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 196
    const-string v0, "SAX2 driver class "

    :try_start_2
    invoke-static {p0, p1}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLReader;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_8} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_8} :catch_45
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_8} :catch_27
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v1

    .line 207
    :catch_9
    move-exception v1

    .line 208
    .local v1, "e4":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not implement XMLReader"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 203
    .end local v1    # "e4":Ljava/lang/ClassCastException;
    :catch_27
    move-exception v1

    .line 204
    .local v1, "e3":Ljava/lang/InstantiationException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " loaded but cannot be instantiated (no empty public constructor?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 200
    .end local v1    # "e3":Ljava/lang/InstantiationException;
    :catch_45
    move-exception v1

    .line 201
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " found but cannot be loaded"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 197
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_63
    move-exception v1

    .line 198
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not found"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

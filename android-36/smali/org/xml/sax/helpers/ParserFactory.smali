.class public Lorg/xml/sax/helpers/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static whitelist test-api makeParser()Lorg/xml/sax/Parser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 85
    const-string v0, "org.xml.sax.parser"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 89
    invoke-static {v0}, Lorg/xml/sax/helpers/ParserFactory;->makeParser(Ljava/lang/String;)Lorg/xml/sax/Parser;

    move-result-object v1

    return-object v1

    .line 87
    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No value for sax.parser property"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api makeParser(Ljava/lang/String;)Lorg/xml/sax/Parser;
    .registers 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 123
    invoke-static {v0, p0}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/Parser;

    return-object v0
.end method

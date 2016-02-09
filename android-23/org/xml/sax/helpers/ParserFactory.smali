.class public Lorg/xml/sax/helpers/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeParser()Lorg/xml/sax/Parser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    const-string/jumbo v1, "org.xml.sax.parser"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 86
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 87
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v2, "No value for sax.parser property"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 89
    :cond_0
    invoke-static {v0}, Lorg/xml/sax/helpers/ParserFactory;->makeParser(Ljava/lang/String;)Lorg/xml/sax/Parser;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xml/sax/Parser;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 123
    invoke-static {v0, p0}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lorg/xml/sax/Parser;

    #@a
    return-object v0
.end method

.class final Ljavax/xml/xpath/XPathFactoryFinder;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static debug:Z


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    sput-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@3
    .line 53
    const-string/jumbo v2, "jaxp.debug"

    #@6
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 55
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    const-string/jumbo v2, "false"

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    :cond_0
    :goto_0
    sput-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@17
    .line 348
    const-class v1, Ljavax/xml/xpath/XPathFactory;

    #@19
    sput-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@1b
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "META-INF/services/"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    sput-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@37
    .line 42
    return-void

    #@38
    .line 55
    :cond_1
    const/4 v1, 0x1

    #@39
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 111
    iput-object p1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@5
    .line 112
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 113
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugDisplayClassLoader()V

    #@c
    .line 110
    :cond_0
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    sget-object v10, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@8
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v10

    #@c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v9

    #@10
    const-string/jumbo v10, ":"

    #@13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 169
    .local v4, "propertyName":Ljava/lang/String;
    :try_start_0
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@21
    if-eqz v9, :cond_0

    #@23
    new-instance v9, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v10, "Looking up system property \'"

    #@2b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    const-string/jumbo v10, "\'"

    #@36
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@41
    .line 170
    :cond_0
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 171
    .local v5, "r":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4a
    move-result v9

    #@4b
    if-lez v9, :cond_2

    #@4d
    .line 172
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@4f
    if-eqz v9, :cond_1

    #@51
    new-instance v9, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v10, "The value is \'"

    #@59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    const-string/jumbo v10, "\'"

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@6f
    .line 173
    :cond_1
    invoke-virtual {p0, v5}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    #@72
    move-result-object v8

    #@73
    .line 174
    .local v8, "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v8, :cond_3

    #@75
    return-object v8

    #@76
    .line 175
    .end local v8    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :cond_2
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@78
    if-eqz v9, :cond_3

    #@7a
    .line 176
    const-string/jumbo v9, "The property is undefined."

    #@7d
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    .line 184
    .end local v5    # "r":Ljava/lang/String;
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;->-get0()Ljava/util/Properties;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    .line 185
    .local v3, "factoryClassName":Ljava/lang/String;
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@8a
    if-eqz v9, :cond_4

    #@8c
    new-instance v9, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v10, "found "

    #@94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    const-string/jumbo v10, " in $java.home/jaxp.properties"

    #@9f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v9

    #@a3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v9

    #@a7
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@aa
    .line 187
    :cond_4
    if-eqz v3, :cond_5

    #@ac
    .line 188
    invoke-virtual {p0, v3}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@af
    move-result-object v8

    #@b0
    .line 189
    .restart local v8    # "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v8, :cond_5

    #@b2
    .line 190
    return-object v8

    #@b3
    .line 178
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .end local v8    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :catch_0
    move-exception v1

    #@b4
    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@b7
    goto :goto_0

    #@b8
    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@b9
    .line 194
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@bb
    if-eqz v9, :cond_5

    #@bd
    .line 195
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@c0
    .line 200
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/lang/Iterable;

    #@c3
    move-result-object v9

    #@c4
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c7
    move-result-object v7

    #@c8
    .local v7, "resource$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@cb
    move-result v9

    #@cc
    if-eqz v9, :cond_8

    #@ce
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d1
    move-result-object v6

    #@d2
    check-cast v6, Ljava/net/URL;

    #@d4
    .line 201
    .local v6, "resource":Ljava/net/URL;
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@d6
    if-eqz v9, :cond_7

    #@d8
    new-instance v9, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v10, "looking into "

    #@e0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v9

    #@ec
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@ef
    .line 203
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@f6
    move-result-object v10

    #@f7
    invoke-direct {p0, p1, v9, v10}, Ljavax/xml/xpath/XPathFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@fa
    move-result-object v8

    #@fb
    .line 204
    .restart local v8    # "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v8, :cond_6

    #@fd
    return-object v8

    #@fe
    .line 205
    .end local v8    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :catch_2
    move-exception v0

    #@ff
    .line 206
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@101
    if-eqz v9, :cond_6

    #@103
    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v10, "failed to read "

    #@10b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v9

    #@10f
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v9

    #@113
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v9

    #@117
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@11a
    .line 208
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@11d
    goto :goto_1

    #@11e
    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "resource":Ljava/net/URL;
    :cond_8
    const-string/jumbo v9, "http://java.sun.com/jaxp/xpath/dom"

    #@121
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v9

    #@125
    if-eqz v9, :cond_a

    #@127
    .line 215
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@129
    if-eqz v9, :cond_9

    #@12b
    const-string/jumbo v9, "attempting to use the platform default W3C DOM XPath lib"

    #@12e
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@131
    .line 216
    :cond_9
    const-string/jumbo v9, "org.apache.xpath.jaxp.XPathFactoryImpl"

    #@134
    invoke-virtual {p0, v9}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    #@137
    move-result-object v9

    #@138
    return-object v9

    #@139
    .line 219
    :cond_a
    sget-boolean v9, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@13b
    if-eqz v9, :cond_b

    #@13d
    const-string/jumbo v9, "all things were tried, but none was found. bailing out."

    #@140
    invoke-static {v9}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@143
    .line 220
    :cond_b
    return-object v11
.end method

.method private createServiceFileIterator()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 328
    const-class v3, Ljavax/xml/xpath/XPathFactoryFinder;

    #@6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v3

    #@a
    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@f
    move-result-object v2

    #@10
    .line 329
    .local v2, "resource":Ljava/net/URL;
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 332
    .end local v2    # "resource":Ljava/net/URL;
    :cond_0
    :try_start_0
    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@17
    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@1c
    move-result-object v1

    #@1d
    .line 333
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    sget-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@1f
    if-eqz v3, :cond_1

    #@21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 337
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    #@2a
    move-result-object v3

    #@2b
    return-object v3

    #@2c
    .line 334
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "no "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, " file was found"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v3}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    goto :goto_0

    #@4d
    .line 338
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v0

    #@4e
    .line 339
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@50
    if-eqz v3, :cond_3

    #@52
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "failed to enumerate resources "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v3}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@6b
    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@6e
    .line 343
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@71
    move-result-object v3

    #@72
    return-object v3
.end method

.method private debugDisplayClassLoader()V
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "using thread context class loader ("

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ") for search"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@2c
    .line 120
    return-void

    #@2d
    .line 123
    :cond_0
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@2f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@32
    move-result-object v1

    #@33
    if-ne v0, v1, :cond_1

    #@35
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "using system class loader ("

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string/jumbo v1, ") for search"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@55
    .line 125
    return-void

    #@56
    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v1, "using class loader ("

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string/jumbo v1, ") for search"

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@76
    .line 117
    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "JAXP: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 88
    :cond_0
    return-void
.end method

.method private loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/16 v11, 0x50

    #@2
    const/4 v10, 0x0

    #@3
    .line 268
    sget-boolean v8, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@5
    if-eqz v8, :cond_0

    #@7
    new-instance v8, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v9, "Reading "

    #@f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@1e
    .line 272
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    #@20
    new-instance v8, Ljava/io/InputStreamReader;

    #@22
    const-string/jumbo v9, "UTF-8"

    #@25
    invoke-direct {v8, p3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@28
    const/16 v9, 0x50

    #@2a
    invoke-direct {v5, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 278
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_0
    const/4 v6, 0x0

    #@2e
    .line 282
    .local v6, "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@31
    move-result-object v1

    #@32
    .line 287
    .local v1, "factoryClassName":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@34
    .line 289
    const/16 v8, 0x23

    #@36
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    #@39
    move-result v3

    #@3a
    .line 290
    .local v3, "hashIndex":I
    const/4 v8, -0x1

    #@3b
    if-eq v3, v8, :cond_2

    #@3d
    .line 291
    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 295
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 298
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_1

    #@4b
    .line 304
    :try_start_2
    invoke-virtual {p0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    #@4e
    move-result-object v2

    #@4f
    .line 305
    .local v2, "foundFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v2, p1}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_1

    #@55
    .line 306
    move-object v6, v2

    #@56
    .line 317
    .end local v1    # "factoryClassName":Ljava/lang/String;
    .end local v2    # "foundFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v3    # "hashIndex":I
    .end local v6    # "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_3
    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@59
    .line 319
    return-object v6

    #@5a
    .line 273
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    #@5b
    .line 274
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    #@5d
    new-instance v8, Ljava/io/InputStreamReader;

    #@5f
    invoke-direct {v8, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@62
    invoke-direct {v5, v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@65
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    goto :goto_0

    #@66
    .line 283
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_1
    move-exception v7

    #@67
    .local v7, "x":Ljava/io/IOException;
    goto :goto_2

    #@68
    .line 309
    .end local v7    # "x":Ljava/io/IOException;
    .restart local v1    # "factoryClassName":Ljava/lang/String;
    .restart local v3    # "hashIndex":I
    :catch_2
    move-exception v4

    #@69
    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 6
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const/16 v4, 0x2e

    #@8
    const/16 v5, 0x2f

    #@a
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ".class"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 365
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_0

    #@1f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@22
    move-result-object p1

    #@23
    .line 367
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@26
    move-result-object v1

    #@27
    .line 368
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_1

    #@29
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    :cond_1
    return-object v2
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 234
    :try_start_0
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "instantiating "

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@1c
    .line 236
    :cond_0
    iget-object v5, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 237
    iget-object v5, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@25
    move-result-object v0

    #@26
    .line 240
    .local v0, "clazz":Ljava/lang/Class;
    :goto_0
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@28
    if-eqz v5, :cond_1

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "loaded it from "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@45
    .line 241
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    .line 243
    .local v1, "o":Ljava/lang/Object;
    instance-of v5, v1, Ljavax/xml/xpath/XPathFactory;

    #@4b
    if-eqz v5, :cond_3

    #@4d
    .line 244
    check-cast v1, Ljavax/xml/xpath/XPathFactory;

    #@4f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@50
    .line 239
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@53
    move-result-object v0

    #@54
    .restart local v0    # "clazz":Ljava/lang/Class;
    goto :goto_0

    #@55
    .line 246
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_3
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@57
    if-eqz v5, :cond_4

    #@59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    const-string/jumbo v6, " is not assignable to "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    sget-object v6, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    #@6b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@7a
    .line 262
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_1
    return-object v7

    #@7b
    .line 256
    :catch_0
    move-exception v2

    #@7c
    .line 257
    .local v2, "t":Ljava/lang/Throwable;
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@7e
    if-eqz v5, :cond_4

    #@80
    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v6, "failed to instantiate "

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@97
    .line 259
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@9a
    goto :goto_1

    #@9b
    .line 253
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    #@9c
    .line 254
    .local v3, "td":Ljava/lang/ThreadDeath;
    throw v3

    #@9d
    .line 249
    .end local v3    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v4

    #@9e
    .line 250
    .local v4, "vme":Ljava/lang/VirtualMachineError;
    throw v4
.end method

.method public newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    if-nez p1, :cond_0

    #@2
    .line 145
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "uri == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 147
    :cond_0
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    #@e
    move-result-object v0

    #@f
    .line 148
    .local v0, "f":Ljavax/xml/xpath/XPathFactory;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 149
    if-eqz v0, :cond_2

    #@15
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "factory \'"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, "\' was found for "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@3f
    .line 155
    :cond_1
    :goto_0
    return-object v0

    #@40
    .line 152
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "unable to find a factory for "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@57
    goto :goto_0
.end method

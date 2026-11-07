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
.field private static final blacklist DEFAULT_LINE_LENGTH:I = 0x50

.field private static final blacklist SERVICE_CLASS:Ljava/lang/Class;

.field private static final blacklist SERVICE_ID:Ljava/lang/String;

.field private static blacklist debug:Z


# instance fields
.field private final blacklist classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Z
    .registers 1

    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdebugPrintln(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    .line 53
    const-string v1, "jaxp.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_14

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    sput-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    .line 348
    .end local v1    # "val":Ljava/lang/String;
    const-class v0, Ljavax/xml/xpath/XPathFactory;

    sput-object v0, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 112
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_c

    .line 113
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugDisplayClassLoader()V

    .line 115
    :cond_c
    return-void
.end method

.method private blacklist _newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "propertyName":Ljava/lang/String;
    :try_start_1d
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1f} :catch_78

    const-string v2, "\'"

    if-eqz v1, :cond_3d

    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up system property \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 170
    :cond_3d
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "r":Ljava/lang/String;
    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6e

    .line 172
    sget-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The value is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 173
    :cond_67
    invoke-virtual {p0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    .line 174
    .local v2, "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v2, :cond_77

    return-object v2

    .line 175
    .end local v2    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :cond_6e
    sget-boolean v2, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v2, :cond_77

    .line 176
    const-string v2, "The property is undefined."

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_77} :catch_78

    .line 180
    .end local v1    # "r":Ljava/lang/String;
    :cond_77
    goto :goto_7c

    .line 178
    :catch_78
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    invoke-static {}, Ljavax/xml/xpath/XPathFactoryFinder$CacheHolder;->-$$Nest$sfgetcacheProps()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "factoryClassName":Ljava/lang/String;
    sget-boolean v2, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v2, :cond_a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in $java.home/jaxp.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 187
    :cond_a4
    if-eqz v1, :cond_ad

    .line 188
    invoke-virtual {p0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v2
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_aa} :catch_ae

    .line 189
    .restart local v2    # "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v2, :cond_ad

    .line 190
    return-object v2

    .line 197
    .end local v1    # "factoryClassName":Ljava/lang/String;
    .end local v2    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :cond_ad
    goto :goto_b6

    .line 193
    :catch_ae
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v2, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v2, :cond_b6

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_b6
    :goto_b6
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 201
    .local v2, "resource":Ljava/net/URL;
    sget-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v3, :cond_e4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looking into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 203
    :cond_e4
    :try_start_e4
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Ljavax/xml/xpath/XPathFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v3
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_f0} :catch_f4

    .line 204
    .local v3, "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v3, :cond_f3

    return-object v3

    .line 210
    :cond_f3
    goto :goto_112

    .line 205
    .end local v3    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :catch_f4
    move-exception v3

    .line 206
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v4, :cond_112

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    .end local v2    # "resource":Ljava/net/URL;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_112
    :goto_112
    goto :goto_be

    .line 214
    :cond_113
    const-string v1, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 215
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_124

    const-string v1, "attempting to use the platform default W3C DOM XPath lib"

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 216
    :cond_124
    const-string v1, "org.apache.xpath.jaxp.XPathFactoryImpl"

    invoke-virtual {p0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    return-object v1

    .line 219
    :cond_12b
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_134

    const-string v1, "all things were tried, but none was found. bailing out."

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 220
    :cond_134
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createServiceFileIterator()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_15

    .line 328
    const-class v0, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 329
    .local v0, "resource":Ljava/net/URL;
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 332
    .end local v0    # "resource":Ljava/net/URL;
    :cond_15
    :try_start_15
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 333
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_45

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file was found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 337
    :cond_45
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_49} :catch_4a

    return-object v1

    .line 338
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_4a
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_6a

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to enumerate resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    :cond_6a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private blacklist debugDisplayClassLoader()V
    .registers 4

    .line 118
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, ") for search"

    if-ne v0, v1, :cond_2b

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using thread context class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 120
    return-void

    .line 123
    :cond_2b
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_50

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using system class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 125
    return-void

    .line 128
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private static blacklist debugPrintln(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAXP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_1c
    return-void
.end method

.method private blacklist loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;

    .line 268
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 272
    :cond_1a
    const/16 v0, 0x50

    :try_start_1c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p3, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_28} :catch_29

    .line 275
    .local v1, "rd":Ljava/io/BufferedReader;
    goto :goto_35

    .line 273
    .end local v1    # "rd":Ljava/io/BufferedReader;
    :catch_29
    move-exception v1

    .line 274
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    .line 278
    .local v1, "rd":Ljava/io/BufferedReader;
    :goto_35
    const/4 v0, 0x0

    .line 282
    .local v0, "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_65

    .line 286
    .local v2, "factoryClassName":Ljava/lang/String;
    nop

    .line 287
    if-eqz v2, :cond_67

    .line 289
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 290
    .local v3, "hashIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4b

    .line 291
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_56

    .line 299
    goto :goto_36

    .line 304
    :cond_56
    :try_start_56
    invoke-virtual {p0, v2}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    .line 305
    .local v4, "foundFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v4, p1}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z

    move-result v5
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_63

    if-eqz v5, :cond_62

    .line 306
    move-object v0, v4

    .line 307
    goto :goto_67

    .line 310
    .end local v4    # "foundFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_62
    goto :goto_64

    .line 309
    :catch_63
    move-exception v4

    .line 311
    .end local v3    # "hashIndex":I
    :goto_64
    goto :goto_36

    .line 283
    .end local v2    # "factoryClassName":Ljava/lang/String;
    :catch_65
    move-exception v2

    .line 285
    .local v2, "x":Ljava/io/IOException;
    nop

    .line 317
    .end local v2    # "x":Ljava/io/IOException;
    :cond_67
    :goto_67
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 319
    return-object v0
.end method

.method private static blacklist which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 352
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 5
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_21

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 367
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 368
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return-object v2
.end method


# virtual methods
.method blacklist createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 234
    :try_start_0
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 236
    :cond_1a
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_25

    .line 237
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    goto :goto_29

    .line 239
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_25
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    .restart local v0    # "clazz":Ljava/lang/Class;
    :goto_29
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded it from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 241
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 243
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/xml/xpath/XPathFactory;

    if-eqz v2, :cond_53

    .line 244
    move-object v2, v1

    check-cast v2, Ljavax/xml/xpath/XPathFactory;

    return-object v2

    .line 246
    :cond_53
    sget-boolean v2, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v2, :cond_77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not assignable to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_77} :catch_9a
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_77} :catch_98
    .catchall {:try_start_0 .. :try_end_77} :catchall_78

    .line 261
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_77
    goto :goto_96

    .line 256
    :catchall_78
    move-exception v0

    .line 257
    .local v0, "t":Ljava/lang/Throwable;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_96

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_96
    :goto_96
    const/4 v0, 0x0

    return-object v0

    .line 253
    :catch_98
    move-exception v0

    .line 254
    .local v0, "td":Ljava/lang/ThreadDeath;
    throw v0

    .line 249
    .end local v0    # "td":Ljava/lang/ThreadDeath;
    :catch_9a
    move-exception v0

    .line 250
    .local v0, "vme":Ljava/lang/VirtualMachineError;
    throw v0
.end method

.method public blacklist newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 144
    if-eqz p1, :cond_4c

    .line 147
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 148
    .local v0, "f":Ljavax/xml/xpath/XPathFactory;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_4b

    .line 149
    if-eqz v0, :cond_35

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_4b

    .line 152
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find a factory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 155
    :cond_4b
    :goto_4b
    return-object v0

    .line 145
    .end local v0    # "f":Ljavax/xml/xpath/XPathFactory;
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

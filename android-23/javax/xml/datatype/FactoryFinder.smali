.class final Ljavax/xml/datatype/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/datatype/FactoryFinder$CacheHolder;,
        Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "javax.xml.datatype.FactoryFinder"

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static debug:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 48
    sput-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@3
    .line 85
    const-string/jumbo v2, "jaxp.debug"

    #@6
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 87
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
    sput-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@17
    .line 42
    return-void

    #@18
    .line 87
    :cond_1
    const/4 v1, 0x1

    #@19
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    sget-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "javax.xml.datatype.FactoryFinder:"

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
    .line 99
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 97
    :cond_0
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 188
    invoke-static {}, Ljavax/xml/datatype/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    #@4
    move-result-object v0

    #@5
    .line 191
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 192
    .local v4, "systemProp":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@e
    move-result v5

    #@f
    if-lez v5, :cond_1

    #@11
    .line 193
    sget-boolean v5, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@13
    if-eqz v5, :cond_0

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "found "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, " in the system property "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-static {v5}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@37
    .line 194
    :cond_0
    invoke-static {v4, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@3a
    move-result-object v5

    #@3b
    return-object v5

    #@3c
    .line 199
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/FactoryFinder$CacheHolder;->-get0()Ljava/util/Properties;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 200
    .local v2, "factoryClassName":Ljava/lang/String;
    sget-boolean v5, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@46
    if-eqz v5, :cond_2

    #@48
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "found "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    const-string/jumbo v6, " in $java.home/jaxp.properties"

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-static {v5}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@66
    .line 202
    :cond_2
    if-eqz v2, :cond_3

    #@68
    .line 203
    invoke-static {v2, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    move-result-object v5

    #@6c
    return-object v5

    #@6d
    .line 205
    .end local v2    # "factoryClassName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@6e
    .line 206
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v5, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@70
    if-eqz v5, :cond_3

    #@72
    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@75
    .line 212
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    invoke-static {p0}, Ljavax/xml/datatype/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    #@78
    move-result-object v3

    #@79
    .line 213
    .local v3, "provider":Ljava/lang/Object;
    if-eqz v3, :cond_4

    #@7b
    .line 214
    return-object v3

    #@7c
    .line 217
    :cond_4
    if-nez p1, :cond_5

    #@7e
    .line 218
    new-instance v5, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    #@80
    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v7, "Provider for "

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    const-string/jumbo v7, " cannot be found"

    #@93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v6

    #@9b
    .line 218
    invoke-direct {v5, v6, v8}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@9e
    throw v5

    #@9f
    .line 222
    :cond_5
    sget-boolean v5, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@a1
    if-eqz v5, :cond_6

    #@a3
    new-instance v5, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v6, "loaded from fallback value: "

    #@ab
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v5

    #@b7
    invoke-static {v5}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@ba
    .line 223
    :cond_6
    invoke-static {p1, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@bd
    move-result-object v5

    #@be
    return-object v5
.end method

.method private static findClassLoader()Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 121
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Using context class loader: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 121
    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@23
    .line 125
    :cond_0
    if-nez v0, :cond_1

    #@25
    .line 128
    const-class v1, Ljavax/xml/datatype/FactoryFinder;

    #@27
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2a
    move-result-object v0

    #@2b
    .line 129
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "Using the class loader of FactoryFinder: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 129
    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@46
    .line 134
    :cond_1
    return-object v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x50

    #@2
    const/4 v9, 0x0

    #@3
    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v8, "META-INF/services/"

    #@b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v7

    #@f
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 233
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    .line 236
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v0

    #@20
    .line 237
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@22
    .line 238
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@25
    move-result-object v3

    #@26
    .line 241
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    if-nez v3, :cond_1

    #@28
    .line 242
    const-class v7, Ljavax/xml/datatype/FactoryFinder;

    #@2a
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2d
    move-result-object v0

    #@2e
    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@31
    move-result-object v3

    #@32
    .line 246
    :cond_1
    if-nez v3, :cond_2

    #@34
    .line 248
    return-object v9

    #@35
    .line 251
    :cond_2
    sget-boolean v7, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@37
    if-eqz v7, :cond_3

    #@39
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "found jar resource="

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    const-string/jumbo v8, " using ClassLoader: "

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v7}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@5b
    .line 255
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    #@5d
    new-instance v7, Ljava/io/InputStreamReader;

    #@5f
    const-string/jumbo v8, "UTF-8"

    #@62
    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@65
    const/16 v8, 0x50

    #@67
    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 260
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_0
    const/4 v2, 0x0

    #@6b
    .line 264
    .local v2, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    move-result-object v2

    #@6f
    .line 269
    .local v2, "factoryClassName":Ljava/lang/String;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@72
    .line 272
    if-eqz v2, :cond_4

    #@74
    .line 273
    const-string/jumbo v7, ""

    #@77
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v7

    #@7b
    if-eqz v7, :cond_5

    #@7d
    .line 281
    :cond_4
    return-object v9

    #@7e
    .line 256
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@7f
    .line 257
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    #@81
    new-instance v7, Ljava/io/InputStreamReader;

    #@83
    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@86
    invoke-direct {v4, v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@89
    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_0

    #@8a
    .line 265
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .local v2, "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@8b
    .line 269
    .local v6, "x":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8e
    .line 267
    return-object v9

    #@8f
    .line 268
    .end local v6    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@90
    .line 269
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@93
    .line 268
    throw v7

    #@94
    .line 274
    .local v2, "factoryClassName":Ljava/lang/String;
    :cond_5
    sget-boolean v7, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@96
    if-eqz v7, :cond_6

    #@98
    new-instance v7, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v8, "found in resource, value="

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v7

    #@ac
    invoke-static {v7}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@af
    .line 277
    :cond_6
    invoke-static {v2, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@b2
    move-result-object v7

    #@b3
    return-object v7
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    if-nez p1, :cond_1

    #@2
    .line 155
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 160
    .local v0, "spiClass":Ljava/lang/Class;
    :goto_0
    sget-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Loaded "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, " from "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-static {v0}, Ljavax/xml/datatype/FactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v3}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    #@30
    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 157
    .end local v0    # "spiClass":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "spiClass":Ljava/lang/Class;
    goto :goto_0

    #@3a
    .line 168
    .end local v0    # "spiClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    #@3b
    .line 169
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    #@3d
    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Provider "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    const-string/jumbo v5, " could not be instantiated: "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 169
    invoke-direct {v3, v4, v2}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@5f
    throw v3

    #@60
    .line 165
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@61
    .line 166
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    #@63
    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Provider "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    const-string/jumbo v5, " not found"

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 166
    invoke-direct {v3, v4, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@81
    throw v3
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 10
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 323
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    const/16 v8, 0x2e

    #@b
    const/16 v9, 0x2f

    #@d
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@10
    move-result-object v7

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    const-string/jumbo v7, ".class"

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 325
    .local v0, "classnameAsResource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@23
    move-result-object v2

    #@24
    .line 329
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_0

    #@26
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@29
    move-result-object v1

    #@2a
    .line 335
    .local v1, "it":Ljava/net/URL;
    :goto_0
    if-eqz v1, :cond_1

    #@2c
    .line 336
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    return-object v6

    #@31
    .line 332
    .end local v1    # "it":Ljava/net/URL;
    :cond_0
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v1

    #@35
    .restart local v1    # "it":Ljava/net/URL;
    goto :goto_0

    #@36
    .line 347
    .end local v0    # "classnameAsResource":Ljava/lang/String;
    .end local v1    # "it":Ljava/net/URL;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v3

    #@37
    .line 349
    .local v3, "t":Ljava/lang/Throwable;
    sget-boolean v6, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    #@39
    if-eqz v6, :cond_1

    #@3b
    .line 350
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    #@3e
    .line 353
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v6, "unknown location"

    #@41
    return-object v6

    #@42
    .line 344
    :catch_1
    move-exception v4

    #@43
    .line 345
    .local v4, "td":Ljava/lang/ThreadDeath;
    throw v4

    #@44
    .line 340
    .end local v4    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v5

    #@45
    .line 341
    .local v5, "vme":Ljava/lang/VirtualMachineError;
    throw v5
.end method

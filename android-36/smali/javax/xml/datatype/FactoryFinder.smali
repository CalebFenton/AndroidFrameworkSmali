.class final Ljavax/xml/datatype/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/datatype/FactoryFinder$ConfigurationError;,
        Ljavax/xml/datatype/FactoryFinder$CacheHolder;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "javax.xml.datatype.FactoryFinder"

.field private static final blacklist DEFAULT_LINE_LENGTH:I = 0x50

.field private static blacklist debug:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Z
    .registers 1

    sget-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdebugPrintln(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    .line 85
    const-string v1, "jaxp.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_14

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    sput-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    .line 88
    .end local v1    # "val":Ljava/lang/String;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist debugPrintln(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 98
    sget-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javax.xml.datatype.FactoryFinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_1c
    return-void
.end method

.method static blacklist find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .line 188
    invoke-static {}, Ljavax/xml/datatype/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 191
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "systemProp":Ljava/lang/String;
    const-string v2, "found "

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_39

    .line 193
    sget-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in the system property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 194
    :cond_34
    invoke-static {v1, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 199
    :cond_39
    :try_start_39
    invoke-static {}, Ljavax/xml/datatype/FactoryFinder$CacheHolder;->-$$Nest$sfgetcacheProps()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "factoryClassName":Ljava/lang/String;
    sget-boolean v4, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in $java.home/jaxp.properties"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 202
    :cond_5f
    if-eqz v3, :cond_66

    .line 203
    invoke-static {v3, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_65} :catch_67

    return-object v2

    .line 209
    .end local v3    # "factoryClassName":Ljava/lang/String;
    :cond_66
    goto :goto_6f

    .line 205
    :catch_67
    move-exception v2

    .line 206
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v3, :cond_6f

    .line 207
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_6f
    :goto_6f
    invoke-static {p0}, Ljavax/xml/datatype/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "provider":Ljava/lang/Object;
    if-eqz v2, :cond_76

    .line 214
    return-object v2

    .line 217
    :cond_76
    if-eqz p1, :cond_97

    .line 222
    sget-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v3, :cond_92

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded from fallback value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 223
    :cond_92
    invoke-static {p1, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 218
    :cond_97
    new-instance v3, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static blacklist findClassLoader()Ljava/lang/ClassLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 121
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using context class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 125
    :cond_22
    if-nez v0, :cond_44

    .line 128
    const-class v1, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 129
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using the class loader of FactoryFinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 134
    :cond_44
    return-object v0
.end method

.method private static blacklist findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "serviceId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 236
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 237
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_22

    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 241
    :cond_22
    if-nez v1, :cond_2e

    .line 242
    const-class v3, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 246
    :cond_2e
    const/4 v3, 0x0

    if-nez v1, :cond_32

    .line 248
    return-object v3

    .line 251
    :cond_32
    sget-boolean v4, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v4, :cond_56

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found jar resource="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using ClassLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 255
    :cond_56
    const/16 v4, 0x50

    :try_start_58
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_64
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_64} :catch_65

    .line 258
    .local v5, "rd":Ljava/io/BufferedReader;
    goto :goto_71

    .line 256
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :catch_65
    move-exception v5

    .line 257
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v6

    .line 260
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_71
    const/4 v4, 0x0

    .line 264
    .local v4, "factoryClassName":Ljava/lang/String;
    :try_start_72
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_76} :catch_a9
    .catchall {:try_start_72 .. :try_end_76} :catchall_a4

    .line 269
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .local v6, "factoryClassName":Ljava/lang/String;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 270
    nop

    .line 272
    if-eqz v6, :cond_a3

    .line 273
    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 274
    sget-boolean v3, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v3, :cond_9e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found in resource, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 277
    :cond_9e
    invoke-static {v6, v2}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 281
    :cond_a3
    return-object v3

    .line 269
    .end local v6    # "factoryClassName":Ljava/lang/String;
    .restart local v4    # "factoryClassName":Ljava/lang/String;
    :catchall_a4
    move-exception v3

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 270
    throw v3

    .line 265
    :catch_a9
    move-exception v6

    .line 267
    .local v6, "x":Ljava/io/IOException;
    nop

    .line 269
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 267
    return-object v3
.end method

.method static blacklist newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .line 154
    const-string v0, "Provider "

    if-nez p1, :cond_9

    .line 155
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "spiClass":Ljava/lang/Class;
    goto :goto_d

    .line 157
    .end local v1    # "spiClass":Ljava/lang/Class;
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 160
    .restart local v1    # "spiClass":Ljava/lang/Class;
    :goto_d
    sget-boolean v2, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v2, :cond_35

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 164
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_39} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    return-object v0

    .line 168
    .end local v1    # "spiClass":Ljava/lang/Class;
    :catch_3a
    move-exception v1

    .line 169
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " could not be instantiated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 165
    .end local v1    # "x":Ljava/lang/Exception;
    :catch_5c
    move-exception v1

    .line 166
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not found"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static blacklist which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 323
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "classnameAsResource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 329
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2a

    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .local v2, "it":Ljava/net/URL;
    goto :goto_2e

    .line 332
    .end local v2    # "it":Ljava/net/URL;
    :cond_2a
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 335
    .restart local v2    # "it":Ljava/net/URL;
    :goto_2e
    if-eqz v2, :cond_35

    .line 336
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_34} :catch_43
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_34} :catch_41
    .catchall {:try_start_0 .. :try_end_34} :catchall_36

    return-object v3

    .line 352
    .end local v0    # "classnameAsResource":Ljava/lang/String;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "it":Ljava/net/URL;
    :cond_35
    goto :goto_3e

    .line 347
    :catchall_36
    move-exception v0

    .line 349
    .local v0, "t":Ljava/lang/Throwable;
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_3e

    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3e
    :goto_3e
    const-string v0, "unknown location"

    return-object v0

    .line 344
    :catch_41
    move-exception v0

    .line 345
    .local v0, "td":Ljava/lang/ThreadDeath;
    throw v0

    .line 340
    .end local v0    # "td":Ljava/lang/ThreadDeath;
    :catch_43
    move-exception v0

    .line 341
    .local v0, "vme":Ljava/lang/VirtualMachineError;
    throw v0
.end method

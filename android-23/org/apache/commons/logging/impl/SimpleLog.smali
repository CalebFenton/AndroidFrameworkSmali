.class public Lorg/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_FATAL:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_OFF:I = 0x7

.field public static final LOG_LEVEL_TRACE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4

.field protected static dateFormatter:Ljava/text/DateFormat; = null

.field protected static dateTimeFormat:Ljava/lang/String; = null

.field protected static showDateTime:Z = false

.field protected static showLogName:Z = false

.field protected static showShortName:Z = false

.field protected static final simpleLogProps:Ljava/util/Properties;

.field protected static final systemPrefix:Ljava/lang/String; = "org.apache.commons.logging.simplelog."


# instance fields
.field protected currentLogLevel:I

.field protected logName:Ljava/lang/String;

.field private shortLogName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 90
    new-instance v3, Ljava/util/Properties;

    #@4
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    #@7
    sput-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    #@9
    .line 97
    sput-boolean v4, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    #@b
    .line 102
    const/4 v3, 0x1

    #@c
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    #@e
    .line 104
    sput-boolean v4, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    #@10
    .line 106
    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    #@13
    sput-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    #@15
    .line 108
    sput-object v5, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    #@17
    .line 159
    const-string/jumbo v3, "simplelog.properties"

    #@1a
    invoke-static {v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@1d
    move-result-object v2

    #@1e
    .line 160
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    #@20
    .line 162
    :try_start_0
    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    #@22
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@25
    .line 163
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@28
    .line 169
    :cond_0
    :goto_0
    const-string/jumbo v3, "org.apache.commons.logging.simplelog.showlogname"

    #@2b
    sget-boolean v4, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    #@2d
    invoke-static {v3, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@30
    move-result v3

    #@31
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    #@33
    .line 170
    const-string/jumbo v3, "org.apache.commons.logging.simplelog.showShortLogname"

    #@36
    sget-boolean v4, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    #@38
    invoke-static {v3, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@3b
    move-result v3

    #@3c
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    #@3e
    .line 171
    const-string/jumbo v3, "org.apache.commons.logging.simplelog.showdatetime"

    #@41
    sget-boolean v4, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    #@43
    invoke-static {v3, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@46
    move-result v3

    #@47
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    #@49
    .line 173
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    #@4b
    if-eqz v3, :cond_1

    #@4d
    .line 174
    const-string/jumbo v3, "org.apache.commons.logging.simplelog.dateTimeFormat"

    #@50
    .line 175
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    #@52
    .line 174
    invoke-static {v3, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    sput-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    #@58
    .line 177
    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    #@5a
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    #@5c
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@5f
    sput-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@61
    .line 80
    :cond_1
    :goto_1
    return-void

    #@62
    .line 178
    :catch_0
    move-exception v1

    #@63
    .line 180
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    #@66
    sput-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    #@68
    .line 181
    new-instance v3, Ljava/text/SimpleDateFormat;

    #@6a
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    #@6c
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@6f
    sput-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    #@71
    goto :goto_1

    #@72
    .line 164
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@73
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 190
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    #@8
    .line 194
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@a
    .line 206
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    #@c
    .line 211
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@f
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "org.apache.commons.logging.simplelog.log."

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 215
    .local v1, "lvl":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, "."

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    .line 216
    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_0

    #@36
    const/4 v2, -0x1

    #@37
    if-le v0, v2, :cond_0

    #@39
    .line 217
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "org.apache.commons.logging.simplelog.log."

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    const-string/jumbo v3, "."

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@5f
    move-result v0

    #@60
    goto :goto_0

    #@61
    .line 222
    :cond_0
    if-nez v1, :cond_1

    #@63
    .line 223
    const-string/jumbo v2, "org.apache.commons.logging.simplelog.defaultlog"

    #@66
    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 226
    :cond_1
    const-string/jumbo v2, "all"

    #@6d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_3

    #@73
    .line 227
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@76
    .line 204
    :cond_2
    :goto_1
    return-void

    #@77
    .line 228
    :cond_3
    const-string/jumbo v2, "trace"

    #@7a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7d
    move-result v2

    #@7e
    if-eqz v2, :cond_4

    #@80
    .line 229
    const/4 v2, 0x1

    #@81
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@84
    goto :goto_1

    #@85
    .line 230
    :cond_4
    const-string/jumbo v2, "debug"

    #@88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8b
    move-result v2

    #@8c
    if-eqz v2, :cond_5

    #@8e
    .line 231
    const/4 v2, 0x2

    #@8f
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@92
    goto :goto_1

    #@93
    .line 232
    :cond_5
    const-string/jumbo v2, "info"

    #@96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_6

    #@9c
    .line 233
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@9f
    goto :goto_1

    #@a0
    .line 234
    :cond_6
    const-string/jumbo v2, "warn"

    #@a3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_7

    #@a9
    .line 235
    const/4 v2, 0x4

    #@aa
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@ad
    goto :goto_1

    #@ae
    .line 236
    :cond_7
    const-string/jumbo v2, "error"

    #@b1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b4
    move-result v2

    #@b5
    if-eqz v2, :cond_8

    #@b7
    .line 237
    const/4 v2, 0x5

    #@b8
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@bb
    goto :goto_1

    #@bc
    .line 238
    :cond_8
    const-string/jumbo v2, "fatal"

    #@bf
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c2
    move-result v2

    #@c3
    if-eqz v2, :cond_9

    #@c5
    .line 239
    const/4 v2, 0x6

    #@c6
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@c9
    goto :goto_1

    #@ca
    .line 240
    :cond_9
    const-string/jumbo v2, "off"

    #@cd
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d0
    move-result v2

    #@d1
    if-eqz v2, :cond_2

    #@d3
    .line 241
    const/4 v2, 0x7

    #@d4
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    #@d7
    goto :goto_1
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Z

    #@0
    .prologue
    .line 150
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 151
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .end local p1    # "dephault":Z
    :goto_0
    return p1

    #@7
    .restart local p1    # "dephault":Z
    :cond_0
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result p1

    #@e
    goto :goto_0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 9

    #@0
    .prologue
    .line 643
    const/4 v1, 0x0

    #@1
    .line 648
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v7, Ljava/lang/Thread;

    #@3
    const-string/jumbo v8, "getContextClassLoader"

    #@6
    .line 649
    const/4 v6, 0x0

    #@7
    check-cast v6, [Ljava/lang/Class;

    #@9
    .line 648
    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    #@c
    move-result-object v5

    #@d
    .line 653
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v7

    #@11
    .line 654
    const/4 v6, 0x0

    #@12
    check-cast v6, [Ljava/lang/Object;

    #@14
    .line 653
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    move-object v0, v6

    #@19
    check-cast v0, Ljava/lang/ClassLoader;

    #@1b
    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c
    .line 690
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@1e
    .line 691
    const-class v6, Lorg/apache/commons/logging/impl/SimpleLog;

    #@20
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@23
    move-result-object v1

    #@24
    .line 695
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    return-object v1

    #@25
    .line 658
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v4

    #@26
    .line 675
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@29
    move-result-object v6

    #@2a
    instance-of v6, v6, Ljava/lang/SecurityException;

    #@2c
    if-nez v6, :cond_0

    #@2e
    .line 680
    new-instance v6, Lorg/apache/commons/logging/LogConfigurationException;

    #@30
    .line 681
    const-string/jumbo v7, "Unexpected InvocationTargetException"

    #@33
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@36
    move-result-object v8

    #@37
    .line 680
    invoke-direct {v6, v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    throw v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    #@3b
    .line 684
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    #@3c
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    #@3d
    .line 656
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    #@3e
    .local v2, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 701
    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    #@5
    .line 700
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/io/InputStream;

    #@b
    return-object v0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    const/4 v1, 0x0

    #@1
    .line 137
    .local v1, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    .line 141
    .end local v1    # "prop":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    #@7
    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    #@9
    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1

    #@e
    .line 138
    .restart local v1    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .end local p1    # "dephault":Ljava/lang/String;
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "dephault":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    #@8
    goto :goto_0
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 376
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 377
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 374
    :cond_0
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 392
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 393
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 390
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 500
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 501
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 498
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 516
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 517
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 514
    :cond_0
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 531
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 532
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 529
    :cond_0
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 547
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 548
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 545
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    #@0
    .prologue
    .line 266
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    #@2
    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 438
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 439
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 436
    :cond_0
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 454
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 455
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 452
    :cond_0
    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 562
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 575
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final isFatalEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 601
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected isLevelEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    #@0
    .prologue
    .line 360
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public final isTraceEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 614
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 627
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 287
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 288
    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    #@b
    new-instance v4, Ljava/util/Date;

    #@d
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #@10
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 289
    const-string/jumbo v3, " "

    #@1a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 293
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@20
    .line 303
    :goto_0
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 304
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@26
    if-nez v3, :cond_1

    #@28
    .line 306
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    #@2a
    iget-object v4, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    #@2c
    const-string/jumbo v5, "."

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@32
    move-result v4

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    iput-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@3b
    .line 308
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@3d
    iget-object v4, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@3f
    const-string/jumbo v5, "/"

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@45
    move-result v4

    #@46
    add-int/lit8 v4, v4, 0x1

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 307
    iput-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@4e
    .line 310
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    #@50
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    move-result-object v3

    #@58
    const-string/jumbo v4, " - "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    .line 316
    :cond_2
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 319
    if-eqz p3, :cond_3

    #@67
    .line 320
    const-string/jumbo v3, " <"

    #@6a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    .line 321
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@74
    .line 322
    const-string/jumbo v3, ">"

    #@77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    .line 324
    new-instance v2, Ljava/io/StringWriter;

    #@7c
    const/16 v3, 0x400

    #@7e
    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    #@81
    .line 325
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@83
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@86
    .line 326
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@89
    .line 327
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    #@8c
    .line 328
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@93
    .line 332
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "sw":Ljava/io/StringWriter;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    #@96
    .line 282
    return-void

    #@97
    .line 294
    :pswitch_0
    const-string/jumbo v3, "[TRACE] "

    #@9a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9d
    goto :goto_0

    #@9e
    .line 295
    :pswitch_1
    const-string/jumbo v3, "[DEBUG] "

    #@a1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    goto/16 :goto_0

    #@a6
    .line 296
    :pswitch_2
    const-string/jumbo v3, "[INFO] "

    #@a9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ac
    goto/16 :goto_0

    #@ae
    .line 297
    :pswitch_3
    const-string/jumbo v3, "[WARN] "

    #@b1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b4
    goto/16 :goto_0

    #@b6
    .line 298
    :pswitch_4
    const-string/jumbo v3, "[ERROR] "

    #@b9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bc
    goto/16 :goto_0

    #@be
    .line 299
    :pswitch_5
    const-string/jumbo v3, "[FATAL] "

    #@c1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    goto/16 :goto_0

    #@c6
    .line 311
    :cond_4
    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    #@c8
    if-eqz v3, :cond_2

    #@ca
    .line 312
    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    #@cc
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d3
    move-result-object v3

    #@d4
    const-string/jumbo v4, " - "

    #@d7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@da
    goto :goto_1

    #@db
    .line 293
    nop

    #@dc
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "currentLogLevel"    # I

    #@0
    .prologue
    .line 256
    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    #@2
    .line 254
    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 407
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 408
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 405
    :cond_0
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 423
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 424
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 421
    :cond_0
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 469
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 470
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 467
    :cond_0
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 485
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 486
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    #@a
    .line 483
    :cond_0
    return-void
.end method

.method protected write(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 347
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 345
    return-void
.end method

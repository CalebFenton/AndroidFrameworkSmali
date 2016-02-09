.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 66
    new-instance v3, Ljava/util/Hashtable;

    #@4
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@7
    sput-object v3, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    #@9
    .line 69
    sput-boolean v4, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    #@b
    .line 72
    sput-boolean v4, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    #@d
    .line 75
    sput-object v5, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    #@f
    .line 84
    :try_start_0
    const-string/jumbo v3, "org.apache.log4j.Logger"

    #@12
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 85
    const/4 v3, 0x1

    #@19
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 95
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string/jumbo v3, "java.util.logging.Logger"

    #@1e
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 96
    const-string/jumbo v3, "org.apache.commons.logging.impl.Jdk14Logger"

    #@27
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@2a
    move-result-object v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 97
    const/4 v3, 0x1

    #@2e
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    .line 106
    :goto_1
    const/4 v0, 0x0

    #@31
    .line 108
    .end local v1    # "t":Ljava/lang/Throwable;
    .local v0, "name":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v3, "org.apache.commons.logging.log"

    #@34
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 109
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@3a
    .line 110
    const-string/jumbo v3, "org.apache.commons.logging.Log"

    #@3d
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    #@40
    move-result-object v0

    #@41
    .line 114
    :cond_0
    :goto_2
    if-eqz v0, :cond_3

    #@43
    .line 116
    :try_start_3
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@46
    .line 62
    :goto_3
    return-void

    #@47
    .line 87
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@48
    :try_start_4
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    #@4a
    goto :goto_0

    #@4b
    .line 89
    :catch_0
    move-exception v1

    #@4c
    .line 90
    .restart local v1    # "t":Ljava/lang/Throwable;
    sput-boolean v4, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    #@4e
    goto :goto_0

    #@4f
    .line 99
    :cond_2
    const/4 v3, 0x0

    #@50
    :try_start_5
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@52
    goto :goto_1

    #@53
    .line 101
    :catch_1
    move-exception v1

    #@54
    .line 102
    sput-boolean v4, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    #@56
    goto :goto_1

    #@57
    .line 117
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@58
    .line 120
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v3, "org.apache.commons.logging.impl.NoOpLog"

    #@5b
    .line 119
    invoke-static {v3}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    #@5e
    goto :goto_3

    #@5f
    .line 121
    :catch_3
    move-exception v2

    #@60
    .local v2, "u":Ljava/lang/Throwable;
    goto :goto_3

    #@61
    .line 127
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "u":Ljava/lang/Throwable;
    :cond_3
    :try_start_7
    sget-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    #@63
    if-eqz v3, :cond_4

    #@65
    .line 129
    const-string/jumbo v3, "org.apache.commons.logging.impl.Log4JLogger"

    #@68
    .line 128
    invoke-static {v3}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    #@6b
    goto :goto_3

    #@6c
    .line 137
    :catch_4
    move-exception v1

    #@6d
    .line 140
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_8
    const-string/jumbo v3, "org.apache.commons.logging.impl.NoOpLog"

    #@70
    .line 139
    invoke-static {v3}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    #@73
    goto :goto_3

    #@74
    .line 141
    :catch_5
    move-exception v2

    #@75
    .restart local v2    # "u":Ljava/lang/Throwable;
    goto :goto_3

    #@76
    .line 130
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "u":Ljava/lang/Throwable;
    :cond_4
    :try_start_9
    sget-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    #@78
    if-eqz v3, :cond_5

    #@7a
    .line 132
    const-string/jumbo v3, "org.apache.commons.logging.impl.Jdk14Logger"

    #@7d
    .line 131
    invoke-static {v3}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    #@80
    goto :goto_3

    #@81
    .line 135
    :cond_5
    const-string/jumbo v3, "org.apache.commons.logging.impl.NoOpLog"

    #@84
    .line 134
    invoke-static {v3}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    #@87
    goto :goto_3

    #@88
    .line 112
    :catch_6
    move-exception v1

    #@89
    .restart local v1    # "t":Ljava/lang/Throwable;
    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/commons/logging/Log;

    #@8
    .line 201
    .local v0, "log":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_0

    #@a
    .line 202
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@d
    move-result-object v0

    #@e
    .line 203
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    #@10
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 205
    :cond_0
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 262
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Ljava/lang/String;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    const/4 v1, 0x0

    #@1
    .line 243
    .local v1, "log":Lorg/apache/commons/logging/Log;
    const/4 v3, 0x1

    #@2
    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    #@4
    .line 244
    .local v0, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@5
    aput-object p0, v0, v3

    #@7
    .line 245
    sget-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    #@9
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .end local v1    # "log":Lorg/apache/commons/logging/Log;
    check-cast v1, Lorg/apache/commons/logging/Log;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 249
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_0

    #@11
    .line 250
    new-instance v1, Lorg/apache/commons/logging/impl/NoOpLog;

    #@13
    invoke-direct {v1, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    #@16
    .line 252
    :cond_0
    return-object v1

    #@17
    .line 246
    :catch_0
    move-exception v2

    #@18
    .line 247
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    #@19
    .restart local v1    # "log":Lorg/apache/commons/logging/Log;
    goto :goto_0
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .locals 3
    .param p0, "logclass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Ljava/lang/Class;

    #@3
    .line 193
    .local v0, "argtypes":[Ljava/lang/Class;
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object v1

    #@11
    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    #@13
    .line 191
    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 174
    .local v1, "logclass":Ljava/lang/Class;
    const/4 v3, 0x1

    #@5
    new-array v0, v3, [Ljava/lang/Class;

    #@7
    .line 175
    .local v0, "argtypes":[Ljava/lang/Class;
    const-string/jumbo v3, ""

    #@a
    invoke-virtual {v3}, Ljava/lang/String;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v0, v4

    #@11
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@14
    move-result-object v3

    #@15
    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 171
    .end local v0    # "argtypes":[Ljava/lang/Class;
    .end local v1    # "logclass":Ljava/lang/Class;
    :goto_0
    return-void

    #@18
    .line 177
    :catch_0
    move-exception v2

    #@19
    .line 178
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    #@1a
    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    #@1c
    goto :goto_0
.end method

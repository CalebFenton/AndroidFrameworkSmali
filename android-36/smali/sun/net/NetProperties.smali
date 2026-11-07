.class public Lsun/net/NetProperties;
.super Ljava/lang/Object;
.source "NetProperties.java"


# static fields
.field private static blacklist props:Ljava/util/Properties;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadDefaultProperties()V
    .registers 0

    invoke-static {}, Lsun/net/NetProperties;->loadDefaultProperties()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    .line 44
    new-instance v0, Lsun/net/NetProperties$1;

    invoke-direct {v0}, Lsun/net/NetProperties$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "def":Ljava/lang/String;
    :try_start_6
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 94
    :catch_b
    move-exception v1

    goto :goto_f

    .line 93
    :catch_d
    move-exception v1

    .line 95
    nop

    .line 96
    :goto_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .line 144
    .local v0, "val":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_b} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 147
    :goto_c
    goto :goto_11

    .line 146
    :catch_d
    move-exception v1

    goto :goto_11

    .line 145
    :catch_f
    move-exception v1

    goto :goto_c

    .line 149
    :goto_11
    if-eqz v0, :cond_19

    .line 151
    :try_start_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v1

    .line 152
    :catch_18
    move-exception v1

    .line 155
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defval"    # I

    .line 112
    const/4 v0, 0x0

    .line 115
    .local v0, "val":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_b} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 118
    :goto_c
    goto :goto_11

    .line 117
    :catch_d
    move-exception v1

    goto :goto_11

    .line 116
    :catch_f
    move-exception v1

    goto :goto_c

    .line 120
    :goto_11
    if-eqz v0, :cond_19

    .line 122
    :try_start_13
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v1

    .line 123
    :catch_18
    move-exception v1

    .line 126
    :cond_19
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method private static blacklist loadDefaultProperties()V
    .registers 5

    .line 60
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "fname":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 65
    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "net.properties"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .end local v1    # "f":Ljava/io/File;
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 68
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v3, "bin":Ljava/io/BufferedInputStream;
    sget-object v4, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2e

    .line 75
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_2f

    .line 72
    :catch_2e
    move-exception v1

    .line 76
    :goto_2f
    return-void

    .line 62
    :cond_30
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Can\'t find java.home ??"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

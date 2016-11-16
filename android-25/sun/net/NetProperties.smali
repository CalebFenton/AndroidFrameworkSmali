.class public Lsun/net/NetProperties;
.super Ljava/lang/Object;
.source "NetProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/NetProperties$1;
    }
.end annotation


# static fields
.field private static props:Ljava/util/Properties;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    #@0
    invoke-static {}, Lsun/net/NetProperties;->loadDefaultProperties()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    new-instance v0, Ljava/util/Properties;

    #@2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@5
    sput-object v0, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    #@7
    .line 45
    new-instance v0, Lsun/net/NetProperties$1;

    #@9
    invoke-direct {v0}, Lsun/net/NetProperties$1;-><init>()V

    #@c
    .line 44
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@f
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    sget-object v3, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    #@2
    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 92
    .local v0, "def":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 94
    :catch_0
    move-exception v2

    #@c
    .line 96
    :goto_0
    const/4 v3, 0x0

    #@d
    return-object v3

    #@e
    .line 93
    :catch_1
    move-exception v1

    #@f
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 141
    const/4 v3, 0x0

    #@2
    .line 144
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    #@4
    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {p0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    #@b
    move-result-object v3

    #@c
    .line 149
    .end local v3    # "val":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    #@e
    .line 151
    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    move-result-object v4

    #@12
    return-object v4

    #@13
    .line 152
    :catch_0
    move-exception v2

    #@14
    .line 155
    :cond_0
    return-object v5

    #@15
    .line 145
    .restart local v3    # "val":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@16
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@17
    .line 146
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    #@18
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defval"    # I

    #@0
    .prologue
    .line 112
    const/4 v3, 0x0

    #@1
    .line 115
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    #@3
    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    invoke-static {p0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    #@a
    move-result-object v3

    #@b
    .line 120
    .end local v3    # "val":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    #@d
    .line 122
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@10
    move-result-object v4

    #@11
    return-object v4

    #@12
    .line 123
    :catch_0
    move-exception v2

    #@13
    .line 126
    :cond_0
    new-instance v4, Ljava/lang/Integer;

    #@15
    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    #@18
    return-object v4

    #@19
    .line 116
    .restart local v3    # "val":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@1a
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@1b
    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    #@1c
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private static loadDefaultProperties()V
    .locals 8

    #@0
    .prologue
    .line 60
    const-string/jumbo v6, "java.home"

    #@3
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 61
    .local v4, "fname":Ljava/lang/String;
    if-nez v4, :cond_0

    #@9
    .line 62
    new-instance v6, Ljava/lang/Error;

    #@b
    const-string/jumbo v7, "Can\'t find java.home ??"

    #@e
    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@11
    throw v6

    #@12
    .line 65
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@14
    const-string/jumbo v6, "lib"

    #@17
    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 66
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@1c
    const-string/jumbo v6, "net.properties"

    #@1f
    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22
    .line 67
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 68
    new-instance v5, Ljava/io/FileInputStream;

    #@28
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2b
    .line 69
    .local v5, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    #@2d
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@30
    .line 70
    .local v0, "bin":Ljava/io/BufferedInputStream;
    sget-object v6, Lsun/net/NetProperties;->props:Ljava/util/Properties;

    #@32
    invoke-virtual {v6, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@35
    .line 71
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 59
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_0
    return-void

    #@39
    .line 72
    :catch_0
    move-exception v1

    #@3a
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

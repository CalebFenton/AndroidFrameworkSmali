.class public Landroid/icu/impl/ICUConfig;
.super Ljava/lang/Object;
.source "ICUConfig.java"


# static fields
.field private static final CONFIG_PROPS:Ljava/util/Properties;

.field public static final CONFIG_PROPS_FILE:Ljava/lang/String; = "/android/icu/ICUConfig.properties"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 25
    new-instance v3, Ljava/util/Properties;

    #@2
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    #@5
    sput-object v3, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    #@7
    .line 27
    :try_start_0
    const-string/jumbo v3, "/android/icu/ICUConfig.properties"

    #@a
    invoke-static {v3}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@d
    move-result-object v1

    #@e
    .line 28
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    #@10
    .line 30
    :try_start_1
    sget-object v3, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 32
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@18
    .line 20
    :cond_0
    :goto_0
    return-void

    #@19
    .line 31
    :catchall_0
    move-exception v3

    #@1a
    .line 32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@1d
    .line 31
    throw v3
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1e
    .line 35
    :catch_0
    move-exception v2

    #@1f
    .local v2, "mre":Ljava/util/MissingResourceException;
    goto :goto_0

    #@20
    .line 37
    .end local v2    # "mre":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v0

    #@21
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const/4 v3, 0x0

    #@1
    .line 60
    .local v3, "val":Ljava/lang/String;
    move-object v2, p0

    #@2
    .line 61
    .local v2, "fname":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@5
    move-result-object v4

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 63
    :try_start_0
    new-instance v4, Landroid/icu/impl/ICUConfig$1;

    #@a
    invoke-direct {v4, v2}, Landroid/icu/impl/ICUConfig$1;-><init>(Ljava/lang/String;)V

    #@d
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    move-object v0, v4

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    move-object v3, v0
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 76
    .end local v3    # "val":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    #@17
    .line 77
    sget-object v4, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    #@19
    invoke-virtual {v4, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 79
    :cond_0
    return-object v3

    #@1e
    .line 73
    .restart local v3    # "val":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .local v3, "val":Ljava/lang/String;
    goto :goto_0

    #@23
    .line 68
    .local v3, "val":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Ljava/security/AccessControlException;
    goto :goto_0
.end method

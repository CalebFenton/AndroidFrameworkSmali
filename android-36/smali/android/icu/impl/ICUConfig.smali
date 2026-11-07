.class public Landroid/icu/impl/ICUConfig;
.super Ljava/lang/Object;
.source "ICUConfig.java"


# static fields
.field private static final blacklist CONFIG_PROPS:Ljava/util/Properties;

.field public static final blacklist CONFIG_PROPS_FILE:Ljava/lang/String; = "/android/icu/ICUConfig.properties"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    .line 31
    :try_start_7
    const-string v0, "/android/icu/ICUConfig.properties"

    invoke-static {v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_d
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_1d

    .line 32
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_20

    .line 34
    :try_start_f
    sget-object v1, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 36
    :try_start_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 37
    goto :goto_20

    .line 36
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 37
    throw v1
    :try_end_1d
    .catch Ljava/util/MissingResourceException; {:try_start_14 .. :try_end_1d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_1d

    .line 41
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_1d
    move-exception v0

    goto :goto_21

    .line 39
    :catch_1f
    move-exception v0

    .line 43
    :cond_20
    :goto_20
    nop

    .line 44
    :goto_21
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "val":Ljava/lang/String;
    move-object v1, p0

    .line 65
    .local v1, "fname":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 67
    :try_start_8
    new-instance v2, Landroid/icu/impl/ICUConfig$1;

    invoke-direct {v2, v1}, Landroid/icu/impl/ICUConfig$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_13
    .catch Ljava/security/AccessControlException; {:try_start_8 .. :try_end_13} :catch_15

    move-object v0, v2

    goto :goto_16

    .line 73
    :catch_15
    move-exception v2

    .line 76
    :goto_16
    goto :goto_1b

    .line 78
    :cond_17
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1b
    if-eqz v0, :cond_25

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 82
    :cond_25
    sget-object v2, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    invoke-virtual {v2, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_2b
    return-object v0
.end method

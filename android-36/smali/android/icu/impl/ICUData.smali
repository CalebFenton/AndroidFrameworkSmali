.class public final Landroid/icu/impl/ICUData;
.super Ljava/lang/Object;
.source "ICUData.java"


# static fields
.field public static final blacklist ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata"

.field public static final blacklist ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/brkitr"

.field public static final blacklist ICU_BRKITR_NAME:Ljava/lang/String; = "brkitr"

.field public static final blacklist ICU_BUNDLE:Ljava/lang/String; = "data/icudata"

.field public static final blacklist ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/coll"

.field public static final blacklist ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/curr"

.field static final blacklist ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"

.field public static final blacklist ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/lang"

.field public static final blacklist ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/rbnf"

.field public static final blacklist ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/region"

.field public static final blacklist ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/translit"

.field public static final blacklist ICU_UNIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/unit"

.field public static final blacklist ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudata/zone"

.field static final blacklist PACKAGE_NAME:Ljava/lang/String; = "icudt76b"

.field private static final blacklist logBinaryDataFromInputStream:Z = false

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/ICUData;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static blacklist exists(Ljava/lang/String;)Z
    .registers 3
    .param p0, "resourceName"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "i":Ljava/net/URL;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 98
    new-instance v1, Landroid/icu/impl/ICUData$1;

    invoke-direct {v1, p0}, Landroid/icu/impl/ICUData$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/URL;

    goto :goto_1a

    .line 105
    :cond_14
    const-class v1, Landroid/icu/impl/ICUData;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 107
    :goto_1a
    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public static blacklist getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 211
    .local p0, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRequiredStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "resourceName"    # Ljava/lang/String;

    .line 195
    const-class v0, Landroid/icu/impl/ICUData;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 203
    .local p0, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 111
    .local p0, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "i":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 113
    new-instance v1, Landroid/icu/impl/ICUData$2;

    invoke-direct {v1, p0, p1}, Landroid/icu/impl/ICUData$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    goto :goto_18

    .line 120
    :cond_14
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 123
    :goto_18
    if-nez v0, :cond_3e

    if-nez p2, :cond_1d

    goto :goto_3e

    .line 124
    :cond_1d
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not locate data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_3e
    :goto_3e
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public static blacklist getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 7
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "i":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 136
    new-instance v1, Landroid/icu/impl/ICUData$3;

    invoke-direct {v1, p0, p1}, Landroid/icu/impl/ICUData$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    goto :goto_18

    .line 143
    :cond_14
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 145
    :goto_18
    if-nez v0, :cond_29

    if-nez p2, :cond_1d

    goto :goto_29

    .line 146
    :cond_1d
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "could not locate data"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_29
    :goto_29
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public static blacklist getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "resourceName"    # Ljava/lang/String;

    .line 187
    const-class v0, Landroid/icu/impl/ICUData;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

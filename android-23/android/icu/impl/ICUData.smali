.class public final Landroid/icu/impl/ICUData;
.super Ljava/lang/Object;
.source "ICUData.java"


# static fields
.field public static final ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b"

.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/brkitr"

.field public static final ICU_BRKITR_NAME:Ljava/lang/String; = "brkitr"

.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt55b"

.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/coll"

.field public static final ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/curr"

.field static final ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"

.field public static final ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/lang"

.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/rbnf"

.field public static final ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/region"

.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/translit"

.field public static final ICU_UNIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/unit"

.field public static final ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/zone"

.field static final PACKAGE_NAME:Ljava/lang/String; = "icudt55b"

.field private static final logBinaryDataFromInputStream:Z

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    .line 87
    sput-object v0, Landroid/icu/impl/ICUData;->logger:Ljava/util/logging/Logger;

    #@3
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    .line 92
    .local v0, "i":Ljava/net/URL;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 93
    new-instance v1, Landroid/icu/impl/ICUData$1;

    #@9
    invoke-direct {v1, p0}, Landroid/icu/impl/ICUData$1;-><init>(Ljava/lang/String;)V

    #@c
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "i":Ljava/net/URL;
    check-cast v0, Ljava/net/URL;

    #@12
    .line 101
    .local v0, "i":Ljava/net/URL;
    :goto_0
    if-eqz v0, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    :goto_1
    return v1

    #@16
    .line 99
    .local v0, "i":Ljava/net/URL;
    :cond_0
    const-class v1, Landroid/icu/impl/ICUData;

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@1b
    move-result-object v0

    #@1c
    .local v0, "i":Ljava/net/URL;
    goto :goto_0

    #@1d
    .line 101
    :cond_1
    const/4 v1, 0x0

    #@1e
    goto :goto_1
.end method

.method public static getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p0, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getRequiredStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    const-class v0, Landroid/icu/impl/ICUData;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p0, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p0, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    .line 106
    .local v0, "i":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 107
    new-instance v1, Landroid/icu/impl/ICUData$2;

    #@9
    invoke-direct {v1, p0, p1}, Landroid/icu/impl/ICUData$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@c
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "i":Ljava/io/InputStream;
    check-cast v0, Ljava/io/InputStream;

    #@12
    .line 116
    .local v0, "i":Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_1

    #@14
    if-eqz p2, :cond_1

    #@16
    .line 117
    new-instance v1, Ljava/util/MissingResourceException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "could not locate data "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 113
    .local v0, "i":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@3b
    move-result-object v0

    #@3c
    .local v0, "i":Ljava/io/InputStream;
    goto :goto_0

    #@3d
    .line 119
    :cond_1
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    #@40
    .line 120
    return-object v0
.end method

.method public static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 127
    const/4 v0, 0x0

    #@1
    .line 128
    .local v0, "i":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 129
    new-instance v1, Landroid/icu/impl/ICUData$3;

    #@9
    invoke-direct {v1, p0, p1}, Landroid/icu/impl/ICUData$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@c
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "i":Ljava/io/InputStream;
    check-cast v0, Ljava/io/InputStream;

    #@12
    .line 137
    .local v0, "i":Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_1

    #@14
    if-eqz p2, :cond_1

    #@16
    .line 138
    new-instance v1, Ljava/util/MissingResourceException;

    #@18
    const-string/jumbo v2, "could not locate data"

    #@1b
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 135
    .local v0, "i":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@26
    move-result-object v0

    #@27
    .local v0, "i":Ljava/io/InputStream;
    goto :goto_0

    #@28
    .line 140
    :cond_1
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    #@2b
    .line 141
    return-object v0
.end method

.method public static getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    const-class v0, Landroid/icu/impl/ICUData;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

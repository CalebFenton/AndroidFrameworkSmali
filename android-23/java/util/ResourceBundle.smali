.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$MissingBundle;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$SimpleControl;,
        Ljava/util/ResourceBundle$Control;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/util/ResourceBundle;

.field private static final MISSINGBASE:Ljava/util/ResourceBundle;

.field private static final UNDER_SCORE:Ljava/lang/String; = "_"

.field private static final cache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheLocale:Ljava/util/Locale;


# instance fields
.field private lastLoadTime:J

.field private locale:Ljava/util/Locale;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static synthetic -wrap0(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    #@2
    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    #@5
    sput-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    #@7
    .line 110
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    #@9
    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    #@c
    sput-object v0, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    #@e
    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    #@10
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@13
    .line 112
    sput-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@15
    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    #@1b
    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/util/ResourceBundle;->lastLoadTime:J

    #@7
    .line 120
    return-void
.end method

.method public static clearCache()V
    .locals 2

    #@0
    .prologue
    .line 609
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 608
    return-void
.end method

.method public static clearCache(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 613
    if-nez p0, :cond_0

    #@2
    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "loader == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 616
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@d
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 612
    return-void
.end method

.method public static getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 136
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 137
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 139
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@d
    move-result-object v1

    #@e
    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 155
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 157
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 159
    :cond_0
    invoke-static {p0, p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 4
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    if-nez p2, :cond_0

    #@2
    .line 214
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "loader == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 215
    :cond_0
    if-nez p0, :cond_1

    #@d
    .line 216
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "bundleName == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 218
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v1

    #@1a
    .line 219
    .local v1, "defaultLocale":Ljava/util/Locale;
    sget-object v2, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    #@1c
    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    .line 220
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@24
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    #@27
    .line 221
    sput-object v1, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    #@29
    .line 223
    :cond_2
    const/4 v0, 0x0

    #@2a
    .line 224
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_3

    #@30
    .line 225
    const/4 v2, 0x0

    #@31
    invoke-static {v2, p0, p1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@34
    move-result-object v0

    #@35
    .line 227
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    :cond_3
    if-nez v0, :cond_4

    #@37
    .line 228
    const/4 v2, 0x1

    #@38
    invoke-static {v2, p0, v1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@3b
    move-result-object v0

    #@3c
    .line 229
    .local v0, "bundle":Ljava/util/ResourceBundle;
    if-nez v0, :cond_4

    #@3e
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const/16 v3, 0x5f

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    const-string/jumbo v3, ""

    #@58
    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    #@5b
    move-result-object v2

    #@5c
    throw v2

    #@5d
    .line 233
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    :cond_4
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    .line 300
    const/4 v4, 0x0

    #@1
    .line 301
    .local v4, "expired":Z
    invoke-virtual {p3, p0, p1}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@4
    move-result-object v6

    #@5
    .line 302
    .local v6, "bundleName":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@7
    move-object v7, p2

    #@8
    .line 303
    .local v7, "cacheKey":Ljava/lang/Object;
    :goto_0
    invoke-static {v7}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    #@b
    move-result-object v8

    #@c
    .line 304
    .local v8, "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Ljava/util/ResourceBundle;

    #@12
    .line 305
    .local v5, "result":Ljava/util/ResourceBundle;
    if-eqz v5, :cond_3

    #@14
    .line 306
    invoke-virtual {p3, p0, p1}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    #@17
    move-result-wide v10

    #@18
    .line 307
    .local v10, "time":J
    const-wide/16 v0, 0x0

    #@1a
    cmp-long v0, v10, v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    const-wide/16 v0, -0x2

    #@20
    cmp-long v0, v10, v0

    #@22
    if-nez v0, :cond_2

    #@24
    .line 309
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    #@26
    if-ne v0, v5, :cond_4

    #@28
    .line 310
    new-instance v0, Ljava/util/MissingResourceException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const/16 v2, 0x5f

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 311
    const-string/jumbo v2, ""

    #@44
    .line 310
    const/4 v3, 0x0

    #@45
    invoke-direct {v0, v3, v1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 302
    .end local v5    # "result":Ljava/util/ResourceBundle;
    .end local v7    # "cacheKey":Ljava/lang/Object;
    .end local v8    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .end local v10    # "time":J
    :cond_1
    const-string/jumbo v7, "null"

    #@4c
    .restart local v7    # "cacheKey":Ljava/lang/Object;
    goto :goto_0

    #@4d
    .line 308
    .restart local v5    # "result":Ljava/util/ResourceBundle;
    .restart local v8    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .restart local v10    # "time":J
    :cond_2
    iget-wide v0, v5, Ljava/util/ResourceBundle;->lastLoadTime:J

    #@4f
    add-long/2addr v0, v10

    #@50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@53
    move-result-wide v2

    #@54
    cmp-long v0, v0, v2

    #@56
    if-ltz v0, :cond_0

    #@58
    .line 315
    const/4 v4, 0x1

    #@59
    .end local v10    # "time":J
    :cond_3
    move-object v0, p0

    #@5a
    move-object v1, p1

    #@5b
    move-object v2, p2

    #@5c
    move-object v3, p3

    #@5d
    .line 318
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    #@60
    move-result-object v9

    #@61
    .line 321
    .local v9, "ret":Ljava/util/ResourceBundle;
    if-eqz v9, :cond_5

    #@63
    .line 322
    invoke-virtual {v8, v6, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@69
    move-result-wide v0

    #@6a
    iput-wide v0, v9, Ljava/util/ResourceBundle;->lastLoadTime:J

    #@6c
    .line 324
    return-object v9

    #@6d
    .line 313
    .end local v9    # "ret":Ljava/util/ResourceBundle;
    .restart local v10    # "time":J
    :cond_4
    return-object v5

    #@6e
    .line 326
    .end local v10    # "time":J
    .restart local v9    # "ret":Ljava/util/ResourceBundle;
    :cond_5
    sget-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    #@70
    invoke-virtual {v8, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    .line 327
    new-instance v0, Ljava/util/MissingResourceException;

    #@75
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    const/16 v2, 0x5f

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    const-string/jumbo v2, ""

    #@8f
    const/4 v3, 0x0

    #@90
    invoke-direct {v0, v3, v1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@93
    throw v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    .line 271
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static getLoader()Ljava/lang/ClassLoader;
    .locals 2

    #@0
    .prologue
    .line 275
    const-class v1, Ljava/util/ResourceBundle;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    .line 276
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@8
    .line 277
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v0

    #@c
    .line 279
    :cond_0
    return-object v0
.end method

.method private static getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "cacheKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 553
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@2
    monitor-enter v2

    #@3
    .line 554
    :try_start_0
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Hashtable;

    #@b
    .line 555
    .local v0, "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    if-nez v0, :cond_0

    #@d
    .line 556
    new-instance v0, Ljava/util/Hashtable;

    #@f
    .end local v0    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@12
    .line 557
    .restart local v0    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    #@14
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 559
    return-object v0

    #@19
    .line 553
    .end local v0    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private static handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 23
    .param p0, "loadBase"    # Z
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 478
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@3
    move-result-object v15

    #@4
    .line 479
    .local v15, "localeName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v20

    #@8
    if-eqz v20, :cond_0

    #@a
    .line 480
    move-object/from16 v7, p1

    #@c
    .line 482
    .local v7, "bundleName":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    #@e
    move-object/from16 v8, p3

    #@10
    .line 483
    .local v8, "cacheKey":Ljava/lang/Object;
    :goto_1
    invoke-static {v8}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    #@13
    move-result-object v14

    #@14
    .line 484
    .local v14, "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v9

    #@18
    check-cast v9, Ljava/util/ResourceBundle;

    #@1a
    .line 485
    .local v9, "cached":Ljava/util/ResourceBundle;
    if-eqz v9, :cond_6

    #@1c
    .line 486
    sget-object v20, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    #@1e
    move-object/from16 v0, v20

    #@20
    if-ne v9, v0, :cond_2

    #@22
    .line 487
    const/16 v20, 0x0

    #@24
    return-object v20

    #@25
    .line 481
    .end local v7    # "bundleName":Ljava/lang/String;
    .end local v8    # "cacheKey":Ljava/lang/Object;
    .end local v9    # "cached":Ljava/util/ResourceBundle;
    .end local v14    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    #@27
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    move-object/from16 v0, v20

    #@2c
    move-object/from16 v1, p1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v20

    #@32
    const-string/jumbo v21, "_"

    #@35
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v20

    #@39
    move-object/from16 v0, v20

    #@3b
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v20

    #@3f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    .restart local v7    # "bundleName":Ljava/lang/String;
    goto :goto_0

    #@44
    .line 482
    :cond_1
    const-string/jumbo v8, "null"

    #@47
    .restart local v8    # "cacheKey":Ljava/lang/Object;
    goto :goto_1

    #@48
    .line 488
    .restart local v9    # "cached":Ljava/util/ResourceBundle;
    .restart local v14    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_2
    sget-object v20, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    #@4a
    move-object/from16 v0, v20

    #@4c
    if-ne v9, v0, :cond_5

    #@4e
    .line 489
    if-nez p0, :cond_3

    #@50
    .line 490
    const/16 v20, 0x0

    #@52
    return-object v20

    #@53
    .line 492
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    #@56
    move-result-object v16

    #@57
    .line 493
    .local v16, "newLocale":Ljava/util/Locale;
    if-nez v16, :cond_4

    #@59
    .line 494
    const/16 v20, 0x0

    #@5b
    return-object v20

    #@5c
    .line 496
    :cond_4
    move/from16 v0, p0

    #@5e
    move-object/from16 v1, p1

    #@60
    move-object/from16 v2, v16

    #@62
    move-object/from16 v3, p3

    #@64
    invoke-static {v0, v1, v2, v3}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@67
    move-result-object v20

    #@68
    return-object v20

    #@69
    .line 498
    .end local v16    # "newLocale":Ljava/util/Locale;
    :cond_5
    return-object v9

    #@6a
    .line 501
    :cond_6
    const/4 v4, 0x0

    #@6b
    .line 503
    .local v4, "bundle":Ljava/util/ResourceBundle;
    const/16 v20, 0x1

    #@6d
    :try_start_0
    move/from16 v0, v20

    #@6f
    move-object/from16 v1, p3

    #@71
    invoke-static {v7, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@74
    move-result-object v6

    #@75
    .line 504
    .local v6, "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v20, Ljava/util/ResourceBundle;

    #@77
    move-object/from16 v0, v20

    #@79
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@7c
    move-result v20

    #@7d
    if-eqz v20, :cond_7

    #@7f
    .line 505
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@82
    move-result-object v20

    #@83
    move-object/from16 v0, v20

    #@85
    check-cast v0, Ljava/util/ResourceBundle;

    #@87
    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@88
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    :cond_7
    move-object v5, v4

    #@89
    .line 511
    .end local v6    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "bundle":Ljava/util/ResourceBundle;
    :goto_2
    if-eqz v5, :cond_9

    #@8b
    .line 512
    move-object/from16 v0, p2

    #@8d
    invoke-direct {v5, v0}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    #@90
    move-object v4, v5

    #@91
    .line 529
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    .local v4, "bundle":Ljava/util/ResourceBundle;
    :goto_3
    invoke-static/range {p2 .. p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    #@94
    move-result-object v19

    #@95
    .line 530
    .local v19, "strippedLocale":Ljava/util/Locale;
    if-eqz v4, :cond_b

    #@97
    .line 531
    if-eqz v19, :cond_8

    #@99
    .line 532
    move/from16 v0, p0

    #@9b
    move-object/from16 v1, p1

    #@9d
    move-object/from16 v2, v19

    #@9f
    move-object/from16 v3, p3

    #@a1
    invoke-static {v0, v1, v2, v3}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@a4
    move-result-object v17

    #@a5
    .line 533
    .local v17, "parent":Ljava/util/ResourceBundle;
    if-eqz v17, :cond_8

    #@a7
    .line 534
    move-object/from16 v0, v17

    #@a9
    invoke-virtual {v4, v0}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    #@ac
    .line 537
    .end local v17    # "parent":Ljava/util/ResourceBundle;
    :cond_8
    invoke-virtual {v14, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 538
    return-object v4

    #@b0
    .line 508
    .end local v19    # "strippedLocale":Ljava/util/Locale;
    .local v4, "bundle":Ljava/util/ResourceBundle;
    :catch_0
    move-exception v12

    #@b1
    .local v12, "ignored":Ljava/lang/Exception;
    move-object v5, v4

    #@b2
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_2

    #@b3
    .line 507
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    .end local v12    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    #@b4
    .local v13, "ignored":Ljava/lang/LinkageError;
    move-object v5, v4

    #@b5
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_2

    #@b6
    .line 514
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .end local v13    # "ignored":Ljava/lang/LinkageError;
    :cond_9
    new-instance v20, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const/16 v21, 0x2e

    #@bd
    const/16 v22, 0x2f

    #@bf
    move/from16 v0, v21

    #@c1
    move/from16 v1, v22

    #@c3
    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@c6
    move-result-object v21

    #@c7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v20

    #@cb
    const-string/jumbo v21, ".properties"

    #@ce
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v20

    #@d2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v10

    #@d6
    .line 515
    .local v10, "fileName":Ljava/lang/String;
    if-eqz p3, :cond_a

    #@d8
    .line 516
    move-object/from16 v0, p3

    #@da
    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@dd
    move-result-object v18

    #@de
    .line 518
    .local v18, "stream":Ljava/io/InputStream;
    :goto_4
    if-eqz v18, :cond_f

    #@e0
    .line 520
    :try_start_1
    new-instance v4, Ljava/util/PropertyResourceBundle;

    #@e2
    new-instance v20, Ljava/io/InputStreamReader;

    #@e4
    sget-object v21, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e6
    move-object/from16 v0, v20

    #@e8
    move-object/from16 v1, v18

    #@ea
    move-object/from16 v2, v21

    #@ec
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@ef
    move-object/from16 v0, v20

    #@f1
    invoke-direct {v4, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f4
    .line 521
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    .local v4, "bundle":Ljava/util/ResourceBundle;
    :try_start_2
    move-object/from16 v0, p2

    #@f6
    invoke-direct {v4, v0}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f9
    .line 524
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@fc
    goto :goto_3

    #@fd
    .line 517
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .end local v18    # "stream":Ljava/io/InputStream;
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_a
    invoke-static {v10}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@100
    move-result-object v18

    #@101
    .restart local v18    # "stream":Ljava/io/InputStream;
    goto :goto_4

    #@102
    .line 522
    :catch_2
    move-exception v11

    #@103
    .local v11, "ignored":Ljava/io/IOException;
    move-object v4, v5

    #@104
    .line 524
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    :goto_5
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@107
    goto :goto_3

    #@108
    .line 523
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .end local v11    # "ignored":Ljava/io/IOException;
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :catchall_0
    move-exception v20

    #@109
    move-object v4, v5

    #@10a
    .line 524
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    :goto_6
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@10d
    .line 523
    throw v20

    #@10e
    .line 541
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v18    # "stream":Ljava/io/InputStream;
    .restart local v19    # "strippedLocale":Ljava/util/Locale;
    :cond_b
    if-eqz v19, :cond_c

    #@110
    if-nez p0, :cond_d

    #@112
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@115
    move-result-object v20

    #@116
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    #@119
    move-result v20

    #@11a
    if-eqz v20, :cond_d

    #@11c
    .line 548
    :cond_c
    if-eqz p0, :cond_e

    #@11e
    sget-object v20, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    #@120
    :goto_7
    move-object/from16 v0, v20

    #@122
    invoke-virtual {v14, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    .line 549
    const/16 v20, 0x0

    #@127
    return-object v20

    #@128
    .line 542
    :cond_d
    move/from16 v0, p0

    #@12a
    move-object/from16 v1, p1

    #@12c
    move-object/from16 v2, v19

    #@12e
    move-object/from16 v3, p3

    #@130
    invoke-static {v0, v1, v2, v3}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@133
    move-result-object v4

    #@134
    .line 543
    if-eqz v4, :cond_c

    #@136
    .line 544
    invoke-virtual {v14, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@139
    .line 545
    return-object v4

    #@13a
    .line 548
    :cond_e
    sget-object v20, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    #@13c
    goto :goto_7

    #@13d
    .line 523
    .end local v19    # "strippedLocale":Ljava/util/Locale;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v18    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v20

    #@13e
    goto :goto_6

    #@13f
    .line 522
    :catch_3
    move-exception v11

    #@140
    .restart local v11    # "ignored":Ljava/io/IOException;
    goto :goto_5

    #@141
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .end local v11    # "ignored":Ljava/io/IOException;
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_f
    move-object v4, v5

    #@142
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    goto/16 :goto_3
.end method

.method private static missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Can\'t find resource for bundle \'"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "\', key \'"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "\'"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 238
    .local v0, "detail":Ljava/lang/String;
    new-instance v1, Ljava/util/MissingResourceException;

    #@28
    invoke-direct {v1, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    throw v1
.end method

.method private static processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 25
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;
    .param p4, "expired"    # Z
    .param p5, "result"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    .line 334
    move-object/from16 v0, p3

    #@2
    move-object/from16 v1, p0

    #@4
    move-object/from16 v2, p1

    #@6
    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    #@9
    move-result-object v23

    #@a
    .line 335
    .local v23, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v23, :cond_0

    #@c
    .line 336
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v4

    #@12
    .line 338
    :cond_0
    move-object/from16 v0, p3

    #@14
    move-object/from16 v1, p0

    #@16
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    #@19
    move-result-object v21

    #@1a
    .line 339
    .local v21, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    #@1c
    move-object/from16 v0, v21

    #@1e
    if-eq v4, v0, :cond_1

    #@20
    .line 340
    sget-object v4, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    #@22
    move-object/from16 v0, v21

    #@24
    if-ne v4, v0, :cond_2

    #@26
    .line 342
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@28
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2b
    throw v4

    #@2c
    .line 341
    :cond_2
    sget-object v4, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@2e
    move-object/from16 v0, v21

    #@30
    if-eq v4, v0, :cond_1

    #@32
    .line 344
    const/16 v24, 0x0

    #@34
    .line 345
    .local v24, "ret":Ljava/util/ResourceBundle;
    const/4 v15, 0x0

    #@35
    .line 346
    .local v15, "currentBundle":Ljava/util/ResourceBundle;
    const/4 v14, 0x0

    #@36
    .line 347
    .local v14, "bundle":Ljava/util/ResourceBundle;
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v22

    #@3a
    .end local v14    # "bundle":Ljava/util/ResourceBundle;
    .end local v15    # "currentBundle":Ljava/util/ResourceBundle;
    .end local v24    # "ret":Ljava/util/ResourceBundle;
    .local v22, "locale$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_8

    #@40
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Ljava/util/Locale;

    #@46
    .line 348
    .local v6, "locale":Ljava/util/Locale;
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v20

    #@4a
    .local v20, "format$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_3

    #@50
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, Ljava/lang/String;

    #@56
    .line 350
    .local v7, "format":Ljava/lang/String;
    if-eqz p4, :cond_6

    #@58
    .line 353
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5b
    move-result-wide v10

    #@5c
    move-object/from16 v4, p3

    #@5e
    move-object/from16 v5, p0

    #@60
    move-object/from16 v8, p2

    #@62
    move-object/from16 v9, p5

    #@64
    .line 352
    invoke-virtual/range {v4 .. v11}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    #@67
    move-result v9

    #@68
    move-object/from16 v4, p3

    #@6a
    move-object/from16 v5, p0

    #@6c
    move-object/from16 v8, p2

    #@6e
    .line 351
    invoke-virtual/range {v4 .. v9}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    #@71
    move-result-object v14

    #@72
    .line 371
    :goto_1
    if-eqz v14, :cond_5

    #@74
    .line 372
    if-eqz v15, :cond_7

    #@76
    .line 373
    invoke-virtual {v15, v14}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    #@79
    .line 374
    move-object v15, v14

    #@7a
    .line 382
    :cond_5
    :goto_2
    if-eqz v14, :cond_4

    #@7c
    goto :goto_0

    #@7d
    .line 359
    :cond_6
    const/4 v9, 0x0

    #@7e
    move-object/from16 v4, p3

    #@80
    move-object/from16 v5, p0

    #@82
    move-object/from16 v8, p2

    #@84
    .line 358
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    #@87
    move-result-object v14

    #@88
    .local v14, "bundle":Ljava/util/ResourceBundle;
    goto :goto_1

    #@89
    .line 360
    .end local v14    # "bundle":Ljava/util/ResourceBundle;
    :catch_0
    move-exception v18

    #@8a
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@8b
    .line 376
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_7
    if-nez v24, :cond_5

    #@8d
    .line 377
    move-object/from16 v24, v14

    #@8f
    .line 378
    .local v24, "ret":Ljava/util/ResourceBundle;
    move-object/from16 v15, v24

    #@91
    .local v15, "currentBundle":Ljava/util/ResourceBundle;
    goto :goto_2

    #@92
    .line 388
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "format":Ljava/lang/String;
    .end local v15    # "currentBundle":Ljava/util/ResourceBundle;
    .end local v20    # "format$iterator":Ljava/util/Iterator;
    .end local v24    # "ret":Ljava/util/ResourceBundle;
    :cond_8
    if-eqz v24, :cond_a

    #@94
    .line 389
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@96
    invoke-virtual/range {v24 .. v24}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v4

    #@9e
    if-eqz v4, :cond_9

    #@a0
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    #@a3
    move-result v4

    #@a4
    const/4 v5, 0x1

    #@a5
    if-ne v4, v5, :cond_a

    #@a7
    .line 390
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@a9
    .line 389
    move-object/from16 v0, v23

    #@ab
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@ae
    move-result v4

    #@af
    if-eqz v4, :cond_a

    #@b1
    .line 398
    :cond_9
    :goto_3
    return-object v24

    #@b2
    .line 391
    :cond_a
    move-object/from16 v0, p3

    #@b4
    move-object/from16 v1, p0

    #@b6
    move-object/from16 v2, p1

    #@b8
    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    #@bb
    move-result-object v9

    #@bc
    .line 392
    .local v9, "nextLocale":Ljava/util/Locale;
    if-eqz v9, :cond_9

    #@be
    move-object/from16 v8, p0

    #@c0
    move-object/from16 v10, p2

    #@c2
    move-object/from16 v11, p3

    #@c4
    move/from16 v12, p4

    #@c6
    move-object/from16 v13, p5

    #@c8
    .line 393
    invoke-static/range {v8 .. v13}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    #@cb
    move-result-object v24

    #@cc
    .restart local v24    # "ret":Ljava/util/ResourceBundle;
    goto :goto_3

    #@cd
    .line 364
    .end local v9    # "nextLocale":Ljava/util/Locale;
    .end local v24    # "ret":Ljava/util/ResourceBundle;
    .restart local v6    # "locale":Ljava/util/Locale;
    .restart local v7    # "format":Ljava/lang/String;
    .restart local v20    # "format$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v17

    #@ce
    .local v17, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@cf
    .line 366
    .end local v17    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v19

    #@d0
    .local v19, "e":Ljava/lang/InstantiationException;
    goto :goto_1

    #@d1
    .line 368
    .end local v19    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v16

    #@d2
    .local v16, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 605
    iput-object p1, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@2
    .line 604
    return-void
.end method

.method private static strip(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 590
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 591
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 592
    .local v2, "variant":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 593
    const-string/jumbo v2, ""

    #@15
    .line 601
    :goto_0
    new-instance v3, Ljava/util/Locale;

    #@17
    invoke-direct {v3, v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    return-object v3

    #@1b
    .line 594
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 595
    const-string/jumbo v0, ""

    #@24
    goto :goto_0

    #@25
    .line 596
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_2

    #@2b
    .line 597
    const-string/jumbo v1, ""

    #@2e
    goto :goto_0

    #@2f
    .line 599
    :cond_2
    const/4 v3, 0x0

    #@30
    return-object v3
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 620
    if-nez p1, :cond_0

    #@2
    .line 621
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 623
    :cond_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 432
    move-object v2, p0

    #@1
    .line 434
    .local v2, "theParent":Ljava/util/ResourceBundle;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 435
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@7
    .line 436
    return-object v1

    #@8
    .line 438
    :cond_1
    move-object v0, v2

    #@9
    .line 439
    .local v0, "last":Ljava/util/ResourceBundle;
    iget-object v2, v2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@b
    .line 440
    if-nez v2, :cond_0

    #@d
    .line 441
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3, p1}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    #@18
    move-result-object v3

    #@19
    throw v3
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 457
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 636
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    .line 637
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    #@6
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@9
    .line 638
    .local v2, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    .line 639
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 640
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 643
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 627
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 628
    .local v1, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 629
    .local v0, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 630
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_0

    #@19
    .line 632
    :cond_0
    return-object v1
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    .line 581
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@2
    .line 580
    return-void
.end method

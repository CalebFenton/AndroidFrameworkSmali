.class public Ljava/util/ResourceBundle$Control;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$Control$CandidateListCache;
    }
.end annotation


# static fields
.field private static final CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

.field public static final FORMAT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Ljava/util/ResourceBundle$Control;

.field public static final TTL_DONT_CACHE:J = -0x1L

.field public static final TTL_NO_EXPIRATION_CONTROL:J = -0x2L


# direct methods
.method static synthetic -get0()Ljava/util/ResourceBundle$Control;
    .locals 1

    #@0
    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1962
    const/4 v0, 0x2

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    const-string/jumbo v1, "java.class"

    #@8
    aput-object v1, v0, v2

    #@a
    .line 1963
    const-string/jumbo v1, "java.properties"

    #@d
    aput-object v1, v0, v3

    #@f
    .line 1962
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 1961
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@19
    .line 1973
    new-array v0, v3, [Ljava/lang/String;

    #@1b
    const-string/jumbo v1, "java.class"

    #@1e
    aput-object v1, v0, v2

    #@20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@27
    move-result-object v0

    #@28
    .line 1972
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    #@2a
    .line 1983
    new-array v0, v3, [Ljava/lang/String;

    #@2c
    const-string/jumbo v1, "java.properties"

    #@2f
    aput-object v1, v0, v2

    #@31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@34
    move-result-object v0

    #@35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@38
    move-result-object v0

    #@39
    .line 1982
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    #@3b
    .line 2001
    new-instance v0, Ljava/util/ResourceBundle$Control;

    #@3d
    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    #@40
    sput-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    #@42
    .line 2309
    new-instance v0, Ljava/util/ResourceBundle$Control$CandidateListCache;

    #@44
    const/4 v1, 0x0

    #@45
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>(Ljava/util/ResourceBundle$Control$CandidateListCache;)V

    #@48
    sput-object v0, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    #@4a
    .line 1952
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    #@0
    .prologue
    .line 2034
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    #@2
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2035
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->-get1()Ljava/util/ResourceBundle$Control;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2037
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    #@f
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2038
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->-get0()Ljava/util/ResourceBundle$Control;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 2040
    :cond_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@1c
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 2041
    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    #@24
    return-object v0

    #@25
    .line 2043
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2a
    throw v0
.end method

.method public static final getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    #@0
    .prologue
    .line 2069
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@2
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2070
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-get1()Ljava/util/ResourceBundle$Control;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2072
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    #@f
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2073
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-get2()Ljava/util/ResourceBundle$Control;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 2075
    :cond_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    #@1c
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 2076
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-get0()Ljava/util/ResourceBundle$Control;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 2078
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2c
    throw v0
.end method


# virtual methods
.method public getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2303
    if-nez p1, :cond_0

    #@2
    .line 2304
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2306
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    sget-object v0, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    #@c
    invoke-virtual {p2}, Ljava/util/Locale;->getBaseLocale()Lsun/util/locale/BaseLocale;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle$Control$CandidateListCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Collection;

    #@16
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@19
    return-object v1
.end method

.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2458
    if-nez p1, :cond_0

    #@3
    .line 2459
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 2461
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c
    move-result-object v0

    #@d
    .line 2462
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    move-object v0, v1

    #@14
    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_1
    return-object v0
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2116
    if-nez p1, :cond_0

    #@2
    .line 2117
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2119
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@a
    return-object v0
.end method

.method public getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2672
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 2673
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2675
    :cond_1
    const-wide/16 v0, -0x2

    #@c
    return-wide v0
.end method

.method public needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .locals 14
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "bundle"    # Ljava/util/ResourceBundle;
    .param p6, "loadTime"    # J

    #@0
    .prologue
    .line 2729
    if-nez p5, :cond_0

    #@2
    .line 2730
    new-instance v11, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v11

    #@8
    .line 2732
    :cond_0
    const-string/jumbo v11, "java.class"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v11

    #@11
    if-nez v11, :cond_1

    #@13
    const-string/jumbo v11, "java.properties"

    #@16
    move-object/from16 v0, p3

    #@18
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v11

    #@1c
    if-eqz v11, :cond_2

    #@1e
    .line 2733
    :cond_1
    const/4 v11, 0x5

    #@1f
    move-object/from16 v0, p3

    #@21
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object p3

    #@25
    .line 2735
    :cond_2
    const/4 v9, 0x0

    #@26
    .line 2737
    .local v9, "result":Z
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@29
    move-result-object v11

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {p0, v11, v0}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    .line 2738
    .local v8, "resourceName":Ljava/lang/String;
    move-object/from16 v0, p4

    #@32
    invoke-virtual {v0, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@35
    move-result-object v10

    #@36
    .line 2739
    .local v10, "url":Ljava/net/URL;
    if-eqz v10, :cond_4

    #@38
    .line 2740
    const-wide/16 v6, 0x0

    #@3a
    .line 2741
    .local v6, "lastModified":J
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3d
    move-result-object v2

    #@3e
    .line 2742
    .local v2, "connection":Ljava/net/URLConnection;
    if-eqz v2, :cond_3

    #@40
    .line 2744
    const/4 v11, 0x0

    #@41
    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@44
    .line 2745
    instance-of v11, v2, Ljava/net/JarURLConnection;

    #@46
    if-eqz v11, :cond_5

    #@48
    .line 2746
    check-cast v2, Ljava/net/JarURLConnection;

    #@4a
    .end local v2    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@4d
    move-result-object v4

    #@4e
    .line 2747
    .local v4, "ent":Ljava/util/jar/JarEntry;
    if-eqz v4, :cond_3

    #@50
    .line 2748
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getTime()J

    #@53
    move-result-wide v6

    #@54
    .line 2749
    const-wide/16 v12, -0x1

    #@56
    cmp-long v11, v6, v12

    #@58
    if-nez v11, :cond_3

    #@5a
    .line 2750
    const-wide/16 v6, 0x0

    #@5c
    .line 2757
    .end local v4    # "ent":Ljava/util/jar/JarEntry;
    :cond_3
    :goto_0
    cmp-long v11, v6, p6

    #@5e
    if-ltz v11, :cond_6

    #@60
    const/4 v9, 0x1

    #@61
    .line 2764
    .end local v6    # "lastModified":J
    .end local v8    # "resourceName":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :cond_4
    :goto_1
    return v9

    #@62
    .line 2754
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "lastModified":J
    .restart local v8    # "resourceName":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_5
    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@65
    move-result-wide v6

    #@66
    goto :goto_0

    #@67
    .line 2757
    .end local v2    # "connection":Ljava/net/URLConnection;
    :cond_6
    const/4 v9, 0x0

    #@68
    goto :goto_1

    #@69
    .line 2759
    .end local v6    # "lastModified":J
    .end local v8    # "resourceName":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    #@6a
    .line 2760
    .local v5, "npe":Ljava/lang/NullPointerException;
    throw v5

    #@6b
    .line 2761
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    #@6c
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .locals 14
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "reload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2564
    invoke-virtual/range {p0 .. p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 2565
    .local v4, "bundleName":Ljava/lang/String;
    const/4 v2, 0x0

    #@5
    .line 2566
    .local v2, "bundle":Ljava/util/ResourceBundle;
    const-string/jumbo v11, "java.class"

    #@8
    move-object/from16 v0, p3

    #@a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v11

    #@e
    if-eqz v11, :cond_2

    #@10
    .line 2569
    :try_start_0
    move-object/from16 v0, p4

    #@12
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    .line 2573
    .local v3, "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    const-class v11, Ljava/util/ResourceBundle;

    #@18
    invoke-virtual {v11, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1b
    move-result v11

    #@1c
    if-eqz v11, :cond_1

    #@1e
    .line 2574
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@21
    move-result-object v11

    #@22
    move-object v0, v11

    #@23
    check-cast v0, Ljava/util/ResourceBundle;

    #@25
    move-object v2, v0

    #@26
    .line 2622
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .end local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :cond_0
    :goto_0
    return-object v2

    #@27
    .line 2576
    .restart local v2    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :cond_1
    new-instance v11, Ljava/lang/ClassCastException;

    #@29
    new-instance v12, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@31
    move-result-object v13

    #@32
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v12

    #@36
    .line 2577
    const-string/jumbo v13, " cannot be cast to ResourceBundle"

    #@39
    .line 2576
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v12

    #@3d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    invoke-direct {v11, v12}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@44
    throw v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 2579
    .end local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :catch_0
    move-exception v6

    #@46
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    #@47
    .line 2581
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    const-string/jumbo v11, "java.properties"

    #@4a
    move-object/from16 v0, p3

    #@4c
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_3

    #@52
    .line 2582
    const-string/jumbo v11, "properties"

    #@55
    invoke-virtual {p0, v4, v11}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v9

    #@59
    .line 2583
    .local v9, "resourceName":Ljava/lang/String;
    move-object/from16 v5, p4

    #@5b
    .line 2584
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    move/from16 v8, p5

    #@5d
    .line 2585
    .local v8, "reloadFlag":Z
    const/4 v10, 0x0

    #@5e
    .line 2588
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v11, Ljava/util/ResourceBundle$Control$1;

    #@60
    move/from16 v0, p5

    #@62
    move-object/from16 v1, p4

    #@64
    invoke-direct {v11, p0, v0, v1, v9}, Ljava/util/ResourceBundle$Control$1;-><init>(Ljava/util/ResourceBundle$Control;ZLjava/lang/ClassLoader;Ljava/lang/String;)V

    #@67
    .line 2587
    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@6a
    move-result-object v10

    #@6b
    .end local v10    # "stream":Ljava/io/InputStream;
    check-cast v10, Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    #@6d
    .line 2611
    .local v10, "stream":Ljava/io/InputStream;
    if-eqz v10, :cond_0

    #@6f
    .line 2613
    :try_start_2
    new-instance v2, Ljava/util/PropertyResourceBundle;

    #@71
    .line 2614
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    new-instance v11, Ljava/io/InputStreamReader;

    #@73
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@75
    invoke-direct {v11, v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@78
    .line 2613
    invoke-direct {v2, v11}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7b
    .line 2616
    .local v2, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    #@7e
    goto :goto_0

    #@7f
    .line 2608
    .end local v10    # "stream":Ljava/io/InputStream;
    .local v2, "bundle":Ljava/util/ResourceBundle;
    :catch_1
    move-exception v7

    #@80
    .line 2609
    .local v7, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v7}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@83
    move-result-object v11

    #@84
    check-cast v11, Ljava/io/IOException;

    #@86
    throw v11

    #@87
    .line 2615
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .end local v7    # "e":Ljava/security/PrivilegedActionException;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v11

    #@88
    .line 2616
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    #@8b
    .line 2615
    throw v11

    #@8c
    .line 2620
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v8    # "reloadFlag":Z
    .end local v9    # "resourceName":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v2    # "bundle":Ljava/util/ResourceBundle;
    :cond_3
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@8e
    new-instance v12, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v13, "unknown format: "

    #@96
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v12

    #@9a
    move-object/from16 v0, p3

    #@9c
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v12

    #@a0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v12

    #@a4
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v11
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/16 v6, 0x5f

    #@2
    .line 2810
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@4
    if-ne p2, v5, :cond_0

    #@6
    .line 2811
    return-object p1

    #@7
    .line 2814
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 2815
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 2816
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 2817
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 2819
    .local v4, "variant":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@1a
    if-ne v1, v5, :cond_1

    #@1c
    const-string/jumbo v5, ""

    #@1f
    if-ne v0, v5, :cond_1

    #@21
    const-string/jumbo v5, ""

    #@24
    if-ne v4, v5, :cond_1

    #@26
    .line 2820
    return-object p1

    #@27
    .line 2823
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    .line 2824
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 2825
    const-string/jumbo v5, ""

    #@32
    if-eq v3, v5, :cond_4

    #@34
    .line 2826
    const-string/jumbo v5, ""

    #@37
    if-eq v4, v5, :cond_2

    #@39
    .line 2827
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 2842
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    return-object v5

    #@59
    .line 2828
    :cond_2
    const-string/jumbo v5, ""

    #@5c
    if-eq v0, v5, :cond_3

    #@5e
    .line 2829
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    goto :goto_0

    #@72
    .line 2831
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    goto :goto_0

    #@7e
    .line 2834
    :cond_4
    const-string/jumbo v5, ""

    #@81
    if-eq v4, v5, :cond_5

    #@83
    .line 2835
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    goto :goto_0

    #@97
    .line 2836
    :cond_5
    const-string/jumbo v5, ""

    #@9a
    if-eq v0, v5, :cond_6

    #@9c
    .line 2837
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    goto :goto_0

    #@a8
    .line 2839
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    goto :goto_0
.end method

.method public final toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x2e

    #@2
    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    .line 2868
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2f

    #@14
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 2869
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

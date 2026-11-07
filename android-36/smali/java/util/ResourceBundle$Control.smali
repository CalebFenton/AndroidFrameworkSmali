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
.field private static final greylist-max-o CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

.field public static final whitelist test-api FORMAT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api FORMAT_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api FORMAT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o INSTANCE:Ljava/util/ResourceBundle$Control;

.field public static final whitelist test-api TTL_DONT_CACHE:J = -0x1L

.field public static final whitelist test-api TTL_NO_EXPIRATION_CONTROL:J = -0x2L


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2588
    nop

    .line 2589
    const-string v0, "java.class"

    const-string v1, "java.properties"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 2597
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    .line 2605
    nop

    .line 2606
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    .line 2624
    new-instance v0, Ljava/util/ResourceBundle$Control;

    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    .line 2930
    new-instance v0, Ljava/util/ResourceBundle$Control$CandidateListCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>(Ljava/util/ResourceBundle-IA;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 2630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2631
    return-void
.end method

.method public static final whitelist test-api getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .line 2657
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2658
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->-$$Nest$sfgetPROPERTIES_ONLY()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2660
    :cond_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2661
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->-$$Nest$sfgetCLASS_ONLY()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2663
    :cond_1a
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2664
    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    return-object v0

    .line 2666
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final whitelist test-api getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .line 2692
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2693
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-$$Nest$sfgetNO_FALLBACK()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2695
    :cond_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2696
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-$$Nest$sfgetPROPERTIES_ONLY_NO_FALLBACK()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2698
    :cond_1a
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2699
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-$$Nest$sfgetCLASS_ONLY_NO_FALLBACK()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2701
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic blacklist lambda$newBundle$0(Ljava/lang/reflect/Constructor;)Ljava/lang/Void;
    .registers 2
    .param p0, "ctor"    # Ljava/lang/reflect/Constructor;

    .line 3237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 3545
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3546
    const/4 v0, 0x0

    return-object v0

    .line 3548
    :cond_a
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 2924
    if-eqz p1, :cond_14

    .line 2927
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    invoke-virtual {p2}, Ljava/util/Locale;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle$Control$CandidateListCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2925
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 3092
    if-eqz p1, :cond_10

    .line 3095
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3096
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    return-object v1

    .line 3093
    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2739
    if-eqz p1, :cond_5

    .line 2742
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    return-object v0

    .line 2740
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 3339
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 3342
    const-wide/16 v0, -0x2

    return-wide v0

    .line 3340
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .registers 18
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "bundle"    # Ljava/util/ResourceBundle;
    .param p6, "loadTime"    # J

    .line 3397
    if-eqz p5, :cond_61

    .line 3400
    const-string v0, "java.class"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "java.properties"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3401
    :cond_12
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 3403
    :cond_17
    const/4 v1, 0x0

    .line 3405
    .local v1, "result":Z
    :try_start_18
    invoke-virtual/range {p0 .. p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/util/ResourceBundle$Control;->toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3406
    .local v0, "resourceName":Ljava/lang/String;
    if-nez v0, :cond_23

    .line 3407
    return v1

    .line 3409
    :cond_23
    invoke-virtual {p4, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 3410
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_5c

    .line 3411
    const-wide/16 v3, 0x0

    .line 3412
    .local v3, "lastModified":J
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 3413
    .local v5, "connection":Ljava/net/URLConnection;
    const/4 v6, 0x0

    if-eqz v5, :cond_56

    .line 3415
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 3416
    instance-of v7, v5, Ljava/net/JarURLConnection;

    if-eqz v7, :cond_51

    .line 3417
    move-object v7, v5

    check-cast v7, Ljava/net/JarURLConnection;

    invoke-virtual {v7}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v7

    .line 3418
    .local v7, "ent":Ljava/util/jar/JarEntry;
    if-eqz v7, :cond_50

    .line 3419
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v8

    .line 3420
    .end local v3    # "lastModified":J
    .local v8, "lastModified":J
    const-wide/16 v3, -0x1

    cmp-long v3, v8, v3

    if-nez v3, :cond_4f

    .line 3421
    const-wide/16 v3, 0x0

    .end local v8    # "lastModified":J
    .restart local v3    # "lastModified":J
    goto :goto_50

    .line 3420
    .end local v3    # "lastModified":J
    .restart local v8    # "lastModified":J
    :cond_4f
    move-wide v3, v8

    .line 3424
    .end local v7    # "ent":Ljava/util/jar/JarEntry;
    .end local v8    # "lastModified":J
    .restart local v3    # "lastModified":J
    :cond_50
    :goto_50
    goto :goto_56

    .line 3425
    :cond_51
    invoke-virtual {v5}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v7
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_55} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_55} :catch_5d

    move-wide v3, v7

    .line 3428
    :cond_56
    :goto_56
    cmp-long v7, v3, p6

    if-ltz v7, :cond_5b

    const/4 v6, 0x1

    :cond_5b
    move v1, v6

    .line 3434
    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "lastModified":J
    .end local v5    # "connection":Ljava/net/URLConnection;
    :cond_5c
    goto :goto_5e

    .line 3432
    :catch_5d
    move-exception v0

    .line 3435
    :goto_5e
    return v1

    .line 3430
    :catch_5f
    move-exception v0

    .line 3431
    .local v0, "npe":Ljava/lang/NullPointerException;
    throw v0

    .line 3398
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    .end local v1    # "result":Z
    :cond_61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .registers 14
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

    .line 3206
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3207
    .local v0, "bundleName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3208
    .local v1, "bundle":Ljava/util/ResourceBundle;
    const-string v2, "java.class"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 3210
    :try_start_d
    invoke-virtual {p4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3213
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/ResourceBundle;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_17} :catch_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_17} :catch_62

    if-eqz v3, :cond_45

    .line 3215
    move-object v3, v2

    .line 3231
    .local v3, "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/ResourceBundle;>;"
    const/4 v4, 0x0

    :try_start_1b
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 3232
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/ResourceBundle;>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2d

    .line 3233
    return-object v6

    .line 3237
    :cond_2d
    new-instance v5, Ljava/util/ResourceBundle$Control$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Ljava/util/ResourceBundle$Control$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 3238
    .local v5, "pa1":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/Void;>;"
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 3239
    move-object v7, v6

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ResourceBundle;
    :try_end_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_3e} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_3e} :catch_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_3e} :catch_62

    .line 3242
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    .end local v4    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/ResourceBundle;>;"
    .end local v5    # "pa1":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/Void;>;"
    .local v6, "bundle":Ljava/util/ResourceBundle;
    move-object v1, v6

    goto :goto_44

    .line 3240
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .restart local v1    # "bundle":Ljava/util/ResourceBundle;
    :catch_40
    move-exception v4

    .line 3241
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_41
    invoke-static {v4}, Ljava/util/ResourceBundle;->-$$Nest$smuncheckedThrow(Ljava/lang/Throwable;)V

    .line 3243
    .end local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/ResourceBundle;>;"
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_44
    goto :goto_63

    .line 3244
    :cond_45
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be cast to ResourceBundle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    .end local p0    # "this":Ljava/util/ResourceBundle$Control;
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "loader":Ljava/lang/ClassLoader;
    .end local p5    # "reload":Z
    throw v3
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_62} :catch_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_41 .. :try_end_62} :catch_62

    .line 3247
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "bundleName":Ljava/lang/String;
    .restart local v1    # "bundle":Ljava/util/ResourceBundle;
    .restart local p0    # "this":Ljava/util/ResourceBundle$Control;
    .restart local p1    # "baseName":Ljava/lang/String;
    .restart local p2    # "locale":Ljava/util/Locale;
    .restart local p3    # "format":Ljava/lang/String;
    .restart local p4    # "loader":Ljava/lang/ClassLoader;
    .restart local p5    # "reload":Z
    :catch_62
    move-exception v2

    .line 3248
    :goto_63
    goto :goto_9c

    .line 3249
    :cond_64
    const-string v2, "java.properties"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 3250
    const-string v2, "properties"

    invoke-direct {p0, v0, v2}, Ljava/util/ResourceBundle$Control;->toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3251
    .local v2, "resourceName":Ljava/lang/String;
    if-nez v2, :cond_75

    .line 3252
    return-object v1

    .line 3255
    :cond_75
    move v3, p5

    .line 3256
    .local v3, "reloadFlag":Z
    const/4 v4, 0x0

    .line 3258
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_77
    new-instance v5, Ljava/util/ResourceBundle$Control$1;

    invoke-direct {v5, p0, p4, v2, v3}, Ljava/util/ResourceBundle$Control$1;-><init>(Ljava/util/ResourceBundle$Control;Ljava/lang/ClassLoader;Ljava/lang/String;Z)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_82
    .catch Ljava/security/PrivilegedActionException; {:try_start_77 .. :try_end_82} :catch_9d

    .line 3275
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v5, "stream":Ljava/io/InputStream;
    nop

    .line 3276
    if-eqz v5, :cond_9b

    .line 3280
    :try_start_85
    new-instance v4, Ljava/util/PropertyResourceBundle;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_96

    move-object v1, v4

    .line 3283
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 3284
    goto :goto_9b

    .line 3283
    :catchall_96
    move-exception v4

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 3284
    throw v4

    .line 3286
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "reloadFlag":Z
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_9b
    :goto_9b
    nop

    .line 3289
    :goto_9c
    return-object v1

    .line 3273
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "reloadFlag":Z
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_9d
    move-exception v5

    .line 3274
    .local v5, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v5}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .line 3287
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "reloadFlag":Z
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/security/PrivilegedActionException;
    :cond_a5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 3481
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    if-ne p2, v0, :cond_5

    .line 3482
    return-object p1

    .line 3485
    :cond_5
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3486
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 3487
    .local v1, "script":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 3488
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 3490
    .local v3, "variant":Ljava/lang/String;
    const-string v4, ""

    if-ne v0, v4, :cond_1e

    if-ne v2, v4, :cond_1e

    if-ne v3, v4, :cond_1e

    .line 3491
    return-object p1

    .line 3494
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3495
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3496
    if-eq v1, v4, :cond_6a

    .line 3497
    if-eq v3, v4, :cond_48

    .line 3498
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 3499
    :cond_48
    if-eq v2, v4, :cond_5e

    .line 3500
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 3502
    :cond_5e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 3505
    :cond_6a
    if-eq v3, v4, :cond_80

    .line 3506
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 3507
    :cond_80
    if-eq v2, v4, :cond_8e

    .line 3508
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 3510
    :cond_8e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3513
    :goto_91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final whitelist test-api toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 3538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3539
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

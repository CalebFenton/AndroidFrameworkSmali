.class public Landroid/icu/impl/ICUResourceBundle;
.super Landroid/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundle$WholeBundle;,
        Landroid/icu/impl/ICUResourceBundle$AvailEntry;,
        Landroid/icu/impl/ICUResourceBundle$OpenType;,
        Landroid/icu/impl/ICUResourceBundle$1;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ALIAS:I = 0x3

.field public static final ARRAY16:I = 0x9

.field private static final DEBUG:Z

.field private static final DEFAULT_TAG:Ljava/lang/String; = "default"

.field public static final FROM_DEFAULT:I = 0x3

.field public static final FROM_FALLBACK:I = 0x1

.field public static final FROM_LOCALE:I = 0x4

.field public static final FROM_ROOT:I = 0x2

.field private static final FULL_LOCALE_NAMES_LIST:Ljava/lang/String; = "fullLocaleNames.lst"

.field private static GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUResourceBundle$AvailEntry;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final HYPHEN:C = '-'

.field private static final ICUDATA:Ljava/lang/String; = "ICUDATA"

.field public static final ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/brkitr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt55b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/coll"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/curr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

.field protected static final ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/rbnf"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/region"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"

.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/translit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt55b/zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final INSTALLED_LOCALES:Ljava/lang/String; = "InstalledLocales"

.field private static final LOCALE:Ljava/lang/String; = "LOCALE"

.field private static final NO_INHERITANCE_MARKER:Ljava/lang/String; = "\u2205\u2205\u2205"

.field public static final RES_BOGUS:I = -0x1

.field private static final RES_PATH_SEP_CHAR:C = '/'

.field private static final RES_PATH_SEP_STR:Ljava/lang/String; = "/"

.field public static final STRING_V2:I = 0x6

.field public static final TABLE16:I = 0x5

.field public static final TABLE32:I = 0x4


# instance fields
.field private container:Landroid/icu/impl/ICUResourceBundle;

.field protected key:Ljava/lang/String;

.field private loadingStatus:I

.field wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@b
    .line 107
    const-class v0, Landroid/icu/impl/ICUData;

    #@d
    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@13
    .line 556
    const-string/jumbo v0, "localedata"

    #@16
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@1c
    .line 790
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$1;

    #@1e
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$1;-><init>()V

    #@21
    .line 789
    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    #@23
    .line 32
    return-void

    #@24
    :cond_0
    const/4 v0, 0x1

    #@25
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 1
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@0
    .prologue
    .line 1337
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    #@3
    .line 116
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@6
    .line 1338
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@8
    .line 1337
    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1341
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    #@3
    .line 116
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@6
    .line 1342
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    #@8
    .line 1343
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@a
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@c
    move-object v0, p1

    #@d
    .line 1344
    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    #@f
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@11
    .line 1345
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@13
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@15
    .line 1341
    return-void
.end method

.method private static final addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .param p0, "bn"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 611
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$2;

    #@2
    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    #@5
    .line 610
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 609
    return-void
.end method

.method private static final addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 591
    .local p2, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v4, "res_index"

    #@3
    const/4 v5, 0x1

    #@4
    invoke-static {p0, v4, p1, v5}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@a
    .line 592
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v4, "InstalledLocales"

    #@d
    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v0

    #@11
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 600
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@16
    move-result-object v2

    #@17
    .line 601
    .local v2, "iter":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    #@1a
    .line 602
    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 603
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 604
    .local v3, "locstr":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 593
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "iter":Landroid/icu/util/UResourceBundleIterator;
    .end local v3    # "locstr":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2d
    .line 594
    .local v1, "e":Ljava/util/MissingResourceException;
    sget-boolean v4, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 595
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "couldn\'t find "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    const/16 v6, 0x2f

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    const-string/jumbo v6, "res_index"

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    const-string/jumbo v6, ".res"

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5e
    .line 596
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    #@61
    .line 598
    :cond_0
    return-void

    #@62
    .line 588
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v2    # "iter":Landroid/icu/util/UResourceBundleIterator;
    :cond_1
    return-void
.end method

.method private static addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 6
    .param p0, "bn"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 647
    .local p2, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "fullLocaleNames.lst"

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@17
    move-result-object v3

    #@18
    .line 648
    .local v3, "s":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    #@1a
    .line 649
    new-instance v0, Ljava/io/BufferedReader;

    #@1c
    new-instance v4, Ljava/io/InputStreamReader;

    #@1e
    const-string/jumbo v5, "ASCII"

    #@21
    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@24
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@27
    .line 651
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@2d
    .line 652
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    const-string/jumbo v4, "#"

    #@36
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_0

    #@3c
    .line 653
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 658
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "s":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@41
    .line 645
    :cond_1
    :goto_1
    return-void

    #@42
    .line 656
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "s":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_1
.end method

.method private static countPathKeys(Ljava/lang/String;)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 986
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 987
    return v3

    #@8
    .line 989
    :cond_0
    const/4 v1, 0x1

    #@9
    .line 990
    .local v1, "num":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    if-ge v0, v2, :cond_2

    #@10
    .line 991
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    const/16 v3, 0x2f

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 992
    add-int/lit8 v1, v1, 0x1

    #@1a
    .line 990
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 995
    :cond_2
    return v1
.end method

.method public static createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1276
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    move-result-object v0

    #@5
    .line 1277
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    if-nez v0, :cond_0

    #@7
    .line 1279
    return-object v1

    #@8
    .line 1281
    :cond_0
    invoke-static {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 9
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 664
    const-string/jumbo v6, "/"

    #@3
    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v6

    #@7
    if-eqz v6, :cond_3

    #@9
    move-object v0, p0

    #@a
    .line 665
    .local v0, "bn":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    #@c
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@f
    .line 666
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "android.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    #@12
    const-string/jumbo v7, "false"

    #@15
    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 667
    .local v5, "skipScan":Ljava/lang/String;
    const-string/jumbo v6, "true"

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v6

    #@20
    if-nez v6, :cond_6

    #@22
    .line 669
    invoke-static {p0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@25
    .line 670
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@28
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_0

    #@2e
    .line 672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@31
    move-result v6

    #@32
    const-string/jumbo v7, "android/icu/impl/data/icudt55b"

    #@35
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    if-ne v6, v7, :cond_4

    #@3b
    .line 673
    const-string/jumbo v1, ""

    #@3e
    .line 679
    :goto_1
    if-eqz v1, :cond_0

    #@40
    .line 680
    const-string/jumbo v6, ".res"

    #@43
    invoke-static {v1, v6, v4}, Landroid/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@46
    .line 683
    :cond_0
    const-string/jumbo v6, "res_index"

    #@49
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@4c
    .line 685
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v2

    #@50
    .line 686
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_6

    #@56
    .line 687
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Ljava/lang/String;

    #@5c
    .line 688
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@5f
    move-result v6

    #@60
    const/4 v7, 0x1

    #@61
    if-eq v6, v7, :cond_2

    #@63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@66
    move-result v6

    #@67
    const/4 v7, 0x3

    #@68
    if-le v6, v7, :cond_1

    #@6a
    :cond_2
    const/16 v6, 0x5f

    #@6c
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@6f
    move-result v6

    #@70
    if-gez v6, :cond_1

    #@72
    .line 690
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@75
    goto :goto_2

    #@76
    .line 664
    .end local v0    # "bn":Ljava/lang/String;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "skipScan":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    const-string/jumbo v7, "/"

    #@82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    .restart local v0    # "bn":Ljava/lang/String;
    goto :goto_0

    #@8b
    .line 674
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "skipScan":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@8e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@91
    move-result v6

    #@92
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@95
    move-result v6

    #@96
    const/16 v7, 0x2f

    #@98
    if-ne v6, v7, :cond_5

    #@9a
    .line 675
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@9d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@a0
    move-result v6

    #@a1
    add-int/lit8 v6, v6, 0x1

    #@a3
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a6
    move-result-object v1

    #@a7
    .local v1, "folder":Ljava/lang/String;
    goto :goto_1

    #@a8
    .line 677
    .end local v1    # "folder":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    #@a9
    .local v1, "folder":Ljava/lang/String;
    goto :goto_1

    #@aa
    .line 695
    .end local v1    # "folder":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@ad
    move-result v6

    #@ae
    if-eqz v6, :cond_8

    #@b0
    .line 696
    sget-boolean v6, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@b2
    if-eqz v6, :cond_7

    #@b4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b6
    new-instance v7, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v8, "unable to enumerate data files in "

    #@be
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v7

    #@c2
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v7

    #@c6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cd
    .line 697
    :cond_7
    invoke-static {v0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@d0
    .line 699
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@d3
    move-result v6

    #@d4
    if-eqz v6, :cond_9

    #@d6
    .line 701
    invoke-static {p0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@d9
    .line 704
    :cond_9
    const-string/jumbo v6, "root"

    #@dc
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@df
    .line 705
    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@e1
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e8
    .line 706
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@eb
    move-result-object v6

    #@ec
    return-object v6
.end method

.method private static createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 710
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 711
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@8
    .line 712
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static final createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 9
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 565
    const-string/jumbo v7, "res_index"

    #@3
    const/4 v8, 0x1

    #@4
    invoke-static {p0, v7, p1, v8}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@a
    .line 567
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v7, "InstalledLocales"

    #@d
    invoke-virtual {v0, v7}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v0

    #@11
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@13
    .line 568
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@16
    move-result v4

    #@17
    .line 569
    .local v4, "length":I
    const/4 v1, 0x0

    #@18
    .line 570
    .local v1, "i":I
    new-array v5, v4, [Landroid/icu/util/ULocale;

    #@1a
    .line 571
    .local v5, "locales":[Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@1d
    move-result-object v3

    #@1e
    .line 572
    .local v3, "iter":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    #@21
    .line 573
    :goto_0
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_1

    #@27
    .line 574
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 575
    .local v6, "locstr":Ljava/lang/String;
    const-string/jumbo v7, "root"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_0

    #@38
    .line 576
    add-int/lit8 v2, v1, 0x1

    #@3a
    .end local v1    # "i":I
    .local v2, "i":I
    sget-object v7, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@3c
    aput-object v7, v5, v1

    #@3e
    move v1, v2

    #@3f
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@40
    .line 578
    :cond_0
    add-int/lit8 v2, v1, 0x1

    #@42
    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v7, Landroid/icu/util/ULocale;

    #@44
    invoke-direct {v7, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@47
    aput-object v7, v5, v1

    #@49
    move v1, v2

    #@4a
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@4b
    .line 581
    .end local v6    # "locstr":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@4c
    .line 582
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    return-object v5
.end method

.method private static final findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "actualBundle"    # Landroid/icu/util/UResourceBundle;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    .line 807
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v11

    #@6
    if-nez v11, :cond_0

    #@8
    .line 808
    return-object v12

    #@9
    .line 810
    :cond_0
    const/4 v8, 0x0

    #@a
    .line 811
    .local v8, "sub":Landroid/icu/impl/ICUResourceBundle;
    if-nez p2, :cond_1

    #@c
    .line 812
    move-object p2, p1

    #@d
    :cond_1
    move-object v0, p1

    #@e
    .line 815
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@10
    .line 818
    .local v0, "base":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@13
    move-result v2

    #@14
    .line 819
    .local v2, "depth":I
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@17
    move-result v7

    #@18
    .line 820
    .local v7, "numPathKeys":I
    sget-boolean v11, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@1a
    if-nez v11, :cond_3

    #@1c
    if-lez v7, :cond_2

    #@1e
    const/4 v10, 0x1

    #@1f
    :cond_2
    if-nez v10, :cond_3

    #@21
    new-instance v10, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v10

    #@27
    .line 821
    :cond_3
    add-int v10, v2, v7

    #@29
    new-array v4, v10, [Ljava/lang/String;

    #@2b
    .line 822
    .local v4, "keys":[Ljava/lang/String;
    invoke-static {p0, v7, v4, v2}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@2e
    .line 826
    .end local v8    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@30
    .end local v2    # "depth":I
    .local v3, "depth":I
    aget-object v9, v4, v2

    #@32
    .line 827
    .local v9, "subKey":Ljava/lang/String;
    invoke-virtual {v0, v9, v12, p2}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@35
    move-result-object v8

    #@36
    check-cast v8, Landroid/icu/impl/ICUResourceBundle;

    #@38
    .line 828
    .local v8, "sub":Landroid/icu/impl/ICUResourceBundle;
    if-nez v8, :cond_4

    #@3a
    .line 829
    add-int/lit8 v2, v3, -0x1

    #@3c
    .line 840
    .end local v3    # "depth":I
    .restart local v2    # "depth":I
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Landroid/icu/impl/ICUResourceBundle;

    #@42
    .line 841
    .local v6, "nextBase":Landroid/icu/impl/ICUResourceBundle;
    if-nez v6, :cond_6

    #@44
    .line 842
    return-object v12

    #@45
    .line 832
    .end local v2    # "depth":I
    .end local v6    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    .restart local v3    # "depth":I
    :cond_4
    array-length v10, v4

    #@46
    if-ne v3, v10, :cond_5

    #@48
    .line 834
    check-cast p2, Landroid/icu/impl/ICUResourceBundle;

    #@4a
    .end local p2    # "requested":Landroid/icu/util/UResourceBundle;
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@4d
    move-result-object v10

    #@4e
    invoke-virtual {v8, v10}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    #@51
    .line 835
    return-object v8

    #@52
    .line 837
    .restart local p2    # "requested":Landroid/icu/util/UResourceBundle;
    :cond_5
    move-object v0, v8

    #@53
    move v2, v3

    #@54
    .end local v3    # "depth":I
    .restart local v2    # "depth":I
    goto :goto_0

    #@55
    .line 848
    .restart local v6    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    :cond_6
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@58
    move-result v1

    #@59
    .line 849
    .local v1, "baseDepth":I
    if-eq v2, v1, :cond_7

    #@5b
    .line 850
    array-length v10, v4

    #@5c
    sub-int/2addr v10, v2

    #@5d
    add-int/2addr v10, v1

    #@5e
    new-array v5, v10, [Ljava/lang/String;

    #@60
    .line 851
    .local v5, "newKeys":[Ljava/lang/String;
    array-length v10, v4

    #@61
    sub-int/2addr v10, v2

    #@62
    invoke-static {v4, v2, v5, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@65
    .line 852
    move-object v4, v5

    #@66
    .line 854
    .end local v5    # "newKeys":[Ljava/lang/String;
    :cond_7
    invoke-direct {v0, v4, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@69
    .line 855
    move-object v0, v6

    #@6a
    .line 856
    const/4 v2, 0x0

    #@6b
    goto :goto_0
.end method

.method private static final findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "actualBundle"    # Landroid/icu/util/UResourceBundle;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    .line 866
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 867
    const/4 v6, 0x0

    #@7
    return-object v6

    #@8
    .line 869
    :cond_0
    move-object/from16 v0, p1

    #@a
    instance-of v6, v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    #@c
    if-nez v6, :cond_1

    #@e
    .line 870
    const/4 v6, 0x0

    #@f
    return-object v6

    #@10
    .line 872
    :cond_1
    if-nez p2, :cond_2

    #@12
    .line 873
    move-object/from16 p2, p1

    #@14
    :cond_2
    move-object/from16 v1, p1

    #@16
    .line 876
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@18
    .line 877
    .local v1, "base":Landroid/icu/impl/ICUResourceBundle;
    iget-object v6, v1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@1a
    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@1c
    .line 878
    .local v13, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    const/4 v5, -0x1

    #@1d
    .line 882
    .local v5, "res":I
    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@20
    move-result v8

    #@21
    .line 883
    .local v8, "baseDepth":I
    move v3, v8

    #@22
    .line 884
    .local v3, "depth":I
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@25
    move-result v12

    #@26
    .line 885
    .local v12, "numPathKeys":I
    sget-boolean v6, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@28
    if-nez v6, :cond_4

    #@2a
    if-lez v12, :cond_3

    #@2c
    const/4 v6, 0x1

    #@2d
    :goto_0
    if-nez v6, :cond_4

    #@2f
    new-instance v6, Ljava/lang/AssertionError;

    #@31
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@34
    throw v6

    #@35
    :cond_3
    const/4 v6, 0x0

    #@36
    goto :goto_0

    #@37
    .line 886
    :cond_4
    add-int v6, v3, v12

    #@39
    new-array v2, v6, [Ljava/lang/String;

    #@3b
    .line 887
    .local v2, "keys":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@3d
    invoke-static {v0, v12, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@40
    move v9, v3

    #@41
    .line 892
    .end local v3    # "depth":I
    .local v9, "depth":I
    :goto_1
    const/4 v6, -0x1

    #@42
    if-ne v5, v6, :cond_7

    #@44
    .line 893
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@47
    move-result v17

    #@48
    .line 894
    .local v17, "type":I
    const/4 v6, 0x2

    #@49
    move/from16 v0, v17

    #@4b
    if-eq v0, v6, :cond_5

    #@4d
    const/16 v6, 0x8

    #@4f
    move/from16 v0, v17

    #@51
    if-ne v0, v6, :cond_6

    #@53
    :cond_5
    move-object v6, v1

    #@54
    .line 895
    check-cast v6, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    #@56
    iget-object v14, v6, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@58
    .line 910
    .local v14, "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :goto_2
    add-int/lit8 v3, v9, 0x1

    #@5a
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    aget-object v4, v2, v9

    #@5c
    .line 911
    .local v4, "subKey":Ljava/lang/String;
    invoke-virtual {v14, v13, v4}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    #@5f
    move-result v5

    #@60
    .line 912
    const/4 v6, -0x1

    #@61
    if-ne v5, v6, :cond_a

    #@63
    .line 913
    add-int/lit8 v3, v3, -0x1

    #@65
    .line 953
    .end local v4    # "subKey":Ljava/lang/String;
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :goto_3
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@68
    move-result-object v11

    #@69
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@6b
    .line 954
    .local v11, "nextBase":Landroid/icu/impl/ICUResourceBundle;
    if-nez v11, :cond_10

    #@6d
    .line 955
    const/4 v6, 0x0

    #@6e
    return-object v6

    #@6f
    .end local v3    # "depth":I
    .end local v11    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    .restart local v9    # "depth":I
    :cond_6
    move v3, v9

    #@70
    .line 897
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    goto :goto_3

    #@71
    .line 900
    .end local v3    # "depth":I
    .end local v17    # "type":I
    .restart local v9    # "depth":I
    :cond_7
    invoke-static {v5}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@74
    move-result v17

    #@75
    .line 901
    .restart local v17    # "type":I
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_8

    #@7b
    .line 902
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@7e
    move-result-object v14

    #@7f
    .restart local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    goto :goto_2

    #@80
    .line 903
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_8
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    #@83
    move-result v6

    #@84
    if-eqz v6, :cond_9

    #@86
    .line 904
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@89
    move-result-object v14

    #@8a
    .restart local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    goto :goto_2

    #@8b
    .line 906
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_9
    const/4 v5, -0x1

    #@8c
    move v3, v9

    #@8d
    .line 907
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    goto :goto_3

    #@8e
    .line 917
    .restart local v4    # "subKey":Ljava/lang/String;
    .restart local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_a
    invoke-static {v5}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@91
    move-result v6

    #@92
    const/4 v7, 0x3

    #@93
    if-ne v6, v7, :cond_b

    #@95
    .line 918
    invoke-direct {v1, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@98
    .line 919
    const/4 v6, 0x0

    #@99
    move-object/from16 v7, p2

    #@9b
    invoke-static/range {v1 .. v7}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@9e
    move-result-object v16

    #@9f
    .line 923
    :goto_4
    array-length v6, v2

    #@a0
    if-ne v3, v6, :cond_e

    #@a2
    .line 925
    if-eqz v16, :cond_c

    #@a4
    .line 926
    invoke-virtual/range {v16 .. v16}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    return-object v6

    #@a9
    .line 921
    :cond_b
    const/16 v16, 0x0

    #@ab
    .local v16, "sub":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_4

    #@ac
    .line 928
    .end local v16    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_c
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@af
    move-result-object v15

    #@b0
    .line 929
    .local v15, "s":Ljava/lang/String;
    if-nez v15, :cond_d

    #@b2
    .line 930
    new-instance v6, Landroid/icu/util/UResourceTypeMismatchException;

    #@b4
    const-string/jumbo v7, ""

    #@b7
    invoke-direct {v6, v7}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v6

    #@bb
    .line 932
    :cond_d
    return-object v15

    #@bc
    .line 935
    .end local v15    # "s":Ljava/lang/String;
    :cond_e
    if-eqz v16, :cond_f

    #@be
    .line 936
    move-object/from16 v1, v16

    #@c0
    .line 937
    iget-object v6, v1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@c2
    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@c4
    .line 938
    const/4 v5, -0x1

    #@c5
    .line 943
    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@c8
    move-result v8

    #@c9
    .line 944
    if-eq v3, v8, :cond_f

    #@cb
    .line 945
    array-length v6, v2

    #@cc
    sub-int/2addr v6, v3

    #@cd
    add-int/2addr v6, v8

    #@ce
    new-array v10, v6, [Ljava/lang/String;

    #@d0
    .line 946
    .local v10, "newKeys":[Ljava/lang/String;
    array-length v6, v2

    #@d1
    sub-int/2addr v6, v3

    #@d2
    invoke-static {v2, v3, v10, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@d5
    .line 947
    move-object v2, v10

    #@d6
    .line 948
    move v3, v8

    #@d7
    .end local v4    # "subKey":Ljava/lang/String;
    .end local v10    # "newKeys":[Ljava/lang/String;
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_f
    :goto_5
    move v9, v3

    #@d8
    .end local v3    # "depth":I
    .restart local v9    # "depth":I
    goto/16 :goto_1

    #@da
    .line 958
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    .restart local v11    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    :cond_10
    invoke-direct {v1, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@dd
    .line 959
    move-object v1, v11

    #@de
    .line 960
    iget-object v6, v1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@e0
    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@e2
    .line 961
    const/4 v8, 0x0

    #@e3
    const/4 v3, 0x0

    #@e4
    goto :goto_5
.end method

.method protected static getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 17
    .param p0, "base"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "depth"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "_resource"    # I
    .param p6, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 1379
    .local p5, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@4
    .line 1380
    .local v13, "wholeBundle":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    iget-object v8, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    #@6
    .line 1381
    .local v8, "loaderToUse":Ljava/lang/ClassLoader;
    const/4 v9, 0x0

    #@7
    .local v9, "locale":Ljava/lang/String;
    const/4 v7, 0x0

    #@8
    .line 1383
    .local v7, "keyPath":Ljava/lang/String;
    iget-object v14, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@a
    move/from16 v0, p4

    #@c
    invoke-virtual {v14, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    #@f
    move-result-object v11

    #@10
    .line 1384
    .local v11, "rpath":Ljava/lang/String;
    if-nez p5, :cond_0

    #@12
    .line 1385
    new-instance p5, Ljava/util/HashMap;

    #@14
    .end local p5    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    #@17
    .line 1387
    .restart local p5    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p5

    #@19
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v14

    #@1d
    if-eqz v14, :cond_1

    #@1f
    .line 1388
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@21
    .line 1389
    const-string/jumbo v15, "Circular references in the resource bundles"

    #@24
    .line 1388
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v14

    #@28
    .line 1391
    :cond_1
    const-string/jumbo v14, ""

    #@2b
    move-object/from16 v0, p5

    #@2d
    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 1392
    const/16 v14, 0x2f

    #@32
    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v14

    #@36
    if-nez v14, :cond_5

    #@38
    .line 1393
    const/16 v14, 0x2f

    #@3a
    const/4 v15, 0x1

    #@3b
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    #@3e
    move-result v4

    #@3f
    .line 1394
    .local v4, "i":I
    const/16 v14, 0x2f

    #@41
    add-int/lit8 v15, v4, 0x1

    #@43
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    #@46
    move-result v6

    #@47
    .line 1395
    .local v6, "j":I
    const/4 v14, 0x1

    #@48
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 1396
    .local v3, "bundleName":Ljava/lang/String;
    if-gez v6, :cond_3

    #@4e
    .line 1397
    add-int/lit8 v14, v4, 0x1

    #@50
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    .line 1403
    .end local v7    # "keyPath":Ljava/lang/String;
    .local v9, "locale":Ljava/lang/String;
    :goto_0
    const-string/jumbo v14, "ICUDATA"

    #@57
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v14

    #@5b
    if-eqz v14, :cond_4

    #@5d
    .line 1404
    const-string/jumbo v3, "android/icu/impl/data/icudt55b"

    #@60
    .line 1405
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@62
    .line 1424
    .end local v6    # "j":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    #@63
    .line 1425
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v12, 0x0

    #@64
    .line 1426
    .local v12, "sub":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v14, "LOCALE"

    #@67
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v14

    #@6b
    if-eqz v14, :cond_9

    #@6d
    .line 1427
    iget-object v3, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@6f
    .line 1428
    const-string/jumbo v14, "LOCALE"

    #@72
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@75
    move-result v14

    #@76
    add-int/lit8 v14, v14, 0x2

    #@78
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@7b
    move-result v15

    #@7c
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    .local v7, "keyPath":Ljava/lang/String;
    move-object/from16 v2, p6

    #@82
    .line 1431
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@84
    .line 1432
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    iget-object v14, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@86
    if-eqz v14, :cond_7

    #@88
    .line 1433
    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@8a
    goto :goto_2

    #@8b
    .line 1399
    .end local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    .restart local v6    # "j":I
    .local v7, "keyPath":Ljava/lang/String;
    .local v9, "locale":Ljava/lang/String;
    :cond_3
    add-int/lit8 v14, v4, 0x1

    #@8d
    invoke-virtual {v11, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    .line 1400
    .local v9, "locale":Ljava/lang/String;
    add-int/lit8 v14, v6, 0x1

    #@93
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@96
    move-result v15

    #@97
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9a
    move-result-object v7

    #@9b
    .local v7, "keyPath":Ljava/lang/String;
    goto :goto_0

    #@9c
    .line 1406
    .end local v7    # "keyPath":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "ICUDATA"

    #@9f
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a2
    move-result v14

    #@a3
    const/4 v15, -0x1

    #@a4
    if-le v14, v15, :cond_2

    #@a6
    .line 1407
    const/16 v14, 0x2d

    #@a8
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    #@ab
    move-result v5

    #@ac
    .line 1408
    .local v5, "idx":I
    const/4 v14, -0x1

    #@ad
    if-le v5, v14, :cond_2

    #@af
    .line 1409
    new-instance v14, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v15, "android/icu/impl/data/icudt55b/"

    #@b7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v14

    #@bb
    add-int/lit8 v15, v5, 0x1

    #@bd
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c0
    move-result v16

    #@c1
    move/from16 v0, v16

    #@c3
    invoke-virtual {v3, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c6
    move-result-object v15

    #@c7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v14

    #@cb
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    .line 1410
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@d1
    goto :goto_1

    #@d2
    .line 1415
    .end local v3    # "bundleName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v6    # "j":I
    .local v7, "keyPath":Ljava/lang/String;
    .local v9, "locale":Ljava/lang/String;
    :cond_5
    const/16 v14, 0x2f

    #@d4
    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    #@d7
    move-result v4

    #@d8
    .line 1416
    .restart local v4    # "i":I
    const/4 v14, -0x1

    #@d9
    if-eq v4, v14, :cond_6

    #@db
    .line 1417
    const/4 v14, 0x0

    #@dc
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@df
    move-result-object v9

    #@e0
    .line 1418
    .local v9, "locale":Ljava/lang/String;
    add-int/lit8 v14, v4, 0x1

    #@e2
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    .line 1422
    .end local v7    # "keyPath":Ljava/lang/String;
    :goto_3
    iget-object v3, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@e8
    .restart local v3    # "bundleName":Ljava/lang/String;
    goto/16 :goto_1

    #@ea
    .line 1420
    .end local v3    # "bundleName":Ljava/lang/String;
    .restart local v7    # "keyPath":Ljava/lang/String;
    .local v9, "locale":Ljava/lang/String;
    :cond_6
    move-object v9, v11

    #@eb
    .local v9, "locale":Ljava/lang/String;
    goto :goto_3

    #@ec
    .line 1435
    .restart local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v3    # "bundleName":Ljava/lang/String;
    .local v7, "keyPath":Ljava/lang/String;
    .restart local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_7
    const/4 v14, 0x0

    #@ed
    invoke-static {v7, v2, v14}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@f0
    move-result-object v12

    #@f1
    .line 1469
    .end local v7    # "keyPath":Ljava/lang/String;
    .end local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_8
    if-nez v12, :cond_e

    #@f3
    .line 1470
    new-instance v14, Ljava/util/MissingResourceException;

    #@f5
    iget-object v15, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    #@f7
    iget-object v0, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@f9
    move-object/from16 v16, v0

    #@fb
    move-object/from16 v0, v16

    #@fd
    move-object/from16 v1, p3

    #@ff
    invoke-direct {v14, v15, v0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@102
    throw v14

    #@103
    .line 1437
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_9
    if-nez v9, :cond_b

    #@105
    .line 1439
    const-string/jumbo v14, ""

    #@108
    .line 1440
    const/4 v15, 0x0

    #@109
    .line 1439
    invoke-static {v3, v14, v8, v15}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@10c
    move-result-object v2

    #@10d
    .end local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@10f
    .line 1447
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_4
    if-eqz v7, :cond_c

    #@111
    .line 1448
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@114
    move-result v10

    #@115
    .line 1449
    .local v10, "numKeys":I
    if-lez v10, :cond_a

    #@117
    .line 1450
    new-array v0, v10, [Ljava/lang/String;

    #@119
    move-object/from16 p1, v0

    #@11b
    .line 1451
    const/4 v14, 0x0

    #@11c
    move-object/from16 v0, p1

    #@11e
    invoke-static {v7, v10, v0, v14}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@121
    .line 1462
    :cond_a
    :goto_5
    if-lez v10, :cond_8

    #@123
    .line 1463
    move-object v12, v2

    #@124
    .line 1464
    .local v12, "sub":Landroid/icu/impl/ICUResourceBundle;
    const/4 v4, 0x0

    #@125
    :goto_6
    if-eqz v12, :cond_8

    #@127
    if-ge v4, v10, :cond_8

    #@129
    .line 1465
    aget-object v14, p1, v4

    #@12b
    move-object/from16 v0, p5

    #@12d
    move-object/from16 v1, p6

    #@12f
    invoke-virtual {v12, v14, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@132
    move-result-object v12

    #@133
    .end local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    check-cast v12, Landroid/icu/impl/ICUResourceBundle;

    #@135
    .line 1464
    .restart local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v4, v4, 0x1

    #@137
    goto :goto_6

    #@138
    .line 1443
    .end local v10    # "numKeys":I
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    .local v12, "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_b
    const/4 v14, 0x0

    #@139
    .line 1442
    invoke-static {v3, v9, v8, v14}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@13c
    move-result-object v2

    #@13d
    .end local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@13f
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_4

    #@140
    .line 1453
    :cond_c
    if-eqz p1, :cond_d

    #@142
    .line 1454
    move/from16 v10, p2

    #@144
    .restart local v10    # "numKeys":I
    goto :goto_5

    #@145
    .line 1456
    .end local v10    # "numKeys":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@148
    move-result p2

    #@149
    .line 1457
    add-int/lit8 v10, p2, 0x1

    #@14b
    .line 1458
    .restart local v10    # "numKeys":I
    new-array v0, v10, [Ljava/lang/String;

    #@14d
    move-object/from16 p1, v0

    #@14f
    .line 1459
    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@152
    .line 1460
    aput-object p3, p1, p2

    #@154
    goto :goto_5

    #@155
    .line 1477
    .end local v10    # "numKeys":I
    .end local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_e
    return-object v12
.end method

.method private static getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 802
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@8
    return-object v0
.end method

.method public static getAvailableLocaleNameSet()Ljava/util/Set;
    .locals 2
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
    .line 479
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@5
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .param p0, "bundlePrefix"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 453
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleNameSet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 511
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@5
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 503
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    .line 495
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@5
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 487
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 6
    .param p0, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1320
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    #@3
    move-result v1

    #@4
    .line 1321
    .local v1, "rootRes":I
    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@7
    move-result v4

    #@8
    invoke-static {v4}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1322
    new-instance v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@10
    invoke-direct {v3, p1, p2, p3, p0}, Landroid/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V

    #@13
    .line 1323
    .local v3, "wb":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    new-instance v2, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@15
    invoke-direct {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V

    #@18
    .line 1327
    .local v2, "rootTable":Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    const-string/jumbo v4, "%%ALIAS"

    #@1b
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 1328
    .local v0, "aliasString":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@21
    .line 1329
    invoke-static {p1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@27
    return-object v4

    #@28
    .line 1325
    .end local v0    # "aliasString":Ljava/lang/String;
    .end local v2    # "rootTable":Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    .end local v3    # "wb":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2a
    const-string/jumbo v5, "Invalid format error"

    #@2d
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 1331
    .restart local v0    # "aliasString":Ljava/lang/String;
    .restart local v2    # "rootTable":Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    .restart local v3    # "wb":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    :cond_1
    return-object v2
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@0
    .prologue
    .line 1099
    if-nez p1, :cond_0

    #@2
    .line 1100
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@5
    move-result-object p1

    #@6
    .line 1102
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1103
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@c
    .line 1102
    invoke-static {p0, v0, v1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    .locals 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@0
    .prologue
    .line 1108
    if-nez p0, :cond_0

    #@2
    .line 1109
    const-string/jumbo p0, "android/icu/impl/data/icudt55b"

    #@5
    .line 1111
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    .line 1112
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_1

    #@b
    .line 1113
    new-instance v1, Ljava/util/MissingResourceException;

    #@d
    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Could not find the bundle "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "/"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, ".res"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, ""

    #@36
    const-string/jumbo v4, ""

    #@39
    .line 1113
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 1116
    :cond_1
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    #@0
    .prologue
    .line 1084
    if-eqz p3, :cond_0

    #@2
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@4
    .line 1083
    :goto_0
    invoke-static {p0, p1, p2, v1}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    .line 1085
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_1

    #@a
    .line 1086
    new-instance v1, Ljava/util/MissingResourceException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Could not find the bundle "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, "/"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, ".res"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, ""

    #@35
    const-string/jumbo v4, ""

    #@38
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 1084
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@3e
    goto :goto_0

    #@3f
    .line 1088
    .restart local v0    # "b":Landroid/icu/util/UResourceBundle;
    :cond_1
    return-object v0
.end method

.method public static getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
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
    .line 461
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@5
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .param p0, "bundlePrefix"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 471
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;
    .locals 23
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "locID"    # Landroid/icu/util/ULocale;
    .param p5, "isAvailable"    # [Z
    .param p6, "omitDefault"    # Z

    #@0
    .prologue
    .line 192
    move-object/from16 v0, p4

    #@2
    move-object/from16 v1, p3

    #@4
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v12

    #@8
    .line 193
    .local v12, "kwVal":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 194
    .local v5, "baseLoc":Ljava/lang/String;
    const/4 v8, 0x0

    #@d
    .line 195
    .local v8, "defStr":Ljava/lang/String;
    new-instance v14, Landroid/icu/util/ULocale;

    #@f
    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@12
    .line 196
    .local v14, "parent":Landroid/icu/util/ULocale;
    const/4 v7, 0x0

    #@13
    .line 197
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    const/4 v13, 0x0

    #@14
    .line 198
    .local v13, "lookForDefault":Z
    const/4 v9, 0x0

    #@15
    .line 199
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@16
    .line 200
    .local v6, "defDepth":I
    const/16 v16, 0x0

    #@18
    .line 202
    .local v16, "resDepth":I
    if-eqz v12, :cond_0

    #@1a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@1d
    move-result v19

    #@1e
    if-nez v19, :cond_b

    #@20
    .line 204
    :cond_0
    :goto_0
    const-string/jumbo v12, ""

    #@23
    .line 205
    const/4 v13, 0x1

    #@24
    .line 209
    :cond_1
    const/4 v15, 0x0

    #@25
    .line 211
    .local v15, "r":Landroid/icu/impl/ICUResourceBundle;
    move-object/from16 v0, p0

    #@27
    invoke-static {v0, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@2a
    move-result-object v15

    #@2b
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@2d
    .line 212
    .local v15, "r":Landroid/icu/impl/ICUResourceBundle;
    if-eqz p5, :cond_2

    #@2f
    .line 213
    const/16 v19, 0x0

    #@31
    const/16 v20, 0x0

    #@33
    aput-boolean v19, p5, v20

    #@35
    .line 214
    invoke-static/range {p0 .. p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@38
    move-result-object v19

    #@39
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    #@3c
    move-result-object v4

    #@3d
    .line 215
    .local v4, "availableULocales":[Landroid/icu/util/ULocale;
    const/4 v10, 0x0

    #@3e
    .local v10, "i":I
    :goto_1
    array-length v0, v4

    #@3f
    move/from16 v19, v0

    #@41
    move/from16 v0, v19

    #@43
    if-ge v10, v0, :cond_2

    #@45
    .line 216
    aget-object v19, v4, v10

    #@47
    move-object/from16 v0, v19

    #@49
    invoke-virtual {v14, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v19

    #@4d
    if-eqz v19, :cond_c

    #@4f
    .line 217
    const/16 v19, 0x1

    #@51
    const/16 v20, 0x0

    #@53
    aput-boolean v19, p5, v20

    #@55
    .line 225
    .end local v4    # "availableULocales":[Landroid/icu/util/ULocale;
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_2
    :try_start_0
    move-object/from16 v0, p2

    #@57
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@5a
    move-result-object v11

    #@5b
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@5d
    .line 226
    .local v11, "irb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v19, "default"

    #@60
    move-object/from16 v0, v19

    #@62
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    .line 227
    .local v8, "defStr":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@68
    .line 228
    move-object v12, v8

    #@69
    .line 229
    const/4 v13, 0x0

    #@6a
    .line 231
    :cond_3
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    #@6d
    move-result-object v7

    #@6e
    .line 235
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    if-nez v7, :cond_4

    #@70
    .line 236
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@73
    move-result-object v15

    #@74
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@76
    .line 237
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v6, v6, 0x1

    #@78
    .line 239
    :cond_4
    if-eqz v15, :cond_5

    #@7a
    if-eqz v7, :cond_2

    #@7c
    .line 242
    :cond_5
    new-instance v14, Landroid/icu/util/ULocale;

    #@7e
    .end local v14    # "parent":Landroid/icu/util/ULocale;
    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@81
    .line 243
    .restart local v14    # "parent":Landroid/icu/util/ULocale;
    move-object/from16 v0, p0

    #@83
    invoke-static {v0, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@86
    move-result-object v15

    #@87
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@89
    .line 247
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    :cond_6
    :try_start_1
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@8e
    move-result-object v11

    #@8f
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@91
    .line 248
    .restart local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v11, v12}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@94
    .line 249
    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@97
    move-result-object v9

    #@98
    .line 253
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    if-eqz v9, :cond_7

    #@9a
    move/from16 v0, v16

    #@9c
    if-le v0, v6, :cond_7

    #@9e
    .line 254
    const-string/jumbo v19, "default"

    #@a1
    move-object/from16 v0, v19

    #@a3
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    .line 255
    .restart local v8    # "defStr":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@aa
    move-result-object v7

    #@ab
    .line 256
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    move/from16 v6, v16

    #@ad
    .line 261
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    .end local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    :cond_7
    :goto_3
    if-nez v9, :cond_8

    #@af
    .line 262
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@b2
    move-result-object v15

    #@b3
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@b5
    .line 263
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v16, v16, 0x1

    #@b7
    .line 265
    :cond_8
    if-eqz v15, :cond_9

    #@b9
    if-eqz v9, :cond_6

    #@bb
    .line 267
    :cond_9
    if-nez v9, :cond_a

    #@bd
    .line 268
    if-eqz v8, :cond_a

    #@bf
    .line 269
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v19

    #@c3
    if-eqz v19, :cond_d

    #@c5
    .line 307
    :cond_a
    if-nez v9, :cond_11

    #@c7
    .line 308
    new-instance v19, Ljava/util/MissingResourceException;

    #@c9
    .line 309
    const-string/jumbo v20, "Could not find locale containing requested or default keyword."

    #@cc
    .line 310
    new-instance v21, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    move-object/from16 v0, v21

    #@d3
    move-object/from16 v1, p3

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v21

    #@d9
    const-string/jumbo v22, "="

    #@dc
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v21

    #@e0
    move-object/from16 v0, v21

    #@e2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v21

    #@e6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v21

    #@ea
    .line 308
    move-object/from16 v0, v19

    #@ec
    move-object/from16 v1, v20

    #@ee
    move-object/from16 v2, p0

    #@f0
    move-object/from16 v3, v21

    #@f2
    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f5
    throw v19

    #@f6
    .line 203
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    .local v8, "defStr":Ljava/lang/String;
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    :cond_b
    const-string/jumbo v19, "default"

    #@f9
    move-object/from16 v0, v19

    #@fb
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fe
    move-result v19

    #@ff
    .line 202
    if-eqz v19, :cond_1

    #@101
    goto/16 :goto_0

    #@103
    .line 215
    .restart local v4    # "availableULocales":[Landroid/icu/util/ULocale;
    .restart local v10    # "i":I
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    #@105
    goto/16 :goto_1

    #@107
    .line 271
    .end local v4    # "availableULocales":[Landroid/icu/util/ULocale;
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    .end local v10    # "i":I
    :cond_d
    move-object v12, v8

    #@108
    .line 272
    new-instance v14, Landroid/icu/util/ULocale;

    #@10a
    .end local v14    # "parent":Landroid/icu/util/ULocale;
    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@10d
    .line 273
    .restart local v14    # "parent":Landroid/icu/util/ULocale;
    move-object/from16 v0, p0

    #@10f
    invoke-static {v0, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@112
    move-result-object v15

    #@113
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@115
    .line 274
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    const/16 v16, 0x0

    #@117
    .line 278
    :goto_4
    :try_start_2
    move-object/from16 v0, p2

    #@119
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@11c
    move-result-object v11

    #@11d
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@11f
    .line 279
    .restart local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v11, v12}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@122
    move-result-object v18

    #@123
    .line 282
    .local v18, "urb":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@126
    move-result-object v9

    #@127
    .line 286
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@12a
    move-result-object v19

    #@12b
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getLocale()Ljava/util/Locale;

    #@12e
    move-result-object v20

    #@12f
    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@132
    move-result-object v20

    #@133
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@136
    move-result v19

    #@137
    if-nez v19, :cond_e

    #@139
    .line 287
    const/4 v9, 0x0

    #@13a
    .line 292
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    :cond_e
    if-eqz v9, :cond_f

    #@13c
    move/from16 v0, v16

    #@13e
    if-le v0, v6, :cond_f

    #@140
    .line 293
    const-string/jumbo v19, "default"

    #@143
    move-object/from16 v0, v19

    #@145
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@148
    move-result-object v8

    #@149
    .line 294
    .local v8, "defStr":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@14c
    move-result-object v7

    #@14d
    .line 295
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    move/from16 v6, v16

    #@14f
    .line 300
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v18    # "urb":Landroid/icu/util/UResourceBundle;
    :cond_f
    :goto_5
    if-nez v9, :cond_10

    #@151
    .line 301
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@154
    move-result-object v15

    #@155
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@157
    .line 302
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v16, v16, 0x1

    #@159
    .line 304
    :cond_10
    if-eqz v15, :cond_a

    #@15b
    if-nez v9, :cond_a

    #@15d
    goto :goto_4

    #@15e
    .line 313
    :cond_11
    if-eqz p6, :cond_12

    #@160
    .line 314
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v19

    #@164
    .line 313
    if-eqz v19, :cond_12

    #@166
    .line 315
    move/from16 v0, v16

    #@168
    if-gt v0, v6, :cond_12

    #@16a
    .line 316
    return-object v9

    #@16b
    .line 318
    :cond_12
    new-instance v19, Landroid/icu/util/ULocale;

    #@16d
    new-instance v20, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@175
    move-result-object v21

    #@176
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v20

    #@17a
    const-string/jumbo v21, "@"

    #@17d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v20

    #@181
    move-object/from16 v0, v20

    #@183
    move-object/from16 v1, p3

    #@185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v20

    #@189
    const-string/jumbo v21, "="

    #@18c
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v20

    #@190
    move-object/from16 v0, v20

    #@192
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v20

    #@196
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v20

    #@19a
    invoke-direct/range {v19 .. v20}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@19d
    return-object v19

    #@19e
    .line 297
    :catch_0
    move-exception v17

    #@19f
    .local v17, "t":Ljava/util/MissingResourceException;
    goto :goto_5

    #@1a0
    .line 258
    .end local v17    # "t":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v17

    #@1a1
    .restart local v17    # "t":Ljava/util/MissingResourceException;
    goto/16 :goto_3

    #@1a3
    .line 232
    .end local v17    # "t":Ljava/util/MissingResourceException;
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    :catch_2
    move-exception v17

    #@1a4
    .restart local v17    # "t":Ljava/util/MissingResourceException;
    goto/16 :goto_2
.end method

.method public static final getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 331
    .local v4, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@7
    invoke-static {p0, v8}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@a
    move-result-object v8

    #@b
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    #@e
    move-result-object v5

    #@f
    .line 334
    .local v5, "locales":[Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v8, v5

    #@11
    if-ge v2, v8, :cond_2

    #@13
    .line 336
    :try_start_0
    aget-object v8, v5, v2

    #@15
    invoke-static {p0, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@18
    move-result-object v0

    #@19
    .line 338
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@1f
    .line 339
    .local v3, "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@22
    move-result-object v1

    #@23
    .line 340
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_1

    #@29
    .line 341
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/lang/String;

    #@2f
    .line 342
    .local v6, "s":Ljava/lang/String;
    const-string/jumbo v8, "default"

    #@32
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v8

    #@36
    if-nez v8, :cond_0

    #@38
    const-string/jumbo v8, "private-"

    #@3b
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3e
    move-result v8

    #@3f
    if-nez v8, :cond_0

    #@41
    .line 344
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_1

    #@45
    .line 347
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@46
    .line 334
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 353
    :cond_2
    const/4 v8, 0x0

    #@4a
    new-array v8, v8, [Ljava/lang/String;

    #@4c
    invoke-interface {v4, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4f
    move-result-object v8

    #@50
    check-cast v8, [Ljava/lang/String;

    #@52
    return-object v8
.end method

.method public static final getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;
    .locals 5
    .param p0, "ulocales"    # [Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 522
    new-instance v1, Ljava/util/ArrayList;

    #@2
    array-length v4, p0

    #@3
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 523
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    new-instance v3, Ljava/util/HashSet;

    #@8
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 524
    .local v3, "uniqueSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v4, p0

    #@d
    if-ge v0, v4, :cond_1

    #@f
    .line 525
    aget-object v4, p0, v0

    #@11
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@14
    move-result-object v2

    #@15
    .line 526
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 527
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 528
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@21
    .line 524
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 531
    .end local v2    # "loc":Ljava/util/Locale;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v4

    #@28
    new-array v4, v4, [Ljava/util/Locale;

    #@2a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, [Ljava/util/Locale;

    #@30
    return-object v4
.end method

.method private getNoFallback()Z
    .locals 1

    #@0
    .prologue
    .line 1313
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private getResDepth()I
    .locals 1

    #@0
    .prologue
    .line 966
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@8
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0
.end method

.method private static getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "num"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "start"    # I

    #@0
    .prologue
    const/16 v6, 0x2f

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 1007
    if-nez p1, :cond_0

    #@6
    .line 1008
    return-void

    #@7
    .line 1010
    :cond_0
    if-ne p1, v3, :cond_1

    #@9
    .line 1011
    aput-object p0, p2, p3

    #@b
    .line 1012
    return-void

    #@c
    .line 1014
    :cond_1
    const/4 v0, 0x0

    #@d
    .line 1016
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v1

    #@11
    .line 1017
    .local v1, "j":I
    sget-boolean v5, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@13
    if-nez v5, :cond_3

    #@15
    if-lt v1, v0, :cond_2

    #@17
    move v5, v3

    #@18
    :goto_1
    if-nez v5, :cond_3

    #@1a
    new-instance v3, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v3

    #@20
    :cond_2
    move v5, v4

    #@21
    goto :goto_1

    #@22
    .line 1018
    :cond_3
    add-int/lit8 v2, p3, 0x1

    #@24
    .end local p3    # "start":I
    .local v2, "start":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    aput-object v5, p2, p3

    #@2a
    .line 1019
    const/4 v5, 0x2

    #@2b
    if-ne p1, v5, :cond_6

    #@2d
    .line 1020
    sget-boolean v5, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@2f
    if-nez v5, :cond_5

    #@31
    add-int/lit8 v5, v1, 0x1

    #@33
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    #@36
    move-result v5

    #@37
    if-gez v5, :cond_4

    #@39
    :goto_2
    if-nez v3, :cond_5

    #@3b
    new-instance v3, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v3

    #@41
    :cond_4
    move v3, v4

    #@42
    goto :goto_2

    #@43
    .line 1021
    :cond_5
    add-int/lit8 v3, v1, 0x1

    #@45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    aput-object v3, p2, v2

    #@4b
    .line 1006
    return-void

    #@4c
    .line 1024
    :cond_6
    add-int/lit8 v0, v1, 0x1

    #@4e
    .line 1025
    add-int/lit8 p1, p1, -0x1

    #@50
    move p3, v2

    #@51
    .end local v2    # "start":I
    .restart local p3    # "start":I
    goto :goto_0
.end method

.method private getResPathKeys([Ljava/lang/String;I)V
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "depth"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 977
    move-object v0, p0

    #@3
    .line 978
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    if-lez p2, :cond_4

    #@5
    .line 979
    add-int/lit8 p2, p2, -0x1

    #@7
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    #@9
    aput-object v1, p1, p2

    #@b
    .line 980
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@d
    .line 981
    sget-boolean v1, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@f
    if-nez v1, :cond_0

    #@11
    if-nez p2, :cond_1

    #@13
    move v1, v2

    #@14
    :goto_0
    iget-object v4, v0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@16
    if-nez v4, :cond_2

    #@18
    move v4, v2

    #@19
    :goto_1
    if-ne v1, v4, :cond_3

    #@1b
    move v1, v2

    #@1c
    :goto_2
    if-nez v1, :cond_0

    #@1e
    new-instance v1, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v1

    #@24
    :cond_1
    move v1, v3

    #@25
    goto :goto_0

    #@26
    :cond_2
    move v4, v3

    #@27
    goto :goto_1

    #@28
    :cond_3
    move v1, v3

    #@29
    goto :goto_2

    #@2a
    .line 976
    :cond_4
    return-void
.end method

.method private static declared-synchronized instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    .locals 17
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@0
    .prologue
    const-class v14, Landroid/icu/impl/ICUResourceBundle;

    #@2
    monitor-enter v14

    #@3
    .line 1122
    :try_start_0
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@6
    move-result-object v5

    #@7
    .line 1123
    .local v5, "defaultLocale":Landroid/icu/util/ULocale;
    move-object/from16 v8, p1

    #@9
    .line 1124
    .local v8, "localeName":Ljava/lang/String;
    const/16 v13, 0x40

    #@b
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v13

    #@f
    if-ltz v13, :cond_0

    #@11
    .line 1125
    invoke-static/range {p1 .. p1}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    .line 1127
    :cond_0
    move-object/from16 v0, p0

    #@17
    invoke-static {v0, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 1128
    .local v6, "fullName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@1d
    invoke-static {v0, v6, v5}, Landroid/icu/impl/ICUResourceBundle;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@23
    .line 1137
    .local v3, "b":Landroid/icu/impl/ICUResourceBundle;
    const/16 v13, 0x2e

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    #@2a
    move-result v13

    #@2b
    const/4 v15, -0x1

    #@2c
    if-ne v13, v15, :cond_5

    #@2e
    const-string/jumbo v11, "root"

    #@31
    .line 1138
    .local v11, "rootLocale":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 1140
    .local v4, "defaultID":Ljava/lang/String;
    const-string/jumbo v13, ""

    #@38
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v13

    #@3c
    if-eqz v13, :cond_1

    #@3e
    .line 1141
    move-object v8, v11

    #@3f
    .line 1143
    :cond_1
    sget-boolean v13, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@41
    if-eqz v13, :cond_2

    #@43
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@45
    new-instance v15, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v16, "Creating "

    #@4d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v15

    #@51
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v15

    #@55
    const-string/jumbo v16, " currently b is "

    #@58
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v15

    #@5c
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v15

    #@60
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v15

    #@64
    invoke-virtual {v13, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@67
    .line 1144
    :cond_2
    if-nez v3, :cond_8

    #@69
    .line 1145
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, p2

    #@6d
    invoke-static {v0, v8, v1}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    #@70
    move-result-object v3

    #@71
    .line 1147
    sget-boolean v13, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@73
    if-eqz v13, :cond_3

    #@75
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@77
    new-instance v13, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v16, "The bundle created is: "

    #@7f
    move-object/from16 v0, v16

    #@81
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v13

    #@85
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v13

    #@89
    const-string/jumbo v16, " and openType="

    #@8c
    move-object/from16 v0, v16

    #@8e
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v13

    #@92
    move-object/from16 v0, p3

    #@94
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v13

    #@98
    const-string/jumbo v16, " and bundle.getNoFallback="

    #@9b
    move-object/from16 v0, v16

    #@9d
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v16

    #@a1
    if-eqz v3, :cond_6

    #@a3
    invoke-direct {v3}, Landroid/icu/impl/ICUResourceBundle;->getNoFallback()Z

    #@a6
    move-result v13

    #@a7
    :goto_1
    move-object/from16 v0, v16

    #@a9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v13

    #@ad
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v13

    #@b1
    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b4
    .line 1148
    :cond_3
    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@b6
    move-object/from16 v0, p3

    #@b8
    if-eq v0, v13, :cond_4

    #@ba
    if-eqz v3, :cond_7

    #@bc
    invoke-direct {v3}, Landroid/icu/impl/ICUResourceBundle;->getNoFallback()Z

    #@bf
    move-result v13

    #@c0
    if-eqz v13, :cond_7

    #@c2
    .line 1160
    :cond_4
    move-object/from16 v0, p2

    #@c4
    invoke-static {v0, v6, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c7
    move-result-object v13

    #@c8
    monitor-exit v14

    #@c9
    return-object v13

    #@ca
    .line 1137
    .end local v4    # "defaultID":Ljava/lang/String;
    .end local v11    # "rootLocale":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v11, ""

    #@cd
    .restart local v11    # "rootLocale":Ljava/lang/String;
    goto/16 :goto_0

    #@cf
    .line 1147
    .restart local v4    # "defaultID":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    #@d0
    goto :goto_1

    #@d1
    .line 1164
    :cond_7
    if-nez v3, :cond_c

    #@d3
    .line 1165
    const/16 v13, 0x5f

    #@d5
    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@d8
    move-result v7

    #@d9
    .line 1166
    .local v7, "i":I
    const/4 v13, -0x1

    #@da
    if-eq v7, v13, :cond_9

    #@dc
    .line 1167
    const/4 v13, 0x0

    #@dd
    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e0
    move-result-object v12

    #@e1
    .line 1168
    .local v12, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e3
    move-object/from16 v1, p2

    #@e5
    move-object/from16 v2, p3

    #@e7
    invoke-static {v0, v12, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@ea
    move-result-object v3

    #@eb
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@ed
    .line 1169
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v3, :cond_8

    #@ef
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@f2
    move-result-object v13

    #@f3
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@f6
    move-result-object v13

    #@f7
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result v13

    #@fb
    if-eqz v13, :cond_8

    #@fd
    .line 1170
    const/4 v13, 0x1

    #@fe
    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@101
    .end local v7    # "i":I
    .end local v12    # "temp":Ljava/lang/String;
    :cond_8
    :goto_2
    monitor-exit v14

    #@102
    .line 1208
    return-object v3

    #@103
    .line 1173
    .restart local v7    # "i":I
    :cond_9
    :try_start_2
    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@105
    move-object/from16 v0, p3

    #@107
    if-ne v0, v13, :cond_a

    #@109
    .line 1174
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@10c
    move-result-object v13

    #@10d
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@110
    move-result v13

    #@111
    if-eqz v13, :cond_b

    #@113
    .line 1179
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@116
    move-result v13

    #@117
    if-eqz v13, :cond_8

    #@119
    .line 1180
    move-object/from16 v0, p0

    #@11b
    move-object/from16 v1, p2

    #@11d
    invoke-static {v0, v11, v1}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    #@120
    move-result-object v3

    #@121
    .line 1181
    if-eqz v3, :cond_8

    #@123
    .line 1182
    const/4 v13, 0x2

    #@124
    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@127
    goto :goto_2

    #@128
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "defaultID":Ljava/lang/String;
    .end local v5    # "defaultLocale":Landroid/icu/util/ULocale;
    .end local v6    # "fullName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "localeName":Ljava/lang/String;
    .end local v11    # "rootLocale":Ljava/lang/String;
    :catchall_0
    move-exception v13

    #@129
    monitor-exit v14

    #@12a
    throw v13

    #@12b
    .line 1175
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    .restart local v4    # "defaultID":Ljava/lang/String;
    .restart local v5    # "defaultLocale":Landroid/icu/util/ULocale;
    .restart local v6    # "fullName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "localeName":Ljava/lang/String;
    .restart local v11    # "rootLocale":Ljava/lang/String;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    #@12d
    move-object/from16 v1, p2

    #@12f
    move-object/from16 v2, p3

    #@131
    invoke-static {v0, v4, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@134
    move-result-object v3

    #@135
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@137
    .line 1176
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v3, :cond_8

    #@139
    .line 1177
    const/4 v13, 0x3

    #@13a
    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@13d
    goto :goto_2

    #@13e
    .line 1187
    .end local v7    # "i":I
    :cond_c
    const/4 v9, 0x0

    #@13f
    .line 1188
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@142
    move-result-object v8

    #@143
    .line 1189
    const/16 v13, 0x5f

    #@145
    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@148
    move-result v7

    #@149
    .line 1191
    .restart local v7    # "i":I
    move-object/from16 v0, p2

    #@14b
    invoke-static {v0, v6, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@14e
    move-result-object v3

    #@14f
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@151
    .line 1194
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    move-object v0, v3

    #@152
    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@154
    move-object v13, v0

    #@155
    const-string/jumbo v15, "%%Parent"

    #@158
    invoke-virtual {v13, v15}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    #@15b
    move-result-object v10

    #@15c
    .line 1195
    .local v10, "parentLocaleName":Ljava/lang/String;
    if-eqz v10, :cond_e

    #@15e
    .line 1196
    move-object/from16 v0, p0

    #@160
    move-object/from16 v1, p2

    #@162
    move-object/from16 v2, p3

    #@164
    invoke-static {v0, v10, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@167
    move-result-object v9

    #@168
    .line 1203
    .end local v9    # "parent":Landroid/icu/util/UResourceBundle;
    :cond_d
    :goto_3
    invoke-virtual {v3, v9}, Landroid/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z

    #@16b
    move-result v13

    #@16c
    if-nez v13, :cond_8

    #@16e
    .line 1204
    invoke-virtual {v3, v9}, Landroid/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    #@171
    goto :goto_2

    #@172
    .line 1197
    .restart local v9    # "parent":Landroid/icu/util/UResourceBundle;
    :cond_e
    const/4 v13, -0x1

    #@173
    if-eq v7, v13, :cond_f

    #@175
    .line 1198
    const/4 v13, 0x0

    #@176
    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@179
    move-result-object v13

    #@17a
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, p2

    #@17e
    move-object/from16 v2, p3

    #@180
    invoke-static {v0, v13, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@183
    move-result-object v9

    #@184
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    goto :goto_3

    #@185
    .line 1199
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    :cond_f
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@188
    move-result v13

    #@189
    if-nez v13, :cond_d

    #@18b
    .line 1200
    const/4 v13, 0x1

    #@18c
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, p2

    #@190
    invoke-static {v0, v11, v1, v13}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@193
    move-result-object v9

    #@194
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    goto :goto_3
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    #@0
    .prologue
    .line 1094
    if-eqz p3, :cond_0

    #@2
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@4
    .line 1093
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1094
    :cond_0
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@b
    goto :goto_0
.end method


# virtual methods
.method public at(I)Landroid/icu/impl/ICUResourceBundle;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 393
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@7
    return-object v0
.end method

.method public at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 398
    instance-of v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 399
    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@b
    return-object v0

    #@c
    .line 401
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1031
    if-ne p0, p1, :cond_0

    #@3
    .line 1032
    return v3

    #@4
    .line 1034
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundle;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 1035
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 1036
    .local v0, "o":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1037
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 1036
    if-eqz v1, :cond_1

    #@27
    .line 1038
    return v3

    #@28
    .line 1041
    .end local v0    # "o":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    const/4 v1, 0x0

    #@29
    return v1
.end method

.method public findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 424
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(I)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@6
    return-object v0
.end method

.method public findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@6
    return-object v0
.end method

.method public bridge synthetic findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 5
    .param p1, "aKey"    # Ljava/lang/String;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 1211
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@6
    .line 1212
    .local v1, "obj":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_1

    #@8
    .line 1213
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v1

    #@c
    .end local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 1214
    .restart local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_0

    #@10
    .line 1216
    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v1

    #@14
    .end local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@16
    .line 1218
    .restart local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    if-nez v1, :cond_1

    #@18
    .line 1219
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1220
    .local v0, "fullName":Ljava/lang/String;
    new-instance v2, Ljava/util/MissingResourceException;

    #@26
    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Can\'t find resource for bundle "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, ", key "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 1222
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    .line 1220
    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 1225
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    check-cast p3, Landroid/icu/impl/ICUResourceBundle;

    #@53
    .end local p3    # "requested":Landroid/icu/util/UResourceBundle;
    invoke-virtual {p3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    #@5a
    .line 1226
    return-object v1
.end method

.method protected getBaseName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1305
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLoadingStatus()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@2
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 542
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1285
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getParent()Landroid/icu/util/UResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 1297
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@2
    check-cast v0, Landroid/icu/util/UResourceBundle;

    #@4
    return-object v0
.end method

.method public getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 430
    move-object v0, p0

    #@2
    .line 431
    .local v0, "actualBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 433
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@8
    .line 434
    new-instance v2, Ljava/util/MissingResourceException;

    #@a
    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Can\'t find resource for bundle "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 436
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 436
    const-string/jumbo v4, ", key "

    #@25
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 436
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@2c
    move-result v4

    #@2d
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 437
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 434
    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 440
    :cond_0
    const-string/jumbo v2, "\u2205\u2205\u2205"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_1

    #@46
    .line 441
    new-instance v2, Ljava/util/MissingResourceException;

    #@48
    const-string/jumbo v3, "Encountered NO_INHERITANCE_MARKER"

    #@4b
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 443
    :cond_1
    return-object v1
.end method

.method public final getTopLevelKeySet()Ljava/util/Set;
    .locals 1
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
    .line 1485
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    #@4
    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 1293
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    #@4
    return-object v0
.end method

.method public getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 373
    move-object v0, p0

    #@2
    .line 376
    .local v0, "actualBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@5
    move-result-object v1

    #@6
    .line 378
    .local v1, "result":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_0

    #@8
    .line 379
    new-instance v2, Ljava/util/MissingResourceException;

    #@a
    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Can\'t find resource for bundle "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 381
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 381
    const-string/jumbo v4, ", key "

    #@25
    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 381
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@2c
    move-result v4

    #@2d
    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 382
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 379
    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 385
    :cond_0
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_1

    #@43
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, "\u2205\u2205\u2205"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_1

    #@50
    .line 386
    new-instance v2, Ljava/util/MissingResourceException;

    #@52
    const-string/jumbo v3, "Encountered NO_INHERITANCE_MARKER"

    #@55
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 389
    :cond_1
    return-object v1
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1503
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->handleKeySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1045
    sget-boolean v0, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 1046
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method protected isTopLevelResource()Z
    .locals 1

    #@0
    .prologue
    .line 1507
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setLoadingStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    #@0
    .prologue
    .line 119
    iput p1, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@2
    .line 118
    return-void
.end method

.method public setLoadingStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestedLocale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 134
    .local v0, "locale":Ljava/lang/String;
    const-string/jumbo v1, "root"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 135
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@11
    .line 132
    :goto_0
    return-void

    #@12
    .line 136
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 137
    const/4 v1, 0x4

    #@19
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@1c
    goto :goto_0

    #@1d
    .line 139
    :cond_1
    const/4 v1, 0x1

    #@1e
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@21
    goto :goto_0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    .line 1301
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@2
    .line 1300
    return-void
.end method

.method public final setTopLevelKeySet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1493
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iput-object p1, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    #@4
    .line 1492
    return-void
.end method

.class public Landroid/icu/impl/ICUResourceBundle;
.super Landroid/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundle$1;,
        Landroid/icu/impl/ICUResourceBundle$AvailEntry;,
        Landroid/icu/impl/ICUResourceBundle$OpenType;,
        Landroid/icu/impl/ICUResourceBundle$WholeBundle;
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

.field public static final ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/brkitr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt56b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/coll"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/curr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

.field protected static final ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/rbnf"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/region"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"

.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/translit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/zone"
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
    .line 115
    const-class v0, Landroid/icu/impl/ICUData;

    #@d
    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@13
    .line 648
    const-string/jumbo v0, "localedata"

    #@16
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@1c
    .line 882
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$1;

    #@1e
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$1;-><init>()V

    #@21
    .line 881
    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    #@23
    .line 37
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
    .line 1436
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    #@3
    .line 124
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@6
    .line 1437
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@8
    .line 1436
    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1440
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    #@3
    .line 124
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@6
    .line 1441
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    #@8
    .line 1442
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@a
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@c
    move-object v0, p1

    #@d
    .line 1443
    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    #@f
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@11
    .line 1444
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@13
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@15
    .line 1440
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
    .line 703
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$2;

    #@2
    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    #@5
    .line 702
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 701
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
    .line 683
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
    .line 684
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
    .line 692
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@16
    move-result-object v2

    #@17
    .line 693
    .local v2, "iter":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    #@1a
    .line 694
    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 695
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 696
    .local v3, "locstr":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 685
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "iter":Landroid/icu/util/UResourceBundleIterator;
    .end local v3    # "locstr":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2d
    .line 686
    .local v1, "e":Ljava/util/MissingResourceException;
    sget-boolean v4, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 687
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
    .line 688
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    #@61
    .line 690
    :cond_0
    return-void

    #@62
    .line 680
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
    .line 739
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
    .line 740
    .local v3, "s":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    #@1a
    .line 741
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
    .line 743
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
    .line 744
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
    .line 745
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 750
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "s":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@41
    .line 737
    :cond_1
    :goto_1
    return-void

    #@42
    .line 748
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
    .line 1082
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1083
    return v3

    #@8
    .line 1085
    :cond_0
    const/4 v1, 0x1

    #@9
    .line 1086
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
    .line 1087
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    const/16 v3, 0x2f

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 1088
    add-int/lit8 v1, v1, 0x1

    #@1a
    .line 1086
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1091
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
    .line 1375
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    move-result-object v0

    #@5
    .line 1376
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    if-nez v0, :cond_0

    #@7
    .line 1378
    return-object v1

    #@8
    .line 1380
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
    .line 756
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
    .line 757
    .local v0, "bn":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    #@c
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@f
    .line 758
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "android.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    #@12
    const-string/jumbo v7, "false"

    #@15
    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 759
    .local v5, "skipScan":Ljava/lang/String;
    const-string/jumbo v6, "true"

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v6

    #@20
    if-nez v6, :cond_6

    #@22
    .line 761
    invoke-static {v0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@25
    .line 762
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    #@28
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_0

    #@2e
    .line 764
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@31
    move-result v6

    #@32
    const-string/jumbo v7, "android/icu/impl/data/icudt56b"

    #@35
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    if-ne v6, v7, :cond_4

    #@3b
    .line 765
    const-string/jumbo v1, ""

    #@3e
    .line 771
    :goto_1
    if-eqz v1, :cond_0

    #@40
    .line 772
    const-string/jumbo v6, ".res"

    #@43
    invoke-static {v1, v6, v4}, Landroid/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@46
    .line 775
    :cond_0
    const-string/jumbo v6, "res_index"

    #@49
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@4c
    .line 777
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v2

    #@50
    .line 778
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_6

    #@56
    .line 779
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Ljava/lang/String;

    #@5c
    .line 780
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
    .line 782
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@75
    goto :goto_2

    #@76
    .line 756
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
    .line 766
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "skipScan":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

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
    .line 767
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

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
    .line 769
    .end local v1    # "folder":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    #@a9
    .local v1, "folder":Ljava/lang/String;
    goto :goto_1

    #@aa
    .line 787
    .end local v1    # "folder":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@ad
    move-result v6

    #@ae
    if-eqz v6, :cond_8

    #@b0
    .line 788
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
    .line 789
    :cond_7
    invoke-static {v0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@d0
    .line 791
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@d3
    move-result v6

    #@d4
    if-eqz v6, :cond_9

    #@d6
    .line 793
    invoke-static {p0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@d9
    .line 796
    :cond_9
    const-string/jumbo v6, "root"

    #@dc
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@df
    .line 797
    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@e1
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e8
    .line 798
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
    .line 802
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 803
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    #@8
    .line 804
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
    .line 657
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
    .line 659
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
    .line 660
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@16
    move-result v4

    #@17
    .line 661
    .local v4, "length":I
    const/4 v1, 0x0

    #@18
    .line 662
    .local v1, "i":I
    new-array v5, v4, [Landroid/icu/util/ULocale;

    #@1a
    .line 663
    .local v5, "locales":[Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@1d
    move-result-object v3

    #@1e
    .line 664
    .local v3, "iter":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    #@21
    .line 665
    :goto_0
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_1

    #@27
    .line 666
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 667
    .local v6, "locstr":Ljava/lang/String;
    const-string/jumbo v7, "root"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_0

    #@38
    .line 668
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
    .line 670
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
    .line 673
    .end local v6    # "locstr":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@4c
    .line 674
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    return-object v5
.end method

.method private static final findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "actualBundle"    # Landroid/icu/util/UResourceBundle;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 899
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 900
    const/4 v4, 0x0

    #@8
    return-object v4

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 902
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@c
    .line 905
    .local v0, "base":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@f
    move-result v1

    #@10
    .line 906
    .local v1, "depth":I
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@13
    move-result v3

    #@14
    .line 907
    .local v3, "numPathKeys":I
    sget-boolean v5, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    #@16
    if-nez v5, :cond_2

    #@18
    if-lez v3, :cond_1

    #@1a
    const/4 v4, 0x1

    #@1b
    :cond_1
    if-nez v4, :cond_2

    #@1d
    new-instance v4, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v4

    #@23
    .line 908
    :cond_2
    add-int v4, v1, v3

    #@25
    new-array v2, v4, [Ljava/lang/String;

    #@27
    .line 909
    .local v2, "keys":[Ljava/lang/String;
    invoke-static {p0, v3, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@2a
    .line 910
    invoke-static {v2, v1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@2d
    move-result-object v4

    #@2e
    return-object v4
.end method

.method private static final findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 8
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "depth"    # I
    .param p2, "base"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 916
    if-nez p3, :cond_0

    #@3
    .line 917
    move-object p3, p2

    #@4
    .line 922
    :cond_0
    :goto_0
    add-int/lit8 v1, p1, 0x1

    #@6
    .end local p1    # "depth":I
    .local v1, "depth":I
    aget-object v5, p0, p1

    #@8
    .line 923
    .local v5, "subKey":Ljava/lang/String;
    invoke-virtual {p2, v5, v7, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 924
    .local v4, "sub":Landroid/icu/impl/ICUResourceBundle;
    if-nez v4, :cond_1

    #@10
    .line 925
    add-int/lit8 p1, v1, -0x1

    #@12
    .line 936
    .end local v1    # "depth":I
    .restart local p1    # "depth":I
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@18
    .line 937
    .local v3, "nextBase":Landroid/icu/impl/ICUResourceBundle;
    if-nez v3, :cond_3

    #@1a
    .line 938
    return-object v7

    #@1b
    .line 928
    .end local v3    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    .end local p1    # "depth":I
    .restart local v1    # "depth":I
    :cond_1
    array-length v6, p0

    #@1c
    if-ne v1, v6, :cond_2

    #@1e
    .line 930
    check-cast p3, Landroid/icu/impl/ICUResourceBundle;

    #@20
    .end local p3    # "requested":Landroid/icu/util/UResourceBundle;
    invoke-virtual {p3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    #@27
    .line 931
    return-object v4

    #@28
    .line 933
    .restart local p3    # "requested":Landroid/icu/util/UResourceBundle;
    :cond_2
    move-object p2, v4

    #@29
    move p1, v1

    #@2a
    .end local v1    # "depth":I
    .restart local p1    # "depth":I
    goto :goto_0

    #@2b
    .line 944
    .restart local v3    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    :cond_3
    invoke-direct {p2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@2e
    move-result v0

    #@2f
    .line 945
    .local v0, "baseDepth":I
    if-eq p1, v0, :cond_4

    #@31
    .line 946
    array-length v6, p0

    #@32
    sub-int/2addr v6, p1

    #@33
    add-int/2addr v6, v0

    #@34
    new-array v2, v6, [Ljava/lang/String;

    #@36
    .line 947
    .local v2, "newKeys":[Ljava/lang/String;
    array-length v6, p0

    #@37
    sub-int/2addr v6, p1

    #@38
    invoke-static {p0, p1, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 948
    move-object p0, v2

    #@3c
    .line 950
    .end local v2    # "newKeys":[Ljava/lang/String;
    :cond_4
    invoke-direct {p2, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@3f
    .line 951
    move-object p2, v3

    #@40
    .line 952
    const/4 p1, 0x0

    #@41
    goto :goto_0
.end method

.method private static final findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "actualBundle"    # Landroid/icu/util/UResourceBundle;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    .line 962
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 963
    const/4 v6, 0x0

    #@7
    return-object v6

    #@8
    .line 965
    :cond_0
    move-object/from16 v0, p1

    #@a
    instance-of v6, v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    #@c
    if-nez v6, :cond_1

    #@e
    .line 966
    const/4 v6, 0x0

    #@f
    return-object v6

    #@10
    .line 968
    :cond_1
    if-nez p2, :cond_2

    #@12
    .line 969
    move-object/from16 p2, p1

    #@14
    :cond_2
    move-object/from16 v1, p1

    #@16
    .line 972
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@18
    .line 973
    .local v1, "base":Landroid/icu/impl/ICUResourceBundle;
    iget-object v6, v1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@1a
    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@1c
    .line 974
    .local v13, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    const/4 v5, -0x1

    #@1d
    .line 978
    .local v5, "res":I
    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@20
    move-result v8

    #@21
    .line 979
    .local v8, "baseDepth":I
    move v3, v8

    #@22
    .line 980
    .local v3, "depth":I
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@25
    move-result v12

    #@26
    .line 981
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
    .line 982
    :cond_4
    add-int v6, v8, v12

    #@39
    new-array v2, v6, [Ljava/lang/String;

    #@3b
    .line 983
    .local v2, "keys":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@3d
    invoke-static {v0, v12, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@40
    move v9, v3

    #@41
    .line 988
    .end local v3    # "depth":I
    .local v9, "depth":I
    :goto_1
    const/4 v6, -0x1

    #@42
    if-ne v5, v6, :cond_7

    #@44
    .line 989
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@47
    move-result v17

    #@48
    .line 990
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
    .line 991
    check-cast v6, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    #@56
    iget-object v14, v6, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@58
    .line 1006
    .local v14, "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :goto_2
    add-int/lit8 v3, v9, 0x1

    #@5a
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    aget-object v4, v2, v9

    #@5c
    .line 1007
    .local v4, "subKey":Ljava/lang/String;
    invoke-virtual {v14, v13, v4}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    #@5f
    move-result v5

    #@60
    .line 1008
    const/4 v6, -0x1

    #@61
    if-ne v5, v6, :cond_a

    #@63
    .line 1009
    add-int/lit8 v3, v3, -0x1

    #@65
    .line 1049
    .end local v4    # "subKey":Ljava/lang/String;
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :goto_3
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@68
    move-result-object v11

    #@69
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@6b
    .line 1050
    .local v11, "nextBase":Landroid/icu/impl/ICUResourceBundle;
    if-nez v11, :cond_10

    #@6d
    .line 1051
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
    .line 993
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    goto :goto_3

    #@71
    .line 996
    .end local v3    # "depth":I
    .end local v17    # "type":I
    .restart local v9    # "depth":I
    :cond_7
    invoke-static {v5}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@74
    move-result v17

    #@75
    .line 997
    .restart local v17    # "type":I
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_8

    #@7b
    .line 998
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@7e
    move-result-object v14

    #@7f
    .restart local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    goto :goto_2

    #@80
    .line 999
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_8
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    #@83
    move-result v6

    #@84
    if-eqz v6, :cond_9

    #@86
    .line 1000
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@89
    move-result-object v14

    #@8a
    .restart local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    goto :goto_2

    #@8b
    .line 1002
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_9
    const/4 v5, -0x1

    #@8c
    move v3, v9

    #@8d
    .line 1003
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    goto :goto_3

    #@8e
    .line 1013
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
    .line 1014
    invoke-direct {v1, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@98
    .line 1015
    const/4 v6, 0x0

    #@99
    move-object/from16 v7, p2

    #@9b
    invoke-static/range {v1 .. v7}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@9e
    move-result-object v16

    #@9f
    .line 1019
    :goto_4
    array-length v6, v2

    #@a0
    if-ne v3, v6, :cond_e

    #@a2
    .line 1021
    if-eqz v16, :cond_c

    #@a4
    .line 1022
    invoke-virtual/range {v16 .. v16}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    return-object v6

    #@a9
    .line 1017
    :cond_b
    const/16 v16, 0x0

    #@ab
    .local v16, "sub":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_4

    #@ac
    .line 1024
    .end local v16    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_c
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@af
    move-result-object v15

    #@b0
    .line 1025
    .local v15, "s":Ljava/lang/String;
    if-nez v15, :cond_d

    #@b2
    .line 1026
    new-instance v6, Landroid/icu/util/UResourceTypeMismatchException;

    #@b4
    const-string/jumbo v7, ""

    #@b7
    invoke-direct {v6, v7}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v6

    #@bb
    .line 1028
    :cond_d
    return-object v15

    #@bc
    .line 1031
    .end local v15    # "s":Ljava/lang/String;
    :cond_e
    if-eqz v16, :cond_f

    #@be
    .line 1032
    move-object/from16 v1, v16

    #@c0
    .line 1033
    move-object/from16 v0, v16

    #@c2
    iget-object v6, v0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@c4
    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@c6
    .line 1034
    const/4 v5, -0x1

    #@c7
    .line 1039
    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@ca
    move-result v8

    #@cb
    .line 1040
    if-eq v3, v8, :cond_f

    #@cd
    .line 1041
    array-length v6, v2

    #@ce
    sub-int/2addr v6, v3

    #@cf
    add-int/2addr v6, v8

    #@d0
    new-array v10, v6, [Ljava/lang/String;

    #@d2
    .line 1042
    .local v10, "newKeys":[Ljava/lang/String;
    array-length v6, v2

    #@d3
    sub-int/2addr v6, v3

    #@d4
    invoke-static {v2, v3, v10, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@d7
    .line 1043
    move-object v2, v10

    #@d8
    .line 1044
    move v3, v8

    #@d9
    .end local v4    # "subKey":Ljava/lang/String;
    .end local v10    # "newKeys":[Ljava/lang/String;
    .end local v14    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_f
    :goto_5
    move v9, v3

    #@da
    .end local v3    # "depth":I
    .restart local v9    # "depth":I
    goto/16 :goto_1

    #@dc
    .line 1054
    .end local v9    # "depth":I
    .restart local v3    # "depth":I
    .restart local v11    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    :cond_10
    invoke-direct {v1, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@df
    .line 1055
    move-object v1, v11

    #@e0
    .line 1056
    iget-object v6, v11, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@e2
    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@e4
    .line 1057
    const/4 v8, 0x0

    #@e5
    const/4 v3, 0x0

    #@e6
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
    .line 1478
    .local p5, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@4
    .line 1479
    .local v13, "wholeBundle":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    iget-object v8, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    #@6
    .line 1480
    .local v8, "loaderToUse":Ljava/lang/ClassLoader;
    const/4 v9, 0x0

    #@7
    .local v9, "locale":Ljava/lang/String;
    const/4 v7, 0x0

    #@8
    .line 1482
    .local v7, "keyPath":Ljava/lang/String;
    iget-object v14, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@a
    move/from16 v0, p4

    #@c
    invoke-virtual {v14, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    #@f
    move-result-object v11

    #@10
    .line 1483
    .local v11, "rpath":Ljava/lang/String;
    if-nez p5, :cond_0

    #@12
    .line 1484
    new-instance p5, Ljava/util/HashMap;

    #@14
    .end local p5    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    #@17
    .line 1486
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
    .line 1487
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@21
    .line 1488
    const-string/jumbo v15, "Circular references in the resource bundles"

    #@24
    .line 1487
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v14

    #@28
    .line 1490
    :cond_1
    const-string/jumbo v14, ""

    #@2b
    move-object/from16 v0, p5

    #@2d
    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 1491
    const/16 v14, 0x2f

    #@32
    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v14

    #@36
    if-nez v14, :cond_5

    #@38
    .line 1492
    const/16 v14, 0x2f

    #@3a
    const/4 v15, 0x1

    #@3b
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    #@3e
    move-result v4

    #@3f
    .line 1493
    .local v4, "i":I
    const/16 v14, 0x2f

    #@41
    add-int/lit8 v15, v4, 0x1

    #@43
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    #@46
    move-result v6

    #@47
    .line 1494
    .local v6, "j":I
    const/4 v14, 0x1

    #@48
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 1495
    .local v3, "bundleName":Ljava/lang/String;
    if-gez v6, :cond_3

    #@4e
    .line 1496
    add-int/lit8 v14, v4, 0x1

    #@50
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    .line 1502
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
    .line 1503
    const-string/jumbo v3, "android/icu/impl/data/icudt56b"

    #@60
    .line 1504
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@62
    .line 1523
    .end local v6    # "j":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    #@63
    .line 1524
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v12, 0x0

    #@64
    .line 1525
    .local v12, "sub":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v14, "LOCALE"

    #@67
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v14

    #@6b
    if-eqz v14, :cond_9

    #@6d
    .line 1526
    iget-object v3, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@6f
    .line 1527
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
    .line 1530
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@84
    .line 1531
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    iget-object v14, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@86
    if-eqz v14, :cond_7

    #@88
    .line 1532
    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@8a
    goto :goto_2

    #@8b
    .line 1498
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
    .line 1499
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
    .line 1505
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
    .line 1506
    const/16 v14, 0x2d

    #@a8
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    #@ab
    move-result v5

    #@ac
    .line 1507
    .local v5, "idx":I
    const/4 v14, -0x1

    #@ad
    if-le v5, v14, :cond_2

    #@af
    .line 1508
    new-instance v14, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v15, "android/icu/impl/data/icudt56b/"

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
    .line 1509
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@d1
    goto :goto_1

    #@d2
    .line 1514
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
    .line 1515
    .restart local v4    # "i":I
    const/4 v14, -0x1

    #@d9
    if-eq v4, v14, :cond_6

    #@db
    .line 1516
    const/4 v14, 0x0

    #@dc
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@df
    move-result-object v9

    #@e0
    .line 1517
    .local v9, "locale":Ljava/lang/String;
    add-int/lit8 v14, v4, 0x1

    #@e2
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    .line 1521
    .end local v7    # "keyPath":Ljava/lang/String;
    :goto_3
    iget-object v3, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@e8
    .restart local v3    # "bundleName":Ljava/lang/String;
    goto/16 :goto_1

    #@ea
    .line 1519
    .end local v3    # "bundleName":Ljava/lang/String;
    .restart local v7    # "keyPath":Ljava/lang/String;
    .local v9, "locale":Ljava/lang/String;
    :cond_6
    move-object v9, v11

    #@eb
    .local v9, "locale":Ljava/lang/String;
    goto :goto_3

    #@ec
    .line 1534
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
    .line 1568
    .end local v7    # "keyPath":Ljava/lang/String;
    .end local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_8
    if-nez v12, :cond_e

    #@f3
    .line 1569
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
    .line 1536
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_9
    if-nez v9, :cond_b

    #@105
    .line 1538
    const-string/jumbo v14, ""

    #@108
    .line 1539
    const/4 v15, 0x0

    #@109
    .line 1538
    invoke-static {v3, v14, v8, v15}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@10c
    move-result-object v2

    #@10d
    .end local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@10f
    .line 1546
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_4
    if-eqz v7, :cond_c

    #@111
    .line 1547
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@114
    move-result v10

    #@115
    .line 1548
    .local v10, "numKeys":I
    if-lez v10, :cond_a

    #@117
    .line 1549
    new-array v0, v10, [Ljava/lang/String;

    #@119
    move-object/from16 p1, v0

    #@11b
    .line 1550
    const/4 v14, 0x0

    #@11c
    move-object/from16 v0, p1

    #@11e
    invoke-static {v7, v10, v0, v14}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@121
    .line 1561
    :cond_a
    :goto_5
    if-lez v10, :cond_8

    #@123
    .line 1562
    move-object v12, v2

    #@124
    .line 1563
    .local v12, "sub":Landroid/icu/impl/ICUResourceBundle;
    const/4 v4, 0x0

    #@125
    :goto_6
    if-eqz v12, :cond_8

    #@127
    if-ge v4, v10, :cond_8

    #@129
    .line 1564
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
    .line 1563
    .restart local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v4, v4, 0x1

    #@137
    goto :goto_6

    #@138
    .line 1542
    .end local v10    # "numKeys":I
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    .local v12, "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_b
    const/4 v14, 0x0

    #@139
    .line 1541
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
    .line 1552
    :cond_c
    if-eqz p1, :cond_d

    #@142
    .line 1553
    move/from16 v10, p2

    #@144
    .restart local v10    # "numKeys":I
    goto :goto_5

    #@145
    .line 1555
    .end local v10    # "numKeys":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@148
    move-result p2

    #@149
    .line 1556
    add-int/lit8 v10, p2, 0x1

    #@14b
    .line 1557
    .restart local v10    # "numKeys":I
    new-array v0, v10, [Ljava/lang/String;

    #@14d
    move-object/from16 p1, v0

    #@14f
    .line 1558
    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@152
    .line 1559
    aput-object p3, p1, p2

    #@154
    goto :goto_5

    #@155
    .line 1576
    .end local v10    # "numKeys":I
    .end local v12    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_e
    return-object v12
.end method

.method private getAllContainerItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V
    .locals 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "readerValue"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .param p3, "arraySink"    # Landroid/icu/impl/UResource$ArraySink;
    .param p4, "tableSink"    # Landroid/icu/impl/UResource$TableSink;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 509
    if-eqz p3, :cond_2

    #@4
    const/16 v1, 0x8

    #@6
    .line 510
    .local v1, "expectedType":I
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@9
    move-result v5

    #@a
    if-ne v5, v1, :cond_0

    #@c
    .line 511
    if-eqz p3, :cond_3

    #@e
    move-object v5, p0

    #@f
    .line 512
    check-cast v5, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;

    #@11
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    #@14
    .line 517
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 520
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@1a
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@1c
    .line 522
    .local v2, "parentBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@1f
    move-result v0

    #@20
    .line 523
    .local v0, "depth":I
    if-nez v0, :cond_4

    #@22
    .line 524
    move-object v4, v2

    #@23
    .line 532
    .local v4, "rb":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    if-eqz v4, :cond_1

    #@25
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@28
    move-result v5

    #@29
    if-ne v5, v1, :cond_1

    #@2b
    .line 533
    invoke-direct {v4, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    #@2e
    .line 498
    .end local v0    # "depth":I
    .end local v2    # "parentBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    return-void

    #@2f
    .line 509
    .end local v1    # "expectedType":I
    :cond_2
    const/4 v1, 0x2

    #@30
    .restart local v1    # "expectedType":I
    goto :goto_0

    #@31
    :cond_3
    move-object v5, p0

    #@32
    .line 514
    check-cast v5, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@34
    invoke-virtual {v5, p1, p2, p4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    #@37
    goto :goto_1

    #@38
    .line 528
    .restart local v0    # "depth":I
    .restart local v2    # "parentBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_4
    new-array v3, v0, [Ljava/lang/String;

    #@3a
    .line 529
    .local v3, "pathKeys":[Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    #@3d
    .line 530
    invoke-static {v3, v7, v2, v6}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@40
    move-result-object v4

    #@41
    .restart local v4    # "rb":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_2
.end method

.method private getAllContainerItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "arraySink"    # Landroid/icu/impl/UResource$ArraySink;
    .param p3, "tableSink"    # Landroid/icu/impl/UResource$TableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 469
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    #@4
    move-result v3

    #@5
    .line 471
    .local v3, "numPathKeys":I
    if-nez v3, :cond_1

    #@7
    .line 472
    move-object v5, p0

    #@8
    .line 486
    .local v5, "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    if-eqz p2, :cond_2

    #@a
    const/16 v1, 0x8

    #@c
    .line 487
    .local v1, "expectedType":I
    :goto_0
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@f
    move-result v7

    #@10
    if-eq v7, v1, :cond_3

    #@12
    .line 488
    new-instance v7, Landroid/icu/util/UResourceTypeMismatchException;

    #@14
    const-string/jumbo v8, ""

    #@17
    invoke-direct {v7, v8}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v7

    #@1b
    .line 475
    .end local v1    # "expectedType":I
    .end local v5    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    #@1e
    move-result v0

    #@1f
    .line 476
    .local v0, "depth":I
    add-int v7, v0, v3

    #@21
    new-array v4, v7, [Ljava/lang/String;

    #@23
    .line 477
    .local v4, "pathKeys":[Ljava/lang/String;
    invoke-static {p1, v3, v4, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    #@26
    .line 478
    invoke-static {v4, v0, p0, v8}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@29
    move-result-object v5

    #@2a
    .line 479
    .restart local v5    # "rb":Landroid/icu/impl/ICUResourceBundle;
    if-nez v5, :cond_0

    #@2c
    .line 480
    new-instance v7, Ljava/util/MissingResourceException;

    #@2e
    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v9, "Can\'t find resource for bundle "

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    .line 482
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 481
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    .line 482
    const-string/jumbo v9, ", key "

    #@49
    .line 481
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    .line 482
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@50
    move-result v9

    #@51
    .line 481
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    .line 483
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    .line 480
    invoke-direct {v7, v8, p1, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@60
    throw v7

    #@61
    .line 486
    .end local v0    # "depth":I
    .end local v4    # "pathKeys":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    #@62
    .restart local v1    # "expectedType":I
    goto :goto_0

    #@63
    .line 491
    :cond_3
    new-instance v2, Landroid/icu/impl/UResource$Key;

    #@65
    invoke-direct {v2}, Landroid/icu/impl/UResource$Key;-><init>()V

    #@68
    .line 492
    .local v2, "key":Landroid/icu/impl/UResource$Key;
    new-instance v6, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    #@6a
    invoke-direct {v6}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    #@6d
    .line 493
    .local v6, "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    invoke-direct {v5, v2, v6, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    #@70
    .line 466
    return-void
.end method

.method private static getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 894
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
    .line 571
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

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
    .line 545
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
    .line 603
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

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
    .line 595
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
    .line 587
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

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
    .line 579
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
    .line 1419
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    #@3
    move-result v1

    #@4
    .line 1420
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
    .line 1421
    new-instance v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@10
    invoke-direct {v3, p1, p2, p3, p0}, Landroid/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V

    #@13
    .line 1422
    .local v3, "wb":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    new-instance v2, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@15
    invoke-direct {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V

    #@18
    .line 1426
    .local v2, "rootTable":Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    const-string/jumbo v4, "%%ALIAS"

    #@1b
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 1427
    .local v0, "aliasString":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@21
    .line 1428
    invoke-static {p1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@27
    return-object v4

    #@28
    .line 1424
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
    .line 1430
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
    .line 1195
    if-nez p1, :cond_0

    #@2
    .line 1196
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@5
    move-result-object p1

    #@6
    .line 1198
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1199
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@c
    .line 1198
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
    .line 1204
    if-nez p0, :cond_0

    #@2
    .line 1205
    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    #@5
    .line 1207
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    .line 1208
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_1

    #@b
    .line 1209
    new-instance v1, Ljava/util/MissingResourceException;

    #@d
    .line 1210
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
    .line 1209
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 1212
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
    .line 1180
    if-eqz p3, :cond_0

    #@2
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@4
    .line 1179
    :goto_0
    invoke-static {p0, p1, p2, v1}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    .line 1181
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_1

    #@a
    .line 1182
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
    .line 1180
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@3e
    goto :goto_0

    #@3f
    .line 1184
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
    .line 553
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

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
    .line 563
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
    .line 200
    move-object/from16 v0, p4

    #@2
    move-object/from16 v1, p3

    #@4
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v12

    #@8
    .line 201
    .local v12, "kwVal":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 202
    .local v5, "baseLoc":Ljava/lang/String;
    const/4 v8, 0x0

    #@d
    .line 203
    .local v8, "defStr":Ljava/lang/String;
    new-instance v14, Landroid/icu/util/ULocale;

    #@f
    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@12
    .line 204
    .local v14, "parent":Landroid/icu/util/ULocale;
    const/4 v7, 0x0

    #@13
    .line 205
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    const/4 v13, 0x0

    #@14
    .line 206
    .local v13, "lookForDefault":Z
    const/4 v9, 0x0

    #@15
    .line 207
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@16
    .line 208
    .local v6, "defDepth":I
    const/16 v16, 0x0

    #@18
    .line 210
    .local v16, "resDepth":I
    if-eqz v12, :cond_0

    #@1a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@1d
    move-result v19

    #@1e
    if-nez v19, :cond_b

    #@20
    .line 212
    :cond_0
    :goto_0
    const-string/jumbo v12, ""

    #@23
    .line 213
    const/4 v13, 0x1

    #@24
    .line 217
    :cond_1
    const/4 v15, 0x0

    #@25
    .line 219
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
    .line 220
    .local v15, "r":Landroid/icu/impl/ICUResourceBundle;
    if-eqz p5, :cond_2

    #@2f
    .line 221
    const/16 v19, 0x0

    #@31
    const/16 v20, 0x0

    #@33
    aput-boolean v19, p5, v20

    #@35
    .line 222
    invoke-static/range {p0 .. p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@38
    move-result-object v19

    #@39
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    #@3c
    move-result-object v4

    #@3d
    .line 223
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
    .line 224
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
    .line 225
    const/16 v19, 0x1

    #@51
    const/16 v20, 0x0

    #@53
    aput-boolean v19, p5, v20

    #@55
    .line 233
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
    .line 234
    .local v11, "irb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v19, "default"

    #@60
    move-object/from16 v0, v19

    #@62
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    .line 235
    .local v8, "defStr":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@68
    .line 236
    move-object v12, v8

    #@69
    .line 237
    const/4 v13, 0x0

    #@6a
    .line 239
    :cond_3
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    #@6d
    move-result-object v7

    #@6e
    .line 243
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    if-nez v7, :cond_4

    #@70
    .line 244
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@73
    move-result-object v15

    #@74
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@76
    .line 245
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v6, v6, 0x1

    #@78
    .line 247
    :cond_4
    if-eqz v15, :cond_5

    #@7a
    if-eqz v7, :cond_2

    #@7c
    .line 250
    :cond_5
    new-instance v14, Landroid/icu/util/ULocale;

    #@7e
    .end local v14    # "parent":Landroid/icu/util/ULocale;
    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@81
    .line 251
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
    .line 255
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
    .line 256
    .restart local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v11, v12}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@94
    .line 257
    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@97
    move-result-object v9

    #@98
    .line 261
    .local v9, "fullBase":Landroid/icu/util/ULocale;
    if-eqz v9, :cond_7

    #@9a
    move/from16 v0, v16

    #@9c
    if-le v0, v6, :cond_7

    #@9e
    .line 262
    const-string/jumbo v19, "default"

    #@a1
    move-object/from16 v0, v19

    #@a3
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    .line 263
    .restart local v8    # "defStr":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@aa
    move-result-object v7

    #@ab
    .line 264
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    move/from16 v6, v16

    #@ad
    .line 269
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    .end local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    :cond_7
    :goto_3
    if-nez v9, :cond_8

    #@af
    .line 270
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@b2
    move-result-object v15

    #@b3
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@b5
    .line 271
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v16, v16, 0x1

    #@b7
    .line 273
    :cond_8
    if-eqz v15, :cond_9

    #@b9
    if-eqz v9, :cond_6

    #@bb
    .line 275
    :cond_9
    if-nez v9, :cond_a

    #@bd
    .line 276
    if-eqz v8, :cond_a

    #@bf
    .line 277
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v19

    #@c3
    if-eqz v19, :cond_d

    #@c5
    .line 315
    :cond_a
    if-nez v9, :cond_11

    #@c7
    .line 316
    new-instance v19, Ljava/util/MissingResourceException;

    #@c9
    .line 317
    const-string/jumbo v20, "Could not find locale containing requested or default keyword."

    #@cc
    .line 318
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
    .line 316
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
    .line 211
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
    .line 210
    if-eqz v19, :cond_1

    #@101
    goto/16 :goto_0

    #@103
    .line 223
    .restart local v4    # "availableULocales":[Landroid/icu/util/ULocale;
    .restart local v10    # "i":I
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    #@105
    goto/16 :goto_1

    #@107
    .line 279
    .end local v4    # "availableULocales":[Landroid/icu/util/ULocale;
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    .end local v10    # "i":I
    :cond_d
    move-object v12, v8

    #@108
    .line 280
    new-instance v14, Landroid/icu/util/ULocale;

    #@10a
    .end local v14    # "parent":Landroid/icu/util/ULocale;
    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@10d
    .line 281
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
    .line 282
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    const/16 v16, 0x0

    #@117
    .line 286
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
    .line 287
    .restart local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v11, v12}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@122
    move-result-object v18

    #@123
    .line 290
    .local v18, "urb":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@126
    move-result-object v9

    #@127
    .line 294
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
    .line 295
    const/4 v9, 0x0

    #@13a
    .line 300
    .end local v9    # "fullBase":Landroid/icu/util/ULocale;
    :cond_e
    if-eqz v9, :cond_f

    #@13c
    move/from16 v0, v16

    #@13e
    if-le v0, v6, :cond_f

    #@140
    .line 301
    const-string/jumbo v19, "default"

    #@143
    move-object/from16 v0, v19

    #@145
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@148
    move-result-object v8

    #@149
    .line 302
    .local v8, "defStr":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@14c
    move-result-object v7

    #@14d
    .line 303
    .local v7, "defLoc":Landroid/icu/util/ULocale;
    move/from16 v6, v16

    #@14f
    .line 308
    .end local v7    # "defLoc":Landroid/icu/util/ULocale;
    .end local v8    # "defStr":Ljava/lang/String;
    .end local v11    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v18    # "urb":Landroid/icu/util/UResourceBundle;
    :cond_f
    :goto_5
    if-nez v9, :cond_10

    #@151
    .line 309
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@154
    move-result-object v15

    #@155
    .end local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@157
    .line 310
    .restart local v15    # "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v16, v16, 0x1

    #@159
    .line 312
    :cond_10
    if-eqz v15, :cond_a

    #@15b
    if-nez v9, :cond_a

    #@15d
    goto :goto_4

    #@15e
    .line 321
    :cond_11
    if-eqz p6, :cond_12

    #@160
    .line 322
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v19

    #@164
    .line 321
    if-eqz v19, :cond_12

    #@166
    .line 323
    move/from16 v0, v16

    #@168
    if-gt v0, v6, :cond_12

    #@16a
    .line 324
    return-object v9

    #@16b
    .line 326
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
    .line 305
    :catch_0
    move-exception v17

    #@19f
    .local v17, "t":Ljava/util/MissingResourceException;
    goto :goto_5

    #@1a0
    .line 266
    .end local v17    # "t":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v17

    #@1a1
    .restart local v17    # "t":Ljava/util/MissingResourceException;
    goto/16 :goto_3

    #@1a3
    .line 240
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
    .line 338
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 339
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
    .line 342
    .local v5, "locales":[Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v8, v5

    #@11
    if-ge v2, v8, :cond_2

    #@13
    .line 344
    :try_start_0
    aget-object v8, v5, v2

    #@15
    invoke-static {p0, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@18
    move-result-object v0

    #@19
    .line 346
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@1f
    .line 347
    .local v3, "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@22
    move-result-object v1

    #@23
    .line 348
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_1

    #@29
    .line 349
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/lang/String;

    #@2f
    .line 350
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
    .line 352
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_1

    #@45
    .line 355
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@46
    .line 342
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 361
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
    .line 614
    new-instance v1, Ljava/util/ArrayList;

    #@2
    array-length v4, p0

    #@3
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 615
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    new-instance v3, Ljava/util/HashSet;

    #@8
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 616
    .local v3, "uniqueSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v4, p0

    #@d
    if-ge v0, v4, :cond_1

    #@f
    .line 617
    aget-object v4, p0, v0

    #@11
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@14
    move-result-object v2

    #@15
    .line 618
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 619
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 620
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@21
    .line 616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 623
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
    .line 1412
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
    .line 1062
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
    .line 1103
    if-nez p1, :cond_0

    #@6
    .line 1104
    return-void

    #@7
    .line 1106
    :cond_0
    if-ne p1, v3, :cond_1

    #@9
    .line 1107
    aput-object p0, p2, p3

    #@b
    .line 1108
    return-void

    #@c
    .line 1110
    :cond_1
    const/4 v0, 0x0

    #@d
    .line 1112
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v1

    #@11
    .line 1113
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
    .line 1114
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
    .line 1115
    const/4 v5, 0x2

    #@2b
    if-ne p1, v5, :cond_6

    #@2d
    .line 1116
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
    .line 1117
    :cond_5
    add-int/lit8 v3, v1, 0x1

    #@45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    aput-object v3, p2, v2

    #@4b
    .line 1102
    return-void

    #@4c
    .line 1120
    :cond_6
    add-int/lit8 v0, v1, 0x1

    #@4e
    .line 1121
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
    .line 1073
    move-object v0, p0

    #@3
    .line 1074
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    if-lez p2, :cond_4

    #@5
    .line 1075
    add-int/lit8 p2, p2, -0x1

    #@7
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    #@9
    aput-object v1, p1, p2

    #@b
    .line 1076
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    #@d
    .line 1077
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
    .line 1072
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
    .line 1218
    :try_start_0
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@6
    move-result-object v5

    #@7
    .line 1219
    .local v5, "defaultLocale":Landroid/icu/util/ULocale;
    move-object/from16 v8, p1

    #@9
    .line 1220
    .local v8, "localeName":Ljava/lang/String;
    const/16 v13, 0x40

    #@b
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v13

    #@11
    if-ltz v13, :cond_0

    #@13
    .line 1221
    invoke-static/range {p1 .. p1}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    .line 1223
    :cond_0
    move-object/from16 v0, p0

    #@19
    invoke-static {v0, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    .line 1224
    .local v6, "fullName":Ljava/lang/String;
    invoke-static {v6, v5}, Landroid/icu/impl/ICUResourceBundle;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@23
    .line 1233
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
    .line 1234
    .local v11, "rootLocale":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 1236
    .local v4, "defaultID":Ljava/lang/String;
    const-string/jumbo v13, ""

    #@38
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v13

    #@3c
    if-eqz v13, :cond_1

    #@3e
    .line 1237
    move-object v8, v11

    #@3f
    .line 1239
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
    .line 1240
    :cond_2
    if-nez v3, :cond_8

    #@69
    .line 1241
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, p2

    #@6d
    invoke-static {v0, v8, v1}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    #@70
    move-result-object v3

    #@71
    .line 1243
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
    .line 1244
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
    .line 1256
    :cond_4
    invoke-static {v6, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c5
    move-result-object v13

    #@c6
    monitor-exit v14

    #@c7
    return-object v13

    #@c8
    .line 1233
    .end local v4    # "defaultID":Ljava/lang/String;
    .end local v11    # "rootLocale":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v11, ""

    #@cb
    .restart local v11    # "rootLocale":Ljava/lang/String;
    goto/16 :goto_0

    #@cd
    .line 1243
    .restart local v4    # "defaultID":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    #@ce
    goto :goto_1

    #@cf
    .line 1260
    :cond_7
    if-nez v3, :cond_c

    #@d1
    .line 1261
    const/16 v13, 0x5f

    #@d3
    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@d6
    move-result v7

    #@d7
    .line 1262
    .local v7, "i":I
    const/4 v13, -0x1

    #@d8
    if-eq v7, v13, :cond_9

    #@da
    .line 1263
    const/4 v13, 0x0

    #@db
    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@de
    move-result-object v12

    #@df
    .line 1264
    .local v12, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e1
    move-object/from16 v1, p2

    #@e3
    move-object/from16 v2, p3

    #@e5
    invoke-static {v0, v12, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@e8
    move-result-object v3

    #@e9
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@eb
    .line 1265
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v3, :cond_8

    #@ed
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@f0
    move-result-object v13

    #@f1
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@f4
    move-result-object v13

    #@f5
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v13

    #@f9
    if-eqz v13, :cond_8

    #@fb
    .line 1266
    const/4 v13, 0x1

    #@fc
    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ff
    .end local v7    # "i":I
    .end local v12    # "temp":Ljava/lang/String;
    :cond_8
    :goto_2
    monitor-exit v14

    #@100
    .line 1304
    return-object v3

    #@101
    .line 1269
    .restart local v7    # "i":I
    :cond_9
    :try_start_2
    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@103
    move-object/from16 v0, p3

    #@105
    if-ne v0, v13, :cond_a

    #@107
    .line 1270
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@10a
    move-result-object v13

    #@10b
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v13

    #@10f
    if-eqz v13, :cond_b

    #@111
    .line 1275
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@114
    move-result v13

    #@115
    if-eqz v13, :cond_8

    #@117
    .line 1276
    move-object/from16 v0, p0

    #@119
    move-object/from16 v1, p2

    #@11b
    invoke-static {v0, v11, v1}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    #@11e
    move-result-object v3

    #@11f
    .line 1277
    if-eqz v3, :cond_8

    #@121
    .line 1278
    const/4 v13, 0x2

    #@122
    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@125
    goto :goto_2

    #@126
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "defaultID":Ljava/lang/String;
    .end local v5    # "defaultLocale":Landroid/icu/util/ULocale;
    .end local v6    # "fullName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "localeName":Ljava/lang/String;
    .end local v11    # "rootLocale":Ljava/lang/String;
    :catchall_0
    move-exception v13

    #@127
    monitor-exit v14

    #@128
    throw v13

    #@129
    .line 1271
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

    #@12b
    move-object/from16 v1, p2

    #@12d
    move-object/from16 v2, p3

    #@12f
    invoke-static {v0, v4, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@132
    move-result-object v3

    #@133
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@135
    .line 1272
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v3, :cond_8

    #@137
    .line 1273
    const/4 v13, 0x3

    #@138
    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@13b
    goto :goto_2

    #@13c
    .line 1283
    .end local v7    # "i":I
    :cond_c
    const/4 v9, 0x0

    #@13d
    .line 1284
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@140
    move-result-object v8

    #@141
    .line 1285
    const/16 v13, 0x5f

    #@143
    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@146
    move-result v7

    #@147
    .line 1287
    .restart local v7    # "i":I
    invoke-static {v6, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@14a
    move-result-object v3

    #@14b
    .end local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@14d
    .line 1290
    .restart local v3    # "b":Landroid/icu/impl/ICUResourceBundle;
    move-object v0, v3

    #@14e
    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@150
    move-object v13, v0

    #@151
    const-string/jumbo v15, "%%Parent"

    #@154
    invoke-virtual {v13, v15}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    #@157
    move-result-object v10

    #@158
    .line 1291
    .local v10, "parentLocaleName":Ljava/lang/String;
    if-eqz v10, :cond_e

    #@15a
    .line 1292
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, p2

    #@15e
    move-object/from16 v2, p3

    #@160
    invoke-static {v0, v10, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@163
    move-result-object v9

    #@164
    .line 1299
    .end local v9    # "parent":Landroid/icu/util/UResourceBundle;
    :cond_d
    :goto_3
    invoke-virtual {v3, v9}, Landroid/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v13

    #@168
    if-nez v13, :cond_8

    #@16a
    .line 1300
    invoke-virtual {v3, v9}, Landroid/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    #@16d
    goto :goto_2

    #@16e
    .line 1293
    .restart local v9    # "parent":Landroid/icu/util/UResourceBundle;
    :cond_e
    const/4 v13, -0x1

    #@16f
    if-eq v7, v13, :cond_f

    #@171
    .line 1294
    const/4 v13, 0x0

    #@172
    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@175
    move-result-object v13

    #@176
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, p2

    #@17a
    move-object/from16 v2, p3

    #@17c
    invoke-static {v0, v13, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@17f
    move-result-object v9

    #@180
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    goto :goto_3

    #@181
    .line 1295
    .local v9, "parent":Landroid/icu/util/UResourceBundle;
    :cond_f
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@184
    move-result v13

    #@185
    if-nez v13, :cond_d

    #@187
    .line 1296
    const/4 v13, 0x1

    #@188
    move-object/from16 v0, p0

    #@18a
    move-object/from16 v1, p2

    #@18c
    invoke-static {v0, v11, v1, v13}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@18f
    move-result-object v9

    #@190
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
    .line 1190
    if-eqz p3, :cond_0

    #@2
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@4
    .line 1189
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1190
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
    .line 401
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
    .line 406
    instance-of v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 407
    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@b
    return-object v0

    #@c
    .line 409
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
    .line 1127
    if-ne p0, p1, :cond_0

    #@3
    .line 1128
    return v3

    #@4
    .line 1130
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundle;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 1131
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 1132
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
    .line 1133
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
    .line 1132
    if-eqz v1, :cond_1

    #@27
    .line 1134
    return v3

    #@28
    .line 1137
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
    .line 432
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
    .line 414
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
    .line 419
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
    .line 413
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
    .line 418
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
    .line 429
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
    .line 1307
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@6
    .line 1308
    .local v1, "obj":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_1

    #@8
    .line 1309
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v1

    #@c
    .end local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 1310
    .restart local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_0

    #@10
    .line 1312
    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v1

    #@14
    .end local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@16
    .line 1314
    .restart local v1    # "obj":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    if-nez v1, :cond_1

    #@18
    .line 1315
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
    .line 1316
    .local v0, "fullName":Ljava/lang/String;
    new-instance v2, Ljava/util/MissingResourceException;

    #@26
    .line 1317
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
    .line 1318
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    .line 1316
    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 1321
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
    .line 1322
    return-object v1
.end method

.method public getAllArrayItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/icu/impl/UResource$ArraySink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    #@4
    .line 455
    return-void
.end method

.method public getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/icu/impl/UResource$TableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    #@4
    .line 460
    return-void
.end method

.method protected getBaseName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1388
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
    .line 1404
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLoadingStatus()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@2
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 634
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
    .line 1384
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
    .line 1396
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
    .line 438
    move-object v0, p0

    #@2
    .line 439
    .local v0, "actualBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p1, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 441
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@8
    .line 442
    new-instance v2, Ljava/util/MissingResourceException;

    #@a
    .line 443
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
    .line 444
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 444
    const-string/jumbo v4, ", key "

    #@25
    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 444
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@2c
    move-result v4

    #@2d
    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 445
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 442
    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 448
    :cond_0
    const-string/jumbo v2, "\u2205\u2205\u2205"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_1

    #@46
    .line 449
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
    .line 451
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
    .line 1584
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
    .line 1392
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
    .line 381
    move-object v0, p0

    #@2
    .line 384
    .local v0, "actualBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p1, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@5
    move-result-object v1

    #@6
    .line 386
    .local v1, "result":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_0

    #@8
    .line 387
    new-instance v2, Ljava/util/MissingResourceException;

    #@a
    .line 388
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
    .line 389
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 389
    const-string/jumbo v4, ", key "

    #@25
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 389
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@2c
    move-result v4

    #@2d
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 390
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 387
    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 393
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
    .line 394
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
    .line 397
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
    .line 1602
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
    .line 1141
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
    .line 1142
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method protected isTopLevelResource()Z
    .locals 1

    #@0
    .prologue
    .line 1606
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
    .line 127
    iput p1, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    #@2
    .line 126
    return-void
.end method

.method public setLoadingStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestedLocale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "locale":Ljava/lang/String;
    const-string/jumbo v1, "root"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 143
    const/4 v1, 0x2

    #@e
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@11
    .line 140
    :goto_0
    return-void

    #@12
    .line 144
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 145
    const/4 v1, 0x4

    #@19
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    #@1c
    goto :goto_0

    #@1d
    .line 147
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
    .line 1400
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@2
    .line 1399
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
    .line 1592
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iput-object p1, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    #@4
    .line 1591
    return-void
.end method

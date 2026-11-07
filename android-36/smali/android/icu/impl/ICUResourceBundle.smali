.class public Landroid/icu/impl/ICUResourceBundle;
.super Landroid/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundle$AvailEntry;,
        Landroid/icu/impl/ICUResourceBundle$WholeBundle;,
        Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;,
        Landroid/icu/impl/ICUResourceBundle$OpenType;,
        Landroid/icu/impl/ICUResourceBundle$Loader;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist ALIAS:I = 0x3

.field public static final blacklist ARRAY16:I = 0x9

.field private static greylist-max-o BUNDLE_CACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Landroid/icu/impl/ICUResourceBundle$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist COMPARE_FIRST_ELEMENT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o DEFAULT_TAG:Ljava/lang/String; = "default"

.field private static final greylist-max-o FULL_LOCALE_NAMES_LIST:Ljava/lang/String; = "fullLocaleNames.lst"

.field private static greylist-max-o GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUResourceBundle$AvailEntry;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o HYPHEN:C = '-'

.field private static final greylist-max-o ICUDATA:Ljava/lang/String; = "ICUDATA"

.field public static final blacklist ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final greylist-max-o ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"

.field protected static final blacklist INSTALLED_LOCALES:Ljava/lang/String; = "InstalledLocales"

.field private static final greylist-max-o LOCALE:Ljava/lang/String; = "LOCALE"

.field public static final blacklist NO_INHERITANCE_MARKER:Ljava/lang/String; = "\u2205\u2205\u2205"

.field public static final blacklist RES_BOGUS:I = -0x1

.field private static final greylist-max-o RES_PATH_SEP_CHAR:C = '/'

.field private static final greylist-max-o RES_PATH_SEP_STR:Ljava/lang/String; = "/"

.field public static final blacklist STRING_V2:I = 0x6

.field public static final blacklist TABLE16:I = 0x5

.field public static final blacklist TABLE32:I = 0x4


# instance fields
.field private greylist-max-o container:Landroid/icu/impl/ICUResourceBundle;

.field protected blacklist key:Ljava/lang/String;

.field greylist-max-o wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetNoFallback(Landroid/icu/impl/ICUResourceBundle;)Z
    .registers 1

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getNoFallback()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlocaleIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    nop

    .line 50
    const-class v0, Landroid/icu/impl/ICUData;

    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 94
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$1;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$1;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/CacheBase;

    .line 697
    const-string v0, "localedata"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    .line 957
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$3;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$3;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    .line 1309
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$4;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$4;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->COMPARE_FIRST_ELEMENT:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .registers 2
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1627
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    .line 1628
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1629
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 1631
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    .line 1632
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    .line 1633
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1634
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    .line 1635
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1636
    return-void
.end method

.method private static final greylist-max-o addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .registers 4
    .param p0, "bn"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 770
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$2;

    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    .line 771
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 805
    return-void
.end method

.method private static final greylist-max-o addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .registers 8
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 751
    .local p2, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "res_index"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {p0, v0, p1, v1}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 752
    .local v1, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v2, "InstalledLocales"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;
    :try_end_11
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_11} :catch_2c

    .line 759
    .end local v1    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    nop

    .line 760
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 761
    .local v0, "iter":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    .line 762
    :goto_19
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 763
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "locstr":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v1    # "locstr":Ljava/lang/String;
    goto :goto_19

    .line 766
    :cond_2b
    return-void

    .line 753
    .end local v0    # "iter":Landroid/icu/util/UResourceBundleIterator;
    .end local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_2c
    move-exception v1

    .line 754
    .local v1, "e":Ljava/util/MissingResourceException;
    sget-boolean v2, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 755
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".res"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 756
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 758
    :cond_5c
    return-void
.end method

.method private static greylist-max-o addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .registers 7
    .param p0, "bn"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 809
    .local p2, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullLocaleNames.lst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 810
    .local v0, "s":Ljava/io/InputStream;
    if-eqz v0, :cond_48

    .line 811
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ASCII"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_49

    .line 814
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_3e

    .line 815
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 816
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_42

    goto :goto_25

    .line 821
    .end local v3    # "line":Ljava/lang/String;
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 822
    goto :goto_48

    .line 821
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 822
    nop

    .end local p0    # "bn":Ljava/lang/String;
    .end local p1    # "root":Ljava/lang/ClassLoader;
    .end local p2    # "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v2
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_49

    .line 826
    .end local v0    # "s":Ljava/io/InputStream;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "bn":Ljava/lang/String;
    .restart local p1    # "root":Ljava/lang/ClassLoader;
    .restart local p2    # "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_48
    :goto_48
    goto :goto_4a

    .line 824
    :catch_49
    move-exception v0

    .line 827
    :goto_4a
    return-void
.end method

.method private static greylist-max-o countPathKeys(Ljava/lang/String;)I
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 1158
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1159
    const/4 v0, 0x0

    return v0

    .line 1161
    :cond_8
    const/4 v0, 0x1

    .line 1162
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1163
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1a

    .line 1164
    add-int/lit8 v0, v0, 0x1

    .line 1162
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1167
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method public static blacklist createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    .line 1552
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    .line 1553
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    if-nez v0, :cond_8

    .line 1555
    const/4 v1, 0x0

    return-object v1

    .line 1557
    :cond_8
    invoke-static {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .registers 10
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 830
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, p0

    goto :goto_1b

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "bn":Ljava/lang/String;
    :goto_1b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 832
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "skipScan":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 835
    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 836
    const-string v3, "android/icu/impl/data/icudata"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_67

    .line 838
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_49

    .line 839
    const-string v3, ""

    .local v3, "folder":Ljava/lang/String;
    goto :goto_60

    .line 840
    .end local v3    # "folder":Ljava/lang/String;
    :cond_49
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_5f

    .line 841
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "folder":Ljava/lang/String;
    goto :goto_60

    .line 843
    .end local v3    # "folder":Ljava/lang/String;
    :cond_5f
    const/4 v3, 0x0

    .line 845
    .restart local v3    # "folder":Ljava/lang/String;
    :goto_60
    if-eqz v3, :cond_67

    .line 846
    const-string v4, ".res"

    invoke-static {v3, v4, v1}, Landroid/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 849
    .end local v3    # "folder":Ljava/lang/String;
    :cond_67
    const-string v3, "res_index"

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 851
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 852
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 853
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 854
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_89

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_94

    :cond_89
    const/16 v6, 0x5f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_94

    .line 856
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 858
    .end local v4    # "name":Ljava/lang/String;
    :cond_94
    goto :goto_70

    .line 861
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_95
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 862
    sget-boolean v3, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v3, :cond_b7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to enumerate data files in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 863
    :cond_b7
    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 865
    :cond_ba
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 867
    invoke-static {p0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 870
    :cond_c3
    const-string v3, "root"

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 871
    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method private static greylist-max-o createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 876
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 877
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 878
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static final blacklist createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;
    .registers 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/EnumMap<",
            "Landroid/icu/util/ULocale$AvailableType;",
            "[",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 737
    const-string v0, "res_index"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 739
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Landroid/icu/util/ULocale$AvailableType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 740
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/util/ULocale$AvailableType;[Landroid/icu/util/ULocale;>;"
    new-instance v2, Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;

    invoke-direct {v2, v1}, Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;-><init>(Ljava/util/EnumMap;)V

    .line 741
    .local v2, "sink":Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;
    const-string v3, ""

    invoke-virtual {v0, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 742
    return-object v1
.end method

.method private static final greylist-max-o findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "actualBundle"    # Landroid/icu/util/UResourceBundle;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    .line 976
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 977
    const/4 v0, 0x0

    return-object v0

    .line 979
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 982
    .local v0, "base":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    .line 983
    .local v1, "depth":I
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v2

    .line 984
    .local v2, "numPathKeys":I
    nop

    .line 985
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 986
    .local v3, "keys":[Ljava/lang/String;
    invoke-static {p0, v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 987
    invoke-static {v3, v1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    return-object v4
.end method

.method private static final greylist-max-o findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .registers 8
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "depth"    # I
    .param p2, "base"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;

    .line 993
    if-nez p3, :cond_3

    .line 994
    move-object p3, p2

    .line 999
    :cond_3
    :goto_3
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "depth":I
    .local v0, "depth":I
    aget-object p1, p0, p1

    .line 1000
    .local p1, "subKey":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 1001
    .local v2, "sub":Landroid/icu/impl/ICUResourceBundle;
    if-nez v2, :cond_31

    .line 1002
    add-int/lit8 v0, v0, -0x1

    .line 1003
    nop

    .line 1012
    .end local v2    # "sub":Landroid/icu/impl/ICUResourceBundle;
    .end local p1    # "subKey":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 1013
    .local p1, "nextBase":Landroid/icu/impl/ICUResourceBundle;
    if-nez p1, :cond_1a

    .line 1014
    return-object v1

    .line 1020
    :cond_1a
    invoke-direct {p2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    .line 1021
    .local v1, "baseDepth":I
    if-eq v0, v1, :cond_2b

    .line 1022
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 1023
    .local v2, "newKeys":[Ljava/lang/String;
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    move-object p0, v2

    .line 1026
    .end local v2    # "newKeys":[Ljava/lang/String;
    :cond_2b
    invoke-direct {p2, p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1027
    move-object p2, p1

    .line 1028
    const/4 p1, 0x0

    .line 1029
    .end local v0    # "depth":I
    .end local v1    # "baseDepth":I
    .local p1, "depth":I
    goto :goto_3

    .line 1005
    .restart local v0    # "depth":I
    .local v2, "sub":Landroid/icu/impl/ICUResourceBundle;
    .local p1, "subKey":Ljava/lang/String;
    :cond_31
    array-length v1, p0

    if-ne v0, v1, :cond_35

    .line 1007
    return-object v2

    .line 1009
    :cond_35
    move-object p2, v2

    .line 1010
    .end local v2    # "sub":Landroid/icu/impl/ICUResourceBundle;
    .end local p1    # "subKey":Ljava/lang/String;
    move p1, v0

    goto :goto_3
.end method

.method private static final greylist-max-o findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;
    .registers 16
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "actualBundle"    # Landroid/icu/util/UResourceBundle;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    .line 1038
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1039
    return-object v1

    .line 1041
    :cond_8
    instance-of v0, p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    if-nez v0, :cond_d

    .line 1042
    return-object v1

    .line 1044
    :cond_d
    if-nez p2, :cond_12

    .line 1045
    move-object p2, p1

    move-object v8, p2

    goto :goto_13

    .line 1044
    :cond_12
    move-object v8, p2

    .line 1048
    .end local p2    # "requested":Landroid/icu/util/UResourceBundle;
    .local v8, "requested":Landroid/icu/util/UResourceBundle;
    :goto_13
    move-object p2, p1

    check-cast p2, Landroid/icu/impl/ICUResourceBundle;

    .line 1049
    .local p2, "base":Landroid/icu/impl/ICUResourceBundle;
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 1050
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    const/4 v2, -0x1

    .line 1054
    .local v2, "res":I
    invoke-direct {p2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v3

    .line 1055
    .local v3, "baseDepth":I
    move v4, v3

    .line 1056
    .local v4, "depth":I
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v9

    .line 1057
    .local v9, "numPathKeys":I
    nop

    .line 1058
    add-int v5, v4, v9

    new-array v5, v5, [Ljava/lang/String;

    .line 1059
    .local v5, "keys":[Ljava/lang/String;
    invoke-static {p0, v9, v5, v4}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    move v10, v2

    move-object v2, p2

    move p2, v10

    move v10, v3

    move-object v3, v5

    .line 1064
    .end local v5    # "keys":[Ljava/lang/String;
    .local v2, "base":Landroid/icu/impl/ICUResourceBundle;
    .local v3, "keys":[Ljava/lang/String;
    .local v10, "baseDepth":I
    .local p2, "res":I
    :goto_31
    const/4 v5, -0x1

    if-ne p2, v5, :cond_46

    .line 1065
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v6

    .line 1066
    .local v6, "type":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_3f

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c2

    .line 1067
    :cond_3f
    move-object v7, v2

    check-cast v7, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    iget-object v6, v7, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    .line 1071
    .local v6, "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    move-object v11, v6

    goto :goto_61

    .line 1072
    .end local v6    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_46
    invoke-static {p2}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v6

    .line 1073
    .local v6, "type":I
    invoke-static {v6}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1074
    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v7

    move-object v11, v7

    .local v7, "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    goto :goto_61

    .line 1075
    .end local v7    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_56
    invoke-static {v6}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 1076
    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v7

    move-object v11, v7

    .line 1082
    .end local v6    # "type":I
    .local v11, "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :goto_61
    move v7, v4

    .end local v4    # "depth":I
    .local v7, "depth":I
    add-int/lit8 v4, v7, 0x1

    move v6, v5

    .end local v7    # "depth":I
    .restart local v4    # "depth":I
    aget-object v5, v3, v7

    .line 1083
    .local v5, "subKey":Ljava/lang/String;
    move v7, v6

    invoke-virtual {v11, v0, v5}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    move-result v6

    .line 1084
    .end local p2    # "res":I
    .local v6, "res":I
    if-ne v6, v7, :cond_72

    .line 1085
    add-int/lit8 v4, v4, -0x1

    .line 1086
    move p2, v6

    goto :goto_c2

    .line 1089
    :cond_72
    invoke-static {v6}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p2

    const/4 v7, 0x3

    if-ne p2, v7, :cond_82

    .line 1090
    invoke-direct {v2, v3, v10}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1091
    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p2

    .local p2, "sub":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_83

    .line 1093
    .end local p2    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :cond_82
    const/4 p2, 0x0

    .line 1095
    .restart local p2    # "sub":Landroid/icu/impl/ICUResourceBundle;
    :goto_83
    array-length v7, v3

    if-ne v4, v7, :cond_9c

    .line 1097
    if-eqz p2, :cond_8d

    .line 1098
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1100
    :cond_8d
    invoke-virtual {v0, v6}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_94

    .line 1104
    return-object v1

    .line 1102
    :cond_94
    new-instance v7, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v12, ""

    invoke-direct {v7, v12}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1107
    .end local v1    # "s":Ljava/lang/String;
    :cond_9c
    if-eqz p2, :cond_bc

    .line 1108
    move-object v2, p2

    .line 1109
    iget-object v7, v2, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v7, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 1110
    const/4 v6, -0x1

    .line 1115
    invoke-direct {v2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v7

    .line 1116
    .end local v10    # "baseDepth":I
    .local v7, "baseDepth":I
    if-eq v4, v7, :cond_b9

    .line 1117
    array-length v10, v3

    sub-int/2addr v10, v4

    add-int/2addr v10, v7

    new-array v10, v10, [Ljava/lang/String;

    .line 1118
    .local v10, "newKeys":[Ljava/lang/String;
    array-length v12, v3

    sub-int/2addr v12, v4

    invoke-static {v3, v4, v10, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1119
    move-object v3, v10

    .line 1120
    move v4, v7

    move p2, v6

    move v10, v7

    goto :goto_bd

    .line 1116
    .end local v10    # "newKeys":[Ljava/lang/String;
    :cond_b9
    move p2, v6

    move v10, v7

    goto :goto_bd

    .line 1107
    .end local v7    # "baseDepth":I
    .local v10, "baseDepth":I
    :cond_bc
    move p2, v6

    .line 1123
    .end local v5    # "subKey":Ljava/lang/String;
    .end local v6    # "res":I
    .end local v11    # "readerContainer":Landroid/icu/impl/ICUResourceBundleReader$Container;
    .local p2, "res":I
    :goto_bd
    goto/16 :goto_31

    .line 1078
    .local v6, "type":I
    :cond_bf
    move v7, v4

    .end local v4    # "depth":I
    .local v7, "depth":I
    const/4 p2, -0x1

    .line 1079
    nop

    .line 1125
    .end local v6    # "type":I
    .end local v7    # "depth":I
    .restart local v4    # "depth":I
    :cond_c2
    :goto_c2
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    .line 1126
    .local v5, "nextBase":Landroid/icu/impl/ICUResourceBundle;
    if-nez v5, :cond_c9

    .line 1127
    return-object v1

    .line 1130
    :cond_c9
    invoke-direct {v2, v3, v10}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1131
    move-object v2, v5

    .line 1132
    iget-object v6, v2, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 1133
    const/4 v6, 0x0

    move v10, v6

    move v4, v6

    .line 1134
    .end local v5    # "nextBase":Landroid/icu/impl/ICUResourceBundle;
    goto/16 :goto_31
.end method

.method protected static blacklist getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .registers 19
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
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 1669
    .local p5, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1670
    .local v0, "wholeBundle":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 1671
    .local v2, "loaderToUse":Ljava/lang/ClassLoader;
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    move/from16 v9, p4

    invoke-virtual {v1, v9}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 1672
    .local v1, "rpath":Ljava/lang/String;
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    .line 1677
    .local v3, "baseName":Ljava/lang/String;
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v10

    .line 1678
    .local v10, "baseDepth":I
    add-int/lit8 v4, v10, 0x1

    new-array v6, v4, [Ljava/lang/String;

    .line 1679
    .local v6, "baseKeyPath":[Ljava/lang/String;
    invoke-direct {p0, v6, v10}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1680
    aput-object p3, v6, v10

    .line 1681
    move-object v4, p1

    move v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v11

    return-object v11
.end method

.method protected static blacklist getAliasedResource(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .registers 22
    .param p0, "rpath"    # Ljava/lang/String;
    .param p1, "loaderToUse"    # Ljava/lang/ClassLoader;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "depth"    # I
    .param p5, "baseKeyPath"    # [Ljava/lang/String;
    .param p7, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 1690
    .local p6, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    const/4 v2, 0x0

    .line 1692
    .local v2, "keyPath":Ljava/lang/String;
    if-nez p6, :cond_d

    .line 1693
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .end local p6    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_f

    .line 1692
    .end local v3    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p6    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v3, p6

    .line 1695
    .end local p6    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_f
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_109

    .line 1699
    const-string v4, ""

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-nez v5, :cond_87

    .line 1701
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1702
    .local v5, "i":I
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1703
    .local v4, "j":I
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1704
    .local v9, "bundleName":Ljava/lang/String;
    if-gez v4, :cond_3c

    .line 1705
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "locale":Ljava/lang/String;
    goto :goto_4c

    .line 1707
    .end local v10    # "locale":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1708
    .restart local v10    # "locale":Ljava/lang/String;
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1711
    :goto_4c
    const-string v11, "ICUDATA"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 1712
    const-string v9, "android/icu/impl/data/icudata"

    .line 1713
    sget-object p1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    goto :goto_86

    .line 1714
    :cond_59
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-le v11, v7, :cond_86

    .line 1715
    const/16 v11, 0x2d

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 1716
    .local v11, "idx":I
    if-le v11, v7, :cond_86

    .line 1717
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android/icu/impl/data/icudata/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1718
    sget-object p1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 1721
    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v11    # "idx":I
    :cond_86
    :goto_86
    goto :goto_9d

    .line 1723
    .end local v9    # "bundleName":Ljava/lang/String;
    .end local v10    # "locale":Ljava/lang/String;
    :cond_87
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1724
    .local v4, "i":I
    if-eq v4, v7, :cond_99

    .line 1725
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1726
    .local v5, "locale":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v5

    goto :goto_9b

    .line 1728
    .end local v5    # "locale":Ljava/lang/String;
    :cond_99
    move-object v5, p0

    move-object v10, v5

    .line 1730
    .restart local v10    # "locale":Ljava/lang/String;
    :goto_9b
    move-object/from16 v9, p2

    .line 1732
    .end local v4    # "i":I
    .restart local v9    # "bundleName":Ljava/lang/String;
    :goto_9d
    const/4 v4, 0x0

    .line 1733
    .local v4, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v5, 0x0

    .line 1734
    .local v5, "sub":Landroid/icu/impl/ICUResourceBundle;
    const-string v7, "LOCALE"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 1735
    move-object/from16 v9, p2

    .line 1736
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1739
    move-object v4, v1

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 1740
    :goto_ba
    iget-object v6, v4, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v6, :cond_c1

    .line 1741
    iget-object v4, v4, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    goto :goto_ba

    .line 1743
    :cond_c1
    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    move-object/from16 v11, p3

    goto :goto_fa

    .line 1745
    :cond_c9
    invoke-static {v9, v10, p1, v6}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 1748
    if-eqz v2, :cond_de

    .line 1749
    invoke-static {v2}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v7

    .line 1750
    .local v7, "numKeys":I
    if-lez v7, :cond_db

    .line 1751
    new-array v11, v7, [Ljava/lang/String;

    .line 1752
    .end local p3    # "keys":[Ljava/lang/String;
    .local v11, "keys":[Ljava/lang/String;
    invoke-static {v2, v7, v11, v6}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    goto :goto_e9

    .line 1750
    .end local v11    # "keys":[Ljava/lang/String;
    .restart local p3    # "keys":[Ljava/lang/String;
    :cond_db
    move-object/from16 v11, p3

    goto :goto_e9

    .line 1754
    .end local v7    # "numKeys":I
    :cond_de
    if-eqz p3, :cond_e5

    .line 1755
    move/from16 v7, p4

    move-object/from16 v11, p3

    .restart local v7    # "numKeys":I
    goto :goto_e9

    .line 1757
    .end local v7    # "numKeys":I
    :cond_e5
    move-object/from16 v6, p5

    .line 1758
    .end local p3    # "keys":[Ljava/lang/String;
    .local v6, "keys":[Ljava/lang/String;
    array-length v7, v0

    move-object v11, v6

    .line 1760
    .end local v6    # "keys":[Ljava/lang/String;
    .restart local v7    # "numKeys":I
    .restart local v11    # "keys":[Ljava/lang/String;
    :goto_e9
    if-lez v7, :cond_fa

    .line 1761
    move-object v5, v4

    .line 1762
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ed
    if-eqz v5, :cond_fa

    if-ge v6, v7, :cond_fa

    .line 1763
    aget-object v12, v11, v6

    invoke-virtual {v5, v12, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    .line 1762
    add-int/lit8 v6, v6, 0x1

    goto :goto_ed

    .line 1767
    .end local v6    # "i":I
    .end local v7    # "numKeys":I
    :cond_fa
    :goto_fa
    if-eqz v5, :cond_fd

    .line 1775
    return-object v5

    .line 1768
    :cond_fd
    new-instance v6, Ljava/util/MissingResourceException;

    array-length v7, v0

    sub-int/2addr v7, v8

    aget-object v7, v0, v7

    move-object/from16 v8, p2

    invoke-direct {v6, v10, v8, v7}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1696
    .end local v4    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "sub":Landroid/icu/impl/ICUResourceBundle;
    .end local v9    # "bundleName":Ljava/lang/String;
    .end local v10    # "locale":Ljava/lang/String;
    .end local v11    # "keys":[Ljava/lang/String;
    .restart local p3    # "keys":[Ljava/lang/String;
    :cond_109
    move-object/from16 v8, p2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Circular references in the resource bundles"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist getAllItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$Sink;Landroid/icu/util/UResourceBundle;)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "readerValue"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .param p3, "sink"    # Landroid/icu/impl/UResource$Sink;
    .param p4, "requested"    # Landroid/icu/util/UResourceBundle;

    .line 526
    move-object v0, p0

    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl;

    .line 527
    .local v0, "impl":Landroid/icu/impl/ICUResourceBundleImpl;
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleImpl;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v1, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 528
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v1

    iput v1, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 529
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->setString(Ljava/lang/String;)Landroid/icu/impl/UResource$Key;

    .line 530
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    invoke-virtual {p3, p1, p2, v1}, Landroid/icu/impl/UResource$Sink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 531
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_44

    .line 534
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 536
    .local v1, "parentBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v3

    .line 537
    .local v3, "depth":I
    if-nez v3, :cond_36

    .line 538
    move-object v2, v1

    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_3f

    .line 542
    .end local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_36
    new-array v4, v3, [Ljava/lang/String;

    .line 543
    .local v4, "pathKeys":[Ljava/lang/String;
    invoke-direct {p0, v4, v3}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 544
    invoke-static {v4, v2, v1, p4}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 546
    .end local v4    # "pathKeys":[Ljava/lang/String;
    .restart local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :goto_3f
    if-eqz v2, :cond_44

    .line 547
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$Sink;Landroid/icu/util/UResourceBundle;)V

    .line 550
    .end local v1    # "parentBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "depth":I
    :cond_44
    return-void
.end method

.method private static greylist-max-o getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 971
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    return-object v0
.end method

.method public static blacklist getAvailableLocaleNameSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 585
    const-string v0, "android/icu/impl/data/icudata"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .registers 3
    .param p0, "bundlePrefix"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 559
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleNameSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 3

    .line 635
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableLocales(Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;
    .registers 3
    .param p0, "type"    # Landroid/icu/util/ULocale$AvailableType;

    .line 643
    const-string v0, "android/icu/impl/data/icudata"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;
    .registers 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 651
    sget-object v0, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "type"    # Landroid/icu/util/ULocale$AvailableType;

    .line 627
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList(Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 3

    .line 602
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableULocales(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "type"    # Landroid/icu/util/ULocale$AvailableType;

    .line 610
    const-string v0, "android/icu/impl/data/icudata"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 618
    sget-object v0, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "type"    # Landroid/icu/util/ULocale$AvailableType;

    .line 594
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .registers 8
    .param p0, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 1610
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v0

    .line 1611
    .local v0, "rootRes":I
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1612
    new-instance v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    invoke-direct {v1, p1, p2, p3, p0}, Landroid/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V

    .line 1613
    .local v1, "wb":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    new-instance v2, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {v2, v1, v0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V

    .line 1614
    .end local v1    # "wb":Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    .local v2, "rootTable":Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    nop

    .line 1617
    const-string v1, "%%ALIAS"

    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1618
    .local v1, "aliasString":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 1619
    invoke-static {p1, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    return-object v3

    .line 1621
    :cond_28
    return-object v2

    .line 1615
    .end local v1    # "aliasString":Ljava/lang/String;
    .end local v2    # "rootTable":Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid format error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1277
    if-nez p1, :cond_6

    .line 1278
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 1280
    :cond_6
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v0, v1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .registers 10
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1286
    if-nez p0, :cond_6

    .line 1287
    const-string p0, "android/icu/impl/data/icudata"

    move-object v0, p0

    goto :goto_7

    .line 1286
    :cond_6
    move-object v0, p0

    .line 1289
    .end local p0    # "baseName":Ljava/lang/String;
    .local v0, "baseName":Ljava/lang/String;
    :goto_7
    invoke-static {p1}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1291
    .end local p1    # "localeID":Ljava/lang/String;
    .local v1, "localeID":Ljava/lang/String;
    sget-object p0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne p3, p0, :cond_1f

    .line 1292
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "root":Ljava/lang/ClassLoader;
    .end local p3    # "openType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    .local v4, "root":Ljava/lang/ClassLoader;
    .local v5, "openType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    .local p0, "b":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_27

    .line 1295
    .end local v4    # "root":Ljava/lang/ClassLoader;
    .end local v5    # "openType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    .end local p0    # "b":Landroid/icu/impl/ICUResourceBundle;
    .restart local p2    # "root":Ljava/lang/ClassLoader;
    .restart local p3    # "openType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    :cond_1f
    move-object v4, p2

    move-object v5, p3

    .end local p2    # "root":Ljava/lang/ClassLoader;
    .end local p3    # "openType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    .restart local v4    # "root":Ljava/lang/ClassLoader;
    .restart local v5    # "openType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    .line 1297
    .restart local p0    # "b":Landroid/icu/impl/ICUResourceBundle;
    :goto_27
    if-eqz p0, :cond_2a

    .line 1301
    return-object p0

    .line 1298
    :cond_2a
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find the bundle "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".res"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-direct {p1, p2, p3, p3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    .line 1271
    nop

    .line 1272
    if-eqz p3, :cond_6

    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    goto :goto_8

    :cond_6
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1271
    :goto_8
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "localeID":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/LocaleFallbackData;->DEFAULT_SCRIPT_TABLE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1323
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2a

    .line 1324
    sget-object v2, Landroid/icu/impl/LocaleFallbackData;->DEFAULT_SCRIPT_TABLE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 1326
    :cond_2a
    if-nez v1, :cond_2e

    .line 1327
    const-string v1, "Latn"

    .line 1329
    :cond_2e
    return-object v1
.end method

.method private static blacklist getExplicitParent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1317
    sget-object v0, Landroid/icu/impl/LocaleFallbackData;->PARENT_LOCALE_TABLE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getFullLocaleNameSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 567
    const-string v0, "android/icu/impl/data/icudata"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .registers 3
    .param p0, "bundlePrefix"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;
    .registers 26
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "locID"    # Landroid/icu/util/ULocale;
    .param p5, "isAvailable"    # [Z
    .param p6, "omitDefault"    # Z

    .line 119
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v4, v3}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "kwVal":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "baseLoc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 122
    .local v6, "defStr":Ljava/lang/String;
    new-instance v7, Landroid/icu/util/ULocale;

    invoke-direct {v7, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, "parent":Landroid/icu/util/ULocale;
    const/4 v8, 0x0

    .line 124
    .local v8, "defLoc":Landroid/icu/util/ULocale;
    const/4 v9, 0x0

    .line 125
    .local v9, "lookForDefault":Z
    const/4 v10, 0x0

    .line 126
    .local v10, "fullBase":Landroid/icu/util/ULocale;
    const/4 v11, 0x0

    .line 127
    .local v11, "defDepth":I
    const/4 v12, 0x0

    .line 129
    .local v12, "resDepth":I
    const-string v13, "default"

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2b

    .line 130
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 131
    :cond_2b
    const-string v0, ""

    .line 132
    const/4 v9, 0x1

    .line 136
    :cond_2e
    const/4 v14, 0x0

    .line 138
    .local v14, "r":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {v1, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/icu/impl/ICUResourceBundle;

    .line 139
    if-eqz p5, :cond_5e

    .line 140
    const/16 v16, 0x0

    aput-boolean v16, p5, v16

    .line 141
    const/16 v17, 0x1

    invoke-static/range {p0 .. p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v15

    move-object/from16 v18, v0

    .end local v0    # "kwVal":Ljava/lang/String;
    .local v18, "kwVal":Ljava/lang/String;
    sget-object v0, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    .line 142
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v0

    .line 143
    .local v0, "availableULocales":[Landroid/icu/util/ULocale;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4b
    array-length v4, v0

    if-ge v15, v4, :cond_62

    .line 144
    aget-object v4, v0, v15

    invoke-virtual {v7, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 145
    aput-boolean v17, p5, v16

    .line 146
    goto :goto_62

    .line 143
    :cond_59
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p4

    goto :goto_4b

    .line 139
    .end local v15    # "i":I
    .end local v18    # "kwVal":Ljava/lang/String;
    .local v0, "kwVal":Ljava/lang/String;
    :cond_5e
    move-object/from16 v18, v0

    const/16 v17, 0x1

    .line 153
    .end local v0    # "kwVal":Ljava/lang/String;
    .restart local v18    # "kwVal":Ljava/lang/String;
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {v14, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 154
    .local v0, "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0, v13}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_6c
    .catch Ljava/util/MissingResourceException; {:try_start_62 .. :try_end_6c} :catch_7e

    move-object v6, v4

    .line 155
    move/from16 v4, v17

    if-ne v9, v4, :cond_74

    .line 156
    move-object/from16 v18, v6

    .line 157
    const/4 v9, 0x0

    .line 159
    :cond_74
    :try_start_74
    invoke-virtual {v14}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v15
    :try_end_78
    .catch Ljava/util/MissingResourceException; {:try_start_74 .. :try_end_78} :catch_7c

    .line 162
    .end local v0    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v8    # "defLoc":Landroid/icu/util/ULocale;
    .local v15, "defLoc":Landroid/icu/util/ULocale;
    move-object v8, v15

    move-object/from16 v15, v18

    goto :goto_83

    .line 160
    .end local v15    # "defLoc":Landroid/icu/util/ULocale;
    .restart local v8    # "defLoc":Landroid/icu/util/ULocale;
    :catch_7c
    move-exception v0

    goto :goto_81

    :catch_7e
    move-exception v0

    move/from16 v4, v17

    :goto_81
    move-object/from16 v15, v18

    .line 163
    .end local v18    # "kwVal":Ljava/lang/String;
    .local v15, "kwVal":Ljava/lang/String;
    :goto_83
    if-nez v8, :cond_8c

    .line 164
    invoke-virtual {v14}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 165
    .end local v14    # "r":Landroid/icu/impl/ICUResourceBundle;
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v11, v11, 0x1

    move-object v14, v0

    .line 167
    .end local v0    # "r":Landroid/icu/impl/ICUResourceBundle;
    .restart local v14    # "r":Landroid/icu/impl/ICUResourceBundle;
    :cond_8c
    if-eqz v14, :cond_96

    if-eqz v8, :cond_91

    goto :goto_96

    :cond_91
    move/from16 v17, v4

    move-object/from16 v18, v15

    goto :goto_62

    .line 170
    :cond_96
    :goto_96
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 171
    .end local v7    # "parent":Landroid/icu/util/ULocale;
    .local v4, "parent":Landroid/icu/util/ULocale;
    invoke-static {v1, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    move-object v7, v6

    move-object v6, v0

    .line 175
    .end local v14    # "r":Landroid/icu/impl/ICUResourceBundle;
    .local v6, "r":Landroid/icu/impl/ICUResourceBundle;
    .local v7, "defStr":Ljava/lang/String;
    :cond_a4
    :try_start_a4
    invoke-virtual {v6, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 176
    .local v0, "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0, v15}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    .line 177
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v14

    move-object v10, v14

    .line 181
    if-eqz v10, :cond_c1

    if-le v12, v11, :cond_c1

    .line 182
    invoke-virtual {v0, v13}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 183
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v14
    :try_end_bf
    .catch Ljava/util/MissingResourceException; {:try_start_a4 .. :try_end_bf} :catch_c2

    move-object v8, v14

    .line 184
    move v11, v12

    .line 188
    .end local v0    # "irb":Landroid/icu/impl/ICUResourceBundle;
    :cond_c1
    goto :goto_c3

    .line 186
    :catch_c2
    move-exception v0

    .line 189
    :goto_c3
    if-nez v10, :cond_cc

    .line 190
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 191
    .end local v6    # "r":Landroid/icu/impl/ICUResourceBundle;
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v12, v12, 0x1

    move-object v6, v0

    .line 193
    .end local v0    # "r":Landroid/icu/impl/ICUResourceBundle;
    .restart local v6    # "r":Landroid/icu/impl/ICUResourceBundle;
    :cond_cc
    if-eqz v6, :cond_d0

    if-eqz v10, :cond_a4

    .line 195
    :cond_d0
    if-nez v10, :cond_146

    if-eqz v7, :cond_146

    .line 197
    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    .line 199
    move-object v15, v7

    .line 200
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 201
    invoke-static {v1, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 202
    .end local v6    # "r":Landroid/icu/impl/ICUResourceBundle;
    .restart local v0    # "r":Landroid/icu/impl/ICUResourceBundle;
    const/4 v6, 0x0

    move v12, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move v7, v6

    move-object v6, v0

    .line 206
    .end local v0    # "r":Landroid/icu/impl/ICUResourceBundle;
    .restart local v6    # "r":Landroid/icu/impl/ICUResourceBundle;
    .local v7, "resDepth":I
    .local v8, "defStr":Ljava/lang/String;
    .local v10, "defLoc":Landroid/icu/util/ULocale;
    .local v11, "fullBase":Landroid/icu/util/ULocale;
    .local v12, "defDepth":I
    :goto_ee
    :try_start_ee
    invoke-virtual {v6, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 207
    .local v0, "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0, v15}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    check-cast v14, Landroid/icu/impl/ICUResourceBundle;

    .line 210
    .local v14, "urb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v16

    move-object/from16 v11, v16

    .line 214
    invoke-virtual {v11}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v16
    :try_end_108
    .catch Ljava/util/MissingResourceException; {:try_start_ee .. :try_end_108} :catch_128

    move-object/from16 v17, v4

    .end local v4    # "parent":Landroid/icu/util/ULocale;
    .local v17, "parent":Landroid/icu/util/ULocale;
    :try_start_10a
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_116

    .line 215
    const/4 v2, 0x0

    move-object v11, v2

    .line 220
    :cond_116
    if-eqz v11, :cond_125

    if-le v7, v12, :cond_125

    .line 221
    invoke-virtual {v0, v13}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 222
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2
    :try_end_123
    .catch Ljava/util/MissingResourceException; {:try_start_10a .. :try_end_123} :catch_126

    move-object v10, v2

    .line 223
    move v12, v7

    .line 227
    .end local v0    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v14    # "urb":Landroid/icu/impl/ICUResourceBundle;
    :cond_125
    goto :goto_12b

    .line 225
    :catch_126
    move-exception v0

    goto :goto_12b

    .end local v17    # "parent":Landroid/icu/util/ULocale;
    .restart local v4    # "parent":Landroid/icu/util/ULocale;
    :catch_128
    move-exception v0

    move-object/from16 v17, v4

    .line 228
    .end local v4    # "parent":Landroid/icu/util/ULocale;
    .restart local v17    # "parent":Landroid/icu/util/ULocale;
    :goto_12b
    if-nez v11, :cond_134

    .line 229
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 230
    .end local v6    # "r":Landroid/icu/impl/ICUResourceBundle;
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    add-int/lit8 v7, v7, 0x1

    move-object v6, v0

    .line 232
    .end local v0    # "r":Landroid/icu/impl/ICUResourceBundle;
    .restart local v6    # "r":Landroid/icu/impl/ICUResourceBundle;
    :cond_134
    if-eqz v6, :cond_13e

    if-eqz v11, :cond_139

    goto :goto_13e

    :cond_139
    move-object/from16 v2, p2

    move-object/from16 v4, v17

    goto :goto_ee

    .line 235
    :cond_13e
    :goto_13e
    move v4, v12

    move v12, v7

    move-object v7, v8

    move-object v8, v10

    move-object v10, v11

    move v11, v4

    move-object/from16 v4, v17

    .end local v17    # "parent":Landroid/icu/util/ULocale;
    .restart local v4    # "parent":Landroid/icu/util/ULocale;
    .local v7, "defStr":Ljava/lang/String;
    .local v8, "defLoc":Landroid/icu/util/ULocale;
    .local v10, "fullBase":Landroid/icu/util/ULocale;
    .local v11, "defDepth":I
    .local v12, "resDepth":I
    :cond_146
    const-string v0, "="

    if-eqz v10, :cond_17e

    .line 241
    if-eqz p6, :cond_155

    .line 242
    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    if-gt v12, v11, :cond_155

    .line 244
    return-object v10

    .line 246
    :cond_155
    new-instance v2, Landroid/icu/util/ULocale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 236
    :cond_17e
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Could not find locale containing requested or default keyword."

    invoke-direct {v2, v13, v1, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static final blacklist getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v0, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    .line 260
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 263
    .local v1, "locales":[Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_4a

    .line 265
    :try_start_15
    aget-object v3, v1, v2

    invoke-static {p0, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 267
    .local v3, "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3, p1}, Landroid/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 268
    .local v4, "irb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 269
    .local v5, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_25
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 270
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 271
    .local v6, "s":Ljava/lang/String;
    const-string v7, "default"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    const-string v7, "private-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 273
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_46

    .line 275
    .end local v6    # "s":Ljava/lang/String;
    :cond_44
    goto :goto_25

    .line 280
    .end local v3    # "b":Landroid/icu/util/UResourceBundle;
    .end local v4    # "irb":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_45
    goto :goto_47

    .line 276
    :catchall_46
    move-exception v3

    .line 263
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 282
    :cond_4a
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static final blacklist getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;
    .registers 6
    .param p0, "ulocales"    # [Landroid/icu/util/ULocale;

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 664
    .local v1, "uniqueSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_24

    .line 665
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    .line 666
    .local v3, "loc":Ljava/util/Locale;
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 667
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 664
    .end local v3    # "loc":Ljava/util/Locale;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 671
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Locale;

    return-object v2
.end method

.method private greylist-max-o getNoFallback()Z
    .registers 2

    .line 1603
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist getParentLocaleID(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/ICUResourceBundle$OpenType;)Ljava/lang/String;
    .registers 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "origName"    # Ljava/lang/String;
    .param p2, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1334
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d5

    invoke-static {p0}, Landroid/icu/util/ULocale;->getVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_d5

    .line 1344
    :cond_15
    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v1, "nameLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1346
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 1347
    .local v4, "script":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 1354
    .local v5, "region":Ljava/lang/String;
    sget-object v6, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne p2, v6, :cond_3b

    .line 1355
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->getExplicitParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1356
    .local v6, "parentID":Ljava/lang/String;
    if-eqz v6, :cond_3b

    .line 1357
    const-string v0, "root"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move-object v2, v6

    :goto_3a
    return-object v2

    .line 1363
    .end local v6    # "parentID":Ljava/lang/String;
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7d

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 1367
    invoke-static {v3, v5}, Landroid/icu/impl/ICUResourceBundle;->getDefaultScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1370
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1372
    :cond_7d
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_bd

    .line 1376
    invoke-static {p1}, Landroid/icu/util/ULocale;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "origNameScript":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a3

    .line 1378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1380
    :cond_a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v5}, Landroid/icu/impl/ICUResourceBundle;->getDefaultScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1382
    .end local v2    # "origNameScript":Ljava/lang/String;
    :cond_bd
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1389
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne p2, v0, :cond_d3

    invoke-static {v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getDefaultScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    goto :goto_d3

    .line 1392
    :cond_d2
    return-object v2

    .line 1390
    :cond_d3
    :goto_d3
    return-object v3

    .line 1396
    :cond_d4
    return-object v2

    .line 1335
    .end local v1    # "nameLocale":Landroid/icu/util/ULocale;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "script":Ljava/lang/String;
    .end local v5    # "region":Ljava/lang/String;
    :cond_d5
    :goto_d5
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1336
    .local v0, "lastUnderbarPos":I
    if-ltz v0, :cond_e3

    .line 1337
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1339
    :cond_e3
    return-object v2
.end method

.method private greylist-max-o getResDepth()I
    .registers 2

    .line 1138
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0
.end method

.method private static greylist-max-o getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "num"    # I
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "start"    # I

    .line 1179
    if-nez p1, :cond_3

    .line 1180
    return-void

    .line 1182
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1183
    aput-object p0, p2, p3

    .line 1184
    return-void

    .line 1186
    :cond_9
    const/4 v0, 0x0

    .line 1188
    .local v0, "i":I
    :goto_a
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1189
    .local v1, "j":I
    nop

    .line 1190
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "start":I
    .local v2, "start":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, p3

    .line 1191
    const/4 p3, 0x2

    if-ne p1, p3, :cond_27

    .line 1192
    nop

    .line 1193
    add-int/lit8 p3, v1, 0x1

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    .line 1194
    nop

    .line 1200
    .end local v1    # "j":I
    return-void

    .line 1196
    .restart local v1    # "j":I
    :cond_27
    add-int/lit8 v0, v1, 0x1

    .line 1197
    nop

    .end local v1    # "j":I
    add-int/lit8 p1, p1, -0x1

    .line 1199
    move p3, v2

    goto :goto_a
.end method

.method private greylist-max-o getResPathKeys([Ljava/lang/String;I)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "depth"    # I

    .line 1149
    move-object v0, p0

    .line 1150
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    :goto_1
    if-lez p2, :cond_c

    .line 1151
    add-int/lit8 p2, p2, -0x1

    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    aput-object v1, p1, p2

    .line 1152
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    .line 1153
    goto :goto_1

    .line 1155
    :cond_c
    return-void
.end method

.method private static blacklist instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .registers 17
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "origLocaleID"    # Ljava/lang/String;
    .param p3, "defaultID"    # Ljava/lang/String;
    .param p4, "root"    # Ljava/lang/ClassLoader;
    .param p5, "openType"    # Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1403
    nop

    .line 1404
    nop

    .line 1405
    invoke-static/range {p0 .. p1}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "fullName":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/icu/impl/ICUResourceBundle$OpenType;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v8, v0

    .line 1407
    .local v8, "openTypeChar":C
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const/16 v2, 0x23

    move-object/from16 v5, p5

    if-eq v5, v0, :cond_2b

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 1409
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    move-object v9, v0

    .line 1410
    .local v9, "cacheKey":Ljava/lang/String;
    sget-object v10, Landroid/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/CacheBase;

    new-instance v0, Landroid/icu/impl/ICUResourceBundle$5;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/ICUResourceBundle$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9, v0}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method private static greylist-max-o localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "lang"    # Ljava/lang/String;

    .line 1305
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1305
    :goto_1f
    return v0
.end method


# virtual methods
.method public blacklist at(I)Landroid/icu/impl/ICUResourceBundle;
    .registers 3
    .param p1, "index"    # I

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public blacklist at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 328
    instance-of v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 329
    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0

    .line 331
    :cond_c
    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1204
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1205
    return v0

    .line 1207
    :cond_4
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_28

    .line 1208
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 1209
    .local v1, "o":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1210
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1211
    return v0

    .line 1214
    .end local v1    # "o":Landroid/icu/impl/ICUResourceBundle;
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;
    .registers 3
    .param p1, "index"    # I

    .line 336
    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public blacklist findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .registers 3
    .param p1, "aKey"    # Ljava/lang/String;

    .line 341
    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public bridge synthetic blacklist findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .registers 9
    .param p1, "aKey"    # Ljava/lang/String;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 1485
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 1486
    .local v0, "obj":Landroid/icu/impl/ICUResourceBundle;
    if-nez v0, :cond_4c

    .line 1487
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1488
    if-eqz v0, :cond_12

    .line 1490
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1492
    :cond_12
    if-eqz v0, :cond_15

    goto :goto_4c

    .line 1493
    :cond_15
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1494
    .local v1, "fullName":Ljava/lang/String;
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1499
    .end local v1    # "fullName":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public blacklist getAllChildrenWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/icu/impl/UResource$Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 511
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;

    invoke-direct {v0, p0, p2}, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;-><init>(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/impl/UResource$Sink;)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 512
    return-void
.end method

.method public blacklist getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/icu/impl/UResource$Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 415
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, "numPathKeys":I
    if-nez v0, :cond_8

    .line 418
    move-object v1, p0

    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_1b

    .line 421
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_8
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    .line 422
    .local v1, "depth":I
    add-int v2, v1, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 423
    .local v2, "pathKeys":[Ljava/lang/String;
    invoke-static {p1, v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 424
    const/4 v3, 0x0

    invoke-static {v2, v1, p0, v3}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 425
    .local v3, "rb":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v3, :cond_29

    move-object v1, v3

    .line 432
    .end local v2    # "pathKeys":[Ljava/lang/String;
    .end local v3    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    :goto_1b
    new-instance v2, Landroid/icu/impl/UResource$Key;

    invoke-direct {v2}, Landroid/icu/impl/UResource$Key;-><init>()V

    .line 433
    .local v2, "key":Landroid/icu/impl/UResource$Key;
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v3}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 434
    .local v3, "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    invoke-direct {v1, v2, v3, p2, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$Sink;Landroid/icu/util/UResourceBundle;)V

    .line 435
    return-void

    .line 426
    .local v1, "depth":I
    .local v2, "pathKeys":[Ljava/lang/String;
    .local v3, "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_29
    new-instance v4, Ljava/util/MissingResourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find resource for bundle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/icu/impl/UResource$Sink;

    .line 398
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_3} :catch_4

    .line 401
    goto :goto_5

    .line 399
    :catch_4
    move-exception v0

    .line 402
    :goto_5
    return-void
.end method

.method protected blacklist getBaseName()Ljava/lang/String;
    .registers 2

    .line 1567
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 1595
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 683
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getLocaleID()Ljava/lang/String;
    .registers 2

    .line 1562
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParent()Landroid/icu/impl/ICUResourceBundle;
    .registers 2

    .line 1585
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public bridge synthetic blacklist getParent()Landroid/icu/util/UResourceBundle;
    .registers 2

    .line 41
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 360
    move-object v0, p0

    .line 361
    .local v0, "actualBundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 370
    const-string v2, "\u2205\u2205\u2205"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 373
    return-object v1

    .line 371
    :cond_11
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "Encountered NO_INHERITANCE_MARKER"

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_1d
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public final blacklist getTopLevelKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-object v0
.end method

.method public greylist getULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 1573
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public blacklist getValueWithFallback(Ljava/lang/String;)Landroid/icu/impl/UResource$Value;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 379
    move-object v0, p0

    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_f

    .line 381
    .end local v0    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_8
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 382
    .restart local v0    # "rb":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v0, :cond_24

    .line 389
    :goto_f
    new-instance v1, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 390
    .local v1, "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    move-object v2, v0

    check-cast v2, Landroid/icu/impl/ICUResourceBundleImpl;

    .line 391
    .local v2, "impl":Landroid/icu/impl/ICUResourceBundleImpl;
    iget-object v3, v2, Landroid/icu/impl/ICUResourceBundleImpl;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v3, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v3, v1, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 392
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v3

    iput v3, v1, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 393
    return-object v1

    .line 383
    .end local v1    # "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .end local v2    # "impl":Landroid/icu/impl/ICUResourceBundleImpl;
    :cond_24
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 303
    move-object v0, p0

    .line 306
    .local v0, "actualBundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 308
    .local v1, "result":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_28

    .line 315
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2205\u2205\u2205"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_27

    .line 316
    :cond_1b
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "Encountered NO_INHERITANCE_MARKER"

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_27
    :goto_27
    return-object v1

    .line 309
    :cond_28
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected blacklist handleGetKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1804
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1219
    nop

    .line 1220
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist isRoot()Z
    .registers 3

    .line 1580
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method protected blacklist isTopLevelResource()Z
    .registers 2

    .line 1809
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist test-api setParent(Ljava/util/ResourceBundle;)V
    .registers 2
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    .line 1590
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1591
    return-void
.end method

.method public final blacklist setTopLevelKeySet(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1793
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p1, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    .line 1794
    return-void
.end method

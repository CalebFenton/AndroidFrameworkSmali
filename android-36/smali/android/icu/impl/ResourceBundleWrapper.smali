.class public final Landroid/icu/impl/ResourceBundleWrapper;
.super Landroid/icu/util/UResourceBundle;
.source "ResourceBundleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ResourceBundleWrapper$Loader;
    }
.end annotation


# static fields
.field private static blacklist BUNDLE_CACHE:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ResourceBundleWrapper;",
            "Landroid/icu/impl/ResourceBundleWrapper$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z


# instance fields
.field private blacklist baseName:Ljava/lang/String;

.field private blacklist bundle:Ljava/util/ResourceBundle;

.field private blacklist keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist localeID:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputbaseName(Landroid/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputlocaleID(Landroid/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitKeysVector(Landroid/icu/impl/ResourceBundleWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/icu/impl/ResourceBundleWrapper;->initKeysVector()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlocaleIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/ResourceBundleWrapper;->localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/icu/impl/ResourceBundleWrapper$1;

    invoke-direct {v0}, Landroid/icu/impl/ResourceBundleWrapper$1;-><init>()V

    sput-object v0, Landroid/icu/impl/ResourceBundleWrapper;->BUNDLE_CACHE:Landroid/icu/impl/CacheBase;

    .line 116
    const-string v0, "resourceBundleWrapper"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ResourceBundle;)V
    .registers 3
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .line 50
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    .line 33
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    .line 51
    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ResourceBundle;Landroid/icu/impl/ResourceBundleWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V
    .registers 2
    .param p0, "x0"    # Landroid/icu/impl/ResourceBundleWrapper;
    .param p1, "x1"    # Ljava/util/ResourceBundle;

    .line 31
    invoke-virtual {p0, p1}, Landroid/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V
    .registers 2
    .param p0, "x0"    # Landroid/icu/impl/ResourceBundleWrapper;
    .param p1, "x1"    # Ljava/util/ResourceBundle;

    .line 31
    invoke-virtual {p0, p1}, Landroid/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method public static blacklist getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;
    .registers 9
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    .line 121
    if-nez p2, :cond_6

    .line 122
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 125
    :cond_6
    if-eqz p3, :cond_e

    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    .local v0, "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto :goto_1a

    .line 128
    .end local v0    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :cond_e
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    .line 131
    .restart local v0    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :goto_1a
    if-nez v0, :cond_4b

    .line 132
    const-string v1, "_"

    .line 133
    .local v1, "separator":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_28

    .line 134
    const-string v1, "/"

    .line 136
    :cond_28
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find the bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v1    # "separator":Ljava/lang/String;
    :cond_4b
    return-object v0
.end method

.method private blacklist initKeysVector()V
    .registers 5

    .line 82
    move-object v0, p0

    .line 83
    .local v0, "current":Landroid/icu/impl/ResourceBundleWrapper;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    .line 84
    :goto_8
    if-eqz v0, :cond_32

    .line 85
    iget-object v1, v0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 86
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 87
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "elem":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 89
    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "elem":Ljava/lang/String;
    :cond_29
    goto :goto_10

    .line 92
    :cond_2a
    invoke-virtual {v0}, Landroid/icu/impl/ResourceBundleWrapper;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    .line 93
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    goto :goto_8

    .line 94
    :cond_32
    return-void
.end method

.method private static blacklist instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;
    .registers 14
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "defaultID"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/ClassLoader;
    .param p4, "disableFallback"    # Z

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_1f

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    move-object v7, v0

    .line 150
    .local v7, "name":Ljava/lang/String;
    if-eqz p4, :cond_24

    move-object v0, v7

    goto :goto_3b

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_3b
    sget-object v8, Landroid/icu/impl/ResourceBundleWrapper;->BUNDLE_CACHE:Landroid/icu/impl/CacheBase;

    new-instance v1, Landroid/icu/impl/ResourceBundleWrapper$2;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p0    # "baseName":Ljava/lang/String;
    .end local p1    # "localeID":Ljava/lang/String;
    .end local p2    # "defaultID":Ljava/lang/String;
    .end local p3    # "root":Ljava/lang/ClassLoader;
    .end local p4    # "disableFallback":Z
    .local v2, "localeID":Ljava/lang/String;
    .local v3, "baseName":Ljava/lang/String;
    .local v4, "defaultID":Ljava/lang/String;
    .local v5, "root":Ljava/lang/ClassLoader;
    .local v6, "disableFallback":Z
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/ResourceBundleWrapper$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ResourceBundleWrapper;

    return-object p0
.end method

.method private static blacklist localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "lang"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 143
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

    .line 142
    :goto_1f
    return v0
.end method


# virtual methods
.method protected blacklist getBaseName()Ljava/lang/String;
    .registers 4

    .line 102
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getLocaleID()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParent()Landroid/icu/util/UResourceBundle;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Landroid/icu/util/UResourceBundle;

    return-object v0
.end method

.method public blacklist getULocale()Landroid/icu/util/ULocale;
    .registers 3

    .line 107
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "aKey"    # Ljava/lang/String;

    .line 56
    move-object v0, p0

    .line 57
    .local v0, "current":Landroid/icu/impl/ResourceBundleWrapper;
    const/4 v1, 0x0

    .line 58
    .local v1, "obj":Ljava/lang/Object;
    :goto_2
    if-eqz v0, :cond_15

    .line 60
    :try_start_4
    iget-object v2, v0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_a} :catch_c

    move-object v1, v2

    .line 61
    goto :goto_15

    .line 62
    :catch_c
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/util/MissingResourceException;
    invoke-virtual {v0}, Landroid/icu/impl/ResourceBundleWrapper;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    .line 64
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    goto :goto_2

    .line 66
    :cond_15
    :goto_15
    if-eqz v1, :cond_18

    .line 73
    return-object v1

    .line 67
    :cond_18
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

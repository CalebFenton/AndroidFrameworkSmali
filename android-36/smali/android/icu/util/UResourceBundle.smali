.class public abstract Landroid/icu/util/UResourceBundle;
.super Ljava/util/ResourceBundle;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UResourceBundle$RootType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ARRAY:I = 0x8

.field public static final greylist-max-o BINARY:I = 0x1

.field public static final greylist-max-o INT:I = 0x7

.field public static final greylist-max-o INT_VECTOR:I = 0xe

.field public static final greylist-max-o NONE:I = -0x1

.field private static greylist-max-o ROOT_CACHE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/UResourceBundle$RootType;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o STRING:I = 0x0

.field public static final greylist-max-o TABLE:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 156
    return-void
.end method

.method public static greylist-max-o getBundleInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 166
    if-nez p0, :cond_6

    .line 167
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 169
    :cond_6
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;

    .line 181
    if-nez p0, :cond_4

    .line 182
    const-string p0, "android/icu/impl/data/icudata"

    .line 184
    :cond_4
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 185
    .local v0, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 220
    if-nez p0, :cond_4

    .line 221
    const-string p0, "android/icu/impl/data/icudata"

    .line 223
    :cond_4
    if-nez p1, :cond_a

    .line 224
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 226
    :cond_a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 264
    if-nez p0, :cond_4

    .line 265
    const-string p0, "android/icu/impl/data/icudata"

    .line 267
    :cond_4
    if-nez p1, :cond_a

    .line 268
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 270
    :cond_a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected static greylist-max-o getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    .line 147
    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;
    .registers 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 200
    if-nez p0, :cond_4

    .line 201
    const-string p0, "android/icu/impl/data/icudata"

    .line 203
    :cond_4
    if-nez p1, :cond_b

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 205
    .local v0, "uloc":Landroid/icu/util/ULocale;
    :goto_f
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getBundleInstance(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .registers 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 242
    if-nez p0, :cond_4

    .line 243
    const-string p0, "android/icu/impl/data/icudata"

    .line 245
    :cond_4
    if-nez p1, :cond_b

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 246
    .local v0, "uloc":Landroid/icu/util/ULocale;
    :goto_f
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle$RootType;
    .registers 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/lang/ClassLoader;

    .line 316
    sget-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/UResourceBundle$RootType;

    .line 318
    .local v0, "rootType":Landroid/icu/util/UResourceBundle$RootType;
    if-nez v0, :cond_30

    .line 319
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    const-string v1, "root"

    goto :goto_18

    :cond_16
    const-string v1, ""

    .line 321
    .local v1, "rootLocale":Ljava/lang/String;
    :goto_18
    const/4 v2, 0x1

    :try_start_19
    invoke-static {p0, v1, p1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    .line 322
    sget-object v2, Landroid/icu/util/UResourceBundle$RootType;->ICU:Landroid/icu/util/UResourceBundle$RootType;
    :try_end_1e
    .catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_1e} :catch_20

    .line 331
    .end local v0    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    .local v2, "rootType":Landroid/icu/util/UResourceBundle$RootType;
    move-object v0, v2

    goto :goto_2b

    .line 323
    .end local v2    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    .restart local v0    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    :catch_20
    move-exception v3

    .line 325
    .local v3, "ex":Ljava/util/MissingResourceException;
    :try_start_21
    invoke-static {p0, v1, p1, v2}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    .line 326
    sget-object v2, Landroid/icu/util/UResourceBundle$RootType;->JAVA:Landroid/icu/util/UResourceBundle$RootType;
    :try_end_26
    .catch Ljava/util/MissingResourceException; {:try_start_21 .. :try_end_26} :catch_28

    .line 330
    .end local v0    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    .restart local v2    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    move-object v0, v2

    goto :goto_2b

    .line 327
    .end local v2    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    .restart local v0    # "rootType":Landroid/icu/util/UResourceBundle$RootType;
    :catch_28
    move-exception v2

    .line 329
    .local v2, "e":Ljava/util/MissingResourceException;
    sget-object v0, Landroid/icu/util/UResourceBundle$RootType;->MISSING:Landroid/icu/util/UResourceBundle$RootType;

    .line 333
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    :goto_2b
    sget-object v2, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v1    # "rootLocale":Ljava/lang/String;
    :cond_30
    return-object v0
.end method

.method private greylist-max-o handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .registers 8
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    .line 827
    invoke-direct {p0, p1, p2}, Landroid/icu/util/UResourceBundle;->resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    .line 828
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_46

    .line 829
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 830
    .local v1, "parentBundle":Landroid/icu/util/UResourceBundle;
    if-eqz v1, :cond_10

    .line 831
    invoke-direct {v1, p1, p2}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    .line 833
    :cond_10
    if-eqz v0, :cond_13

    goto :goto_46

    .line 834
    :cond_13
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 839
    .end local v1    # "parentBundle":Landroid/icu/util/UResourceBundle;
    :cond_46
    :goto_46
    return-object v0
.end method

.method protected static greylist-max-o instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .registers 8
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    .line 357
    invoke-static {p0, p2}, Landroid/icu/util/UResourceBundle;->getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle$RootType;

    move-result-object v0

    .line 359
    .local v0, "rootType":Landroid/icu/util/UResourceBundle$RootType;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle$RootType;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 371
    :try_start_b
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1
    :try_end_f
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_f} :catch_20

    goto :goto_1a

    .line 364
    :pswitch_10
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v1

    return-object v1

    .line 361
    :pswitch_15
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1

    .line 373
    .local v1, "b":Landroid/icu/util/UResourceBundle;
    :goto_1a
    :try_start_1a
    sget-object v2, Landroid/icu/util/UResourceBundle$RootType;->ICU:Landroid/icu/util/UResourceBundle$RootType;

    invoke-static {p0, v2}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;Landroid/icu/util/UResourceBundle$RootType;)V
    :try_end_1f
    .catch Ljava/util/MissingResourceException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 378
    goto :goto_2b

    .line 374
    .end local v1    # "b":Landroid/icu/util/UResourceBundle;
    :catch_20
    move-exception v1

    .line 375
    .local v1, "ex":Ljava/util/MissingResourceException;
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v2

    .line 377
    .local v2, "b":Landroid/icu/util/UResourceBundle;
    sget-object v3, Landroid/icu/util/UResourceBundle$RootType;->JAVA:Landroid/icu/util/UResourceBundle$RootType;

    invoke-static {p0, v3}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;Landroid/icu/util/UResourceBundle$RootType;)V

    move-object v1, v2

    .line 379
    .end local v2    # "b":Landroid/icu/util/UResourceBundle;
    .local v1, "b":Landroid/icu/util/UResourceBundle;
    :goto_2b
    return-object v1

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method private greylist-max-o resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .registers 6
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "requested"    # Landroid/icu/util/UResourceBundle;

    .line 845
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v0

    if-nez v0, :cond_b

    .line 846
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 849
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v0, :cond_2d

    .line 850
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_1d

    .line 851
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 854
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2a

    .line 855
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->handleGetStringArray()[Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Landroid/icu/util/UResourceTypeMismatchException; {:try_start_1d .. :try_end_29} :catch_2b

    return-object v1

    .line 859
    :cond_2a
    goto :goto_2d

    .line 857
    :catch_2b
    move-exception v1

    .line 858
    .local v1, "ex":Landroid/icu/util/UResourceTypeMismatchException;
    return-object v0

    .line 861
    .end local v1    # "ex":Landroid/icu/util/UResourceTypeMismatchException;
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private static greylist-max-o setRootType(Ljava/lang/String;Landroid/icu/util/UResourceBundle$RootType;)V
    .registers 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "rootType"    # Landroid/icu/util/UResourceBundle$RootType;

    .line 340
    sget-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void
.end method


# virtual methods
.method protected greylist-max-o findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .registers 4
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    move-object v0, p0

    .local v0, "res":Landroid/icu/util/UResourceBundle;
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 581
    invoke-virtual {v0, p1, v1, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 582
    .local v1, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v1, :cond_b

    .line 583
    return-object v1

    .line 580
    .end local v1    # "obj":Landroid/icu/util/UResourceBundle;
    :cond_b
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_1

    .line 586
    .end local v0    # "res":Landroid/icu/util/UResourceBundle;
    :cond_10
    return-object v1
.end method

.method protected greylist-max-o findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 4
    .param p1, "aKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    move-object v0, p0

    .local v0, "res":Landroid/icu/util/UResourceBundle;
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 514
    invoke-virtual {v0, p1, v1, p0}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 515
    .local v1, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v1, :cond_b

    .line 516
    return-object v1

    .line 513
    .end local v1    # "obj":Landroid/icu/util/UResourceBundle;
    :cond_b
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_1

    .line 519
    .end local v0    # "res":Landroid/icu/util/UResourceBundle;
    :cond_10
    return-object v1
.end method

.method public greylist-max-o get(I)Landroid/icu/util/UResourceBundle;
    .registers 7
    .param p1, "index"    # I

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 548
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_4f

    .line 549
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_11

    .line 551
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 553
    :cond_11
    if-eqz v0, :cond_14

    goto :goto_4f

    .line 554
    :cond_14
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 557
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public greylist-max-o get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 7
    .param p1, "aKey"    # Ljava/lang/String;

    .line 488
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 489
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    if-eqz v0, :cond_7

    .line 495
    return-object v0

    .line 490
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
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

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract greylist-max-o getBaseName()Ljava/lang/String;
.end method

.method public greylist-max-o getBinary()Ljava/nio/ByteBuffer;
    .registers 3

    .line 394
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getBinary([B)[B
    .registers 4
    .param p1, "ba"    # [B

    .line 437
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getInt()I
    .registers 3

    .line 463
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getIntVector()[I
    .registers 3

    .line 450
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getIterator()Landroid/icu/util/UResourceBundleIterator;
    .registers 2

    .line 704
    new-instance v0, Landroid/icu/util/UResourceBundleIterator;

    invoke-direct {v0, p0}, Landroid/icu/util/UResourceBundleIterator;-><init>(Landroid/icu/util/UResourceBundle;)V

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 2

    .line 714
    const/4 v0, 0x0

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

    .line 596
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 308
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected abstract greylist-max-o getLocaleID()Ljava/lang/String;
.end method

.method protected abstract greylist-max-o getParent()Landroid/icu/util/UResourceBundle;
.end method

.method public greylist-max-o getSize()I
    .registers 2

    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getString()Ljava/lang/String;
    .registers 3

    .line 409
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 531
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 532
    .local v0, "temp":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_11

    .line 533
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 535
    :cond_11
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getStringArray()[Ljava/lang/String;
    .registers 3

    .line 422
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getType()I
    .registers 2

    .line 686
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getUInt()I
    .registers 3

    .line 477
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o getULocale()Landroid/icu/util/ULocale;
.end method

.method public greylist-max-o getVersion()Landroid/icu/util/VersionInfo;
    .registers 2

    .line 695
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p1, "index"    # I
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 784
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 5
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
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 769
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o handleGetKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "aKey"    # Ljava/lang/String;

    .line 814
    invoke-direct {p0, p1, p0}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o handleGetStringArray()[Ljava/lang/String;
    .registers 2

    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api handleKeySet()Ljava/util/Set;
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

    .line 661
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o isTopLevelResource()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 6
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

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 616
    .local v1, "icurb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v2

    if-eqz v2, :cond_13

    instance-of v2, p0, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v2, :cond_13

    .line 619
    move-object v1, p0

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 620
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getTopLevelKeySet()Ljava/util/Set;

    move-result-object v0

    .line 622
    :cond_13
    if-nez v0, :cond_6a

    .line 623
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 625
    iget-object v2, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v2, :cond_25

    .line 626
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .local v2, "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    goto :goto_54

    .line 627
    .end local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_25
    iget-object v2, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    instance-of v2, v2, Landroid/icu/util/UResourceBundle;

    if-eqz v2, :cond_39

    .line 628
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v3, Landroid/icu/util/UResourceBundle;

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .restart local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    goto :goto_54

    .line 632
    .end local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_39
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 633
    .restart local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 634
    .local v3, "parentKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_44
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 635
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 638
    .end local v3    # "parentKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 639
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 640
    if-eqz v1, :cond_64

    .line 641
    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->setTopLevelKeySet(Ljava/util/Set;)V

    .line 643
    .end local v2    # "newKeySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_64
    goto :goto_6a

    .line 644
    :cond_65
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 647
    :cond_6a
    :goto_6a
    return-object v0
.end method

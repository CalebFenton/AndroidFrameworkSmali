.class Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;
.super Ljava/lang/ClassLoader;
.source "BundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/BundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitCompatClassLoader"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SplitCompatClassLoader"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 332
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 333
    const-string v0, "Splits: %s"

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfgetsSplitsToRestore()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "SplitCompatClassLoader"

    invoke-static {v2, v0, v1}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method private blacklist checkSplitsClassLoaders(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfgetsInflationClassLoaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 339
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_18
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-object v0

    .line 340
    :catch_1d
    move-exception v2

    .line 342
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    goto :goto_c

    .line 343
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist restoreSplitsClassLoaders()V
    .registers 4

    .line 378
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfgetsSplitsToRestore()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 379
    .local v1, "splitName":Ljava/lang/String;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfgetsInflationClassLoaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 380
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->registerSplitClassLoaderForInflation(Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 382
    .end local v1    # "splitName":Ljava/lang/String;
    :cond_21
    goto :goto_8

    .line 383
    :cond_22
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfputsSplitsToRestore(Ljava/util/ArrayList;)V

    .line 384
    return-void
.end method


# virtual methods
.method public whitelist test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p1, "cn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;->checkSplitsClassLoaders(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 350
    .local v0, "foundClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_7

    .line 351
    return-object v0

    .line 356
    :cond_7
    const-string v1, "android."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 360
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfgetsSplitsToRestore()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 361
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;->restoreSplitsClassLoaders()V

    .line 362
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;->checkSplitsClassLoaders(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_1f

    .line 364
    return-object v0

    .line 367
    :cond_1f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->-$$Nest$sfgetsInflationClassLoaders()Ljava/util/Map;

    move-result-object v1

    .line 371
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 367
    const-string v2, "SplitCompatClassLoader"

    const-string v3, "No class %s amongst %s"

    invoke-static {v2, v3, p1, v1}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    :cond_34
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final greylist-max-o CLASS0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider$UString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o className:Ljava/lang/String;

.field private volatile greylist-max-o classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist constructorCache:Ljava/lang/Object;

.field private volatile greylist-max-o hasKeyAttributes:Ljava/lang/Boolean;

.field private final greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o registered:Z

.field private greylist-max-o supportedClasses:[Ljava/lang/Class;

.field private greylist-max-o supportedFormats:[Ljava/lang/String;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetattributes(Ljava/security/Provider$Service;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputalgorithm(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputclassName(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtype(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddAlias(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAliases(Ljava/security/Provider$Service;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValid(Ljava/security/Provider$Service;)Z
    .registers 1

    invoke-direct {p0}, Ljava/security/Provider$Service;->isValid()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1461
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/security/Provider;)V
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1469
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1470
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1506
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    if-eqz p3, :cond_63

    if-eqz p4, :cond_63

    .line 1511
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1512
    invoke-static {p2}, Ljava/security/Provider;->-$$Nest$smgetEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1513
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1514
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1515
    if-nez p5, :cond_20

    .line 1516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    goto :goto_27

    .line 1518
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1520
    :goto_27
    if-nez p6, :cond_30

    .line 1521
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    goto :goto_62

    .line 1523
    :cond_30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1524
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1525
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v3, Ljava/security/Provider$UString;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3f

    .line 1528
    :cond_62
    :goto_62
    return-void

    .line 1509
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/security/Provider;Ljava/security/Provider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method private greylist-max-o addAlias(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1477
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1480
    :cond_10
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    return-void
.end method

.method private final greylist-max-o getAliases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1569
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method private blacklist getDefaultConstructor()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Ljava/security/Provider$Service;->constructorCache:Ljava/lang/Object;

    .line 1746
    .local v0, "cache":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 1747
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    return-object v1

    .line 1749
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_a
    const/4 v1, 0x0

    .line 1750
    .restart local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    instance-of v2, v0, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_19

    move-object v2, v0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1751
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 1753
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :cond_19
    if-nez v1, :cond_35

    .line 1754
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1755
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1756
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 1757
    move-object v3, v1

    goto :goto_33

    :cond_2e
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_33
    iput-object v3, p0, Ljava/security/Provider$Service;->constructorCache:Ljava/lang/Object;

    .line 1759
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    return-object v1
.end method

.method private greylist-max-o getImplClass()Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1718
    const-string v0, " (provider: "

    const-string v1, "class configured for "

    :try_start_4
    iget-object v2, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    .line 1719
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    if-nez v2, :cond_a

    const/4 v3, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 1720
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    if-nez v3, :cond_6c

    .line 1721
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1722
    .local v4, "cl":Ljava/lang/ClassLoader;
    if-nez v4, :cond_26

    .line 1723
    iget-object v5, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2d

    .line 1725
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_26
    iget-object v5, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v5

    .line 1727
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2d
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1732
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    goto :goto_6c

    .line 1728
    :cond_3f
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1730
    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is not public."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/Provider$Service;
    throw v5
    :try_end_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6c} :catch_6d

    .line 1734
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Ljava/security/Provider$Service;
    :cond_6c
    :goto_6c
    return-object v3

    .line 1735
    .end local v2    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_6d
    move-exception v2

    .line 1736
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1738
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cannot be found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o getKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1865
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1866
    :catch_5
    move-exception v0

    .line 1870
    :try_start_6
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1871
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_17

    .line 1872
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_16} :catch_18

    return-object v1

    .line 1876
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_17
    goto :goto_19

    .line 1874
    :catch_18
    move-exception v0

    .line 1877
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o hasKeyAttributes()Z
    .registers 10

    .line 1825
    iget-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1826
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_60

    .line 1827
    monitor-enter p0

    .line 1831
    :try_start_5
    iget-object v1, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    move-object v0, v1

    .line 1832
    if-nez v0, :cond_5b

    .line 1834
    const-string v1, "SupportedKeyFormats"

    invoke-virtual {p0, v1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1835
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1836
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    .line 1838
    :cond_1a
    const-string v2, "SupportedKeyClasses"

    invoke-virtual {p0, v2}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1839
    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v2, :cond_4b

    .line 1840
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1841
    .local v3, "classNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1843
    .local v4, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v5, v3

    move v6, v1

    :goto_31
    if-ge v6, v5, :cond_41

    aget-object v7, v3, v6

    .line 1844
    .local v7, "className":Ljava/lang/String;
    invoke-direct {p0, v7}, Ljava/security/Provider$Service;->getKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1845
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_3e

    .line 1846
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 1849
    :cond_41
    sget-object v5, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    iput-object v5, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    .line 1851
    .end local v3    # "classNames":[Ljava/lang/String;
    .end local v4    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_4b
    iget-object v3, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v3, :cond_53

    iget-object v3, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-eqz v3, :cond_54

    :cond_53
    const/4 v1, 0x1

    .line 1853
    .local v1, "bool":Z
    :cond_54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .line 1854
    iput-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1857
    .end local v1    # "bool":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_5b
    monitor-exit p0

    goto :goto_60

    :catchall_5d
    move-exception v1

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw v1

    .line 1859
    :cond_60
    :goto_60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o isValid()Z
    .registers 2

    .line 1473
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist newInstanceOf()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1674
    invoke-direct {p0}, Ljava/security/Provider$Service;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1675
    .local v0, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {}, Ljava/security/Provider;->-$$Nest$sfgetEMPTY()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist newInstanceUtil(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p2, "ctorParamObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1681
    .local p1, "ctrParamClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_7

    .line 1682
    invoke-direct {p0}, Ljava/security/Provider$Service;->newInstanceOf()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1692
    :cond_7
    :try_start_7
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1693
    .local v0, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_1d} :catch_1e

    return-object v1

    .line 1694
    .end local v0    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1e
    move-exception v0

    .line 1701
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    if-nez p2, :cond_2b

    .line 1703
    :try_start_21
    invoke-direct {p0}, Ljava/security/Provider$Service;->newInstanceOf()Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_25} :catch_26

    return-object v1

    .line 1704
    :catch_26
    move-exception v1

    .line 1705
    .local v1, "nsme2":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0, v1}, Ljava/lang/NoSuchMethodException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1706
    throw v0

    .line 1709
    .end local v1    # "nsme2":Ljava/lang/NoSuchMethodException;
    :cond_2b
    throw v0
.end method

.method private greylist-max-o supportsKeyClass(Ljava/security/Key;)Z
    .registers 9
    .param p1, "key"    # Ljava/security/Key;

    .line 1897
    iget-object v0, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1898
    return v1

    .line 1900
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1901
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    array-length v3, v2

    move v4, v1

    :goto_e
    if-ge v4, v3, :cond_1d

    aget-object v5, v2, v4

    .line 1902
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1903
    const/4 v1, 0x1

    return v1

    .line 1901
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1906
    :cond_1d
    return v1
.end method

.method private greylist-max-o supportsKeyFormat(Ljava/security/Key;)Z
    .registers 9
    .param p1, "key"    # Ljava/security/Key;

    .line 1881
    iget-object v0, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1882
    return v1

    .line 1884
    :cond_6
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1886
    return v1

    .line 1888
    :cond_d
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_11
    if-ge v4, v3, :cond_20

    aget-object v5, v2, v4

    .line 1889
    .local v5, "supportedFormat":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1890
    const/4 v1, 0x1

    return v1

    .line 1888
    .end local v5    # "supportedFormat":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1893
    :cond_20
    return v1
.end method


# virtual methods
.method greylist-max-o addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1484
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1485
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1487
    :cond_11
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    return-void
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 1546
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1584
    if-eqz p1, :cond_10

    .line 1587
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1585
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getClassName()Ljava/lang/String;
    .registers 2

    .line 1564
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 1555
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 1536
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1618
    const-string v0, ")"

    const-string v1, ", class: "

    const-string v2, ", provider: "

    const-string v3, "Error constructing implementation (algorithm: "

    iget-boolean v4, p0, Ljava/security/Provider$Service;->registered:Z

    if-nez v4, :cond_45

    .line 1619
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    if-ne v4, p0, :cond_1c

    .line 1624
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/security/Provider$Service;->registered:Z

    goto :goto_45

    .line 1620
    :cond_1c
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not registered with Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1622
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1630
    :cond_45
    :goto_45
    :try_start_45
    invoke-static {}, Ljava/security/Provider;->-$$Nest$sfgetknownEngines()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$EngineDescription;

    .line 1631
    .local v4, "cap":Ljava/security/Provider$EngineDescription;
    const/4 v5, 0x0

    if-nez v4, :cond_5c

    .line 1635
    if-nez p1, :cond_57

    .line 1636
    goto :goto_5b

    :cond_57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .local v5, "ctrParamClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5b
    goto :goto_c7

    .line 1638
    .end local v5    # "ctrParamClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5c
    iget-object v6, v4, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    if-nez v6, :cond_61

    .line 1639
    :goto_60
    goto :goto_68

    :cond_61
    iget-object v5, v4, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_60

    .line 1640
    .restart local v5    # "ctrParamClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_68
    if-eqz p1, :cond_c7

    .line 1641
    if-eqz v5, :cond_a6

    .line 1646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1647
    .local v6, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_77

    goto :goto_c7

    .line 1648
    :cond_77
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "constructorParameter must be instanceof "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    .line 1650
    const/16 v10, 0x24

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for engine type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/Provider$Service;
    .end local p1    # "constructorParameter":Ljava/lang/Object;
    throw v7

    .line 1642
    .end local v6    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "this":Ljava/security/Provider$Service;
    .restart local p1    # "constructorParameter":Ljava/lang/Object;
    :cond_a6
    new-instance v6, Ljava/security/InvalidParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "constructorParameter not used with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " engines"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/Provider$Service;
    .end local p1    # "constructorParameter":Ljava/lang/Object;
    throw v6

    .line 1657
    .restart local p0    # "this":Ljava/security/Provider$Service;
    .restart local p1    # "constructorParameter":Ljava/lang/Object;
    :cond_c7
    :goto_c7
    invoke-direct {p0, v5, p1}, Ljava/security/Provider$Service;->newInstanceUtil(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_cb} :catch_13c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_cb} :catch_102
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_cb} :catch_cc

    return-object v0

    .line 1665
    .end local v4    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v5    # "ctrParamClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_cc
    move-exception v4

    .line 1666
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1668
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1660
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_102
    move-exception v4

    .line 1661
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1663
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1664
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1658
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_13c
    move-exception v0

    .line 1659
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    throw v0
.end method

.method public whitelist test-api supportsParameter(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "parameter"    # Ljava/lang/Object;

    .line 1790
    invoke-static {}, Ljava/security/Provider;->-$$Nest$sfgetknownEngines()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1791
    .local v0, "cap":Ljava/security/Provider$EngineDescription;
    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 1793
    return v1

    .line 1795
    :cond_10
    iget-boolean v2, v0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    if-eqz v2, :cond_53

    .line 1800
    if-eqz p1, :cond_36

    instance-of v2, p1, Ljava/security/Key;

    if-eqz v2, :cond_1b

    goto :goto_36

    .line 1801
    :cond_1b
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be instanceof Key for engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1804
    :cond_36
    :goto_36
    invoke-direct {p0}, Ljava/security/Provider$Service;->hasKeyAttributes()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1805
    return v1

    .line 1807
    :cond_3d
    const/4 v2, 0x0

    if-nez p1, :cond_41

    .line 1808
    return v2

    .line 1810
    :cond_41
    move-object v3, p1

    check-cast v3, Ljava/security/Key;

    .line 1811
    .local v3, "key":Ljava/security/Key;
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->supportsKeyFormat(Ljava/security/Key;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1812
    return v1

    .line 1814
    :cond_4b
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->supportsKeyClass(Ljava/security/Key;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1815
    return v1

    .line 1817
    :cond_52
    return v2

    .line 1796
    .end local v3    # "key":Ljava/security/Key;
    :cond_53
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportsParameter() not used with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " engines"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1915
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    .line 1916
    move-object v0, v1

    goto :goto_25

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n  aliases: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, "aString":Ljava/lang/String;
    :goto_25
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1918
    goto :goto_47

    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n  attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, "attrs":Ljava/lang/String;
    :goto_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

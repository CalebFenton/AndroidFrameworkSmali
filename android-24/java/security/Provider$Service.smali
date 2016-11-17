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
.field private static final CLASS0:[Ljava/lang/Class;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$UString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private volatile classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasKeyAttributes:Ljava/lang/Boolean;

.field private final provider:Ljava/security/Provider;

.field private registered:Z

.field private supportedClasses:[Ljava/lang/Class;

.field private supportedFormats:[Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/Provider$Service;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/security/Provider$Service;->isValid()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/security/Provider$Service;)Ljava/util/List;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1083
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    sput-object v0, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    #@5
    .line 1058
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;)V
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1089
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@5
    .line 1090
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@b
    .line 1091
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@11
    .line 1088
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1126
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1129
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 1131
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v2

    #@d
    .line 1130
    :cond_1
    if-eqz p3, :cond_0

    #@f
    if-eqz p4, :cond_0

    #@11
    .line 1133
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@13
    .line 1135
    iput-object p2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@15
    .line 1136
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@17
    .line 1137
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@19
    .line 1138
    if-nez p5, :cond_3

    #@1b
    .line 1139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@21
    .line 1143
    :goto_0
    if-nez p6, :cond_4

    #@23
    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@29
    .line 1128
    :cond_2
    return-void

    #@2a
    .line 1141
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2f
    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@31
    goto :goto_0

    #@32
    .line 1146
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    #@34
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@37
    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@39
    .line 1147
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3c
    move-result-object v2

    #@3d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v1

    #@41
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_2

    #@47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Ljava/util/Map$Entry;

    #@4d
    .line 1148
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@4f
    new-instance v4, Ljava/security/Provider$UString;

    #@51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Ljava/lang/String;

    #@57
    invoke-direct {v4, v2}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    #@5a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Ljava/lang/String;

    #@60
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;)V

    #@3
    return-void
.end method

.method private addAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1099
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@10
    .line 1102
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 1098
    return-void
.end method

.method private final getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1192
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@2
    return-object v0
.end method

.method private getImplClass()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1298
    :try_start_0
    iget-object v3, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    #@2
    .line 1299
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class;>;"
    if-nez v3, :cond_1

    #@4
    const/4 v1, 0x0

    #@5
    .line 1300
    :goto_0
    if-nez v1, :cond_0

    #@7
    .line 1301
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@9
    invoke-virtual {v4}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    .line 1302
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    #@13
    .line 1303
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@15
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@18
    move-result-object v1

    #@19
    .line 1307
    .local v1, "clazz":Ljava/lang/Class;
    :goto_1
    new-instance v4, Ljava/lang/ref/WeakReference;

    #@1b
    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1e
    iput-object v4, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    #@20
    .line 1309
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    return-object v1

    #@21
    .line 1299
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Ljava/lang/Class;

    #@27
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_0

    #@28
    .line 1305
    .end local v1    # "clazz":Ljava/lang/Class;
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result-object v1

    #@2e
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    #@2f
    .line 1310
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class;>;"
    :catch_0
    move-exception v2

    #@30
    .line 1311
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    #@32
    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v6, "class configured for "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    const-string/jumbo v6, "(provider: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 1313
    iget-object v6, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@4d
    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    .line 1312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 1313
    const-string/jumbo v6, ")"

    #@58
    .line 1312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    .line 1313
    const-string/jumbo v6, "cannot be found."

    #@5f
    .line 1312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 1311
    invoke-direct {v4, v5, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6a
    throw v4
.end method

.method private getKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1445
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v2

    #@5
    return-object v2

    #@6
    .line 1446
    :catch_0
    move-exception v1

    #@7
    .line 1450
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@9
    invoke-virtual {v2}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    .line 1451
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@13
    .line 1452
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 1454
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v1

    #@19
    .line 1457
    :cond_0
    return-object v3
.end method

.method private hasKeyAttributes()Z
    .locals 10

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1412
    iget-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    #@4
    .line 1413
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_5

    #@6
    .line 1414
    monitor-enter p0

    #@7
    .line 1416
    :try_start_0
    const-string/jumbo v7, "SupportedKeyFormats"

    #@a
    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    .line 1417
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@10
    .line 1418
    const-string/jumbo v7, "\\|"

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    iput-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    #@19
    .line 1420
    :cond_0
    const-string/jumbo v7, "SupportedKeyClasses"

    #@1c
    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 1421
    if-eqz v6, :cond_3

    #@22
    .line 1422
    const-string/jumbo v7, "\\|"

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 1424
    .local v4, "classNames":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    array-length v7, v4

    #@2c
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    .line 1425
    .local v2, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    array-length v9, v4

    #@30
    move v7, v8

    #@31
    :goto_0
    if-ge v7, v9, :cond_2

    #@33
    aget-object v3, v4, v7

    #@35
    .line 1426
    .local v3, "className":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->getKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    #@38
    move-result-object v5

    #@39
    .line 1427
    .local v5, "clazz":Ljava/lang/Class;
    if-eqz v5, :cond_1

    #@3b
    .line 1428
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    .line 1425
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1431
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/Class;
    :cond_2
    sget-object v7, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    #@43
    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, [Ljava/lang/Class;

    #@49
    iput-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    #@4b
    .line 1433
    .end local v2    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    .end local v4    # "classNames":[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    #@4d
    if-nez v7, :cond_4

    #@4f
    .line 1434
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    #@51
    if-eqz v7, :cond_6

    #@53
    .line 1435
    .local v1, "bool":Z
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v0

    #@57
    .line 1436
    iput-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 1439
    .end local v1    # "bool":Z
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@5d
    move-result v7

    #@5e
    return v7

    #@5f
    .restart local v6    # "s":Ljava/lang/String;
    :cond_6
    move v1, v8

    #@60
    .line 1434
    goto :goto_1

    #@61
    .line 1414
    .end local v6    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@62
    monitor-exit p0

    #@63
    throw v7
.end method

.method private isValid()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1095
    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1324
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 1325
    .local v1, "clazz":Ljava/lang/Class;
    if-nez p1, :cond_0

    #@8
    .line 1326
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    .line 1327
    .local v5, "o":Ljava/lang/Object;
    return-object v5

    #@d
    .line 1329
    .end local v5    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    .line 1330
    .local v0, "argClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    #@14
    move-result-object v3

    #@15
    .line 1333
    .local v3, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    #@16
    .local v4, "i":I
    :goto_0
    array-length v7, v3

    #@17
    if-ge v4, v7, :cond_3

    #@19
    .line 1334
    aget-object v2, v3, v4

    #@1b
    .line 1335
    .local v2, "con":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@1e
    move-result-object v6

    #@1f
    .line 1336
    .local v6, "paramTypes":[Ljava/lang/Class;
    array-length v7, v6

    #@20
    if-eq v7, v9, :cond_2

    #@22
    .line 1333
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1339
    :cond_2
    aget-object v7, v6, v8

    #@27
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_1

    #@2d
    .line 1342
    new-array v7, v9, [Ljava/lang/Object;

    #@2f
    aput-object p1, v7, v8

    #@31
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    .line 1343
    .restart local v5    # "o":Ljava/lang/Object;
    return-object v5

    #@36
    .line 1345
    .end local v2    # "con":Ljava/lang/reflect/Constructor;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    :cond_3
    new-instance v7, Ljava/security/NoSuchAlgorithmException;

    #@38
    new-instance v8, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v9, "No constructor matching "

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    .line 1346
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    .line 1345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    .line 1346
    const-string/jumbo v9, " found in class "

    #@4f
    .line 1345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    .line 1346
    iget-object v9, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@55
    .line 1345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    invoke-direct {v7, v8}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@60
    throw v7
.end method

.method private supportsKeyClass(Ljava/security/Key;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1477
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1478
    return v3

    #@6
    .line 1480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    .line 1481
    .local v1, "keyClass":Ljava/lang/Class;
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    #@c
    array-length v5, v4

    #@d
    move v2, v3

    #@e
    :goto_0
    if-ge v2, v5, :cond_2

    #@10
    aget-object v0, v4, v2

    #@12
    .line 1482
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 1483
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1481
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1486
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_2
    return v3
.end method

.method private supportsKeyFormat(Ljava/security/Key;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1461
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1462
    return v3

    #@6
    .line 1464
    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1465
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_1

    #@c
    .line 1466
    return v3

    #@d
    .line 1468
    :cond_1
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    #@f
    array-length v5, v4

    #@10
    move v2, v3

    #@11
    :goto_0
    if-ge v2, v5, :cond_3

    #@13
    aget-object v1, v4, v2

    #@15
    .line 1469
    .local v1, "supportedFormat":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2

    #@1b
    .line 1470
    const/4 v2, 0x1

    #@1c
    return v2

    #@1d
    .line 1468
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1473
    .end local v1    # "supportedFormat":Ljava/lang/String;
    :cond_3
    return v3
.end method


# virtual methods
.method addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1106
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1107
    new-instance v0, Ljava/util/HashMap;

    #@a
    const/16 v1, 0x8

    #@c
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@f
    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@11
    .line 1109
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@13
    new-instance v1, Ljava/security/Provider$UString;

    #@15
    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 1105
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1169
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1207
    if-nez p1, :cond_0

    #@2
    .line 1208
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1210
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@a
    new-instance v1, Ljava/security/Provider$UString;

    #@c
    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    #@f
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 1178
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1159
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 1241
    iget-boolean v8, p0, Ljava/security/Provider$Service;->registered:Z

    #@3
    if-nez v8, :cond_1

    #@5
    .line 1242
    iget-object v8, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@7
    iget-object v9, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@9
    iget-object v10, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@b
    invoke-virtual {v8, v9, v10}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@e
    move-result-object v8

    #@f
    if-eq v8, p0, :cond_0

    #@11
    .line 1243
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@13
    .line 1244
    new-instance v9, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v10, "Service not registered with Provider "

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    .line 1245
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@21
    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    .line 1244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v9

    #@29
    .line 1245
    const-string/jumbo v10, ": "

    #@2c
    .line 1244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    .line 1243
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v8

    #@3c
    .line 1247
    :cond_0
    iput-boolean v11, p0, Ljava/security/Provider$Service;->registered:Z

    #@3e
    .line 1250
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    #@41
    move-result-object v8

    #@42
    iget-object v9, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@44
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljava/security/Provider$EngineDescription;

    #@4a
    .line 1251
    .local v1, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v1, :cond_2

    #@4c
    .line 1255
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v8

    #@50
    return-object v8

    #@51
    .line 1257
    :cond_2
    iget-object v8, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    #@53
    if-nez v8, :cond_4

    #@55
    .line 1258
    if-eqz p1, :cond_3

    #@57
    .line 1259
    new-instance v8, Ljava/security/InvalidParameterException;

    #@59
    .line 1260
    new-instance v9, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v10, "constructorParameter not used with "

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    iget-object v10, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    .line 1261
    const-string/jumbo v10, " engines"

    #@6e
    .line 1260
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    .line 1259
    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@79
    throw v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    #@7a
    .line 1280
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :catch_0
    move-exception v6

    #@7b
    .line 1281
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    throw v6

    #@7c
    .line 1263
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    #@7f
    move-result-object v2

    #@80
    .line 1264
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@83
    move-result-object v8

    #@84
    return-object v8

    #@85
    .line 1266
    .end local v2    # "clazz":Ljava/lang/Class;
    :cond_4
    invoke-virtual {v1}, Ljava/security/Provider$EngineDescription;->getConstructorParameterClass()Ljava/lang/Class;

    #@88
    move-result-object v7

    #@89
    .line 1267
    .local v7, "paramClass":Ljava/lang/Class;
    if-eqz p1, :cond_5

    #@8b
    .line 1268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8e
    move-result-object v0

    #@8f
    .line 1269
    .local v0, "argClass":Ljava/lang/Class;
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@92
    move-result v8

    #@93
    if-nez v8, :cond_5

    #@95
    .line 1270
    new-instance v8, Ljava/security/InvalidParameterException;

    #@97
    .line 1271
    new-instance v9, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v10, "constructorParameter must be instanceof "

    #@9f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v9

    #@a3
    .line 1272
    iget-object v10, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    #@a5
    const/16 v11, 0x24

    #@a7
    const/16 v12, 0x2e

    #@a9
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@ac
    move-result-object v10

    #@ad
    .line 1271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    .line 1273
    const-string/jumbo v10, " for engine type "

    #@b4
    .line 1271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 1273
    iget-object v10, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@ba
    .line 1271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v9

    #@c2
    .line 1270
    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v8
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@c6
    .line 1282
    .end local v0    # "argClass":Ljava/lang/Class;
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v7    # "paramClass":Ljava/lang/Class;
    :catch_1
    move-exception v5

    #@c7
    .line 1283
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@c9
    .line 1284
    new-instance v9, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v10, "Error constructing implementation (algorithm: "

    #@d1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    .line 1285
    iget-object v10, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@d7
    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v9

    #@db
    .line 1285
    const-string/jumbo v10, ", provider: "

    #@de
    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v9

    #@e2
    .line 1285
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@e4
    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@e7
    move-result-object v10

    #@e8
    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    .line 1286
    const-string/jumbo v10, ", class: "

    #@ef
    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    .line 1286
    iget-object v10, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@f5
    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v9

    #@f9
    .line 1286
    const-string/jumbo v10, ")"

    #@fc
    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v9

    #@100
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v9

    #@104
    .line 1286
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@107
    move-result-object v10

    #@108
    .line 1283
    invoke-direct {v8, v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10b
    throw v8

    #@10c
    .line 1276
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .restart local v7    # "paramClass":Ljava/lang/Class;
    :cond_5
    :try_start_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    #@10f
    move-result-object v2

    #@110
    .line 1277
    .restart local v2    # "clazz":Ljava/lang/Class;
    const/4 v8, 0x1

    #@111
    new-array v8, v8, [Ljava/lang/Class;

    #@113
    const/4 v9, 0x0

    #@114
    aput-object v7, v8, v9

    #@116
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@119
    move-result-object v3

    #@11a
    .line 1278
    .local v3, "cons":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x1

    #@11b
    new-array v8, v8, [Ljava/lang/Object;

    #@11d
    const/4 v9, 0x0

    #@11e
    aput-object p1, v8, v9

    #@120
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@123
    move-result-object v8

    #@124
    return-object v8

    #@125
    .line 1287
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "cons":Ljava/lang/reflect/Constructor;
    .end local v7    # "paramClass":Ljava/lang/Class;
    :catch_2
    move-exception v4

    #@126
    .line 1288
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@128
    .line 1289
    new-instance v9, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v10, "Error constructing implementation (algorithm: "

    #@130
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v9

    #@134
    .line 1290
    iget-object v10, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@136
    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v9

    #@13a
    .line 1290
    const-string/jumbo v10, ", provider: "

    #@13d
    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v9

    #@141
    .line 1290
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@143
    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@146
    move-result-object v10

    #@147
    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v9

    #@14b
    .line 1291
    const-string/jumbo v10, ", class: "

    #@14e
    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v9

    #@152
    .line 1291
    iget-object v10, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@154
    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v9

    #@158
    .line 1291
    const-string/jumbo v10, ")"

    #@15b
    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v9

    #@15f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v9

    #@163
    .line 1288
    invoke-direct {v8, v9, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@166
    throw v8
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "parameter"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1377
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@8
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/security/Provider$EngineDescription;

    #@e
    .line 1378
    .local v0, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v0, :cond_0

    #@10
    .line 1380
    return v4

    #@11
    .line 1382
    :cond_0
    iget-boolean v2, v0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    #@13
    if-nez v2, :cond_1

    #@15
    .line 1383
    new-instance v2, Ljava/security/InvalidParameterException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "supportsParameter() not used with "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 1384
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@25
    .line 1383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 1384
    const-string/jumbo v4, " engines"

    #@2c
    .line 1383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 1387
    :cond_1
    if-eqz p1, :cond_2

    #@3a
    instance-of v2, p1, Ljava/security/Key;

    #@3c
    if-nez v2, :cond_2

    #@3e
    .line 1388
    new-instance v2, Ljava/security/InvalidParameterException;

    #@40
    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Parameter must be instanceof Key for engine "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 1388
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2

    #@5a
    .line 1391
    :cond_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->hasKeyAttributes()Z

    #@5d
    move-result v2

    #@5e
    if-nez v2, :cond_3

    #@60
    .line 1392
    return v4

    #@61
    .line 1394
    :cond_3
    if-nez p1, :cond_4

    #@63
    .line 1395
    return v5

    #@64
    :cond_4
    move-object v1, p1

    #@65
    .line 1397
    check-cast v1, Ljava/security/Key;

    #@67
    .line 1398
    .local v1, "key":Ljava/security/Key;
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyFormat(Ljava/security/Key;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_5

    #@6d
    .line 1399
    return v4

    #@6e
    .line 1401
    :cond_5
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyClass(Ljava/security/Key;)Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_6

    #@74
    .line 1402
    return v4

    #@75
    .line 1404
    :cond_6
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1495
    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1496
    const-string/jumbo v0, ""

    #@b
    .line 1497
    .local v0, "aString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@d
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1498
    const-string/jumbo v1, ""

    #@16
    .line 1499
    .local v1, "attrs":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@1d
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, ": "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, "."

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 1500
    const-string/jumbo v3, " -> "

    #@42
    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 1500
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@48
    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 1500
    const-string/jumbo v3, "\r\n"

    #@57
    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    return-object v2

    #@60
    .line 1496
    .end local v0    # "aString":Ljava/lang/String;
    .end local v1    # "attrs":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v3, "\r\n  aliases: "

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    iget-object v3, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@6e
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    .restart local v0    # "aString":Ljava/lang/String;
    goto :goto_0

    #@7b
    .line 1498
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "\r\n  attributes: "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@89
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    .restart local v1    # "attrs":Ljava/lang/String;
    goto :goto_1
.end method

.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static final secprops:Ljava/util/Properties;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    #@0
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 46
    new-instance v3, Ljava/util/Properties;

    #@3
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    #@6
    sput-object v3, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@8
    .line 55
    const/4 v2, 0x0

    #@9
    .line 56
    .local v2, "loaded":Z
    const/4 v1, 0x0

    #@a
    .line 58
    .local v1, "input":Ljava/io/Reader;
    :try_start_0
    invoke-static {}, Ljava/security/Security;->getSecurityPropertiesReader()Ljava/io/Reader;

    #@d
    move-result-object v1

    #@e
    .line 59
    .local v1, "input":Ljava/io/Reader;
    sget-object v3, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 60
    const/4 v2, 0x1

    #@14
    .line 64
    if-eqz v1, :cond_0

    #@16
    .line 66
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    .line 72
    .end local v1    # "input":Ljava/io/Reader;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@1b
    .line 73
    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    #@1e
    .line 75
    :cond_1
    new-instance v3, Ljava/security/Security$SecurityDoor;

    #@20
    invoke-direct {v3, v4}, Ljava/security/Security$SecurityDoor;-><init>(Ljava/security/Security$SecurityDoor;)V

    #@23
    sput-object v3, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    #@25
    .line 43
    return-void

    #@26
    .line 67
    .restart local v1    # "input":Ljava/io/Reader;
    :catch_0
    move-exception v0

    #@27
    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "Could not close \'security.properties\'"

    #@2a
    invoke-static {v3, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    goto :goto_0

    #@2e
    .line 61
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "input":Ljava/io/Reader;
    :catch_1
    move-exception v0

    #@2f
    .line 62
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "Could not load \'security.properties\'"

    #@32
    invoke-static {v3, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    .line 64
    if-eqz v1, :cond_0

    #@37
    .line 66
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@3a
    goto :goto_0

    #@3b
    .line 67
    :catch_2
    move-exception v0

    #@3c
    .line 68
    const-string/jumbo v3, "Could not close \'security.properties\'"

    #@3f
    invoke-static {v3, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    goto :goto_0

    #@43
    .line 63
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@44
    .line 64
    if-eqz v1, :cond_2

    #@46
    .line 66
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@49
    .line 63
    :cond_2
    :goto_1
    throw v3

    #@4a
    .line 67
    :catch_3
    move-exception v0

    #@4b
    .line 68
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "Could not close \'security.properties\'"

    #@4e
    invoke-static {v4, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@51
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 161
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static filterProviders(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "attribute"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 336
    .local p0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 337
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/security/Provider;

    #@10
    .line 339
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@19
    goto :goto_0

    #@1a
    .line 335
    .end local v1    # "p":Ljava/security/Provider;
    :cond_1
    return-void
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 109
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 110
    :cond_0
    return-object v8

    #@6
    .line 112
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "Alg."

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    const-string/jumbo v6, "."

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 113
    .local v1, "prop":Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@28
    move-result-object v4

    #@29
    .line 114
    .local v4, "providers":[Ljava/security/Provider;
    const/4 v5, 0x0

    #@2a
    array-length v6, v4

    #@2b
    :goto_0
    if-ge v5, v6, :cond_4

    #@2d
    aget-object v3, v4, v5

    #@2f
    .line 115
    .local v3, "provider":Ljava/security/Provider;
    invoke-virtual {v3}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    #@32
    move-result-object v0

    #@33
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_3

    #@39
    .line 116
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/String;

    #@3f
    .line 117
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_2

    #@45
    .line 118
    invoke-virtual {v3, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    return-object v5

    #@4a
    .line 114
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 122
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "provider":Ljava/security/Provider;
    :cond_4
    return-object v8
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 384
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 386
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    #@7
    .line 387
    return-object v1

    #@8
    .line 389
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@b
    move-result-object v5

    #@c
    const/4 v4, 0x0

    #@d
    array-length v6, v5

    #@e
    :goto_0
    if-ge v4, v6, :cond_3

    #@10
    aget-object v0, v5, v4

    #@12
    .line 390
    .local v0, "provider":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    #@15
    move-result-object v7

    #@16
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v3

    #@1a
    .local v3, "service$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_2

    #@20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/security/Provider$Service;

    #@26
    .line 391
    .local v2, "service":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_1

    #@30
    .line 392
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_1

    #@38
    .line 389
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 396
    .end local v0    # "provider":Ljava/security/Provider;
    .end local v3    # "service$iterator":Ljava/util/Iterator;
    :cond_3
    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 353
    if-nez p0, :cond_0

    #@2
    .line 354
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "key == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 356
    :cond_0
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@d
    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 357
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@13
    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 360
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v0, Ljava/security/Security;

    #@2
    monitor-enter v0

    #@3
    .line 217
    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .locals 3

    #@0
    .prologue
    const-class v2, Ljava/security/Security;

    #@2
    monitor-enter v2

    #@3
    .line 203
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()Ljava/util/ArrayList;

    #@6
    move-result-object v0

    #@7
    .line 204
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    new-array v1, v1, [Ljava/security/Provider;

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, [Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .locals 4
    .param p0, "filter"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 244
    if-nez p0, :cond_0

    #@3
    .line 245
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "filter == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 247
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 248
    new-instance v2, Ljava/security/InvalidParameterException;

    #@14
    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    #@17
    throw v2

    #@18
    .line 250
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 251
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3a

    #@1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v1

    #@23
    .line 252
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@26
    move-result v2

    #@27
    add-int/lit8 v2, v2, -0x1

    #@29
    if-eq v1, v2, :cond_2

    #@2b
    if-nez v1, :cond_3

    #@2d
    .line 253
    :cond_2
    new-instance v2, Ljava/security/InvalidParameterException;

    #@2f
    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    #@32
    throw v2

    #@33
    .line 255
    :cond_3
    const/4 v2, 0x1

    #@34
    if-ge v1, v2, :cond_4

    #@36
    .line 256
    const-string/jumbo v2, ""

    #@39
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 260
    :goto_0
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    #@3f
    move-result-object v2

    #@40
    return-object v2

    #@41
    .line 258
    :cond_4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    add-int/lit8 v3, v1, 0x1

    #@47
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    goto :goto_0
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, -0x1

    #@1
    const/4 v13, 0x0

    #@2
    const-class v12, Ljava/security/Security;

    #@4
    monitor-enter v12

    #@5
    .line 288
    if-nez p0, :cond_0

    #@7
    .line 289
    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v13, "filter == null"

    #@c
    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v11

    #@11
    monitor-exit v12

    #@12
    throw v11

    #@13
    .line 291
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v11

    #@17
    if-eqz v11, :cond_1

    #@19
    monitor-exit v12

    #@1a
    .line 292
    return-object v13

    #@1b
    .line 294
    :cond_1
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    #@1d
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()Ljava/util/ArrayList;

    #@20
    move-result-object v11

    #@21
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@24
    .line 295
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@27
    move-result-object v7

    #@28
    .line 297
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v4

    #@2c
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_9

    #@32
    .line 298
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Ljava/util/Map$Entry;

    #@38
    .line 299
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    check-cast v6, Ljava/lang/String;

    #@3e
    .line 300
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v10

    #@42
    check-cast v10, Ljava/lang/String;

    #@44
    .line 301
    .local v10, "val":Ljava/lang/String;
    const/4 v1, 0x0

    #@45
    .line 302
    .local v1, "attribute":Ljava/lang/String;
    const/16 v11, 0x20

    #@47
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    #@4a
    move-result v3

    #@4b
    .line 303
    .local v3, "i":I
    const/16 v11, 0x2e

    #@4d
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    #@50
    move-result v5

    #@51
    .line 304
    .local v5, "j":I
    if-ne v5, v14, :cond_2

    #@53
    .line 305
    new-instance v11, Ljava/security/InvalidParameterException;

    #@55
    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    #@58
    throw v11

    #@59
    .line 307
    :cond_2
    if-ne v3, v14, :cond_3

    #@5b
    .line 308
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@5e
    move-result v11

    #@5f
    if-eqz v11, :cond_6

    #@61
    .line 309
    new-instance v11, Ljava/security/InvalidParameterException;

    #@63
    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    #@66
    throw v11

    #@67
    .line 312
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@6a
    move-result v11

    #@6b
    if-nez v11, :cond_4

    #@6d
    .line 313
    new-instance v11, Ljava/security/InvalidParameterException;

    #@6f
    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    #@72
    throw v11

    #@73
    .line 315
    :cond_4
    add-int/lit8 v11, v3, 0x1

    #@75
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    .line 316
    .local v1, "attribute":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7c
    move-result-object v11

    #@7d
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@80
    move-result v11

    #@81
    if-nez v11, :cond_5

    #@83
    .line 317
    new-instance v11, Ljava/security/InvalidParameterException;

    #@85
    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    #@88
    throw v11

    #@89
    .line 319
    :cond_5
    const/4 v11, 0x0

    #@8a
    invoke-virtual {v6, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8d
    move-result-object v6

    #@8e
    .line 321
    .end local v1    # "attribute":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    #@8f
    invoke-virtual {v6, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@92
    move-result-object v9

    #@93
    .line 322
    .local v9, "serv":Ljava/lang/String;
    add-int/lit8 v11, v5, 0x1

    #@95
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    .line 323
    .local v0, "alg":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@9c
    move-result v11

    #@9d
    if-eqz v11, :cond_7

    #@9f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a2
    move-result v11

    #@a3
    if-nez v11, :cond_8

    #@a5
    .line 324
    :cond_7
    new-instance v11, Ljava/security/InvalidParameterException;

    #@a7
    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    #@aa
    throw v11

    #@ab
    .line 326
    :cond_8
    invoke-static {v8, v9, v0, v1, v10}, Ljava/security/Security;->filterProviders(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 328
    .end local v0    # "alg":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "serv":Ljava/lang/String;
    .end local v10    # "val":Ljava/lang/String;
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@b3
    move-result v11

    #@b4
    if-lez v11, :cond_a

    #@b6
    .line 329
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@b9
    move-result v11

    #@ba
    new-array v11, v11, [Ljava/security/Provider;

    #@bc
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@bf
    move-result-object v11

    #@c0
    check-cast v11, [Ljava/security/Provider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c2
    monitor-exit v12

    #@c3
    return-object v11

    #@c4
    :cond_a
    monitor-exit v12

    #@c5
    .line 331
    return-object v13
.end method

.method private static getSecurityPropertiesReader()Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    const-class v1, Ljava/security/Security;

    #@2
    const-string/jumbo v2, "security.properties"

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@8
    move-result-object v0

    #@9
    .line 80
    .local v0, "configStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/InputStreamReader;

    #@b
    new-instance v2, Ljava/io/BufferedInputStream;

    #@d
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@10
    const-string/jumbo v3, "ISO-8859-1"

    #@13
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@16
    return-object v1
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 3
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    #@0
    .prologue
    const-class v2, Ljava/security/Security;

    #@2
    monitor-enter v2

    #@3
    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 144
    const/4 v1, -0x1

    #@e
    monitor-exit v2

    #@f
    return v1

    #@10
    .line 146
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    #@13
    move-result v0

    #@14
    .line 147
    .local v0, "result":I
    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 148
    return v0

    #@19
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private static registerDefaultProviders()V
    .locals 3

    #@0
    .prologue
    .line 91
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@2
    const-string/jumbo v1, "security.provider.1"

    #@5
    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 92
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@d
    const-string/jumbo v1, "security.provider.2"

    #@10
    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 93
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@18
    const-string/jumbo v1, "security.provider.3"

    #@1b
    const-string/jumbo v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 94
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@23
    const-string/jumbo v1, "security.provider.4"

    #@26
    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 90
    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v2, Ljava/security/Security;

    #@2
    monitor-enter v2

    #@3
    .line 184
    if-eqz p0, :cond_0

    #@5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    :cond_0
    monitor-exit v2

    #@c
    .line 185
    return-void

    #@d
    .line 187
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result-object v0

    #@11
    .line 188
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@13
    monitor-exit v2

    #@14
    .line 189
    return-void

    #@15
    .line 191
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    #@18
    move-result v1

    #@19
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    #@1c
    .line 192
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    #@1f
    .line 193
    const/4 v1, -0x1

    #@20
    invoke-virtual {v0, v1}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 176
    return-void

    #@25
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method private static renumProviders()V
    .locals 4

    #@0
    .prologue
    .line 405
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()Ljava/util/ArrayList;

    #@3
    move-result-object v1

    #@4
    .line 406
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 407
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/security/Provider;

    #@11
    add-int/lit8 v3, v0, 0x1

    #@13
    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    #@16
    .line 406
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 404
    :cond_0
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 367
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@3
    .line 368
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 366
    return-void
.end method

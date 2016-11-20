.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$ProviderProperty;
    }
.end annotation


# static fields
.field private static final props:Ljava/util/Properties;

.field private static final spiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final version:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    .line 48
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@5
    sput-object v6, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    .line 60
    new-instance v6, Ljava/util/Properties;

    #@9
    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    #@c
    sput-object v6, Ljava/security/Security;->props:Ljava/util/Properties;

    #@e
    .line 61
    const/4 v4, 0x0

    #@f
    .line 62
    .local v4, "loadedProps":Z
    const/4 v2, 0x0

    #@10
    .line 67
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v6, Ljava/security/Security;

    #@12
    const-string/jumbo v7, "security.properties"

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@18
    move-result-object v5

    #@19
    .line 68
    .local v5, "propStream":Ljava/io/InputStream;
    if-nez v5, :cond_2

    #@1b
    .line 69
    const-string/jumbo v6, "Could not find \'security.properties\'."

    #@1e
    invoke-static {v6}, Ljava/lang/System;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 78
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v2, :cond_0

    #@23
    .line 80
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@26
    .line 85
    .end local v5    # "propStream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    #@28
    .line 86
    invoke-static {}, Ljava/security/Security;->initializeStatic()V

    #@2b
    .line 555
    :cond_1
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    #@2d
    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@30
    sput-object v6, Ljava/security/Security;->spiMap:Ljava/util/Map;

    #@32
    .line 46
    return-void

    #@33
    .line 71
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "propStream":Ljava/io/InputStream;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    #@35
    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 72
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_3
    sget-object v6, Ljava/security/Security;->props:Ljava/util/Properties;

    #@3a
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3d
    .line 73
    const/4 v4, 0x1

    #@3e
    move-object v2, v3

    #@3f
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_0

    #@40
    .line 81
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@41
    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_1

    #@42
    .line 75
    .end local v1    # "ignored":Ljava/io/IOException;
    .end local v5    # "propStream":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    #@43
    .line 76
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v6, "Could not load \'security.properties\'"

    #@46
    invoke-static {v6, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@49
    .line 78
    if-eqz v2, :cond_0

    #@4b
    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@4e
    goto :goto_1

    #@4f
    .line 81
    :catch_2
    move-exception v1

    #@50
    .restart local v1    # "ignored":Ljava/io/IOException;
    goto :goto_1

    #@51
    .line 77
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@52
    .line 78
    :goto_3
    if-eqz v2, :cond_3

    #@54
    .line 80
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@57
    .line 77
    :cond_3
    :goto_4
    throw v6

    #@58
    .line 81
    :catch_3
    move-exception v1

    #@59
    .restart local v1    # "ignored":Ljava/io/IOException;
    goto :goto_4

    #@5a
    .line 77
    .end local v1    # "ignored":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "propStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    #@5b
    move-object v2, v3

    #@5c
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_3

    #@5d
    .line 75
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    #@5e
    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v2, v3

    #@5f
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1
    .param p0, "directive"    # Ljava/lang/String;

    #@0
    .prologue
    .line 746
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 747
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 748
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    #@9
    .line 745
    :cond_0
    return-void
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "Alg."

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 196
    const-string/jumbo v2, "."

    #@14
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;

    #@23
    move-result-object v0

    #@24
    .line 197
    .local v0, "entry":Ljava/security/Security$ProviderProperty;
    if-eqz v0, :cond_0

    #@26
    .line 198
    iget-object v1, v0, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 200
    :cond_0
    return-object v3
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
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
    .line 972
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_1

    #@8
    .line 974
    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@a
    return-object v5

    #@b
    .line 973
    :cond_1
    const-string/jumbo v5, "."

    #@e
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@11
    move-result v5

    #@12
    .line 972
    if-nez v5, :cond_0

    #@14
    .line 977
    new-instance v4, Ljava/util/HashSet;

    #@16
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@19
    .line 978
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@1c
    move-result-object v3

    #@1d
    .line 980
    .local v3, "providers":[Ljava/security/Provider;
    const/4 v2, 0x0

    #@1e
    .local v2, "i":I
    :goto_0
    array-length v5, v3

    #@1f
    if-ge v2, v5, :cond_4

    #@21
    .line 982
    aget-object v5, v3, v2

    #@23
    invoke-virtual {v5}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    #@26
    move-result-object v1

    #@27
    .line 983
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2a
    move-result v5

    #@2b
    .line 982
    if-eqz v5, :cond_3

    #@2d
    .line 984
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 985
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_2

    #@41
    .line 992
    const-string/jumbo v5, " "

    #@44
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@47
    move-result v5

    #@48
    if-gez v5, :cond_2

    #@4a
    .line 993
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4d
    move-result v5

    #@4e
    add-int/lit8 v5, v5, 0x1

    #@50
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@57
    goto :goto_1

    #@58
    .line 980
    .end local v0    # "currentKey":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 998
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5e
    move-result-object v5

    #@5f
    return-object v5
.end method

.method private static getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .locals 5
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;
    .param p2, "allProviders"    # [Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Provider;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 760
    invoke-static {p0, p1}, Ljava/security/Security;->getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 766
    .local v2, "filterComponents":[Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    aget-object v3, v2, v4

    #@7
    .line 767
    .local v3, "serviceName":Ljava/lang/String;
    const/4 v4, 0x1

    #@8
    aget-object v0, v2, v4

    #@a
    .line 768
    .local v0, "algName":Ljava/lang/String;
    const/4 v4, 0x2

    #@b
    aget-object v1, v2, v4

    #@d
    .line 770
    .local v1, "attrName":Ljava/lang/String;
    invoke-static {v3, v0, v1, p1, p2}, Ljava/security/Security;->getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    #@10
    move-result-object v4

    #@11
    return-object v4
.end method

.method static getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 895
    const/16 v6, 0x2e

    #@3
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 897
    .local v0, "algIndex":I
    if-gez v0, :cond_0

    #@9
    .line 900
    new-instance v6, Ljava/security/InvalidParameterException;

    #@b
    const-string/jumbo v7, "Invalid filter"

    #@e
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@11
    throw v6

    #@12
    .line 903
    :cond_0
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    .line 904
    .local v5, "serviceName":Ljava/lang/String;
    const/4 v1, 0x0

    #@17
    .line 905
    .local v1, "algName":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    .line 907
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 910
    add-int/lit8 v6, v0, 0x1

    #@20
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 911
    .local v1, "algName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@2b
    move-result v6

    #@2c
    if-nez v6, :cond_6

    #@2e
    .line 913
    new-instance v6, Ljava/security/InvalidParameterException;

    #@30
    const-string/jumbo v7, "Invalid filter"

    #@33
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@36
    throw v6

    #@37
    .line 919
    .local v1, "algName":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x20

    #@39
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@3c
    move-result v2

    #@3d
    .line 921
    .local v2, "attrIndex":I
    const/4 v6, -0x1

    #@3e
    if-ne v2, v6, :cond_2

    #@40
    .line 923
    new-instance v6, Ljava/security/InvalidParameterException;

    #@42
    const-string/jumbo v7, "Invalid filter"

    #@45
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@48
    throw v6

    #@49
    .line 925
    :cond_2
    add-int/lit8 v6, v2, 0x1

    #@4b
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 926
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_3

    #@59
    .line 928
    new-instance v6, Ljava/security/InvalidParameterException;

    #@5b
    const-string/jumbo v7, "Invalid filter"

    #@5e
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@61
    throw v6

    #@62
    .line 933
    :cond_3
    if-lt v2, v0, :cond_4

    #@64
    .line 934
    add-int/lit8 v6, v2, -0x1

    #@66
    if-ne v0, v6, :cond_5

    #@68
    .line 935
    :cond_4
    new-instance v6, Ljava/security/InvalidParameterException;

    #@6a
    const-string/jumbo v7, "Invalid filter"

    #@6d
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@70
    throw v6

    #@71
    .line 937
    :cond_5
    add-int/lit8 v6, v0, 0x1

    #@73
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    .line 941
    .end local v2    # "attrIndex":I
    .end local v3    # "attrName":Ljava/lang/String;
    .local v1, "algName":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x3

    #@78
    new-array v4, v6, [Ljava/lang/String;

    #@7a
    .line 942
    .local v4, "result":[Ljava/lang/String;
    aput-object v5, v4, v7

    #@7c
    .line 943
    const/4 v6, 0x1

    #@7d
    aput-object v1, v4, v6

    #@7f
    .line 944
    const/4 v6, 0x2

    #@80
    aput-object v3, v4, v6

    #@82
    .line 946
    return-object v4
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    if-nez p2, :cond_0

    #@2
    .line 588
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 587
    invoke-static {p1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 591
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 590
    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    if-nez p2, :cond_0

    #@2
    .line 600
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 599
    invoke-static {p1, v0, p0, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 603
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 602
    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 616
    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 623
    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 651
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 652
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 653
    new-instance v2, Ljava/security/SecurityPermission;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "getProperty."

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@22
    .line 656
    :cond_0
    sget-object v2, Ljava/security/Security;->props:Ljava/util/Properties;

    #@24
    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 657
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@2a
    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 659
    :cond_1
    return-object v0
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 152
    invoke-virtual {p1, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 153
    .local v2, "prop":Ljava/lang/String;
    if-nez v2, :cond_1

    #@6
    .line 156
    invoke-virtual {p1}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 157
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    if-nez v2, :cond_1

    #@12
    .line 158
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/String;

    #@18
    .line 159
    .local v1, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 160
    invoke-virtual {p1, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 165
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v1    # "matchKey":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 115
    const/4 v1, 0x0

    #@2
    .line 117
    .local v1, "entry":Ljava/security/Security$ProviderProperty;
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@5
    move-result-object v8

    #@6
    invoke-virtual {v8}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    #@9
    move-result-object v7

    #@a
    .line 118
    .local v7, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@e
    move-result v8

    #@f
    if-ge v2, v8, :cond_3

    #@11
    .line 120
    const/4 v3, 0x0

    #@12
    .line 121
    .local v3, "matchKey":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Ljava/security/Provider;

    #@18
    .line 122
    .local v6, "prov":Ljava/security/Provider;
    invoke-virtual {v6, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 124
    .local v5, "prop":Ljava/lang/String;
    if-nez v5, :cond_1

    #@1e
    .line 127
    invoke-virtual {v6}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    #@21
    move-result-object v0

    #@22
    .line 128
    .end local v3    # "matchKey":Ljava/lang/String;
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_1

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    .line 130
    .local v3, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_0

    #@36
    .line 131
    invoke-virtual {v6, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 137
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v3    # "matchKey":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    #@3c
    .line 138
    new-instance v4, Ljava/security/Security$ProviderProperty;

    #@3e
    invoke-direct {v4, v9}, Ljava/security/Security$ProviderProperty;-><init>(Ljava/security/Security$ProviderProperty;)V

    #@41
    .line 139
    .local v4, "newEntry":Ljava/security/Security$ProviderProperty;
    iput-object v5, v4, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    #@43
    .line 140
    iput-object v6, v4, Ljava/security/Security$ProviderProperty;->provider:Ljava/security/Provider;

    #@45
    .line 141
    return-object v4

    #@46
    .line 118
    .end local v4    # "newEntry":Ljava/security/Security$ProviderProperty;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 145
    .end local v5    # "prop":Ljava/lang/String;
    .end local v6    # "prov":Ljava/security/Provider;
    :cond_3
    return-object v1
.end method

.method public static getProviders()[Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 350
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->toArray()[Ljava/security/Provider;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .locals 5
    .param p0, "filter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    const/4 v2, 0x0

    #@1
    .line 430
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    #@2
    .line 431
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x3a

    #@4
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    .line 433
    .local v1, "index":I
    const/4 v4, -0x1

    #@9
    if-ne v1, v4, :cond_0

    #@b
    .line 434
    move-object v2, p0

    #@c
    .line 435
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@f
    .line 441
    .local v3, "value":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    #@11
    const/4 v4, 0x1

    #@12
    invoke-direct {v0, v4}, Ljava/util/Hashtable;-><init>(I)V

    #@15
    .line 442
    .local v0, "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 444
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    #@1b
    move-result-object v4

    #@1c
    return-object v4

    #@1d
    .line 437
    .end local v0    # "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "key":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    #@1e
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 438
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    #@24
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .local v3, "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getProviders(Ljava/util/Map;)[Ljava/security/Provider;
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
    const/4 v14, 0x0

    #@1
    .line 499
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@4
    move-result-object v0

    #@5
    .line 500
    .local v0, "allProviders":[Ljava/security/Provider;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v8

    #@9
    .line 501
    .local v8, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    #@b
    const/4 v13, 0x5

    #@c
    invoke-direct {v1, v13}, Ljava/util/LinkedHashSet;-><init>(I)V

    #@f
    .line 505
    .local v1, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v8, :cond_0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 506
    :cond_0
    return-object v0

    #@14
    .line 509
    :cond_1
    const/4 v4, 0x1

    #@15
    .line 513
    .local v4, "firstSearch":Z
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v6

    #@19
    .local v6, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v13

    #@1d
    if-eqz v13, :cond_5

    #@1f
    .line 514
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    check-cast v7, Ljava/lang/String;

    #@25
    .line 515
    .local v7, "key":Ljava/lang/String;
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v12

    #@29
    check-cast v12, Ljava/lang/String;

    #@2b
    .line 517
    .local v12, "value":Ljava/lang/String;
    invoke-static {v7, v12, v0}, Ljava/security/Security;->getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    #@2e
    move-result-object v9

    #@2f
    .line 519
    .local v9, "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v4, :cond_3

    #@31
    .line 520
    move-object v1, v9

    #@32
    .line 521
    const/4 v4, 0x0

    #@33
    .line 524
    :cond_3
    if-eqz v9, :cond_4

    #@35
    invoke-virtual {v9}, Ljava/util/LinkedHashSet;->isEmpty()Z

    #@38
    move-result v13

    #@39
    if-eqz v13, :cond_7

    #@3b
    .line 536
    :cond_4
    const/4 v1, 0x0

    #@3c
    .line 541
    .end local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v12    # "value":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    #@3e
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    #@41
    move-result v13

    #@42
    if-eqz v13, :cond_9

    #@44
    .line 542
    :cond_6
    return-object v14

    #@45
    .line 528
    .restart local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .restart local v12    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v3

    #@49
    .line 529
    .local v3, "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :cond_8
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v13

    #@4d
    .line 528
    if-eqz v13, :cond_2

    #@4f
    .line 530
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v10

    #@53
    check-cast v10, Ljava/security/Provider;

    #@55
    .line 531
    .local v10, "prov":Ljava/security/Provider;
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v13

    #@59
    if-nez v13, :cond_8

    #@5b
    .line 532
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    #@5e
    goto :goto_0

    #@5f
    .line 544
    .end local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v3    # "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v10    # "prov":Ljava/security/Provider;
    .end local v12    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    .line 545
    .local v2, "candidatesArray":[Ljava/lang/Object;
    array-length v13, v2

    #@64
    new-array v11, v13, [Ljava/security/Provider;

    #@66
    .line 547
    .local v11, "result":[Ljava/security/Provider;
    const/4 v5, 0x0

    #@67
    .local v5, "i":I
    :goto_1
    array-length v13, v11

    #@68
    if-ge v5, v13, :cond_a

    #@6a
    .line 548
    aget-object v13, v2, v5

    #@6c
    check-cast v13, Ljava/security/Provider;

    #@6e
    aput-object v13, v11, v5

    #@70
    .line 547
    add-int/lit8 v5, v5, 0x1

    #@72
    goto :goto_1

    #@73
    .line 551
    :cond_a
    return-object v11
.end method

.method private static getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .locals 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "filterValue"    # Ljava/lang/String;
    .param p4, "allProviders"    # [Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Provider;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 780
    new-instance v0, Ljava/util/LinkedHashSet;

    #@2
    const/4 v2, 0x5

    #@3
    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    #@6
    .line 781
    .local v0, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, p4

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 782
    aget-object v2, p4, v1

    #@c
    invoke-static {v2, p0, p1, p2, p3}, Ljava/security/Security;->isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 785
    aget-object v2, p4, v1

    #@14
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@17
    .line 781
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 788
    :cond_1
    return-object v0
.end method

.method private static getSpiClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    sget-object v2, Ljava/security/Security;->spiMap:Ljava/util/Map;

    #@2
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    .line 564
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@a
    .line 565
    return-object v0

    #@b
    .line 568
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "java.security."

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, "Spi"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@29
    move-result-object v0

    #@2a
    .line 569
    sget-object v2, Ljava/security/Security;->spiMap:Ljava/util/Map;

    #@2c
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 570
    return-object v0

    #@30
    .line 571
    :catch_0
    move-exception v1

    #@31
    .line 572
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    #@33
    const-string/jumbo v3, "Spi class not found"

    #@36
    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v2
.end method

.method public static getVersion()I
    .locals 1

    #@0
    .prologue
    .line 1011
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static increaseVersion()V
    .locals 1

    #@0
    .prologue
    .line 1005
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 1004
    return-void
.end method

.method private static initializeStatic()V
    .locals 3

    #@0
    .prologue
    .line 95
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    #@2
    const-string/jumbo v1, "security.provider.1"

    #@5
    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 96
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    #@d
    const-string/jumbo v1, "security.provider.2"

    #@10
    const-string/jumbo v2, "sun.security.provider.CertPathProvider"

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 97
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    #@18
    const-string/jumbo v1, "security.provider.3"

    #@1b
    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 98
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    #@23
    const-string/jumbo v1, "security.provider.4"

    #@26
    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 94
    return-void
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 6
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    #@0
    .prologue
    const-class v4, Ljava/security/Security;

    #@2
    monitor-enter v4

    #@3
    .line 250
    :try_start_0
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 251
    .local v2, "providerName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "insertProvider."

    #@f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Ljava/security/Security;->check(Ljava/lang/String;)V

    #@1e
    .line 252
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    #@21
    move-result-object v0

    #@22
    .line 253
    .local v0, "list":Lsun/security/jca/ProviderList;
    add-int/lit8 v3, p1, -0x1

    #@24
    invoke-static {v0, p0, v3}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v1

    #@28
    .line 254
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-ne v0, v1, :cond_0

    #@2a
    .line 255
    const/4 v3, -0x1

    #@2b
    monitor-exit v4

    #@2c
    return v3

    #@2d
    .line 257
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@30
    .line 258
    invoke-static {v1}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    #@33
    .line 259
    invoke-virtual {v1, v2}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    move-result v3

    #@37
    add-int/lit8 v3, v3, 0x1

    #@39
    monitor-exit v4

    #@3a
    return v3

    #@3b
    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    .end local v2    # "providerName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit v4

    #@3d
    throw v3
.end method

.method private static invalidateSMCache(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 703
    const-string/jumbo v2, "package.access"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    .line 704
    .local v0, "pa":Z
    const-string/jumbo v2, "package.definition"

    #@a
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    .line 706
    .local v1, "pd":Z
    if-nez v0, :cond_0

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 707
    :cond_0
    new-instance v2, Ljava/security/Security$1;

    #@14
    invoke-direct {v2, v0}, Ljava/security/Security$1;-><init>(Z)V

    #@17
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1a
    .line 701
    :cond_1
    return-void
.end method

.method private static isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 875
    const-string/jumbo v2, "KeySize"

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 876
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 877
    .local v1, "requestedSize":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 878
    .local v0, "maxSize":I
    if-gt v1, v0, :cond_0

    #@14
    .line 879
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 881
    :cond_0
    return v3

    #@17
    .line 887
    .end local v0    # "maxSize":I
    .end local v1    # "requestedSize":I
    :cond_1
    const-string/jumbo v2, "ImplementedIn"

    #@1a
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 888
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    return v2

    #@25
    .line 891
    :cond_2
    return v3
.end method

.method private static isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "prov"    # Ljava/security/Provider;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "filterValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v3

    #@b
    const/16 v4, 0x2e

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 802
    .local v0, "key":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@1b
    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 807
    :cond_0
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 809
    .local v1, "propValue":Ljava/lang/String;
    if-nez v1, :cond_3

    #@36
    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Alg.Alias."

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 813
    const-string/jumbo v4, "."

    #@49
    .line 812
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v3, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 816
    .local v2, "standardName":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@5b
    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    const-string/jumbo v4, "."

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    .line 819
    if-eqz p3, :cond_1

    #@75
    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    .line 823
    :cond_1
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    #@8d
    move-result-object v1

    #@8e
    .line 826
    :cond_2
    if-nez v1, :cond_3

    #@90
    .line 829
    const/4 v3, 0x0

    #@91
    return v3

    #@92
    .line 837
    .end local v2    # "standardName":Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    #@94
    .line 838
    const/4 v3, 0x1

    #@95
    return v3

    #@96
    .line 843
    :cond_4
    invoke-static {p3}, Ljava/security/Security;->isStandardAttr(Ljava/lang/String;)Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_5

    #@9c
    .line 844
    invoke-static {p3, p4, v1}, Ljava/security/Security;->isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@9f
    move-result v3

    #@a0
    return v3

    #@a1
    .line 846
    :cond_5
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a4
    move-result v3

    #@a5
    return v3
.end method

.method private static isStandardAttr(Ljava/lang/String;)Z
    .locals 2
    .param p0, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 857
    const-string/jumbo v0, "KeySize"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 858
    return v1

    #@b
    .line 860
    :cond_0
    const-string/jumbo v0, "ImplementedIn"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 861
    return v1

    #@15
    .line 863
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v3, Ljava/security/Security;

    #@2
    monitor-enter v3

    #@3
    .line 336
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "removeProvider."

    #@b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Ljava/security/Security;->check(Ljava/lang/String;)V

    #@1a
    .line 337
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    #@1d
    move-result-object v0

    #@1e
    .line 338
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-static {v0, p0}, Lsun/security/jca/ProviderList;->remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;

    #@21
    move-result-object v1

    #@22
    .line 339
    .local v1, "newList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    #@25
    .line 340
    invoke-static {}, Ljava/security/Security;->increaseVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v3

    #@29
    .line 335
    return-void

    #@2a
    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "datum"    # Ljava/lang/String;

    #@0
    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "setProperty."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Ljava/security/Security;->check(Ljava/lang/String;)V

    #@17
    .line 686
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    #@19
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 687
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@1f
    .line 688
    invoke-static {p0}, Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V

    #@22
    .line 684
    return-void
.end method

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
.field private static final greylist-max-o props:Ljava/util/Properties;

.field private static final greylist-max-o spiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o version:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "loadedProps":Z
    const/4 v1, 0x0

    .line 96
    .local v1, "is":Ljava/io/InputStream;
    :try_start_10
    const-class v2, Ljava/security/Security;

    const-string v3, "security.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    .local v2, "propStream":Ljava/io/InputStream;
    if-nez v2, :cond_20

    .line 98
    const-string v3, "Could not find \'security.properties\'."

    invoke-static {v3}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    goto :goto_2c

    .line 100
    :cond_20
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 101
    sget-object v3, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2b} :catch_36
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 102
    const/4 v0, 0x1

    .line 107
    .end local v2    # "propStream":Ljava/io/InputStream;
    :goto_2c
    if-eqz v1, :cond_42

    .line 109
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 110
    :goto_31
    goto :goto_42

    :catch_32
    move-exception v2

    goto :goto_31

    .line 107
    :catchall_34
    move-exception v2

    goto :goto_4f

    .line 104
    :catch_36
    move-exception v2

    .line 105
    .local v2, "ex":Ljava/io/IOException;
    :try_start_37
    const-string v3, "Could not load \'security.properties\'"

    invoke-static {v3, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .line 107
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_42

    .line 109
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_32

    goto :goto_31

    .line 115
    :cond_42
    :goto_42
    if-nez v0, :cond_47

    .line 116
    invoke-static {}, Ljava/security/Security;->initializeStatic()V

    .line 594
    .end local v0    # "loadedProps":Z
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/security/Security;->spiMap:Ljava/util/Map;

    return-void

    .line 107
    .restart local v0    # "loadedProps":Z
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_4f
    if-eqz v1, :cond_57

    .line 109
    :try_start_51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 110
    :goto_54
    goto :goto_57

    :catch_55
    move-exception v3

    goto :goto_54

    .line 112
    :cond_57
    :goto_57
    throw v2
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static whitelist test-api addProvider(Ljava/security/Provider;)I
    .registers 2
    .param p0, "provider"    # Ljava/security/Provider;

    .line 333
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;

    move-result-object v0

    .line 236
    .local v0, "entry":Ljava/security/Security$ProviderProperty;
    if-eqz v0, :cond_26

    .line 237
    iget-object v1, v0, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    return-object v1

    .line 239
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1035
    if-eqz p0, :cond_62

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_62

    .line 1036
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_62

    .line 1040
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1041
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 1043
    .local v1, "providers":[Ljava/security/Provider;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v1

    if-ge v2, v3, :cond_5d

    .line 1045
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1046
    .local v3, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_24
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1047
    nop

    .line 1048
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1049
    .local v4, "currentKey":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1050
    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1049
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1057
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_59

    .line 1058
    nop

    .line 1059
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1058
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v4    # "currentKey":Ljava/lang/String;
    :cond_59
    goto :goto_24

    .line 1043
    .end local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1064
    .end local v2    # "i":I
    :cond_5d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 1037
    .end local v0    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "providers":[Ljava/security/Provider;
    :cond_62
    :goto_62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .registers 8
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
            "Ljava/util/LinkedHashSet<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 823
    invoke-static {p0, p1}, Ljava/security/Security;->getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "filterComponents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 830
    .local v1, "serviceName":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 831
    .local v2, "algName":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 833
    .local v3, "attrName":Ljava/lang/String;
    invoke-static {v1, v2, v3, p1, p2}, Ljava/security/Security;->getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    move-result-object v4

    return-object v4
.end method

.method static greylist-max-o getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 958
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 960
    .local v0, "algIndex":I
    const-string v1, "Invalid filter"

    if-ltz v0, :cond_71

    .line 966
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, "serviceName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 968
    .local v4, "algName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 970
    .local v5, "attrName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2e

    .line 973
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_28

    goto :goto_53

    .line 976
    :cond_28
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_2e
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 984
    .local v6, "attrIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6b

    .line 988
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 989
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_65

    .line 996
    if-lt v6, v0, :cond_5f

    add-int/lit8 v7, v6, -0x1

    if-eq v0, v7, :cond_5f

    .line 1000
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1004
    .end local v6    # "attrIndex":I
    :goto_53
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1005
    .local v1, "result":[Ljava/lang/String;
    aput-object v3, v1, v2

    .line 1006
    const/4 v2, 0x1

    aput-object v4, v1, v2

    .line 1007
    const/4 v2, 0x2

    aput-object v5, v1, v2

    .line 1009
    return-object v1

    .line 998
    .end local v1    # "result":[Ljava/lang/String;
    .restart local v6    # "attrIndex":I
    :cond_5f
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 991
    :cond_65
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 986
    :cond_6b
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "algName":Ljava/lang/String;
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "attrIndex":I
    :cond_71
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static greylist-max-o getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 626
    if-nez p2, :cond_10

    .line 627
    nop

    .line 628
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 627
    return-object v0

    .line 630
    :cond_10
    nop

    .line 631
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 630
    return-object v0
.end method

.method static greylist-max-o getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
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

    .line 638
    if-nez p2, :cond_10

    .line 639
    nop

    .line 640
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p0, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 639
    return-object v0

    .line 642
    :cond_10
    nop

    .line 643
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 642
    return-object v0
.end method

.method static greylist-max-o getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 656
    nop

    .line 657
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 656
    return-object v0
.end method

.method static greylist-max-o getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
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

    .line 663
    nop

    .line 664
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 663
    return-object v0
.end method

.method public static whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .line 691
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 692
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_21

    .line 693
    new-instance v1, Ljava/security/SecurityPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 696
    :cond_21
    sget-object v1, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2d

    .line 698
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 699
    :cond_2d
    return-object v1
.end method

.method public static whitelist test-api getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 401
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;

    .line 191
    invoke-virtual {p1, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 195
    invoke-virtual {p1}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 196
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    if-nez v0, :cond_24

    .line 197
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    .local v2, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 199
    invoke-virtual {p1, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    goto :goto_24

    .line 202
    .end local v2    # "matchKey":Ljava/lang/String;
    :cond_23
    goto :goto_a

    .line 204
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_24
    :goto_24
    return-object v0
.end method

.method private static greylist-max-o getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;
    .registers 9
    .param p0, "key"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "entry":Ljava/security/Security$ProviderProperty;
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "matchKey":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider;

    .line 161
    .local v4, "prov":Ljava/security/Provider;
    invoke-virtual {v4, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "prop":Ljava/lang/String;
    if-nez v5, :cond_3b

    .line 166
    invoke-virtual {v4}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 167
    .local v6, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_21
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3b

    if-nez v5, :cond_3b

    .line 168
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 170
    invoke-virtual {v4, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    nop

    .line 176
    .end local v6    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_3b
    if-eqz v5, :cond_48

    .line 177
    new-instance v6, Ljava/security/Security$ProviderProperty;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/security/Security$ProviderProperty;-><init>(Ljava/security/Security-IA;)V

    .line 178
    .local v6, "newEntry":Ljava/security/Security$ProviderProperty;
    iput-object v5, v6, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    .line 179
    iput-object v4, v6, Ljava/security/Security$ProviderProperty;->provider:Ljava/security/Provider;

    .line 180
    return-object v6

    .line 157
    .end local v3    # "matchKey":Ljava/lang/String;
    .end local v4    # "prov":Ljava/security/Provider;
    .end local v5    # "prop":Ljava/lang/String;
    .end local v6    # "newEntry":Ljava/security/Security$ProviderProperty;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 184
    .end local v2    # "i":I
    :cond_4b
    return-object v0
.end method

.method public static whitelist test-api getProviders()[Ljava/security/Provider;
    .registers 1

    .line 385
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->toArray()[Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .registers 6
    .param p0, "filter"    # Ljava/lang/String;

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 467
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 469
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 470
    move-object v0, p0

    .line 471
    const-string v1, ""

    goto :goto_1a

    .line 473
    :cond_f
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 474
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    :goto_1a
    new-instance v3, Ljava/util/Hashtable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 478
    .local v3, "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {v3}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .line 538
    .local p0, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 539
    .local v0, "allProviders":[Ljava/security/Provider;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 540
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 544
    .local v2, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v1, :cond_78

    if-nez v0, :cond_13

    goto :goto_78

    .line 548
    :cond_13
    const/4 v3, 0x1

    .line 552
    .local v3, "firstSearch":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 553
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 554
    .local v5, "key":Ljava/lang/String;
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 556
    .local v6, "value":Ljava/lang/String;
    invoke-static {v5, v6, v0}, Ljava/security/Security;->getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    move-result-object v7

    .line 558
    .local v7, "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v3, :cond_32

    .line 559
    move-object v2, v7

    .line 560
    const/4 v3, 0x0

    .line 563
    :cond_32
    if-eqz v7, :cond_56

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_56

    .line 567
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 568
    .local v8, "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 569
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider;

    .line 570
    .local v9, "prov":Ljava/security/Provider;
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 571
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 573
    .end local v9    # "prov":Ljava/security/Provider;
    :cond_53
    goto :goto_3e

    .end local v8    # "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :cond_54
    nop

    .line 578
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    goto :goto_18

    .line 575
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    .restart local v7    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    :cond_56
    const/4 v2, 0x0

    .line 576
    nop

    .line 580
    .end local v4    # "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    :cond_58
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_61

    goto :goto_76

    .line 583
    :cond_61
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 584
    .local v4, "candidatesArray":[Ljava/lang/Object;
    array-length v5, v4

    new-array v5, v5, [Ljava/security/Provider;

    .line 586
    .local v5, "result":[Ljava/security/Provider;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_69
    array-length v7, v5

    if-ge v6, v7, :cond_75

    .line 587
    aget-object v7, v4, v6

    check-cast v7, Ljava/security/Provider;

    aput-object v7, v5, v6

    .line 586
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 590
    .end local v6    # "i":I
    :cond_75
    return-object v5

    .line 581
    .end local v4    # "candidatesArray":[Ljava/lang/Object;
    .end local v5    # "result":[Ljava/security/Provider;
    :cond_76
    :goto_76
    const/4 v4, 0x0

    return-object v4

    .line 545
    .end local v3    # "firstSearch":Z
    :cond_78
    :goto_78
    return-object v0
.end method

.method private static greylist-max-o getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .registers 8
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
            "Ljava/util/LinkedHashSet<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 844
    .local v0, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p4

    if-ge v1, v2, :cond_1a

    .line 845
    aget-object v2, p4, v1

    invoke-static {v2, p0, p1, p2, p3}, Ljava/security/Security;->isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 848
    aget-object v2, p4, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 851
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static greylist-max-o getSpiClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 603
    sget-object v0, Ljava/security/Security;->spiMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 604
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 605
    return-object v0

    .line 608
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.security."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Spi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 609
    sget-object v1, Ljava/security/Security;->spiMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_2e} :catch_2f

    .line 610
    return-object v0

    .line 611
    :catch_2f
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Spi class not found"

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static greylist-max-o getVersion()I
    .registers 1

    .line 1078
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o increaseVersion()V
    .registers 1

    .line 1072
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1073
    return-void
.end method

.method private static greylist-max-o initializeStatic()V
    .registers 3

    .line 134
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "sun.security.provider.CertPathProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "com.android.org.conscrypt.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public static declared-synchronized whitelist test-api insertProviderAt(Ljava/security/Provider;I)I
    .registers 7
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    const-class v0, Ljava/security/Security;

    monitor-enter v0

    .line 285
    :try_start_3
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "providerName":Ljava/lang/String;
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v2

    .line 289
    .local v2, "list":Lsun/security/jca/ProviderList;
    add-int/lit8 v3, p1, -0x1

    invoke-static {v2, p0, v3}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;

    move-result-object v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_24

    .line 290
    .local v3, "newList":Lsun/security/jca/ProviderList;
    if-ne v2, v3, :cond_16

    .line 291
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 294
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 295
    invoke-static {v3}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    .line 296
    invoke-virtual {v3, v1}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    add-int/lit8 v4, v4, 0x1

    monitor-exit v0

    return v4

    .line 284
    .end local v1    # "providerName":Ljava/lang/String;
    .end local v2    # "list":Lsun/security/jca/ProviderList;
    .end local v3    # "newList":Lsun/security/jca/ProviderList;
    .end local p0    # "provider":Ljava/security/Provider;
    .end local p1    # "position":I
    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method private static greylist-max-o invalidateSMCache(Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 745
    const-string v0, "package.access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 746
    .local v0, "pa":Z
    const-string v1, "package.definition"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 748
    .local v1, "pd":Z
    if-nez v0, :cond_10

    if-eqz v1, :cond_18

    .line 749
    :cond_10
    new-instance v2, Ljava/security/Security$1;

    invoke-direct {v2, v0}, Ljava/security/Security$1;-><init>(Z)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 785
    :cond_18
    return-void
.end method

.method private static greylist-max-o isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;

    .line 938
    const-string v0, "KeySize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 940
    .local v0, "requestedSize":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 941
    .local v2, "maxSize":I
    if-gt v0, v2, :cond_15

    .line 942
    const/4 v1, 0x1

    return v1

    .line 944
    :cond_15
    return v1

    .line 950
    .end local v0    # "requestedSize":I
    .end local v2    # "maxSize":I
    :cond_16
    const-string v0, "ImplementedIn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 951
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 954
    :cond_23
    return v1
.end method

.method private static greylist-max-o isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "prov"    # Ljava/security/Provider;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "filterValue"    # Ljava/lang/String;

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "key":Ljava/lang/String;
    const/16 v1, 0x20

    if-eqz p3, :cond_30

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    :cond_30
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "propValue":Ljava/lang/String;
    if-nez v2, :cond_8e

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, "standardName":Ljava/lang/String;
    if-eqz v3, :cond_8a

    .line 880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    if-eqz p3, :cond_85

    .line 883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    :cond_85
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 889
    :cond_8a
    if-nez v2, :cond_8e

    .line 892
    const/4 v1, 0x0

    return v1

    .line 900
    .end local v3    # "standardName":Ljava/lang/String;
    :cond_8e
    if-nez p3, :cond_92

    .line 901
    const/4 v1, 0x1

    return v1

    .line 906
    :cond_92
    invoke-static {p3}, Ljava/security/Security;->isStandardAttr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 907
    invoke-static {p3, p4, v2}, Ljava/security/Security;->isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 909
    :cond_9d
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static greylist-max-o isStandardAttr(Ljava/lang/String;)Z
    .registers 3
    .param p0, "attribute"    # Ljava/lang/String;

    .line 920
    const-string v0, "KeySize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 921
    return v1

    .line 923
    :cond_a
    const-string v0, "ImplementedIn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 924
    return v1

    .line 926
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized whitelist test-api removeProvider(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Ljava/security/Security;

    monitor-enter v0

    .line 371
    :try_start_3
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 372
    .local v1, "list":Lsun/security/jca/ProviderList;
    invoke-static {v1, p0}, Lsun/security/jca/ProviderList;->remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v2

    .line 373
    .local v2, "newList":Lsun/security/jca/ProviderList;
    invoke-static {v2}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    .line 375
    invoke-static {}, Ljava/security/Security;->increaseVersion()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 376
    monitor-exit v0

    return-void

    .line 370
    .end local v1    # "list":Lsun/security/jca/ProviderList;
    .end local v2    # "newList":Lsun/security/jca/ProviderList;
    .end local p0    # "name":Ljava/lang/String;
    :catchall_13
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "datum"    # Ljava/lang/String;

    .line 727
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 730
    invoke-static {p0}, Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V

    .line 731
    return-void
.end method

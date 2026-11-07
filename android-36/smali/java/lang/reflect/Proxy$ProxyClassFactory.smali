.class final Ljava/lang/reflect/Proxy$ProxyClassFactory;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyClassFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/ClassLoader;",
        "[",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final greylist-max-o proxyClassNamePrefix:Ljava/lang/String; = "$Proxy"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 609
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy$ProxyClassFactory;->nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/reflect/Proxy-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/reflect/Proxy$ProxyClassFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 15
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 614
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/IdentityHashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 615
    .local v0, "interfaceSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_7f

    aget-object v4, p2, v3

    .line 620
    .local v4, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 622
    .local v5, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_16} :catch_18

    move-object v5, v6

    .line 624
    goto :goto_19

    .line 623
    :catch_18
    move-exception v6

    .line 625
    :goto_19
    if-ne v5, v4, :cond_66

    .line 633
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 640
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2c

    .line 615
    .end local v4    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 641
    .restart local v4    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repeated interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :cond_66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not visible from class loader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    .end local v4    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7f
    const/4 v1, 0x0

    .line 647
    .local v1, "proxyPkg":Ljava/lang/String;
    const/16 v3, 0x11

    .line 654
    .local v3, "accessFlags":I
    array-length v4, p2

    move v5, v2

    :goto_84
    if-ge v5, v4, :cond_c0

    aget-object v6, p2, v5

    .line 655
    .local v6, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    .line 656
    .local v7, "flags":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_bd

    .line 657
    const/16 v3, 0x10

    .line 658
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, "name":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 660
    .local v9, "n":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_a4

    const-string v10, ""

    goto :goto_aa

    :cond_a4
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 661
    .local v10, "pkg":Ljava/lang/String;
    :goto_aa
    if-nez v1, :cond_ae

    .line 662
    move-object v1, v10

    goto :goto_bd

    .line 663
    :cond_ae
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    goto :goto_bd

    .line 664
    :cond_b5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "non-public interfaces from different packages"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    .end local v6    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "flags":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "n":I
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_bd
    :goto_bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 670
    :cond_c0
    if-nez v1, :cond_c4

    .line 672
    const-string v1, ""

    .line 678
    :cond_c4
    invoke-static {p2}, Ljava/lang/reflect/Proxy;->-$$Nest$smgetMethods([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 679
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-static {}, Ljava/lang/reflect/Proxy;->-$$Nest$sfgetORDER_BY_SIGNATURE_AND_SUBTYPE()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 680
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->-$$Nest$smvalidateReturnTypes(Ljava/util/List;)V

    .line 681
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->-$$Nest$smdeduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 683
    .local v4, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 684
    .local v5, "methodsArray":[Ljava/lang/reflect/Method;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [[Ljava/lang/Class;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Class;

    .line 689
    .local v6, "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/reflect/Proxy$ProxyClassFactory;->nextUniqueNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    .line 690
    .local v7, "num":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$Proxy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 692
    .local v9, "proxyName":Ljava/lang/String;
    invoke-static {v9, p2, p1, v5, v6}, Ljava/lang/reflect/Proxy;->-$$Nest$smgenerateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

    return-object v10
.end method

.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 602
    check-cast p1, Ljava/lang/ClassLoader;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$ProxyClassFactory;->apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

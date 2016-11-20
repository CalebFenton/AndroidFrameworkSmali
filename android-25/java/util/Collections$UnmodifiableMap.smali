.class Ljava/util/Collections$UnmodifiableMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xe5a57018b0af8beL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<+TK;+TV;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1453
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->keySet:Ljava/util/Set;

    #@6
    .line 1454
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    #@8
    .line 1455
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->values:Ljava/util/Collection;

    #@a
    .line 1429
    if-nez p1, :cond_0

    #@c
    .line 1430
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v0

    #@12
    .line 1431
    :cond_0
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@14
    .line 1428
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1450
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1531
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1519
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1525
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1436
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1437
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1464
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1465
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    #@6
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    #@f
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    #@11
    .line 1466
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    #@13
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1475
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    if-eq p1, p0, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1489
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    #@5
    .line 1488
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1438
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1484
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1476
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1435
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1458
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->keySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1459
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->keySet:Ljava/util/Set;

    #@10
    .line 1460
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->keySet:Ljava/util/Set;

    #@12
    return-object v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1537
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1441
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1447
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1499
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1444
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1504
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1514
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1509
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1494
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1434
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1477
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1470
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->values:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1471
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->values:Ljava/util/Collection;

    #@10
    .line 1472
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->values:Ljava/util/Collection;

    #@12
    return-object v0
.end method

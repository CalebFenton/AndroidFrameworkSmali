.class Ljava/util/Collections$CheckedMap;
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
    name = "CheckedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$CheckedEntrySet;
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
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x4fb2bcdf0d186368L


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final greylist-max-o keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ZqdCunQpYxiQtZ6msuOpv6ZD7D8(Ljava/util/Collections$CheckedMap;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->lambda$computeIfAbsent$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$q6HsMx9vKZ91pQHYhO_BAWvBYJ8(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedMap;->lambda$typeCheck$0(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rHQV7QeqHRsLO50a1kArpbYMsSc(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedMap;->lambda$merge$2(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 4002
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4003
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    .line 4004
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    .line 4005
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    .line 4006
    return-void
.end method

.method private greylist-max-o badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 3993
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key into map with key type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 3998
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value into map with value type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$computeIfAbsent$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "mappingFunction"    # Ljava/util/function/Function;
    .param p2, "k"    # Ljava/lang/Object;

    .line 4094
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4095
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, v0}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4096
    return-object v0
.end method

.method private synthetic blacklist lambda$merge$2(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "remappingFunction"    # Ljava/util/function/BiFunction;
    .param p2, "v1"    # Ljava/lang/Object;
    .param p3, "v2"    # Ljava/lang/Object;

    .line 4117
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4118
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4119
    return-object v0
.end method

.method private synthetic blacklist lambda$typeCheck$0(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "func"    # Ljava/util/function/BiFunction;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;

    .line 3986
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3987
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, v0}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3988
    return-object v0
.end method

.method private greylist-max-o typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;"
        }
    .end annotation

    .line 3984
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3985
    new-instance v0, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method private greylist-max-o typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 3975
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    if-eqz p1, :cond_15

    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 3976
    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap;->badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3978
    :cond_15
    :goto_15
    if-eqz p2, :cond_2a

    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 3979
    :cond_20
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p2}, Ljava/util/Collections$CheckedMap;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3980
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 4014
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4109
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 4092
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4093
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4103
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 4010
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "v"    # Ljava/lang/Object;

    .line 4011
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4050
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_13

    .line 4051
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    .line 4052
    :cond_13
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4017
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4058
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4059
    return-void
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4012
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 4018
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 4009
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4015
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4115
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3}, Ljava/util/Collections$CheckedMap$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V

    invoke-interface {v0, p1, p2, v1}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4022
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4023
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4033
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4034
    .local v0, "entries":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4035
    .local v1, "checked":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    .line 4036
    .local v4, "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 4037
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 4038
    .local v6, "k":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 4039
    .local v7, "v":Ljava/lang/Object;
    invoke-direct {p0, v6, v7}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4040
    new-instance v8, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v8, v6, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4035
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v6    # "k":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 4043
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4044
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v4, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 4045
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4b
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4068
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4069
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4013
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 4074
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4085
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4086
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4079
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p3}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4080
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 4063
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 4064
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 4008
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4019
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4016
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

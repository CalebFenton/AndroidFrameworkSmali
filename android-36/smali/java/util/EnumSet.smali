.class public abstract Ljava/util/EnumSet;
.super Ljava/util/AbstractSet;
.source "EnumSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumSet$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xe03216acd8c29ddL


# instance fields
.field final transient greylist elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field final transient greylist-max-o universe:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "universe":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 101
    iput-object p1, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    .line 102
    iput-object p2, p0, Ljava/util/EnumSet;->universe:[Ljava/lang/Enum;

    .line 103
    return-void
.end method

.method public static whitelist test-api allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 136
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 137
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->addAll()V

    .line 138
    return-object v0
.end method

.method public static whitelist test-api complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/EnumSet<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 200
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 201
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    .line 202
    return-object v0
.end method

.method public static whitelist test-api copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 175
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_c

    .line 176
    move-object v0, p0

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 178
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 180
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 181
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 182
    .local v1, "first":Ljava/lang/Enum;, "TE;"
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 183
    .local v2, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 185
    :cond_30
    return-object v2

    .line 179
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v1    # "first":Ljava/lang/Enum;, "TE;"
    .end local v2    # "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collection is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/EnumSet<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 157
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .line 413
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method public static whitelist test-api noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 115
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->getUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    .line 116
    .local v0, "universe":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-eqz v0, :cond_17

    .line 119
    array-length v1, v0

    const/16 v2, 0x40

    if-gt v1, v2, :cond_11

    .line 120
    new-instance v1, Ljava/util/RegularEnumSet;

    invoke-direct {v1, p0, v0}, Ljava/util/RegularEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    return-object v1

    .line 122
    :cond_11
    new-instance v1, Ljava/util/JumboEnumSet;

    invoke-direct {v1, p0, v0}, Ljava/util/JumboEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    return-object v1

    .line 117
    :cond_17
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not an enum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api of(Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 220
    .local p0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 221
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 222
    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 241
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 242
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 244
    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;TE;TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 264
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 265
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;TE;TE;TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 289
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    .local p3, "e4":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 290
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 294
    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;TE;TE;TE;TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 318
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    .local p3, "e4":Ljava/lang/Enum;, "TE;"
    .local p4, "e5":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 319
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v0, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 324
    return-object v0
.end method

.method public static varargs whitelist test-api of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;[TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 343
    .local p0, "first":Ljava/lang/Enum;, "TE;"
    .local p1, "rest":[Ljava/lang/Enum;, "[TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 344
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 345
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 346
    .local v3, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "e":Ljava/lang/Enum;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 347
    :cond_17
    return-object v0
.end method

.method public static whitelist test-api range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 365
    .local p0, "from":Ljava/lang/Enum;, "TE;"
    .local p1, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_12

    .line 367
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 368
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/EnumSet;->addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V

    .line 369
    return-object v0

    .line 366
    .end local v0    # "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 495
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 505
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract greylist-max-o addAll()V
.end method

.method abstract greylist-max-o addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 83
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 387
    :catch_7
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method abstract greylist-max-o complement()V
.end method

.method final greylist-max-o typeCheck(Ljava/lang/Enum;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 401
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 402
    .local v0, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    if-ne v1, v2, :cond_11

    goto :goto_30

    .line 403
    :cond_11
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_30
    :goto_30
    return-void
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 484
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/util/EnumSet$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/EnumSet$SerializationProxy;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method

.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$KeySet;,
        Ljava/util/EnumMap$Values;,
        Ljava/util/EnumMap$EntrySet;,
        Ljava/util/EnumMap$EntryIterator;,
        Ljava/util/EnumMap$ValueIterator;,
        Ljava/util/EnumMap$KeyIterator;,
        Ljava/util/EnumMap$EnumMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o NULL:Ljava/lang/Object;

.field private static final whitelist serialVersionUID:J = 0x65d7df7be907ca1L


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

.field private final greylist keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o keyUniverse:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient greylist-max-o size:I

.field private transient greylist-max-o vals:[Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetkeyUniverse(Ljava/util/EnumMap;)[Ljava/lang/Enum;
    .registers 1

    iget-object p0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsize(Ljava/util/EnumMap;)I
    .registers 1

    iget p0, p0, Ljava/util/EnumMap;->size:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputsize(Ljava/util/EnumMap;I)V
    .registers 2

    iput p1, p0, Ljava/util/EnumMap;->size:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcontainsMapping(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mentryHashCode(Ljava/util/EnumMap;I)I
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveMapping(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Ljava/util/EnumMap$1;

    invoke-direct {v0}, Ljava/util/EnumMap$1;-><init>()V

    sput-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 138
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 139
    invoke-static {p1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 140
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/EnumMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 151
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 152
    iget-object v0, p1, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 153
    iget-object v0, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 154
    iget v0, p1, Ljava/util/EnumMap;->size:I

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 170
    instance-of v0, p1, Ljava/util/EnumMap;

    if-eqz v0, :cond_24

    .line 171
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    .line 172
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 173
    iget-object v1, v0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 174
    iget-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 175
    iget v1, v0, Ljava/util/EnumMap;->size:I

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 176
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    goto :goto_50

    .line 177
    :cond_24
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 179
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 180
    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 181
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 182
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 184
    :goto_50
    return-void

    .line 178
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified map is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 227
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 228
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 227
    :goto_1e
    return v0
.end method

.method private greylist-max-o entryHashCode(I)I
    .registers 4
    .param p1, "index"    # I

    .line 714
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o equals(Ljava/util/EnumMap;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "**>;)Z"
        }
    .end annotation

    .line 680
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    iget v0, p1, Ljava/util/EnumMap;->size:I

    iget v1, p0, Ljava/util/EnumMap;->size:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 681
    return v2

    .line 683
    :cond_8
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    .line 684
    iget v0, p0, Ljava/util/EnumMap;->size:I

    if-nez v0, :cond_14

    move v2, v3

    :cond_14
    return v2

    .line 687
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 688
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 689
    .local v1, "ourValue":Ljava/lang/Object;
    iget-object v4, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 690
    .local v4, "hisValue":Ljava/lang/Object;
    if-eq v4, v1, :cond_2e

    if-eqz v4, :cond_2d

    .line 691
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 692
    :cond_2d
    return v2

    .line 687
    .end local v1    # "ourValue":Ljava/lang/Object;
    .end local v4    # "hisValue":Ljava/lang/Object;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 694
    .end local v0    # "i":I
    :cond_31
    return v3
.end method

.method private static greylist-max-o getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;>(",
            "Ljava/lang/Class<",
            "TK;>;)[TK;"
        }
    .end annotation

    .line 752
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method private greylist-max-o isValidKey(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 315
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 316
    return v0

    .line 319
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 320
    .local v1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_14

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v2, v3, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private greylist-max-o maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 123
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 798
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 800
    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 801
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 804
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 807
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_29

    .line 808
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 809
    .local v2, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 810
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .end local v2    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 812
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method private greylist-max-o removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 299
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 300
    return v1

    .line 301
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 302
    .local v0, "index":I
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 303
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 304
    iget v1, p0, Ljava/util/EnumMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 305
    return v2

    .line 307
    :cond_29
    return v1
.end method

.method private greylist-max-o typeCheck(Ljava/lang/Enum;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 740
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 741
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v1, v2, :cond_11

    goto :goto_30

    .line 742
    :cond_11
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_30
    :goto_30
    return-void
.end method

.method private greylist-max-o unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 128
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 775
    iget v0, p0, Ljava/util/EnumMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 778
    iget v0, p0, Ljava/util/EnumMap;->size:I

    .line 779
    .local v0, "entriesToBeWritten":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-lez v0, :cond_2a

    .line 780
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    .line 781
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 782
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 783
    add-int/lit8 v0, v0, -0x1

    .line 779
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 786
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 359
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 361
    return-void
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 82
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/util/EnumMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 725
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 727
    .local v0, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_16

    .line 730
    .end local v0    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    nop

    .line 731
    iget-object v0, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 732
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 733
    return-object v1

    .line 728
    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .restart local v0    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :catch_16
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 223
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 205
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 207
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 208
    .local v4, "val":Ljava/lang/Object;
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 209
    const/4 v0, 0x1

    return v0

    .line 207
    .end local v4    # "val":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 211
    :cond_18
    return v2
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

    .line 466
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 467
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    .line 468
    return-object v0

    .line 470
    :cond_5
    new-instance v1, Ljava/util/EnumMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 652
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 653
    return v0

    .line 654
    :cond_4
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_10

    .line 655
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->equals(Ljava/util/EnumMap;)Z

    move-result v0

    return v0

    .line 656
    :cond_10
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 659
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget v3, p0, Ljava/util/EnumMap;->size:I

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 660
    return v2

    .line 662
    :cond_21
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    if-ge v3, v4, :cond_56

    .line 663
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_53

    .line 664
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v4, v4, v3

    .line 665
    .local v4, "key":Ljava/lang/Enum;, "TK;"
    iget-object v5, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 666
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_48

    .line 667
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_47

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 668
    :cond_47
    return v2

    .line 670
    :cond_48
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 671
    return v2

    .line 662
    .end local v4    # "key":Ljava/lang/Enum;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 676
    .end local v3    # "i":I
    :cond_56
    return v0

    .line 657
    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_57
    return v2
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 247
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 248
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 247
    :goto_17
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 702
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 704
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 705
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_12

    .line 706
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 704
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 710
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 383
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_d

    .line 384
    new-instance v1, Ljava/util/EnumMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    move-object v0, v1

    .line 385
    iput-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 387
    :cond_d
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->typeCheck(Ljava/lang/Enum;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 271
    .local v0, "index":I
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 272
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 273
    if-nez v1, :cond_1b

    .line 274
    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    .line 275
    :cond_1b
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 82
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p1, Ljava/util/EnumMap;

    if-eqz v0, :cond_55

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    .line 336
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_35

    .line 337
    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 338
    return-void

    .line 339
    :cond_14
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v2, v2

    if-ge v1, v2, :cond_54

    .line 343
    iget-object v2, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 344
    .local v2, "emValue":Ljava/lang/Object;
    if-eqz v2, :cond_51

    .line 345
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_4d

    .line 346
    iget v3, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/EnumMap;->size:I

    .line 347
    :cond_4d
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 342
    .end local v2    # "emValue":Ljava/lang/Object;
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .end local v1    # "i":I
    :cond_54
    goto :goto_58

    .line 351
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    :cond_55
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 353
    :goto_58
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 288
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 289
    return-object v1

    .line 290
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 291
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 292
    .local v2, "oldValue":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 293
    if-eqz v2, :cond_1f

    .line 294
    iget v1, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 295
    :cond_1f
    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 194
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 421
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 422
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_d

    .line 423
    new-instance v1, Ljava/util/EnumMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    move-object v0, v1

    .line 424
    iput-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 426
    :cond_d
    return-object v0
.end method

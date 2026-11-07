.class final Ljava/util/ImmutableCollections$SetN;
.super Ljava/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ImmutableCollections$SetN$SetNIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final blacklist elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 924
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 925
    array-length v0, p1

    iput v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    .line 927
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    .line 928
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_3c

    .line 929
    aget-object v1, p1, v0

    .line 930
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v2

    .line 931
    .local v2, "idx":I
    if-gez v2, :cond_23

    .line 934
    iget-object v3, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput-object v1, v3, v4

    .line 928
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 932
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "idx":I
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 937
    .end local v0    # "i":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    :cond_3c
    return-void
.end method

.method private blacklist probe(Ljava/lang/Object;)I
    .registers 5
    .param p1, "pe"    # Ljava/lang/Object;

    .line 1021
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 1023
    .local v0, "idx":I
    :goto_b
    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1024
    .local v1, "ee":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_15

    .line 1025
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 1026
    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1027
    return v0

    .line 1028
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_24

    .line 1029
    const/4 v0, 0x0

    .line 1031
    .end local v1    # "ee":Ljava/lang/Object;, "TE;"
    :cond_24
    goto :goto_b
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1036
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 1041
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 1042
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1043
    .local v1, "dest":I
    iget-object v2, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_17

    aget-object v5, v2, v4

    .line 1044
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_14

    .line 1045
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dest":I
    .local v6, "dest":I
    aput-object v5, v0, v1

    move v1, v6

    .line 1043
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "dest":I
    .restart local v1    # "dest":I
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1048
    :cond_17
    new-instance v2, Ljava/util/CollSer;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 951
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    if-lez v0, :cond_f

    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1007
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    const/4 v0, 0x0

    .line 1008
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 1009
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_10

    .line 1010
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 1008
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1013
    :cond_13
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 946
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1002
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN$SetNIterator;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$SetN$SetNIterator;-><init>(Ljava/util/ImmutableCollections$SetN;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 941
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 1053
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 1054
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SetN;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1055
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v3, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    if-ge v2, v3, :cond_16

    .line 1056
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1055
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1058
    .end local v2    # "i":I
    :cond_16
    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1064
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    if-lt v0, v1, :cond_7

    move-object v0, p1

    goto :goto_17

    .line 1065
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_17
    nop

    .line 1066
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SetN;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1067
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    iget v3, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    if-ge v2, v3, :cond_2a

    .line 1068
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1067
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1070
    .end local v2    # "i":I
    :cond_2a
    array-length v2, v0

    iget v3, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    if-le v2, v3, :cond_34

    .line 1071
    iget v2, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 1073
    :cond_34
    return-object v0
.end method

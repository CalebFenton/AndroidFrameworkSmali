.class final Ljava/util/JumboEnumSet;
.super Ljava/util/EnumSet;
.source "JumboEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/JumboEnumSet$EnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/util/EnumSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x4a3d96ac32134e0L


# instance fields
.field private blacklist elements:[J

.field private blacklist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J
    .registers 1

    iget-object p0, p0, Ljava/util/JumboEnumSet;->elements:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsize(Ljava/util/JumboEnumSet;)I
    .registers 1

    iget p0, p0, Ljava/util/JumboEnumSet;->size:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputsize(Ljava/util/JumboEnumSet;I)V
    .registers 2

    iput p1, p0, Ljava/util/JumboEnumSet;->size:I

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "universe":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 52
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    .line 53
    return-void
.end method

.method private blacklist recalculateSize()Z
    .registers 10

    .line 362
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 363
    .local v0, "oldSize":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    .line 364
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v2

    move v4, v1

    :goto_9
    if-ge v4, v3, :cond_19

    aget-wide v5, v2, v4

    .line 365
    .local v5, "elt":J
    iget v7, p0, Ljava/util/JumboEnumSet;->size:I

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/JumboEnumSet;->size:I

    .line 364
    .end local v5    # "elt":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 367
    :cond_19
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    if-eq v2, v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Enum;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 203
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->typeCheck(Ljava/lang/Enum;)V

    .line 205
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 206
    .local v0, "eOrdinal":I
    ushr-int/lit8 v1, v0, 0x6

    .line 208
    .local v1, "eWordNum":I
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v1

    .line 209
    .local v2, "oldElements":J
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v0

    or-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 210
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_22

    move v4, v5

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    .line 211
    .local v4, "result":Z
    :goto_23
    if-eqz v4, :cond_2a

    .line 212
    iget v6, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/2addr v6, v5

    iput v6, p0, Ljava/util/JumboEnumSet;->size:I

    .line 213
    :cond_2a
    return v4
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->add(Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method

.method blacklist addAll()V
    .registers 6

    .line 72
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 73
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "i":I
    :cond_f
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    iget-object v4, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v4, v4

    neg-int v4, v4

    ushr-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 75
    iget-object v0, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 76
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 272
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-eqz v0, :cond_4f

    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 275
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_36

    .line 276
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 277
    const/4 v1, 0x0

    return v1

    .line 279
    :cond_15
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_4a

    .line 284
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v3, v2, v1

    iget-object v5, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v5, v1

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 285
    .end local v1    # "i":I
    :cond_4a
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v1

    return v1

    .line 273
    .end local v0    # "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    :cond_4f
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method blacklist addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x6

    .line 57
    .local v0, "fromIndex":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x6

    .line 59
    .local v1, "toIndex":I
    const-wide/16 v2, -0x1

    if-ne v0, v1, :cond_26

    .line 60
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    ushr-long/2addr v2, v5

    .line 61
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long/2addr v2, v5

    aput-wide v2, v4, v0

    goto :goto_46

    .line 63
    :cond_26
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long v5, v2, v5

    aput-wide v5, v4, v0

    .line 64
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    :goto_32
    if-ge v4, v1, :cond_3b

    .line 65
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aput-wide v2, v5, v4

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 66
    .end local v4    # "i":I
    :cond_3b
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x3f

    ushr-long/2addr v2, v5

    aput-wide v2, v4, v1

    .line 68
    :goto_46
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/JumboEnumSet;->size:I

    .line 69
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 335
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 337
    return-void
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clone()Ljava/util/EnumSet;

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

    .line 371
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 372
    .local v0, "result":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    .line 373
    return-object v0
.end method

.method blacklist complement()V
    .registers 8

    .line 79
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 80
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v0

    not-long v2, v2

    aput-wide v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "i":I
    :cond_12
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    iget-object v4, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v4, v4

    neg-int v4, v4

    const-wide/16 v5, -0x1

    ushr-long v4, v5, v4

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 82
    iget-object v0, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 83
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "e"    # Ljava/lang/Object;

    .line 182
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 183
    return v0

    .line 184
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 185
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 186
    return v0

    .line 188
    :cond_15
    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 189
    .local v2, "eOrdinal":I
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    ushr-int/lit8 v4, v2, 0x6

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 251
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 254
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_12

    .line 255
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v1

    return v1

    .line 257
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 258
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v1

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v4, v1

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    .line 259
    const/4 v2, 0x0

    return v2

    .line 257
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 260
    .end local v1    # "i":I
    :cond_2d
    const/4 v1, 0x1

    return v1

    .line 252
    .end local v0    # "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    :cond_2f
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 349
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 352
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_19

    .line 353
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v1, :cond_17

    iget v1, v0, Ljava/util/JumboEnumSet;->size:I

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1

    .line 355
    :cond_19
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    .line 350
    .end local v0    # "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    :cond_22
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 172
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

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

    .line 95
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    new-instance v0, Ljava/util/JumboEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/JumboEnumSet$EnumSetIterator;-><init>(Ljava/util/JumboEnumSet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "e"    # Ljava/lang/Object;

    .line 223
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 224
    return v0

    .line 225
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 226
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 227
    return v0

    .line 228
    :cond_15
    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 229
    .local v2, "eOrdinal":I
    ushr-int/lit8 v3, v2, 0x6

    .line 231
    .local v3, "eWordNum":I
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v4, v3

    .line 232
    .local v4, "oldElements":J
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v7, v6, v3

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v2

    not-long v9, v9

    and-long/2addr v7, v9

    aput-wide v7, v6, v3

    .line 233
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v6, v3

    cmp-long v6, v6, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    move v0, v7

    .line 234
    .local v0, "result":Z
    :cond_37
    if-eqz v0, :cond_3e

    .line 235
    iget v6, p0, Ljava/util/JumboEnumSet;->size:I

    sub-int/2addr v6, v7

    iput v6, p0, Ljava/util/JumboEnumSet;->size:I

    .line 236
    :cond_3e
    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 297
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-eqz v0, :cond_29

    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 300
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_f

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 304
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v3, v2, v1

    iget-object v5, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v5, v1

    not-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 305
    .end local v1    # "i":I
    :cond_24
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v1

    return v1

    .line 298
    .end local v0    # "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    :cond_29
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 317
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 320
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_18

    .line 321
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 322
    .local v1, "changed":Z
    :goto_14
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clear()V

    .line 323
    return v1

    .line 326
    .end local v1    # "changed":Z
    :cond_18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 327
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v3, v2, v1

    iget-object v5, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v5, v1

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 328
    .end local v1    # "i":I
    :cond_2c
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v1

    return v1

    .line 318
    .end local v0    # "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    :cond_31
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 163
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method

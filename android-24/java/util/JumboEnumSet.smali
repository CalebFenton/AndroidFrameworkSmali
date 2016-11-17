.class Ljava/util/JumboEnumSet;
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
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4a3d96ac32134e0L


# instance fields
.field private elements:[J

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/JumboEnumSet;)[J
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/JumboEnumSet;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/util/JumboEnumSet;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/JumboEnumSet;->size:I

    #@2
    return p1
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 1
    .param p2, "universe"    # [Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    #@6
    .line 51
    array-length v0, p2

    #@7
    add-int/lit8 v0, v0, 0x3f

    #@9
    ushr-int/lit8 v0, v0, 0x6

    #@b
    new-array v0, v0, [J

    #@d
    iput-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@f
    .line 49
    return-void
.end method

.method private recalculateSize()Z
    .locals 9

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 362
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    #@3
    .line 363
    .local v2, "oldSize":I
    iput v3, p0, Ljava/util/JumboEnumSet;->size:I

    #@5
    .line 364
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@7
    array-length v6, v5

    #@8
    move v4, v3

    #@9
    :goto_0
    if-ge v4, v6, :cond_0

    #@b
    aget-wide v0, v5, v4

    #@d
    .line 365
    .local v0, "elt":J
    iget v7, p0, Ljava/util/JumboEnumSet;->size:I

    #@f
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@12
    move-result v8

    #@13
    add-int/2addr v7, v8

    #@14
    iput v7, p0, Ljava/util/JumboEnumSet;->size:I

    #@16
    .line 364
    add-int/lit8 v4, v4, 0x1

    #@18
    goto :goto_0

    #@19
    .line 367
    .end local v0    # "elt":J
    :cond_0
    iget v4, p0, Ljava/util/JumboEnumSet;->size:I

    #@1b
    if-eq v4, v2, :cond_1

    #@1d
    const/4 v3, 0x1

    #@1e
    :cond_1
    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 198
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->typeCheck(Ljava/lang/Enum;)V

    #@3
    .line 200
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@6
    move-result v0

    #@7
    .line 201
    .local v0, "eOrdinal":I
    ushr-int/lit8 v1, v0, 0x6

    #@9
    .line 203
    .local v1, "eWordNum":I
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@b
    aget-wide v2, v5, v1

    #@d
    .line 204
    .local v2, "oldElements":J
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@f
    aget-wide v6, v5, v1

    #@11
    const-wide/16 v8, 0x1

    #@13
    shl-long/2addr v8, v0

    #@14
    or-long/2addr v6, v8

    #@15
    aput-wide v6, v5, v1

    #@17
    .line 205
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@19
    aget-wide v6, v5, v1

    #@1b
    cmp-long v5, v6, v2

    #@1d
    if-eqz v5, :cond_1

    #@1f
    const/4 v4, 0x1

    #@20
    .line 206
    .local v4, "result":Z
    :goto_0
    if-eqz v4, :cond_0

    #@22
    .line 207
    iget v5, p0, Ljava/util/JumboEnumSet;->size:I

    #@24
    add-int/lit8 v5, v5, 0x1

    #@26
    iput v5, p0, Ljava/util/JumboEnumSet;->size:I

    #@28
    .line 208
    :cond_0
    return v4

    #@29
    .line 205
    .end local v4    # "result":Z
    :cond_1
    const/4 v4, 0x0

    #@2a
    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 197
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->add(Ljava/lang/Enum;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method addAll()V
    .locals 6

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 72
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@8
    const-wide/16 v2, -0x1

    #@a
    aput-wide v2, v1, v0

    #@c
    .line 71
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 73
    :cond_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@11
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@13
    array-length v2, v2

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    aget-wide v4, v1, v2

    #@18
    iget-object v3, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    #@1a
    array-length v3, v3

    #@1b
    neg-int v3, v3

    #@1c
    ushr-long/2addr v4, v3

    #@1d
    aput-wide v4, v1, v2

    #@1f
    .line 74
    iget-object v1, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    #@21
    array-length v1, v1

    #@22
    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    #@24
    .line 70
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 268
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 269
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 271
    check-cast v0, Ljava/util/JumboEnumSet;

    #@c
    .line 272
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@e
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@10
    if-eq v2, v3, :cond_2

    #@12
    .line 273
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 274
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 276
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    #@1c
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    iget-object v4, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " != "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 276
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 280
    :cond_2
    const/4 v1, 0x0

    #@3d
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@3f
    array-length v2, v2

    #@40
    if-ge v1, v2, :cond_3

    #@42
    .line 281
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@44
    aget-wide v4, v2, v1

    #@46
    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    #@48
    aget-wide v6, v3, v1

    #@4a
    or-long/2addr v4, v6

    #@4b
    aput-wide v4, v2, v1

    #@4d
    .line 280
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 282
    :cond_3
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    #@53
    move-result v2

    #@54
    return v2
.end method

.method addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    const-wide/16 v6, -0x1

    #@2
    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@5
    move-result v3

    #@6
    ushr-int/lit8 v0, v3, 0x6

    #@8
    .line 56
    .local v0, "fromIndex":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@b
    move-result v3

    #@c
    ushr-int/lit8 v2, v3, 0x6

    #@e
    .line 58
    .local v2, "toIndex":I
    if-ne v0, v2, :cond_0

    #@10
    .line 59
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@15
    move-result v4

    #@16
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@19
    move-result v5

    #@1a
    sub-int/2addr v4, v5

    #@1b
    add-int/lit8 v4, v4, -0x1

    #@1d
    ushr-long v4, v6, v4

    #@1f
    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@22
    move-result v6

    #@23
    .line 59
    shl-long/2addr v4, v6

    #@24
    aput-wide v4, v3, v0

    #@26
    .line 67
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@29
    move-result v3

    #@2a
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@2d
    move-result v4

    #@2e
    sub-int/2addr v3, v4

    #@2f
    add-int/lit8 v3, v3, 0x1

    #@31
    iput v3, p0, Ljava/util/JumboEnumSet;->size:I

    #@33
    .line 54
    return-void

    #@34
    .line 62
    :cond_0
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@36
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@39
    move-result v4

    #@3a
    shl-long v4, v6, v4

    #@3c
    aput-wide v4, v3, v0

    #@3e
    .line 63
    add-int/lit8 v1, v0, 0x1

    #@40
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@42
    .line 64
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@44
    aput-wide v6, v3, v1

    #@46
    .line 63
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 65
    :cond_1
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@4b
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@4e
    move-result v4

    #@4f
    rsub-int/lit8 v4, v4, 0x3f

    #@51
    ushr-long v4, v6, v4

    #@53
    aput-wide v4, v3, v2

    #@55
    goto :goto_0
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 334
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    #@7
    .line 335
    const/4 v0, 0x0

    #@8
    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    #@a
    .line 333
    return-void
.end method

.method public clone()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 371
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/JumboEnumSet;

    #@6
    .line 372
    .local v0, "result":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [J

    #@e
    iput-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    #@10
    .line 373
    return-object v0
.end method

.method complement()V
    .locals 8

    #@0
    .prologue
    .line 78
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 79
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@8
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@a
    aget-wide v2, v2, v0

    #@c
    not-long v2, v2

    #@d
    aput-wide v2, v1, v0

    #@f
    .line 78
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 80
    :cond_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@14
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@16
    array-length v2, v2

    #@17
    add-int/lit8 v2, v2, -0x1

    #@19
    aget-wide v4, v1, v2

    #@1b
    iget-object v3, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    #@1d
    array-length v3, v3

    #@1e
    neg-int v3, v3

    #@1f
    const-wide/16 v6, -0x1

    #@21
    ushr-long/2addr v6, v3

    #@22
    and-long/2addr v4, v6

    #@23
    aput-wide v4, v1, v2

    #@25
    .line 81
    iget-object v1, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    #@27
    array-length v1, v1

    #@28
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    #@2a
    sub-int/2addr v1, v2

    #@2b
    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    #@2d
    .line 77
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 177
    if-nez p1, :cond_0

    #@3
    .line 178
    return v2

    #@4
    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 180
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@a
    if-eq v0, v3, :cond_1

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@12
    if-eq v3, v4, :cond_1

    #@14
    .line 181
    return v2

    #@15
    .line 183
    :cond_1
    check-cast p1, Ljava/lang/Enum;

    #@17
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@1a
    move-result v1

    #@1b
    .line 184
    .local v1, "eOrdinal":I
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@1d
    ushr-int/lit8 v4, v1, 0x6

    #@1f
    aget-wide v4, v3, v4

    #@21
    const-wide/16 v6, 0x1

    #@23
    shl-long/2addr v6, v1

    #@24
    and-long/2addr v4, v6

    #@25
    const-wide/16 v6, 0x0

    #@27
    cmp-long v3, v4, v6

    #@29
    if-eqz v3, :cond_2

    #@2b
    const/4 v2, 0x1

    #@2c
    :cond_2
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 247
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 249
    check-cast v0, Ljava/util/JumboEnumSet;

    #@c
    .line 250
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@e
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@10
    if-eq v2, v3, :cond_1

    #@12
    .line 251
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 253
    :cond_1
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@1a
    array-length v2, v2

    #@1b
    if-ge v1, v2, :cond_3

    #@1d
    .line 254
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elements:[J

    #@1f
    aget-wide v2, v2, v1

    #@21
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@23
    aget-wide v4, v4, v1

    #@25
    not-long v4, v4

    #@26
    and-long/2addr v2, v4

    #@27
    const-wide/16 v4, 0x0

    #@29
    cmp-long v2, v2, v4

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 255
    const/4 v2, 0x0

    #@2e
    return v2

    #@2f
    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 256
    :cond_3
    const/4 v2, 0x1

    #@33
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 348
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 349
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    :cond_0
    move-object v0, p1

    #@b
    .line 351
    check-cast v0, Ljava/util/JumboEnumSet;

    #@d
    .line 352
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@f
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@11
    if-eq v2, v3, :cond_2

    #@13
    .line 353
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    #@15
    if-nez v2, :cond_1

    #@17
    iget v2, v0, Ljava/util/JumboEnumSet;->size:I

    #@19
    if-nez v2, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    :cond_1
    return v1

    #@1d
    .line 355
    :cond_2
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    #@1f
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@21
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    #@24
    move-result v1

    #@25
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 167
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    new-instance v0, Ljava/util/JumboEnumSet$EnumSetIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/JumboEnumSet$EnumSetIterator;-><init>(Ljava/util/JumboEnumSet;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 218
    if-nez p1, :cond_0

    #@3
    .line 219
    return v3

    #@4
    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 221
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@a
    if-eq v0, v6, :cond_1

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@f
    move-result-object v6

    #@10
    iget-object v7, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@12
    if-eq v6, v7, :cond_1

    #@14
    .line 222
    return v3

    #@15
    .line 223
    :cond_1
    check-cast p1, Ljava/lang/Enum;

    #@17
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@1a
    move-result v1

    #@1b
    .line 224
    .local v1, "eOrdinal":I
    ushr-int/lit8 v2, v1, 0x6

    #@1d
    .line 226
    .local v2, "eWordNum":I
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@1f
    aget-wide v4, v6, v2

    #@21
    .line 227
    .local v4, "oldElements":J
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@23
    aget-wide v8, v6, v2

    #@25
    const-wide/16 v10, 0x1

    #@27
    shl-long/2addr v10, v1

    #@28
    not-long v10, v10

    #@29
    and-long/2addr v8, v10

    #@2a
    aput-wide v8, v6, v2

    #@2c
    .line 228
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@2e
    aget-wide v6, v6, v2

    #@30
    cmp-long v6, v6, v4

    #@32
    if-eqz v6, :cond_2

    #@34
    const/4 v3, 0x1

    #@35
    .line 229
    .local v3, "result":Z
    :cond_2
    if-eqz v3, :cond_3

    #@37
    .line 230
    iget v6, p0, Ljava/util/JumboEnumSet;->size:I

    #@39
    add-int/lit8 v6, v6, -0x1

    #@3b
    iput v6, p0, Ljava/util/JumboEnumSet;->size:I

    #@3d
    .line 231
    :cond_3
    return v3
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 294
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 295
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 297
    check-cast v0, Ljava/util/JumboEnumSet;

    #@c
    .line 298
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@e
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@10
    if-eq v2, v3, :cond_1

    #@12
    .line 299
    const/4 v2, 0x0

    #@13
    return v2

    #@14
    .line 301
    :cond_1
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@17
    array-length v2, v2

    #@18
    if-ge v1, v2, :cond_2

    #@1a
    .line 302
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@1c
    aget-wide v4, v2, v1

    #@1e
    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    #@20
    aget-wide v6, v3, v1

    #@22
    not-long v6, v6

    #@23
    and-long/2addr v4, v6

    #@24
    aput-wide v4, v2, v1

    #@26
    .line 301
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 303
    :cond_2
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    #@2c
    move-result v2

    #@2d
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 315
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v3, p1, Ljava/util/JumboEnumSet;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 316
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    :cond_0
    move-object v1, p1

    #@a
    .line 318
    check-cast v1, Ljava/util/JumboEnumSet;

    #@c
    .line 319
    .local v1, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v3, v1, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@e
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 320
    iget v3, p0, Ljava/util/JumboEnumSet;->size:I

    #@14
    if-eqz v3, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    .line 321
    .local v0, "changed":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clear()V

    #@1a
    .line 322
    return v0

    #@1b
    .line 320
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "changed":Z
    goto :goto_0

    #@1d
    .line 325
    .end local v0    # "changed":Z
    :cond_2
    const/4 v2, 0x0

    #@1e
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@20
    array-length v3, v3

    #@21
    if-ge v2, v3, :cond_3

    #@23
    .line 326
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    #@25
    aget-wide v4, v3, v2

    #@27
    iget-object v6, v1, Ljava/util/JumboEnumSet;->elements:[J

    #@29
    aget-wide v6, v6, v2

    #@2b
    and-long/2addr v4, v6

    #@2c
    aput-wide v4, v3, v2

    #@2e
    .line 325
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_1

    #@31
    .line 327
    :cond_3
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    #@34
    move-result v3

    #@35
    return v3
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 158
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    #@2
    return v0
.end method

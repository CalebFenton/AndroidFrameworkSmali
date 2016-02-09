.class final Ljava/util/HugeEnumSet;
.super Ljava/util/EnumSet;
.source "HugeEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HugeEnumSet$HugeEnumSetIterator;
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
.field private static final BIT_IN_LONG:I = 0x40


# instance fields
.field private bits:[J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/HugeEnumSet;)[J
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    #@3
    .line 43
    iput-object p2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    #@5
    .line 44
    array-length v0, p2

    #@6
    add-int/lit8 v0, v0, 0x40

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    div-int/lit8 v0, v0, 0x40

    #@c
    new-array v0, v0, [J

    #@e
    iput-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@10
    .line 41
    return-void
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
    .line 122
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    iget-object v7, p0, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    #@2
    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 123
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@8
    move-result v6

    #@9
    .line 124
    .local v6, "ordinal":I
    div-int/lit8 v1, v6, 0x40

    #@b
    .line 125
    .local v1, "index":I
    rem-int/lit8 v0, v6, 0x40

    #@d
    .line 126
    .local v0, "inBits":I
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@f
    aget-wide v4, v7, v1

    #@11
    .line 127
    .local v4, "oldBits":J
    const-wide/16 v8, 0x1

    #@13
    shl-long/2addr v8, v0

    #@14
    or-long v2, v4, v8

    #@16
    .line 128
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    #@18
    if-eqz v7, :cond_0

    #@1a
    .line 129
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@1c
    aput-wide v2, v7, v1

    #@1e
    .line 130
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    #@20
    add-int/lit8 v7, v7, 0x1

    #@22
    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    #@24
    .line 131
    const/4 v7, 0x1

    #@25
    return v7

    #@26
    .line 133
    :cond_0
    const/4 v7, 0x0

    #@27
    return v7
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/HugeEnumSet;->add(Ljava/lang/Enum;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 138
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@3
    move-result v8

    #@4
    if-nez v8, :cond_0

    #@6
    if-ne p1, p0, :cond_1

    #@8
    .line 139
    :cond_0
    const/4 v8, 0x0

    #@9
    return v8

    #@a
    .line 142
    :cond_1
    instance-of v8, p1, Ljava/util/EnumSet;

    #@c
    if-eqz v8, :cond_4

    #@e
    move-object v3, p1

    #@f
    .line 143
    check-cast v3, Ljava/util/EnumSet;

    #@11
    .line 144
    .local v3, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@13
    iget-object v9, p0, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    #@15
    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@18
    move-object v1, v3

    #@19
    .line 146
    check-cast v1, Ljava/util/HugeEnumSet;

    #@1b
    .line 147
    .local v1, "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v0, 0x0

    #@1c
    .line 148
    .local v0, "changed":Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@1f
    array-length v8, v8

    #@20
    if-ge v2, v8, :cond_3

    #@22
    .line 149
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@24
    aget-wide v6, v8, v2

    #@26
    .line 150
    .local v6, "oldBits":J
    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    #@28
    aget-wide v8, v8, v2

    #@2a
    or-long v4, v6, v8

    #@2c
    .line 151
    .local v4, "newBits":J
    cmp-long v8, v6, v4

    #@2e
    if-eqz v8, :cond_2

    #@30
    .line 152
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@32
    aput-wide v4, v8, v2

    #@34
    .line 153
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@36
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    #@39
    move-result v9

    #@3a
    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    #@3d
    move-result v10

    #@3e
    sub-int/2addr v9, v10

    #@3f
    add-int/2addr v8, v9

    #@40
    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@42
    .line 154
    const/4 v0, 0x1

    #@43
    .line 148
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 157
    .end local v4    # "newBits":J
    .end local v6    # "oldBits":J
    :cond_3
    return v0

    #@47
    .line 159
    .end local v0    # "changed":Z
    .end local v1    # "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .end local v2    # "i":I
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@4a
    move-result v8

    #@4b
    return v8
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    #@7
    .line 170
    const/4 v0, 0x0

    #@8
    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    #@a
    .line 168
    return-void
.end method

.method public bridge synthetic clone()Ljava/util/EnumSet;
    .locals 1

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/util/HugeEnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HugeEnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 204
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/HugeEnumSet;

    #@6
    .line 205
    .local v0, "set":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [J

    #@e
    iput-object v1, v0, Ljava/util/HugeEnumSet;->bits:[J

    #@10
    .line 206
    return-object v0
.end method

.method protected complement()V
    .locals 8

    #@0
    .prologue
    .line 175
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v4, 0x0

    #@1
    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    #@3
    .line 176
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@6
    array-length v3, v4

    #@7
    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@9
    .line 177
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@b
    aget-wide v4, v4, v2

    #@d
    not-long v0, v4

    #@e
    .line 180
    .local v0, "b":J
    add-int/lit8 v4, v3, -0x1

    #@10
    if-ne v2, v4, :cond_0

    #@12
    .line 181
    iget-object v4, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    #@14
    array-length v4, v4

    #@15
    rem-int/lit8 v4, v4, 0x40

    #@17
    rsub-int/lit8 v4, v4, 0x40

    #@19
    const-wide/16 v6, -0x1

    #@1b
    ushr-long v4, v6, v4

    #@1d
    and-long/2addr v0, v4

    #@1e
    .line 184
    :cond_0
    iget v4, p0, Ljava/util/HugeEnumSet;->size:I

    #@20
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@23
    move-result v5

    #@24
    add-int/2addr v4, v5

    #@25
    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    #@27
    .line 185
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@29
    aput-wide v0, v4, v2

    #@2b
    .line 176
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 174
    .end local v0    # "b":J
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 191
    if-eqz p1, :cond_1

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {p0, v4}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 196
    check-cast p1, Ljava/lang/Enum;

    #@f
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@12
    move-result v2

    #@13
    .line 197
    .local v2, "ordinal":I
    div-int/lit8 v1, v2, 0x40

    #@15
    .line 198
    .local v1, "index":I
    rem-int/lit8 v0, v2, 0x40

    #@17
    .line 199
    .local v0, "inBits":I
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@19
    aget-wide v4, v4, v1

    #@1b
    const-wide/16 v6, 0x1

    #@1d
    shl-long/2addr v6, v0

    #@1e
    and-long/2addr v4, v6

    #@1f
    const-wide/16 v6, 0x0

    #@21
    cmp-long v4, v4, v6

    #@23
    if-eqz v4, :cond_0

    #@25
    const/4 v3, 0x1

    #@26
    :cond_0
    return v3

    #@27
    .line 192
    .end local v0    # "inBits":I
    .end local v1    # "index":I
    .end local v2    # "ordinal":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 212
    return v8

    #@9
    .line 214
    :cond_0
    instance-of v5, p1, Ljava/util/HugeEnumSet;

    #@b
    if-eqz v5, :cond_3

    #@d
    move-object v1, p1

    #@e
    .line 215
    check-cast v1, Ljava/util/HugeEnumSet;

    #@10
    .line 216
    .local v1, "set":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<*>;"
    iget-object v5, v1, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    #@12
    invoke-virtual {p0, v5}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_3

    #@18
    .line 217
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@1b
    array-length v5, v5

    #@1c
    if-ge v0, v5, :cond_2

    #@1e
    .line 218
    iget-object v5, v1, Ljava/util/HugeEnumSet;->bits:[J

    #@20
    aget-wide v2, v5, v0

    #@22
    .line 219
    .local v2, "setBits":J
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@24
    aget-wide v6, v5, v0

    #@26
    and-long/2addr v6, v2

    #@27
    cmp-long v5, v6, v2

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 220
    return v4

    #@2c
    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 223
    .end local v2    # "setBits":J
    :cond_2
    return v8

    #@30
    .line 226
    .end local v0    # "i":I
    .end local v1    # "set":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<*>;"
    :cond_3
    instance-of v5, p1, Ljava/util/EnumSet;

    #@32
    if-nez v5, :cond_4

    #@34
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    #@37
    move-result v4

    #@38
    :cond_4
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 231
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 232
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 234
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 235
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 237
    :cond_1
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@15
    check-cast p1, Ljava/util/HugeEnumSet;

    #@17
    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/HugeEnumSet;->bits:[J

    #@19
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    new-instance v0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$HugeEnumSetIterator;)V

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v10, 0x0

    #@1
    .line 247
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {p0, v7}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 252
    check-cast p1, Ljava/lang/Enum;

    #@f
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@12
    move-result v6

    #@13
    .line 253
    .local v6, "ordinal":I
    div-int/lit8 v1, v6, 0x40

    #@15
    .line 254
    .local v1, "index":I
    rem-int/lit8 v0, v6, 0x40

    #@17
    .line 255
    .local v0, "inBits":I
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@19
    aget-wide v4, v7, v1

    #@1b
    .line 256
    .local v4, "oldBits":J
    const-wide/16 v8, 0x1

    #@1d
    shl-long/2addr v8, v0

    #@1e
    not-long v8, v8

    #@1f
    and-long v2, v4, v8

    #@21
    .line 257
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    #@23
    if-eqz v7, :cond_1

    #@25
    .line 258
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@27
    aput-wide v2, v7, v1

    #@29
    .line 259
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    #@2b
    add-int/lit8 v7, v7, -0x1

    #@2d
    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    #@2f
    .line 260
    const/4 v7, 0x1

    #@30
    return v7

    #@31
    .line 248
    .end local v0    # "inBits":I
    .end local v1    # "index":I
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    .end local v6    # "ordinal":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    return v10

    #@32
    .line 262
    .end local p1    # "object":Ljava/lang/Object;
    .restart local v0    # "inBits":I
    .restart local v1    # "index":I
    .restart local v2    # "newBits":J
    .restart local v4    # "oldBits":J
    .restart local v6    # "ordinal":I
    :cond_1
    return v10
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v9, 0x0

    #@1
    .line 267
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@4
    move-result v8

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 268
    return v9

    #@8
    .line 271
    :cond_0
    instance-of v8, p1, Ljava/util/EnumSet;

    #@a
    if-eqz v8, :cond_4

    #@c
    move-object v3, p1

    #@d
    .line 272
    check-cast v3, Ljava/util/EnumSet;

    #@f
    .line 273
    .local v3, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@11
    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@14
    move-result v8

    #@15
    if-nez v8, :cond_1

    #@17
    .line 274
    return v9

    #@18
    :cond_1
    move-object v1, v3

    #@19
    .line 277
    check-cast v1, Ljava/util/HugeEnumSet;

    #@1b
    .line 278
    .local v1, "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v0, 0x0

    #@1c
    .line 279
    .local v0, "changed":Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@1f
    array-length v8, v8

    #@20
    if-ge v2, v8, :cond_3

    #@22
    .line 280
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@24
    aget-wide v6, v8, v2

    #@26
    .line 281
    .local v6, "oldBits":J
    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    #@28
    aget-wide v8, v8, v2

    #@2a
    not-long v8, v8

    #@2b
    and-long v4, v6, v8

    #@2d
    .line 282
    .local v4, "newBits":J
    cmp-long v8, v6, v4

    #@2f
    if-eqz v8, :cond_2

    #@31
    .line 283
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@33
    aput-wide v4, v8, v2

    #@35
    .line 284
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@37
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    #@3a
    move-result v9

    #@3b
    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    #@3e
    move-result v10

    #@3f
    sub-int/2addr v9, v10

    #@40
    add-int/2addr v8, v9

    #@41
    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@43
    .line 285
    const/4 v0, 0x1

    #@44
    .line 279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 288
    .end local v4    # "newBits":J
    .end local v6    # "oldBits":J
    :cond_3
    return v0

    #@48
    .line 290
    .end local v0    # "changed":Z
    .end local v1    # "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .end local v2    # "i":I
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    #@4b
    move-result v8

    #@4c
    return v8
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v9, 0x0

    #@1
    .line 295
    instance-of v8, p1, Ljava/util/EnumSet;

    #@3
    if-eqz v8, :cond_4

    #@5
    move-object v3, p1

    #@6
    .line 296
    check-cast v3, Ljava/util/EnumSet;

    #@8
    .line 297
    .local v3, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@a
    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@d
    move-result v8

    #@e
    if-nez v8, :cond_1

    #@10
    .line 298
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@12
    if-lez v8, :cond_0

    #@14
    .line 299
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clear()V

    #@17
    .line 300
    const/4 v8, 0x1

    #@18
    return v8

    #@19
    .line 302
    :cond_0
    return v9

    #@1a
    :cond_1
    move-object v1, v3

    #@1b
    .line 306
    check-cast v1, Ljava/util/HugeEnumSet;

    #@1d
    .line 307
    .local v1, "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v0, 0x0

    #@1e
    .line 308
    .local v0, "changed":Z
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@21
    array-length v8, v8

    #@22
    if-ge v2, v8, :cond_3

    #@24
    .line 309
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@26
    aget-wide v6, v8, v2

    #@28
    .line 310
    .local v6, "oldBits":J
    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    #@2a
    aget-wide v8, v8, v2

    #@2c
    and-long v4, v6, v8

    #@2e
    .line 311
    .local v4, "newBits":J
    cmp-long v8, v6, v4

    #@30
    if-eqz v8, :cond_2

    #@32
    .line 312
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@34
    aput-wide v4, v8, v2

    #@36
    .line 313
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@38
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    #@3b
    move-result v9

    #@3c
    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    #@3f
    move-result v10

    #@40
    sub-int/2addr v9, v10

    #@41
    add-int/2addr v8, v9

    #@42
    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    #@44
    .line 314
    const/4 v0, 0x1

    #@45
    .line 308
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 317
    .end local v4    # "newBits":J
    .end local v6    # "oldBits":J
    :cond_3
    return v0

    #@49
    .line 319
    .end local v0    # "changed":Z
    .end local v1    # "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .end local v2    # "i":I
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    #@4c
    move-result v8

    #@4d
    return v8
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 324
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "start":Ljava/lang/Enum;, "TE;"
    .local p2, "end":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@3
    move-result v8

    #@4
    .line 325
    .local v8, "startOrdinal":I
    div-int/lit8 v7, v8, 0x40

    #@6
    .line 326
    .local v7, "startIndex":I
    rem-int/lit8 v6, v8, 0x40

    #@8
    .line 328
    .local v6, "startInBits":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@b
    move-result v2

    #@c
    .line 329
    .local v2, "endOrdinal":I
    div-int/lit8 v1, v2, 0x40

    #@e
    .line 330
    .local v1, "endIndex":I
    rem-int/lit8 v0, v2, 0x40

    #@10
    .line 332
    .local v0, "endInBits":I
    if-ne v7, v1, :cond_1

    #@12
    .line 333
    sub-int v9, v0, v6

    #@14
    add-int/lit8 v9, v9, 0x1

    #@16
    rsub-int/lit8 v9, v9, 0x40

    #@18
    const-wide/16 v10, -0x1

    #@1a
    ushr-long/2addr v10, v9

    #@1b
    shl-long v4, v10, v6

    #@1d
    .line 334
    .local v4, "range":J
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@1f
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@21
    aget-wide v10, v10, v7

    #@23
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@26
    move-result v10

    #@27
    sub-int/2addr v9, v10

    #@28
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@2a
    .line 335
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@2c
    aget-wide v10, v9, v7

    #@2e
    or-long/2addr v10, v4

    #@2f
    aput-wide v10, v9, v7

    #@31
    .line 336
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@33
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@35
    aget-wide v10, v10, v7

    #@37
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@3a
    move-result v10

    #@3b
    add-int/2addr v9, v10

    #@3c
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@3e
    .line 323
    :cond_0
    return-void

    #@3f
    .line 339
    .end local v4    # "range":J
    :cond_1
    const-wide/16 v10, -0x1

    #@41
    ushr-long/2addr v10, v6

    #@42
    shl-long v4, v10, v6

    #@44
    .line 340
    .restart local v4    # "range":J
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@46
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@48
    aget-wide v10, v10, v7

    #@4a
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@4d
    move-result v10

    #@4e
    sub-int/2addr v9, v10

    #@4f
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@51
    .line 341
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@53
    aget-wide v10, v9, v7

    #@55
    or-long/2addr v10, v4

    #@56
    aput-wide v10, v9, v7

    #@58
    .line 342
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@5a
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@5c
    aget-wide v10, v10, v7

    #@5e
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@61
    move-result v10

    #@62
    add-int/2addr v9, v10

    #@63
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@65
    .line 346
    add-int/lit8 v9, v0, 0x1

    #@67
    rsub-int/lit8 v9, v9, 0x40

    #@69
    const-wide/16 v10, -0x1

    #@6b
    ushr-long v4, v10, v9

    #@6d
    .line 347
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@6f
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@71
    aget-wide v10, v10, v1

    #@73
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@76
    move-result v10

    #@77
    sub-int/2addr v9, v10

    #@78
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@7a
    .line 348
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@7c
    aget-wide v10, v9, v1

    #@7e
    or-long/2addr v10, v4

    #@7f
    aput-wide v10, v9, v1

    #@81
    .line 349
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@83
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@85
    aget-wide v10, v10, v1

    #@87
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@8a
    move-result v10

    #@8b
    add-int/2addr v9, v10

    #@8c
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@8e
    .line 350
    add-int/lit8 v3, v7, 0x1

    #@90
    .local v3, "i":I
    :goto_0
    add-int/lit8 v9, v1, -0x1

    #@92
    if-gt v3, v9, :cond_0

    #@94
    .line 351
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@96
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@98
    aget-wide v10, v10, v3

    #@9a
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@9d
    move-result v10

    #@9e
    sub-int/2addr v9, v10

    #@9f
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@a1
    .line 352
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@a3
    const-wide/16 v10, -0x1

    #@a5
    aput-wide v10, v9, v3

    #@a7
    .line 353
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@a9
    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    #@ab
    aget-wide v10, v10, v3

    #@ad
    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    #@b0
    move-result v10

    #@b1
    add-int/2addr v9, v10

    #@b2
    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    #@b4
    .line 350
    add-int/lit8 v3, v3, 0x1

    #@b6
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 164
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    #@2
    return v0
.end method

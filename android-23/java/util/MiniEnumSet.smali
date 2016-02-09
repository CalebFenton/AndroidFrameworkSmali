.class final Ljava/util/MiniEnumSet;
.super Ljava/util/EnumSet;
.source "MiniEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MiniEnumSet$MiniEnumSetIterator;
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
.field private static final MAX_ELEMENTS:I = 0x40


# instance fields
.field private bits:J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/MiniEnumSet;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    #@3
    .line 42
    iput-object p2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    iget-object v4, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    #@2
    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 110
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    #@7
    .line 111
    .local v2, "oldBits":J
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@a
    move-result v4

    #@b
    const-wide/16 v6, 0x1

    #@d
    shl-long v4, v6, v4

    #@f
    or-long v0, v2, v4

    #@11
    .line 112
    .local v0, "newBits":J
    cmp-long v4, v2, v0

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 113
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@17
    .line 114
    iget v4, p0, Ljava/util/MiniEnumSet;->size:I

    #@19
    add-int/lit8 v4, v4, 0x1

    #@1b
    iput v4, p0, Ljava/util/MiniEnumSet;->size:I

    #@1d
    .line 115
    const/4 v4, 0x1

    #@1e
    return v4

    #@1f
    .line 117
    :cond_0
    const/4 v4, 0x0

    #@20
    return v4
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->add(Ljava/lang/Enum;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    #@1
    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@4
    move-result v7

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 123
    return v6

    #@8
    .line 125
    :cond_0
    instance-of v7, p1, Ljava/util/EnumSet;

    #@a
    if-eqz v7, :cond_2

    #@c
    move-object v1, p1

    #@d
    .line 126
    check-cast v1, Ljava/util/EnumSet;

    #@f
    .line 127
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v7, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@11
    iget-object v8, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@16
    move-object v0, v1

    #@17
    .line 129
    check-cast v0, Ljava/util/MiniEnumSet;

    #@19
    .line 130
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@1b
    .line 131
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    #@1d
    or-long v2, v4, v8

    #@1f
    .line 132
    .local v2, "newBits":J
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    #@21
    .line 133
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@24
    move-result v7

    #@25
    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    #@27
    .line 134
    cmp-long v7, v4, v2

    #@29
    if-eqz v7, :cond_1

    #@2b
    const/4 v6, 0x1

    #@2c
    :cond_1
    return v6

    #@2d
    .line 136
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_2
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@30
    move-result v6

    #@31
    return v6
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 103
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@4
    .line 104
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    #@7
    .line 102
    return-void
.end method

.method complement()V
    .locals 6

    #@0
    .prologue
    .line 247
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    #@2
    array-length v0, v0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 248
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@7
    not-long v0, v0

    #@8
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@a
    .line 249
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@c
    iget-object v2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    #@e
    array-length v2, v2

    #@f
    rsub-int/lit8 v2, v2, 0x40

    #@11
    const-wide/16 v4, -0x1

    #@13
    ushr-long v2, v4, v2

    #@15
    and-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    #@18
    .line 250
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    #@1a
    array-length v0, v0

    #@1b
    iget v1, p0, Ljava/util/MiniEnumSet;->size:I

    #@1d
    sub-int/2addr v0, v1

    #@1e
    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    #@20
    .line 246
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 141
    if-eqz p1, :cond_1

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    move-object v0, p1

    #@e
    .line 146
    check-cast v0, Ljava/lang/Enum;

    #@10
    .line 147
    .local v0, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    .line 148
    .local v1, "ordinal":I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@16
    const-wide/16 v6, 0x1

    #@18
    shl-long/2addr v6, v1

    #@19
    and-long/2addr v4, v6

    #@1a
    const-wide/16 v6, 0x0

    #@1c
    cmp-long v3, v4, v6

    #@1e
    if-eqz v3, :cond_0

    #@20
    const/4 v2, 0x1

    #@21
    :cond_0
    return v2

    #@22
    .line 142
    .end local v0    # "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .end local v1    # "ordinal":I
    :cond_1
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 154
    return v1

    #@9
    .line 156
    :cond_0
    instance-of v5, p1, Ljava/util/MiniEnumSet;

    #@b
    if-eqz v5, :cond_2

    #@d
    move-object v0, p1

    #@e
    .line 157
    check-cast v0, Ljava/util/MiniEnumSet;

    #@10
    .line 158
    .local v0, "set":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    iget-wide v2, v0, Ljava/util/MiniEnumSet;->bits:J

    #@12
    .line 159
    .local v2, "setBits":J
    iget-object v5, v0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    #@14
    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    iget-wide v6, p0, Ljava/util/MiniEnumSet;->bits:J

    #@1c
    and-long/2addr v6, v2

    #@1d
    cmp-long v5, v6, v2

    #@1f
    if-nez v5, :cond_1

    #@21
    :goto_0
    return v1

    #@22
    :cond_1
    move v1, v4

    #@23
    goto :goto_0

    #@24
    .line 161
    .end local v0    # "set":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    .end local v2    # "setBits":J
    :cond_2
    instance-of v1, p1, Ljava/util/EnumSet;

    #@26
    if-nez v1, :cond_3

    #@28
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    #@2b
    move-result v4

    #@2c
    :cond_3
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 235
    instance-of v2, p1, Ljava/util/EnumSet;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 236
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    :cond_0
    move-object v0, p1

    #@b
    .line 238
    check-cast v0, Ljava/util/EnumSet;

    #@d
    .line 239
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v2, v0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@f
    invoke-virtual {p0, v2}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 240
    iget v2, p0, Ljava/util/MiniEnumSet;->size:I

    #@17
    if-nez v2, :cond_1

    #@19
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    :cond_1
    return v1

    #@1e
    .line 242
    :cond_2
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    #@20
    check-cast v0, Ljava/util/MiniEnumSet;

    #@22
    .end local v0    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-wide v4, v0, Ljava/util/MiniEnumSet;->bits:J

    #@24
    cmp-long v2, v2, v4

    #@26
    if-nez v2, :cond_3

    #@28
    const/4 v1, 0x1

    #@29
    :cond_3
    return v1
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
    .line 93
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    new-instance v0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$MiniEnumSetIterator;)V

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v8, 0x0

    #@1
    .line 216
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v6

    #@7
    invoke-virtual {p0, v6}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    move-object v0, p1

    #@e
    .line 221
    check-cast v0, Ljava/lang/Enum;

    #@10
    .line 222
    .local v0, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    .line 223
    .local v1, "ordinal":I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@16
    .line 224
    .local v4, "oldBits":J
    const-wide/16 v6, 0x1

    #@18
    shl-long/2addr v6, v1

    #@19
    not-long v6, v6

    #@1a
    and-long v2, v4, v6

    #@1c
    .line 225
    .local v2, "newBits":J
    cmp-long v6, v4, v2

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 226
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    #@22
    .line 227
    iget v6, p0, Ljava/util/MiniEnumSet;->size:I

    #@24
    add-int/lit8 v6, v6, -0x1

    #@26
    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    #@28
    .line 228
    const/4 v6, 0x1

    #@29
    return v6

    #@2a
    .line 217
    .end local v0    # "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .end local v1    # "ordinal":I
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_0
    return v8

    #@2b
    .line 230
    .restart local v0    # "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .restart local v1    # "ordinal":I
    .restart local v2    # "newBits":J
    .restart local v4    # "oldBits":J
    :cond_1
    return v8
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    #@1
    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 167
    return v8

    #@8
    .line 169
    :cond_0
    instance-of v6, p1, Ljava/util/EnumSet;

    #@a
    if-eqz v6, :cond_3

    #@c
    move-object v1, p1

    #@d
    .line 170
    check-cast v1, Ljava/util/EnumSet;

    #@f
    .line 171
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v6, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@11
    invoke-virtual {p0, v6}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@14
    move-result v6

    #@15
    if-nez v6, :cond_1

    #@17
    .line 172
    return v8

    #@18
    :cond_1
    move-object v0, v1

    #@19
    .line 175
    check-cast v0, Ljava/util/MiniEnumSet;

    #@1b
    .line 176
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@1d
    .line 177
    .local v4, "oldBits":J
    iget-wide v6, v0, Ljava/util/MiniEnumSet;->bits:J

    #@1f
    not-long v6, v6

    #@20
    and-long v2, v4, v6

    #@22
    .line 178
    .local v2, "newBits":J
    cmp-long v6, v4, v2

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 179
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    #@28
    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@2b
    move-result v6

    #@2c
    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    #@2e
    .line 181
    const/4 v6, 0x1

    #@2f
    return v6

    #@30
    .line 183
    :cond_2
    return v8

    #@31
    .line 185
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_3
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    #@34
    move-result v6

    #@35
    return v6
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 190
    instance-of v6, p1, Ljava/util/EnumSet;

    #@4
    if-eqz v6, :cond_3

    #@6
    move-object v1, p1

    #@7
    .line 191
    check-cast v1, Ljava/util/EnumSet;

    #@9
    .line 192
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v6, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@b
    invoke-virtual {p0, v6}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    #@e
    move-result v6

    #@f
    if-nez v6, :cond_1

    #@11
    .line 193
    iget v6, p0, Ljava/util/MiniEnumSet;->size:I

    #@13
    if-lez v6, :cond_0

    #@15
    .line 194
    invoke-virtual {p0}, Ljava/util/MiniEnumSet;->clear()V

    #@18
    .line 195
    return v9

    #@19
    .line 197
    :cond_0
    return v8

    #@1a
    :cond_1
    move-object v0, v1

    #@1b
    .line 201
    check-cast v0, Ljava/util/MiniEnumSet;

    #@1d
    .line 202
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@1f
    .line 203
    .local v4, "oldBits":J
    iget-wide v6, v0, Ljava/util/MiniEnumSet;->bits:J

    #@21
    and-long v2, v4, v6

    #@23
    .line 204
    .local v2, "newBits":J
    cmp-long v6, v4, v2

    #@25
    if-eqz v6, :cond_2

    #@27
    .line 205
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    #@29
    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@2c
    move-result v6

    #@2d
    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    #@2f
    .line 207
    return v9

    #@30
    .line 209
    :cond_2
    return v8

    #@31
    .line 211
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_3
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    #@34
    move-result v6

    #@35
    return v6
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "start":Ljava/lang/Enum;, "TE;"
    .local p2, "end":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@7
    move-result v4

    #@8
    sub-int/2addr v1, v4

    #@9
    add-int/lit8 v0, v1, 0x1

    #@b
    .line 257
    .local v0, "length":I
    rsub-int/lit8 v1, v0, 0x40

    #@d
    const-wide/16 v4, -0x1

    #@f
    ushr-long/2addr v4, v1

    #@10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    shl-long v2, v4, v1

    #@16
    .line 258
    .local v2, "range":J
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@18
    or-long/2addr v4, v2

    #@19
    iput-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@1b
    .line 259
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    #@1d
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Ljava/util/MiniEnumSet;->size:I

    #@23
    .line 255
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 98
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget v0, p0, Ljava/util/MiniEnumSet;->size:I

    #@2
    return v0
.end method

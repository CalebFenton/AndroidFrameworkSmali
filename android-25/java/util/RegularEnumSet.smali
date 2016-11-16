.class Ljava/util/RegularEnumSet;
.super Ljava/util/EnumSet;
.source "RegularEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/RegularEnumSet$EnumSetIterator;
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
.field private static final serialVersionUID:J = 0x2f586fc77eb0d07eL


# instance fields
.field private elements:J


# direct methods
.method static synthetic -get0(Ljava/util/RegularEnumSet;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/RegularEnumSet;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Ljava/util/RegularEnumSet;->elements:J

    #@2
    return-wide p1
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 2
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
    .line 45
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    #@3
    .line 42
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@7
    .line 44
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
    .line 160
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->typeCheck(Ljava/lang/Enum;)V

    #@3
    .line 162
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@5
    .line 163
    .local v0, "oldElements":J
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@a
    move-result v4

    #@b
    const-wide/16 v6, 0x1

    #@d
    shl-long v4, v6, v4

    #@f
    or-long/2addr v2, v4

    #@10
    iput-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@12
    .line 164
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@14
    cmp-long v2, v2, v0

    #@16
    if-eqz v2, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    return v2

    #@1a
    :cond_0
    const/4 v2, 0x0

    #@1b
    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 159
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->add(Ljava/lang/Enum;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method addAll()V
    .locals 4

    #@0
    .prologue
    .line 53
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    #@2
    array-length v0, v0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 54
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    #@7
    array-length v0, v0

    #@8
    neg-int v0, v0

    #@9
    const-wide/16 v2, -0x1

    #@b
    ushr-long v0, v2, v0

    #@d
    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@f
    .line 52
    :cond_0
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    #@1
    .line 216
    instance-of v4, p1, Ljava/util/RegularEnumSet;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 217
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    :cond_0
    move-object v0, p1

    #@b
    .line 219
    check-cast v0, Ljava/util/RegularEnumSet;

    #@d
    .line 220
    .local v0, "es":Ljava/util/RegularEnumSet;
    iget-object v4, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@f
    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@11
    if-eq v4, v5, :cond_2

    #@13
    .line 221
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 222
    return v1

    #@1a
    .line 224
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    #@1c
    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    iget-object v5, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    const-string/jumbo v5, " != "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 224
    invoke-direct {v1, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 228
    :cond_2
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@3e
    .line 229
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@40
    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    #@42
    or-long/2addr v4, v6

    #@43
    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@45
    .line 230
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@47
    cmp-long v4, v4, v2

    #@49
    if-eqz v4, :cond_3

    #@4b
    const/4 v1, 0x1

    #@4c
    :cond_3
    return v1
.end method

.method addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    const-wide/16 v2, -0x1

    #@d
    ushr-long v0, v2, v0

    #@f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@12
    move-result v2

    #@13
    shl-long/2addr v0, v2

    #@14
    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@16
    .line 48
    return-void
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 282
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@4
    .line 281
    return-void
.end method

.method complement()V
    .locals 6

    #@0
    .prologue
    .line 58
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    #@2
    array-length v0, v0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 59
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@7
    not-long v0, v0

    #@8
    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@a
    .line 60
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@c
    iget-object v2, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    #@e
    array-length v2, v2

    #@f
    neg-int v2, v2

    #@10
    const-wide/16 v4, -0x1

    #@12
    ushr-long v2, v4, v2

    #@14
    and-long/2addr v0, v2

    #@15
    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@17
    .line 57
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 140
    if-nez p1, :cond_0

    #@3
    .line 141
    return v1

    #@4
    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 143
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@a
    if-eq v0, v2, :cond_1

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@12
    if-eq v2, v3, :cond_1

    #@14
    .line 144
    return v1

    #@15
    .line 146
    :cond_1
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@17
    check-cast p1, Ljava/lang/Enum;

    #@19
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v4

    #@1d
    const-wide/16 v6, 0x1

    #@1f
    shl-long v4, v6, v4

    #@21
    and-long/2addr v2, v4

    #@22
    const-wide/16 v4, 0x0

    #@24
    cmp-long v2, v2, v4

    #@26
    if-eqz v2, :cond_2

    #@28
    const/4 v1, 0x1

    #@29
    :cond_2
    return v1
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
    .line 197
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Ljava/util/RegularEnumSet;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 198
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 200
    check-cast v0, Ljava/util/RegularEnumSet;

    #@c
    .line 201
    .local v0, "es":Ljava/util/RegularEnumSet;
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@e
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 202
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 204
    :cond_1
    iget-wide v2, v0, Ljava/util/RegularEnumSet;->elements:J

    #@19
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@1b
    not-long v4, v4

    #@1c
    and-long/2addr v2, v4

    #@1d
    const-wide/16 v4, 0x0

    #@1f
    cmp-long v1, v2, v4

    #@21
    if-nez v1, :cond_2

    #@23
    const/4 v1, 0x1

    #@24
    :goto_0
    return v1

    #@25
    :cond_2
    const/4 v1, 0x0

    #@26
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const-wide/16 v6, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 295
    instance-of v3, p1, Ljava/util/RegularEnumSet;

    #@6
    if-nez v3, :cond_0

    #@8
    .line 296
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    return v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 298
    check-cast v0, Ljava/util/RegularEnumSet;

    #@10
    .line 299
    .local v0, "es":Ljava/util/RegularEnumSet;
    iget-object v3, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@12
    iget-object v4, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@14
    if-eq v3, v4, :cond_2

    #@16
    .line 300
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@18
    cmp-long v3, v4, v6

    #@1a
    if-nez v3, :cond_1

    #@1c
    iget-wide v4, v0, Ljava/util/RegularEnumSet;->elements:J

    #@1e
    cmp-long v3, v4, v6

    #@20
    if-nez v3, :cond_1

    #@22
    :goto_0
    return v1

    #@23
    :cond_1
    move v1, v2

    #@24
    goto :goto_0

    #@25
    .line 301
    :cond_2
    iget-wide v4, v0, Ljava/util/RegularEnumSet;->elements:J

    #@27
    iget-wide v6, p0, Ljava/util/RegularEnumSet;->elements:J

    #@29
    cmp-long v3, v4, v6

    #@2b
    if-nez v3, :cond_3

    #@2d
    :goto_1
    return v1

    #@2e
    :cond_3
    move v1, v2

    #@2f
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 4

    #@0
    .prologue
    .line 130
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
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
    .line 75
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    new-instance v0, Ljava/util/RegularEnumSet$EnumSetIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/RegularEnumSet$EnumSetIterator;-><init>(Ljava/util/RegularEnumSet;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 174
    if-nez p1, :cond_0

    #@3
    .line 175
    return v1

    #@4
    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 177
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v4, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@a
    if-eq v0, v4, :cond_1

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@12
    if-eq v4, v5, :cond_1

    #@14
    .line 178
    return v1

    #@15
    .line 180
    :cond_1
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@17
    .line 181
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@19
    check-cast p1, Ljava/lang/Enum;

    #@1b
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@1e
    move-result v6

    #@1f
    const-wide/16 v8, 0x1

    #@21
    shl-long v6, v8, v6

    #@23
    not-long v6, v6

    #@24
    and-long/2addr v4, v6

    #@25
    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@27
    .line 182
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@29
    cmp-long v4, v4, v2

    #@2b
    if-eqz v4, :cond_2

    #@2d
    const/4 v1, 0x1

    #@2e
    :cond_2
    return v1
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 242
    instance-of v4, p1, Ljava/util/RegularEnumSet;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 243
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    :cond_0
    move-object v0, p1

    #@b
    .line 245
    check-cast v0, Ljava/util/RegularEnumSet;

    #@d
    .line 246
    .local v0, "es":Ljava/util/RegularEnumSet;
    iget-object v4, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@f
    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@11
    if-eq v4, v5, :cond_1

    #@13
    .line 247
    return v1

    #@14
    .line 249
    :cond_1
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@16
    .line 250
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@18
    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    #@1a
    not-long v6, v6

    #@1b
    and-long/2addr v4, v6

    #@1c
    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@1e
    .line 251
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@20
    cmp-long v4, v4, v2

    #@22
    if-eqz v4, :cond_2

    #@24
    const/4 v1, 0x1

    #@25
    :cond_2
    return v1
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-wide/16 v6, 0x0

    #@2
    .line 263
    instance-of v4, p1, Ljava/util/RegularEnumSet;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 264
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    #@9
    move-result v4

    #@a
    return v4

    #@b
    :cond_0
    move-object v1, p1

    #@c
    .line 266
    check-cast v1, Ljava/util/RegularEnumSet;

    #@e
    .line 267
    .local v1, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v4, v1, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@10
    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    #@12
    if-eq v4, v5, :cond_2

    #@14
    .line 268
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@16
    cmp-long v4, v4, v6

    #@18
    if-eqz v4, :cond_1

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 269
    .local v0, "changed":Z
    :goto_0
    iput-wide v6, p0, Ljava/util/RegularEnumSet;->elements:J

    #@1d
    .line 270
    return v0

    #@1e
    .line 268
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "changed":Z
    goto :goto_0

    #@20
    .line 273
    .end local v0    # "changed":Z
    :cond_2
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    #@22
    .line 274
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@24
    iget-wide v6, v1, Ljava/util/RegularEnumSet;->elements:J

    #@26
    and-long/2addr v4, v6

    #@27
    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@29
    .line 275
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    #@2b
    cmp-long v4, v4, v2

    #@2d
    if-eqz v4, :cond_3

    #@2f
    const/4 v4, 0x1

    #@30
    :goto_1
    return v4

    #@31
    :cond_3
    const/4 v4, 0x0

    #@32
    goto :goto_1
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.class final Ljava/util/RegularEnumSet;
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
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/util/EnumSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2f586fc77eb0d07eL


# instance fields
.field private blacklist elements:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetelements(Ljava/util/RegularEnumSet;)J
    .registers 3

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputelements(Ljava/util/RegularEnumSet;J)V
    .registers 3

    iput-wide p1, p0, Ljava/util/RegularEnumSet;->elements:J

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "universe":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Enum;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 162
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->typeCheck(Ljava/lang/Enum;)V

    .line 164
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 165
    .local v0, "oldElements":J
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 166
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->add(Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method

.method blacklist addAll()V
    .registers 4

    .line 54
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_f

    .line 55
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    neg-int v0, v0

    const-wide/16 v1, -0x1

    ushr-long v0, v1, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 56
    :cond_f
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-eqz v0, :cond_47

    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 220
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_36

    .line 221
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 222
    return v3

    .line 224
    :cond_15
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_36
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 229
    .local v1, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    or-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 230
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_46

    const/4 v3, 0x1

    :cond_46
    return v3

    .line 218
    .end local v0    # "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    .end local v1    # "oldElements":J
    :cond_47
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method blacklist addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    ushr-long v0, v1, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 51
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 280
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 281
    return-void
.end method

.method blacklist complement()V
    .registers 6

    .line 59
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_17

    .line 60
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v0, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 61
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-object v2, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v2, v2

    neg-int v2, v2

    const-wide/16 v3, -0x1

    ushr-long v2, v3, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 63
    :cond_17
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "e"    # Ljava/lang/Object;

    .line 142
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 143
    return v0

    .line 144
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 145
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 146
    return v0

    .line 148
    :cond_15
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    move-object v4, p1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 199
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 202
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_12

    .line 203
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v1

    return v1

    .line 205
    :cond_12
    iget-wide v1, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v3, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v3, v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    .line 200
    .end local v0    # "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    :cond_22
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 293
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 296
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_20

    .line 297
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_1e

    iget-wide v1, v0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v3, v4

    :goto_1f
    return v3

    .line 298
    :cond_20
    iget-wide v1, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v4

    :goto_2a
    return v3

    .line 294
    .end local v0    # "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    :cond_2b
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 5

    .line 132
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
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

    .line 76
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    new-instance v0, Ljava/util/RegularEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/RegularEnumSet$EnumSetIterator;-><init>(Ljava/util/RegularEnumSet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "e"    # Ljava/lang/Object;

    .line 176
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 177
    return v0

    .line 178
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 179
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 180
    return v0

    .line 182
    :cond_15
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 183
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    move-object v6, p1

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-wide/16 v7, 0x1

    shl-long v6, v7, v6

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 184
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 242
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 245
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    .line 246
    return v3

    .line 248
    :cond_f
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 249
    .local v1, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 250
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_20

    const/4 v3, 0x1

    :cond_20
    return v3

    .line 243
    .end local v0    # "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    .end local v1    # "oldElements":J
    :cond_21
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 262
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-eqz v0, :cond_2e

    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 265
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1c

    .line 266
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move v3, v4

    .line 267
    .local v3, "changed":Z
    :goto_19
    iput-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 268
    return v3

    .line 271
    .end local v3    # "changed":Z
    :cond_1c
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 272
    .local v1, "oldElements":J
    iget-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v7, v0, Ljava/util/RegularEnumSet;->elements:J

    and-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 273
    iget-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_2c

    goto :goto_2d

    :cond_2c
    move v3, v4

    :goto_2d
    return v3

    .line 263
    .end local v0    # "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    .end local v1    # "oldElements":J
    :cond_2e
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 123
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method

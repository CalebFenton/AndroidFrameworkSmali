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
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe03216acd8c29ddL


# instance fields
.field final elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 29
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@5
    .line 29
    return-void
.end method

.method public static allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 67
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    #@7
    .line 68
    return-object v0
.end method

.method public static complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 131
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@2
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@5
    move-result-object v0

    #@6
    .line 132
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@9
    .line 133
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    #@c
    .line 134
    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v3, p0, Ljava/util/EnumSet;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 104
    check-cast p0, Ljava/util/EnumSet;

    #@6
    .end local p0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 106
    .restart local p0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 107
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v4, "empty collection"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 109
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .line 110
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/Enum;

    #@24
    .line 111
    .local v0, "element":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@27
    move-result-object v3

    #@28
    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@2b
    move-result-object v2

    #@2c
    .line 112
    .local v2, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v2, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@2f
    .line 113
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Ljava/lang/Enum;

    #@3b
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 116
    :cond_2
    return-object v2
.end method

.method public static copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@2
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@5
    move-result-object v0

    #@6
    .line 84
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@9
    .line 85
    return-object v0
.end method

.method public static noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 46
    new-instance v1, Ljava/lang/ClassCastException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p0}, Ljava/lang/Class;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " is not an Enum"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 48
    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@2b
    move-result-object v0

    #@2c
    .line 49
    .local v0, "enums":[Ljava/lang/Enum;, "[TE;"
    array-length v1, v0

    #@2d
    const/16 v2, 0x40

    #@2f
    if-gt v1, v2, :cond_1

    #@31
    .line 50
    new-instance v1, Ljava/util/MiniEnumSet;

    #@33
    invoke-direct {v1, p0, v0}, Ljava/util/MiniEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    #@36
    return-object v1

    #@37
    .line 52
    :cond_1
    new-instance v1, Ljava/util/HugeEnumSet;

    #@39
    invoke-direct {v1, p0, v0}, Ljava/util/HugeEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    #@3c
    return-object v1
.end method

.method public static of(Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    .line 153
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 154
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 172
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 173
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 174
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 196
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    .local p3, "e4":Ljava/lang/Enum;, "TE;"
    invoke-static {p0, p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 219
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 220
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 244
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    .local p3, "e4":Ljava/lang/Enum;, "TE;"
    .local p4, "e5":Ljava/lang/Enum;, "TE;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 245
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 246
    return-object v0
.end method

.method public static varargs of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;[TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 264
    .local p0, "start":Ljava/lang/Enum;, "TE;"
    .local p1, "others":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3
    move-result-object v1

    #@4
    .line 265
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    const/4 v2, 0x0

    #@5
    array-length v3, p1

    #@6
    :goto_0
    if-ge v2, v3, :cond_0

    #@8
    aget-object v0, p1, v2

    #@a
    .line 266
    .local v0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 265
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 268
    .end local v0    # "e":Ljava/lang/Enum;, "TE;"
    :cond_0
    return-object v1
.end method

.method public static range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 287
    .local p0, "start":Ljava/lang/Enum;, "TE;"
    .local p1, "end":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@3
    move-result v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "start is behind end"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 290
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@16
    move-result-object v0

    #@17
    .line 291
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/EnumSet;->setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V

    #@1a
    .line 292
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 308
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/EnumSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 309
    :catch_0
    move-exception v0

    #@8
    .line 310
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method abstract complement()V
.end method

.method isValidType(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    #@1
    .line 315
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@3
    if-eq p1, v1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    iget-object v2, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method abstract setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 338
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/util/EnumSet$SerializationProxy;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/EnumSet$SerializationProxy;-><init>(Ljava/util/EnumSet$SerializationProxy;)V

    #@6
    .line 339
    .local v0, "proxy":Ljava/util/EnumSet$SerializationProxy;
    const/4 v1, 0x0

    #@7
    new-array v1, v1, [Ljava/lang/Enum;

    #@9
    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Ljava/lang/Enum;

    #@f
    invoke-static {v0, v1}, Ljava/util/EnumSet$SerializationProxy;->-set1(Ljava/util/EnumSet$SerializationProxy;[Ljava/lang/Enum;)[Ljava/lang/Enum;

    #@12
    .line 340
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    #@14
    invoke-static {v0, v1}, Ljava/util/EnumSet$SerializationProxy;->-set0(Ljava/util/EnumSet$SerializationProxy;Ljava/lang/Class;)Ljava/lang/Class;

    #@17
    .line 341
    return-object v0
.end method

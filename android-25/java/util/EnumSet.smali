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
.field private static ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;


# instance fields
.field final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field final universe:[Ljava/lang/Enum;


# direct methods
.method static synthetic -get0()[Ljava/lang/Enum;
    .locals 1

    #@0
    sget-object v0, Ljava/util/EnumSet;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Enum;

    #@3
    sput-object v0, Ljava/util/EnumSet;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    #@5
    .line 79
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 0
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
    .line 94
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    #@5
    .line 96
    iput-object p2, p0, Ljava/util/EnumSet;->universe:[Ljava/lang/Enum;

    #@7
    .line 94
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
    .line 126
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 127
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->addAll()V

    #@7
    .line 128
    return-object v0
.end method

.method public static complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 1
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
    .line 184
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    .line 185
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    #@7
    .line 186
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
    .line 161
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v3, p0, Ljava/util/EnumSet;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 162
    check-cast p0, Ljava/util/EnumSet;

    #@6
    .end local p0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 164
    .restart local p0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v4, "Collection is empty"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 166
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .line 167
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/Enum;

    #@24
    .line 168
    .local v0, "first":Ljava/lang/Enum;, "TE;"
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@27
    move-result-object v2

    #@28
    .line 169
    .local v2, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Ljava/lang/Enum;

    #@34
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0

    #@38
    .line 171
    :cond_2
    return-object v2
.end method

.method public static copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 1
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
    .line 145
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)[TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 389
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/lang/JavaLangAccess;->getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
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
    .line 107
    .local p0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->getUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "universe":[Ljava/lang/Enum;
    if-nez v0, :cond_0

    #@6
    .line 109
    new-instance v1, Ljava/lang/ClassCastException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " not an enum"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 111
    :cond_0
    array-length v1, v0

    #@21
    const/16 v2, 0x40

    #@23
    if-gt v1, v2, :cond_1

    #@25
    .line 112
    new-instance v1, Ljava/util/RegularEnumSet;

    #@27
    invoke-direct {v1, p0, v0}, Ljava/util/RegularEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    #@2a
    return-object v1

    #@2b
    .line 114
    :cond_1
    new-instance v1, Ljava/util/JumboEnumSet;

    #@2d
    invoke-direct {v1, p0, v0}, Ljava/util/JumboEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    #@30
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
    .line 203
    .local p0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    .line 204
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 205
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 2
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
    .line 223
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    .line 224
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 225
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@e
    .line 226
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 2
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
    .line 245
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    .line 246
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 247
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@e
    .line 248
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@11
    .line 249
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 2
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
    .line 269
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    .local p3, "e4":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    .line 270
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 271
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@e
    .line 272
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@11
    .line 273
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 274
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 2
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
    .line 297
    .local p0, "e1":Ljava/lang/Enum;, "TE;"
    .local p1, "e2":Ljava/lang/Enum;, "TE;"
    .local p2, "e3":Ljava/lang/Enum;, "TE;"
    .local p3, "e4":Ljava/lang/Enum;, "TE;"
    .local p4, "e5":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v0

    #@8
    .line 298
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 299
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@e
    .line 300
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@11
    .line 301
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 302
    invoke-virtual {v0, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@17
    .line 303
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
    .line 321
    .local p0, "first":Ljava/lang/Enum;, "TE;"
    .local p1, "rest":[Ljava/lang/Enum;, "[TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@7
    move-result-object v1

    #@8
    .line 322
    .local v1, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v1, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 323
    const/4 v2, 0x0

    #@c
    array-length v3, p1

    #@d
    :goto_0
    if-ge v2, v3, :cond_0

    #@f
    aget-object v0, p1, v2

    #@11
    .line 324
    .local v0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 323
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 325
    .end local v0    # "e":Ljava/lang/Enum;, "TE;"
    :cond_0
    return-object v1
.end method

.method public static range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 4
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
    .line 342
    .local p0, "from":Ljava/lang/Enum;, "TE;"
    .local p1, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@3
    move-result v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " > "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@2b
    move-result-object v0

    #@2c
    .line 345
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/EnumSet;->addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V

    #@2f
    .line 346
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string/jumbo v1, "Proxy required"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method


# virtual methods
.method abstract addAll()V
.end method

.method abstract addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
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
    .line 362
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
    .line 363
    :catch_0
    move-exception v0

    #@8
    .line 364
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method abstract complement()V
.end method

.method final typeCheck(Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 377
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 378
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v1, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 379
    new-instance v1, Ljava/lang/ClassCastException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " != "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 376
    :cond_0
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 434
    .local p0, "this":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/util/EnumSet$SerializationProxy;

    #@2
    invoke-direct {v0, p0}, Ljava/util/EnumSet$SerializationProxy;-><init>(Ljava/util/EnumSet;)V

    #@5
    return-object v0
.end method

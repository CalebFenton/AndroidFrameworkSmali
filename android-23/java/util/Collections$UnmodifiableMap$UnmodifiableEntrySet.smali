.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.super Ljava/util/Collections$UnmodifiableSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1194
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    #@3
    .line 1193
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1198
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V

    #@5
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 1216
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    iget-object v4, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@5
    move-result v2

    #@6
    .line 1217
    .local v2, "length":I
    new-array v3, v2, [Ljava/lang/Object;

    #@8
    .line 1218
    .local v3, "result":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .line 1219
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@f
    .line 1220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    aput-object v4, v3, v0

    #@15
    .line 1219
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1222
    :cond_0
    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1227
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>.UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    iget-object v5, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    #@5
    move-result v4

    #@6
    .local v4, "size":I
    const/4 v1, 0x0

    #@7
    .line 1228
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .line 1229
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    array-length v5, p1

    #@c
    if-le v4, v5, :cond_0

    #@e
    .line 1230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    .line 1231
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    .end local p1    # "contents":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@1c
    .restart local p1    # "contents":[Ljava/lang/Object;, "[TT;"
    move v2, v1

    #@1d
    .line 1233
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@1f
    .line 1234
    add-int/lit8 v1, v2, 0x1

    #@21
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    aput-object v5, p1, v2

    #@27
    :cond_0
    move v2, v1

    #@28
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@29
    .line 1236
    :cond_1
    array-length v5, p1

    #@2a
    if-ge v2, v5, :cond_2

    #@2c
    .line 1237
    const/4 v5, 0x0

    #@2d
    aput-object v5, p1, v2

    #@2f
    .line 1239
    :cond_2
    return-object p1
.end method

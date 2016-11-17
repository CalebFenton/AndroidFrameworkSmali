.class Ljava/util/Collections$EmptySet;
.super Ljava/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15f5721db403cb28L


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3587
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptySet;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$EmptySet;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3624
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3598
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3599
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3612
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3611
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 3596
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x1

    #@1
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
    .line 3593
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3616
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3617
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 3595
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3620
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3601
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 3604
    array-length v0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 3605
    const/4 v0, 0x0

    #@5
    aput-object v0, p1, v1

    #@7
    .line 3606
    :cond_0
    return-object p1
.end method

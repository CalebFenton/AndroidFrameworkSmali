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
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x15f5721db403cb28L


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4732
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Collections-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/Collections$EmptySet;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 4772
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 4743
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 4745
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4746
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 4759
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4760
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 4777
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 4742
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x1

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

    .line 4739
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 4763
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 4741
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 4767
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 4748
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4751
    .local p0, "this":Ljava/util/Collections$EmptySet;, "Ljava/util/Collections$EmptySet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-lez v0, :cond_7

    .line 4752
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 4753
    :cond_7
    return-object p1
.end method

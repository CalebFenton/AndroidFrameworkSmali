.class Ljava/util/Collections$UnmodifiableCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x19420080cb5ef71eL


# instance fields
.field final greylist c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1104
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    if-eqz p1, :cond_8

    .line 1107
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    .line 1108
    return-void

    .line 1106
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1136
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1146
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 1155
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1112
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    .line 1143
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1161
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1162
    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1111
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

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

    .line 1119
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection$1;-><init>(Ljava/util/Collections$UnmodifiableCollection;)V

    return-object v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1180
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1139
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1149
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1165
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1152
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1110
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

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

    .line 1170
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1175
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1113
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1115
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "f":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1114
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1116
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

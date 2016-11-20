.class Ljava/util/Collections$EmptyList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ab817b43ca79edeL


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3663
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptyList;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$EmptyList;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3725
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@2
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3678
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
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
    .line 3679
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3694
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Ljava/util/List;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
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
    .line 3708
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3707
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 3690
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Index: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3697
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 3676
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
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
    .line 3669
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3672
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyListIterator()Ljava/util/ListIterator;

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
    .line 3701
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3702
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3716
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3715
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 3675
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3719
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    return-void
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
    .line 3712
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
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
    .line 3681
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
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
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 3684
    array-length v0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 3685
    const/4 v0, 0x0

    #@5
    aput-object v0, p1, v1

    #@7
    .line 3686
    :cond_0
    return-object p1
.end method

.class Ljava/util/Collections$CheckedList;
.super Ljava/util/Collections$CheckedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe7ce7692c45f7cL


# instance fields
.field final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2996
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    #@3
    .line 2997
    iput-object p1, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@5
    .line 2995
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3018
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@4
    invoke-static {p2, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@b
    .line 3017
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3002
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "c1":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 3003
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@5
    array-length v3, v0

    #@6
    :goto_0
    if-ge v2, v3, :cond_0

    #@8
    aget-object v1, v0, v2

    #@a
    .line 3004
    .local v1, "o":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@c
    invoke-static {v1, v4}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@f
    .line 3003
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3006
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v2, p1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    #@1b
    move-result v2

    #@1c
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3046
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 3010
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3050
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3026
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3030
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3034
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedListIterator;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedListIterator;-><init>(Ljava/util/ListIterator;Ljava/lang/Class;)V

    #@d
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3038
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedListIterator;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@4
    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedListIterator;-><init>(Ljava/util/ListIterator;Ljava/lang/Class;)V

    #@d
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 3022
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 3014
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@4
    invoke-static {p2, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3042
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@8
    invoke-static {v0, v1}, Ljava/util/Collections;->checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

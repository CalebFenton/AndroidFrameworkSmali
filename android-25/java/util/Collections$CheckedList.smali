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
    accessFlags = 0x8
    name = "CheckedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;
    }
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
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
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
    .line 2862
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    #@3
    .line 2863
    iput-object p1, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@5
    .line 2861
    return-void
.end method


# virtual methods
.method synthetic -java_util_Collections$CheckedList_lambda$2(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "operator"    # Ljava/util/function/UnaryOperator;
    .param p2, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2936
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    invoke-interface {p1, p2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 2937
    .local v0, "newValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    #@7
    .line 2938
    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2879
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    #@3
    .line 2880
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@8
    .line 2878
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
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
    .line 2884
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-virtual {p0, p2}, Ljava/util/Collections$CheckedList;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2866
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    if-eq p1, p0, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
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
    .line 2868
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

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
    .line 2867
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2870
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2871
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
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
    .line 2886
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Collections$CheckedList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
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
    .line 2889
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@5
    move-result-object v0

    #@6
    .line 2891
    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    new-instance v1, Ljava/util/Collections$CheckedList$1;

    #@8
    invoke-direct {v1, p0, v0}, Ljava/util/Collections$CheckedList$1;-><init>(Ljava/util/Collections$CheckedList;Ljava/util/ListIterator;)V

    #@b
    return-object v1
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
    .line 2869
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2931
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 2935
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@5
    new-instance v1, Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;

    #@7
    invoke-direct {v1, p0, p1}, Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;-><init>(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;)V

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    #@d
    .line 2930
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2874
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    #@3
    .line 2875
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2944
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    #@5
    .line 2943
    return-void
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
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
    .line 2918
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedList;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@d
    return-object v0
.end method

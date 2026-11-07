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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xe7ce7692c45f7cL


# instance fields
.field final greylist-max-o list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$SajGEIWZxfpbHw9TykuMp2TTEa8(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedList;->lambda$replaceAll$0(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 3821
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 3822
    iput-object p1, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    .line 3823
    return-void
.end method

.method private synthetic blacklist lambda$replaceAll$0(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "operator"    # Ljava/util/function/UnaryOperator;
    .param p2, "e"    # Ljava/lang/Object;

    .line 3887
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    invoke-interface {p1, p2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 3837
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3838
    return-void
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 3841
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Ljava/util/Collections$CheckedList;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3825
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 3827
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 3826
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3829
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3830
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 3843
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Collections$CheckedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 3846
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 3848
    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    new-instance v1, Ljava/util/Collections$CheckedList$1;

    invoke-direct {v1, p0, v0}, Ljava/util/Collections$CheckedList$1;-><init>(Ljava/util/Collections$CheckedList;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 3828
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 3886
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3887
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    new-instance v1, Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 3888
    return-void
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 3833
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 3892
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3893
    return-void
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 3873
    .local p0, "this":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedList;

    iget-object v1, p0, Ljava/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method

.class Ljava/util/Collections$CheckedList$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Collections$CheckedList;

.field final synthetic blacklist val$i:Ljava/util/ListIterator;


# direct methods
.method constructor blacklist <init>(Ljava/util/Collections$CheckedList;Ljava/util/ListIterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Collections$CheckedList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3848
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iput-object p1, p0, Ljava/util/Collections$CheckedList$1;->this$0:Ljava/util/Collections$CheckedList;

    iput-object p2, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 3862
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    iget-object v1, p0, Ljava/util/Collections$CheckedList$1;->this$0:Ljava/util/Collections$CheckedList;

    invoke-virtual {v1, p1}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 3863
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 3867
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 3868
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 3849
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 3851
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3850
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 3853
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3852
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 3854
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 3855
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 3858
    .local p0, "this":Ljava/util/Collections$CheckedList$1;, "Ljava/util/Collections$CheckedList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    iget-object v1, p0, Ljava/util/Collections$CheckedList$1;->this$0:Ljava/util/Collections$CheckedList;

    invoke-virtual {v1, p1}, Ljava/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 3859
    return-void
.end method

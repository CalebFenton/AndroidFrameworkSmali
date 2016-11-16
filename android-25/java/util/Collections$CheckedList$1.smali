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
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/Collections$CheckedList;

.field final synthetic val$i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Ljava/util/Collections$CheckedList;Ljava/util/ListIterator;)V
    .locals 0

    #@0
    .prologue
    .line 2891
    .local p1, "this$1":Ljava/util/Collections$CheckedList;, "Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, "val$i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$CheckedList$1;->this$1:Ljava/util/Collections$CheckedList;

    #@2
    iput-object p2, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2906
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->this$1:Ljava/util/Collections$CheckedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)V

    #@5
    .line 2907
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@7
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@a
    .line 2905
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2912
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@5
    .line 2911
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 2892
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    #@0
    .prologue
    .line 2894
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2893
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 2896
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2895
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 2897
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 2898
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@5
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2901
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->this$1:Ljava/util/Collections$CheckedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)V

    #@5
    .line 2902
    iget-object v0, p0, Ljava/util/Collections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    #@7
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@a
    .line 2900
    return-void
.end method

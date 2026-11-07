.class Ljava/util/AbstractList$SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractList$SubList;->listIterator(I)Ljava/util/ListIterator;
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
.field private final blacklist i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/AbstractList$SubList;

.field final synthetic blacklist val$index:I


# direct methods
.method constructor blacklist <init>(Ljava/util/AbstractList$SubList;I)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/AbstractList$SubList;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 840
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iput-object p1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    iput p2, p0, Ljava/util/AbstractList$SubList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iget-object p2, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    invoke-static {p2}, Ljava/util/AbstractList$SubList;->-$$Nest$fgetroot(Ljava/util/AbstractList$SubList;)Ljava/util/AbstractList;

    move-result-object p2

    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    invoke-static {v0}, Ljava/util/AbstractList$SubList;->-$$Nest$fgetoffset(Ljava/util/AbstractList$SubList;)I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubList$1;->val$index:I

    add-int/2addr v0, v1

    .line 842
    invoke-virtual {p2, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    .line 841
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

    .line 884
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 885
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/AbstractList$SubList;->-$$Nest$mupdateSizeAndModCount(Ljava/util/AbstractList$SubList;I)V

    .line 886
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 845
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    iget v1, v1, Ljava/util/AbstractList$SubList;->size:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 856
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 849
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 850
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 852
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 3

    .line 867
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    invoke-static {v1}, Ljava/util/AbstractList$SubList;->-$$Nest$fgetoffset(Ljava/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 860
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 861
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 863
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 3

    .line 871
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    invoke-static {v1}, Ljava/util/AbstractList$SubList;->-$$Nest$fgetoffset(Ljava/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 875
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 876
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/AbstractList$SubList;->-$$Nest$mupdateSizeAndModCount(Ljava/util/AbstractList$SubList;I)V

    .line 877
    return-void
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 880
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 881
    return-void
.end method

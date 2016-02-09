.class Ljava/util/Collections$UnmodifiableList$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$UnmodifiableList;->listIterator(I)Ljava/util/ListIterator;
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
.field iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/Collections$UnmodifiableList;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Ljava/util/Collections$UnmodifiableList;I)V
    .locals 2
    .param p2, "val$location"    # I

    #@0
    .prologue
    .line 1074
    .local p1, "this$1":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableList$1;->this$1:Ljava/util/Collections$UnmodifiableList;

    #@2
    iput p2, p0, Ljava/util/Collections$UnmodifiableList$1;->val$location:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1075
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->this$1:Ljava/util/Collections$UnmodifiableList;

    #@9
    iget-object v0, v0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    #@b
    iget v1, p0, Ljava/util/Collections$UnmodifiableList$1;->val$location:I

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

    #@13
    .line 1074
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
    .line 1078
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1082
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

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
    .line 1086
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

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
    .line 1090
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

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
    .line 1094
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

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
    .line 1098
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

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
    .line 1102
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->iterator:Ljava/util/ListIterator;

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
    .line 1106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
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
    .line 1110
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

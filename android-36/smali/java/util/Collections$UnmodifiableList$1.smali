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
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/Collections$UnmodifiableList;

.field final synthetic blacklist val$index:I


# direct methods
.method constructor blacklist <init>(Ljava/util/Collections$UnmodifiableList;I)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/Collections$UnmodifiableList;
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

    .line 1574
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableList$1;->this$0:Ljava/util/Collections$UnmodifiableList;

    iput p2, p0, Ljava/util/Collections$UnmodifiableList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iget-object p2, p0, Ljava/util/Collections$UnmodifiableList$1;->this$0:Ljava/util/Collections$UnmodifiableList;

    iget-object p2, p2, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    iget v0, p0, Ljava/util/Collections$UnmodifiableList$1;->val$index:I

    .line 1576
    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    .line 1575
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1592
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1597
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1598
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1578
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1580
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

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

    .line 1579
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 1582
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

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

    .line 1581
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 1583
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1586
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1589
    .local p0, "this":Ljava/util/Collections$UnmodifiableList$1;, "Ljava/util/Collections$UnmodifiableList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;
.super Ljava/util/AbstractSet;
.source "LinkedHashSet.java"

# interfaces
.implements Ljava/util/SequencedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/LinkedHashSet;->reversed()Ljava/util/SequencedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReverseLinkedHashSetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/SequencedSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashSet;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashSet;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 307
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iput-object p1, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 310
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 311
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 312
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 313
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 309
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 315
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 316
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 307
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 308
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 4

    .line 318
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    iget-object v1, v1, Ljava/util/LinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->keysToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 319
    .local p0, "this":Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;, "Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;->this$0:Ljava/util/LinkedHashSet;

    iget-object v1, v1, Ljava/util/LinkedHashSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->prepareArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->keysToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

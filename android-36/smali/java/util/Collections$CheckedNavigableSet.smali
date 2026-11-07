.class Ljava/util/Collections$CheckedNavigableSet;
.super Ljava/util/Collections$CheckedSortedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4b581c0c444127caL


# instance fields
.field private final greylist-max-o ns:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/NavigableSet;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 3737
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    .line 3738
    iput-object p1, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 3739
    return-void
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 3743
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 3750
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3748
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 3742
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3756
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3767
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3727
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 3744
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 3741
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3745
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3746
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3753
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3763
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3727
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$CheckedNavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public blacklist tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3759
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3771
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3727
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

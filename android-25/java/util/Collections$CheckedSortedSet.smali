.class Ljava/util/Collections$CheckedSortedSet;
.super Ljava/util/Collections$CheckedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x163406ba7362eb0fL


# instance fields
.field private final ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2799
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    #@3
    .line 2800
    iput-object p1, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@5
    .line 2798
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2803
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2804
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2811
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/Collections$CheckedSortedSet;->type:Ljava/lang/Class;

    #@8
    invoke-static {v0, v1}, Ljava/util/Collections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2805
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2808
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/Collections$CheckedSortedSet;->type:Ljava/lang/Class;

    #@8
    invoke-static {v0, v1}, Ljava/util/Collections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2814
    .local p0, "this":Ljava/util/Collections$CheckedSortedSet;, "Ljava/util/Collections$CheckedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/Collections$CheckedSortedSet;->type:Ljava/lang/Class;

    #@8
    invoke-static {v0, v1}, Ljava/util/Collections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

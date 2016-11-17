.class Ljava/util/Collections$UnmodifiableSortedSet;
.super Ljava/util/Collections$UnmodifiableSet;
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
    name = "UnmodifiableSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4467db70141310fdL


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
.method constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1238
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    #@3
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    #@5
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
    .line 1240
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

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
    .line 1252
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

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
    .line 1246
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    #@4
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@b
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
    .line 1253
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

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
    .line 1243
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@b
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
    .line 1249
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedSet;, "Ljava/util/Collections$UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    #@4
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@b
    return-object v0
.end method

.class final Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;
.super Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$DescendingSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DescendingEntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>.EntrySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$DescendingSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$DescendingSubMap;)V
    .locals 0

    #@0
    .prologue
    .line 2041
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>.DescendingEntrySetView;"
    .local p1, "this$1":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;->this$1:Ljava/util/TreeMap$DescendingSubMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;-><init>(Ljava/util/TreeMap$NavigableSubMap;)V

    #@5
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2043
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>.DescendingEntrySetView;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;->this$1:Ljava/util/TreeMap$DescendingSubMap;

    #@4
    iget-object v2, p0, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;->this$1:Ljava/util/TreeMap$DescendingSubMap;

    #@6
    invoke-virtual {v2}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;->this$1:Ljava/util/TreeMap$DescendingSubMap;

    #@c
    invoke-virtual {v3}, Ljava/util/TreeMap$NavigableSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v0, v1, v2, v3}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@13
    return-object v0
.end method

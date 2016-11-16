.class final Ljava/util/TreeMap$ValueIterator;
.super Ljava/util/TreeMap$PrivateEntryIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.PrivateEntryIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1273
    .local p0, "this":Ljava/util/TreeMap$ValueIterator;, "Ljava/util/TreeMap<TK;TV;>.ValueIterator;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$ValueIterator;->this$0:Ljava/util/TreeMap;

    #@2
    .line 1274
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@5
    .line 1273
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1277
    .local p0, "this":Ljava/util/TreeMap$ValueIterator;, "Ljava/util/TreeMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@6
    return-object v0
.end method

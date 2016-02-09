.class Ljava/util/TreeMap$KeySet$2;
.super Ljava/util/TreeMap$MapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap$KeySet;->descendingIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.MapIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$KeySet;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$KeySet;Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V
    .locals 0

    #@0
    .prologue
    .line 965
    .local p1, "this$1":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p2, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "$anonymous0":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$KeySet$2;->this$1:Ljava/util/TreeMap$KeySet;

    #@2
    invoke-direct {p0, p2, p3}, Ljava/util/TreeMap$MapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 967
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySet$2;->stepBackward()Ljava/util/TreeMap$Node;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@6
    return-object v0
.end method

.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>.Iter<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0

    #@0
    .prologue
    .line 2238
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeyIterator;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2240
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeyIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2
    .line 2241
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->advance()V

    #@5
    .line 2242
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@7
    return-object v1
.end method

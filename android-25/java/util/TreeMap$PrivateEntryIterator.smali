.class abstract Ljava/util/TreeMap$PrivateEntryIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PrivateEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1217
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1218
    invoke-static {p1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@b
    .line 1219
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@e
    .line 1220
    iput-object p2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@10
    .line 1217
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1224
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method final nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    .line 1229
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@4
    .line 1230
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1231
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    #@c
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@f
    move-result v1

    #@10
    iget v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@12
    if-eq v1, v2, :cond_1

    #@14
    .line 1232
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@16
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@19
    throw v1

    #@1a
    .line 1233
    :cond_1
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@20
    .line 1234
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@22
    .line 1235
    return-object v0
.end method

.method final prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1239
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    .line 1240
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@4
    .line 1241
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1242
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    #@c
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@f
    move-result v1

    #@10
    iget v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@12
    if-eq v1, v2, :cond_1

    #@14
    .line 1243
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@16
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@19
    throw v1

    #@1a
    .line 1244
    :cond_1
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@20
    .line 1245
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@22
    .line 1246
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1250
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1251
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1252
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    #@d
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@10
    move-result v0

    #@11
    iget v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@13
    if-eq v0, v1, :cond_1

    #@15
    .line 1253
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@17
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 1255
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    if-eqz v0, :cond_2

    #@21
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 1256
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@29
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2b
    .line 1257
    :cond_2
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    #@2d
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@2f
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@32
    .line 1258
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    #@34
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@37
    move-result v0

    #@38
    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@3a
    .line 1259
    iput-object v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@3c
    .line 1249
    return-void
.end method

.class final Ljava/util/LinkedList$LLSpliterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LLSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/LinkedList;II)V
    .locals 0
    .param p2, "est"    # I
    .param p3, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TE;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1184
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1185
    iput-object p1, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    #@5
    .line 1186
    iput p2, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@7
    .line 1187
    iput p3, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    #@9
    .line 1184
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1259
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    const/16 v0, 0x4050

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1205
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1229
    if-nez p1, :cond_0

    #@4
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1230
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    #@d
    move-result v1

    #@e
    .local v1, "n":I
    if-lez v1, :cond_2

    #@10
    iget-object v2, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@12
    .local v2, "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v2, :cond_2

    #@14
    .line 1231
    iput-object v3, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@16
    .line 1232
    iput v4, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@18
    .line 1234
    :cond_1
    iget-object v0, v2, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@1a
    .line 1235
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@1c
    .line 1236
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1f
    .line 1237
    if-eqz v2, :cond_2

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    if-gtz v1, :cond_1

    #@25
    .line 1239
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_2
    iget-object v3, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    #@27
    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    #@29
    iget v4, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    #@2b
    if-eq v3, v4, :cond_3

    #@2d
    .line 1240
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@2f
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@32
    throw v3

    #@33
    .line 1227
    :cond_3
    return-void
.end method

.method final getEst()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1193
    iget v1, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@3
    .local v1, "s":I
    if-gez v1, :cond_0

    #@5
    .line 1194
    iget-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    #@7
    .local v0, "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-nez v0, :cond_1

    #@9
    .line 1195
    iput v2, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@b
    const/4 v1, 0x0

    #@c
    .line 1202
    .end local v0    # "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :cond_0
    :goto_0
    return v1

    #@d
    .line 1197
    .restart local v0    # "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :cond_1
    iget v2, v0, Ljava/util/AbstractList;->modCount:I

    #@f
    iput v2, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    #@11
    .line 1198
    iget-object v2, v0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@13
    iput-object v2, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@15
    .line 1199
    iget v1, v0, Ljava/util/LinkedList;->size:I

    #@17
    .end local v1    # "s":I
    iput v1, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@19
    .restart local v1    # "s":I
    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 1245
    if-nez p1, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 1246
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    #@c
    move-result v2

    #@d
    if-lez v2, :cond_2

    #@f
    iget-object v1, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@11
    .local v1, "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v1, :cond_2

    #@13
    .line 1247
    iget v2, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    iput v2, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@19
    .line 1248
    iget-object v0, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@1b
    .line 1249
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@1d
    iput-object v2, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@1f
    .line 1250
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@22
    .line 1251
    iget-object v2, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    #@24
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@26
    iget v3, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    #@28
    if-eq v2, v3, :cond_1

    #@2a
    .line 1252
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@2c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2f
    throw v2

    #@30
    .line 1253
    :cond_1
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 1255
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_2
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList<TE;>.LLSpliterator<TE;>;"
    const/4 v7, 0x0

    #@1
    .line 1209
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    #@4
    move-result v5

    #@5
    .line 1210
    .local v5, "s":I
    const/4 v6, 0x1

    #@6
    if-le v5, v6, :cond_3

    #@8
    iget-object v4, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@a
    .local v4, "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v4, :cond_3

    #@c
    .line 1211
    iget v6, p0, Ljava/util/LinkedList$LLSpliterator;->batch:I

    #@e
    add-int/lit16 v3, v6, 0x400

    #@10
    .line 1212
    .local v3, "n":I
    if-le v3, v5, :cond_0

    #@12
    .line 1213
    move v3, v5

    #@13
    .line 1214
    :cond_0
    const/high16 v6, 0x2000000

    #@15
    if-le v3, v6, :cond_1

    #@17
    .line 1215
    const/high16 v3, 0x2000000

    #@19
    .line 1216
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    #@1b
    .line 1217
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@1c
    .line 1218
    .local v1, "j":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@1e
    .end local v1    # "j":I
    .local v2, "j":I
    iget-object v6, v4, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@20
    aput-object v6, v0, v1

    #@22
    iget-object v4, v4, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@24
    if-eqz v4, :cond_2

    #@26
    if-ge v2, v3, :cond_2

    #@28
    move v1, v2

    #@29
    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_0

    #@2a
    .line 1219
    .end local v1    # "j":I
    .restart local v2    # "j":I
    :cond_2
    iput-object v4, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    #@2c
    .line 1220
    iput v2, p0, Ljava/util/LinkedList$LLSpliterator;->batch:I

    #@2e
    .line 1221
    sub-int v6, v5, v2

    #@30
    iput v6, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    #@32
    .line 1222
    const/4 v6, 0x0

    #@33
    const/16 v7, 0x10

    #@35
    invoke-static {v0, v6, v2, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@38
    move-result-object v6

    #@39
    return-object v6

    #@3a
    .line 1224
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v4    # "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_3
    return-object v7
.end method

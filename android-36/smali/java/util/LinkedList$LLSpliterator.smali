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
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field greylist-max-o batch:I

.field greylist-max-o current:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:I

.field greylist-max-o expectedModCount:I

.field final greylist-max-o list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/LinkedList;II)V
    .registers 4
    .param p2, "est"    # I
    .param p3, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1197
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    iput-object p1, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    .line 1199
    iput p2, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    .line 1200
    iput p3, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    .line 1201
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1272
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1218
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1242
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_30

    .line 1243
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    move-result v0

    move v1, v0

    .local v1, "n":I
    if-lez v0, :cond_21

    iget-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    move-object v2, v0

    .local v2, "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v0, :cond_21

    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    .line 1245
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    .line 1247
    :cond_14
    iget-object v0, v2, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 1248
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 1249
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1250
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_21

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_14

    .line 1252
    .end local v2    # "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_21
    iget-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v2, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_2a

    .line 1254
    return-void

    .line 1253
    :cond_2a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1242
    .end local v1    # "n":I
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o getEst()I
    .registers 4

    .line 1206
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    iget v0, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_1c

    .line 1207
    iget-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    move-object v2, v0

    .local v2, "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-nez v0, :cond_f

    .line 1208
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    move v1, v0

    goto :goto_1c

    .line 1210
    :cond_f
    iget v0, v2, Ljava/util/LinkedList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    .line 1211
    iget-object v0, v2, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    .line 1212
    iget v0, v2, Ljava/util/LinkedList;->size:I

    iput v0, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    move v1, v0

    .line 1215
    .end local v2    # "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :cond_1c
    :goto_1c
    return v1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1258
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_2d

    .line 1259
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v0, :cond_2b

    .line 1260
    iget v0, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    .line 1261
    iget-object v0, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 1262
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v3, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    .line 1263
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1264
    iget-object v3, p0, Ljava/util/LinkedList$LLSpliterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    iget v4, p0, Ljava/util/LinkedList$LLSpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_25

    .line 1266
    return v2

    .line 1265
    :cond_25
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1268
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_2b
    const/4 v0, 0x0

    return v0

    .line 1258
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1222
    .local p0, "this":Ljava/util/LinkedList$LLSpliterator;, "Ljava/util/LinkedList$LLSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList$LLSpliterator;->getEst()I

    move-result v0

    .line 1223
    .local v0, "s":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_3c

    iget-object v1, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    move-object v2, v1

    .local v2, "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v1, :cond_3c

    .line 1224
    iget v1, p0, Ljava/util/LinkedList$LLSpliterator;->batch:I

    add-int/lit16 v1, v1, 0x400

    .line 1225
    .local v1, "n":I
    if-le v1, v0, :cond_13

    .line 1226
    move v1, v0

    .line 1227
    :cond_13
    const/high16 v3, 0x2000000

    if-le v1, v3, :cond_19

    .line 1228
    const/high16 v1, 0x2000000

    .line 1229
    :cond_19
    new-array v3, v1, [Ljava/lang/Object;

    .line 1230
    .local v3, "a":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1231
    .local v4, "j":I
    :goto_1c
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    iget-object v6, v2, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    aput-object v6, v3, v4

    iget-object v4, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    move-object v2, v4

    if-eqz v4, :cond_2c

    if-lt v5, v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v4, v5

    goto :goto_1c

    .line 1232
    :cond_2c
    :goto_2c
    iput-object v2, p0, Ljava/util/LinkedList$LLSpliterator;->current:Ljava/util/LinkedList$Node;

    .line 1233
    iput v5, p0, Ljava/util/LinkedList$LLSpliterator;->batch:I

    .line 1234
    sub-int v4, v0, v5

    iput v4, p0, Ljava/util/LinkedList$LLSpliterator;->est:I

    .line 1235
    const/4 v4, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v5, v6}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v4

    return-object v4

    .line 1237
    .end local v1    # "n":I
    .end local v2    # "p":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .end local v3    # "a":[Ljava/lang/Object;
    .end local v5    # "j":I
    :cond_3c
    const/4 v1, 0x0

    return-object v1
.end method

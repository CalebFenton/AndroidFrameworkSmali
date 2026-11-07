.class final Landroid/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o mEnd:I

.field greylist-max-o mEntryValid:Z

.field greylist-max-o mIndex:I

.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;)V
    .registers 3
    .param p1, "this$0"    # Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iput-object p1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 83
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 85
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_36

    .line 144
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 145
    return v1

    .line 147
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v1, v5

    goto :goto_35

    :cond_34
    nop

    .line 148
    :goto_35
    return v1

    .line 141
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_e

    .line 117
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 114
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 122
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_e

    .line 126
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 123
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 89
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 154
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_27

    .line 158
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v3, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_1a

    move v3, v2

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 161
    :goto_1e
    if-nez v1, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_25
    xor-int/2addr v2, v3

    .line 160
    return v2

    .line 155
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 77
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 96
    iput-boolean v1, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 97
    return-object p0

    .line 94
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 102
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_1b

    .line 105
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 106
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 107
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 109
    return-void

    .line 103
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 131
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 132
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

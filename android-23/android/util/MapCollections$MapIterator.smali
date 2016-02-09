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
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .locals 1

    #@0
    .prologue
    .line 78
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "this$0":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 76
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@8
    .line 79
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    #@10
    .line 80
    const/4 v0, -0x1

    #@11
    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@13
    .line 78
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    const/4 v1, 0x0

    #@1
    .line 135
    iget-boolean v2, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    .line 137
    const-string/jumbo v2, "This container does not support retaining Map.Entry objects"

    #@a
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 139
    :cond_0
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@10
    if-nez v2, :cond_1

    #@12
    .line 140
    return v1

    #@13
    :cond_1
    move-object v0, p1

    #@14
    .line 142
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 143
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@1c
    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@1e
    invoke-virtual {v3, v4, v1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@2e
    iget v3, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@30
    const/4 v4, 0x1

    #@31
    invoke-virtual {v2, v3, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    .line 143
    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 110
    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    #@9
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 112
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@f
    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 119
    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    #@9
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 121
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@f
    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@11
    const/4 v2, 0x1

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 85
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@2
    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    const/4 v2, 0x0

    #@1
    .line 149
    iget-boolean v3, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 150
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    .line 151
    const-string/jumbo v3, "This container does not support retaining Map.Entry objects"

    #@a
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 153
    :cond_0
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@10
    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@12
    invoke-virtual {v3, v4, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 154
    .local v0, "key":Ljava/lang/Object;
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@18
    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@1a
    const/4 v5, 0x1

    #@1b
    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    .line 155
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@21
    move v3, v2

    #@22
    .line 156
    :goto_0
    if-nez v1, :cond_2

    #@24
    .line 155
    :goto_1
    xor-int/2addr v2, v3

    #@25
    return v2

    #@26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@29
    move-result v3

    #@2a
    goto :goto_0

    #@2b
    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@2e
    move-result v2

    #@2f
    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 89
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@6
    .line 91
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@9
    .line 92
    return-object p0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 97
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 100
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@c
    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@e
    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    #@11
    .line 101
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@17
    .line 102
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    #@1d
    .line 103
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@20
    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 126
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 128
    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    #@9
    .line 127
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 130
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    #@f
    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 161
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.class public Landroid/util/SparseDoubleArray;
.super Ljava/lang/Object;
.source "SparseDoubleArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist mValues:Landroid/util/SparseLongArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseDoubleArray;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, p1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 191
    return-void
.end method

.method public blacklist clone()Landroid/util/SparseDoubleArray;
    .registers 3

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "clone":Landroid/util/SparseDoubleArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseDoubleArray;

    move-object v0, v1

    .line 73
    iget-object v1, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_10} :catch_11

    .line 76
    goto :goto_12

    .line 74
    :catch_11
    move-exception v1

    .line 77
    :goto_12
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->clone()Landroid/util/SparseDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist delete(I)V
    .registers 3
    .param p1, "key"    # I

    .line 183
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 184
    return-void
.end method

.method public blacklist get(I)D
    .registers 4
    .param p1, "key"    # I

    .line 85
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist get(ID)D
    .registers 7
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # D

    .line 93
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 94
    .local v0, "index":I
    if-gez v0, :cond_9

    .line 95
    return-wide p2

    .line 97
    :cond_9
    invoke-virtual {p0, v0}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist incrementValue(ID)V
    .registers 8
    .param p1, "key"    # I
    .param p2, "summand"    # D

    .line 118
    invoke-virtual {p0, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    .line 119
    .local v0, "oldValue":D
    add-double v2, v0, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 120
    return-void
.end method

.method public blacklist indexOfKey(I)I
    .registers 3
    .param p1, "key"    # I

    .line 133
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public blacklist keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 144
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist put(ID)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # D

    .line 106
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 107
    return-void
.end method

.method public blacklist removeAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 176
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 177
    return-void
.end method

.method public blacklist setValueAt(ID)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 169
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->setValueAt(IJ)V

    .line 170
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 200
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 201
    const-string/jumbo v0, "{}"

    return-object v0

    .line 204
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 207
    if-lez v1, :cond_28

    .line 208
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_28
    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    .line 211
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v3

    .line 214
    .local v3, "value":D
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 206
    .end local v2    # "key":I
    .end local v3    # "value":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 216
    .end local v1    # "i":I
    :cond_3e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist valueAt(I)D
    .registers 4
    .param p1, "index"    # I

    .line 155
    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

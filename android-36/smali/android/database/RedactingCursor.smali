.class public Landroid/database/RedactingCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "RedactingCursor.java"


# instance fields
.field private final blacklist mRedactions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/database/Cursor;Landroid/util/SparseArray;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p2, "redactions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 34
    iput-object p2, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    .line 35
    return-void
.end method

.method public static blacklist create(Landroid/database/Cursor;Ljava/util/Map;)Landroid/database/Cursor;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 47
    .local p1, "redactions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .local v0, "internalRedactions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_21

    .line 51
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 52
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 56
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 57
    return-object p0

    .line 59
    :cond_28
    new-instance v2, Landroid/database/RedactingCursor;

    invoke-direct {v2, p0, v0}, Landroid/database/RedactingCursor;-><init>(Landroid/database/Cursor;Landroid/util/SparseArray;)V

    return-object v2
.end method


# virtual methods
.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 143
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 144
    .local v0, "i":I
    if-ltz v0, :cond_1c

    .line 145
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 146
    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    array-length v1, v1

    iput v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1f

    .line 148
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 150
    :goto_1f
    return-void
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 66
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 67
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 4
    .param p1, "columnIndex"    # I

    .line 154
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 155
    .local v0, "i":I
    if-ltz v0, :cond_11

    .line 156
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 158
    :cond_11
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getBlob(I)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDouble(I)D
    .registers 5
    .param p1, "columnIndex"    # I

    .line 83
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 84
    .local v0, "i":I
    if-ltz v0, :cond_15

    .line 85
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 87
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getDouble(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getFloat(I)F
    .registers 4
    .param p1, "columnIndex"    # I

    .line 93
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 94
    .local v0, "i":I
    if-ltz v0, :cond_15

    .line 95
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 97
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public whitelist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 103
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 104
    .local v0, "i":I
    if-ltz v0, :cond_15

    .line 105
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 107
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getInt(I)I

    move-result v1

    return v1
.end method

.method public whitelist getLong(I)J
    .registers 5
    .param p1, "columnIndex"    # I

    .line 113
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 114
    .local v0, "i":I
    if-ltz v0, :cond_15

    .line 115
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 117
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getShort(I)S
    .registers 4
    .param p1, "columnIndex"    # I

    .line 123
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 124
    .local v0, "i":I
    if-ltz v0, :cond_15

    .line 125
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 127
    :cond_15
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getShort(I)S

    move-result v1

    return v1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .line 133
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 134
    .local v0, "i":I
    if-ltz v0, :cond_11

    .line 135
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 137
    :cond_11
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getType(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 164
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 165
    .local v0, "i":I
    if-ltz v0, :cond_13

    .line 166
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 168
    :cond_13
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getType(I)I

    move-result v1

    return v1
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWrappedCursor()Landroid/database/Cursor;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Returning underlying cursor risks leaking redacted data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isNull(I)Z
    .registers 4
    .param p1, "columnIndex"    # I

    .line 174
    iget-object v0, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 175
    .local v0, "i":I
    if-ltz v0, :cond_14

    .line 176
    iget-object v1, p0, Landroid/database/RedactingCursor;->mRedactions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1

    .line 178
    :cond_14
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->isNull(I)Z

    move-result v1

    return v1
.end method

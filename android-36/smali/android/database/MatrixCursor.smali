.class public Landroid/database/MatrixCursor;
.super Landroid/database/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final greylist-max-o columnCount:I

.field private final greylist-max-o columnNames:[Ljava/lang/String;

.field private greylist-max-p data:[Ljava/lang/Object;

.field private greylist-max-p rowCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcolumnCount(Landroid/database/MatrixCursor;)I
    .registers 1

    iget p0, p0, Landroid/database/MatrixCursor;->columnCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcolumnNames(Landroid/database/MatrixCursor;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdata(Landroid/database/MatrixCursor;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "columnNames"    # [Ljava/lang/String;

    .line 64
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/String;I)V
    .registers 4
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    .line 46
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 47
    iput-object p1, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    .line 48
    array-length v0, p1

    iput v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    .line 50
    const/4 v0, 0x1

    if-ge p2, v0, :cond_f

    .line 51
    const/4 p2, 0x1

    .line 54
    :cond_f
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private greylist-max-o addRow(Ljava/util/ArrayList;I)V
    .registers 8
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;I)V"
        }
    .end annotation

    .line 162
    .local p1, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 163
    .local v0, "size":I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-ne v0, v1, :cond_1f

    .line 168
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 169
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 170
    .local v1, "localData":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_1e

    .line 171
    add-int v3, p2, v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 173
    .end local v2    # "i":I
    :cond_1e
    return-void

    .line 164
    .end local v1    # "localData":[Ljava/lang/Object;
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 7
    .param p1, "size"    # I

    .line 177
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_1a

    .line 178
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 179
    .local v0, "oldData":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 180
    .local v1, "newSize":I
    if-ge v1, p1, :cond_f

    .line 181
    move v1, p1

    .line 183
    :cond_f
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 184
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    .end local v0    # "oldData":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_1a
    return-void
.end method

.method private greylist get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "column"    # I

    .line 72
    if-ltz p1, :cond_2b

    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-ge p1, v0, :cond_2b

    .line 76
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    if-ltz v0, :cond_23

    .line 79
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    if-ge v0, v1, :cond_1b

    .line 82
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 80
    :cond_1b
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_23
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2b
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addRow(Ljava/lang/Iterable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 130
    .local p1, "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 131
    .local v0, "start":I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    .line 132
    .local v1, "end":I
    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 134
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    .line 135
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 136
    return-void

    .line 139
    :cond_16
    move v2, v0

    .line 140
    .local v2, "current":I
    iget-object v3, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 141
    .local v3, "localData":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 142
    .local v5, "columnValue":Ljava/lang/Object;
    if-eq v2, v1, :cond_2f

    .line 147
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "current":I
    .local v6, "current":I
    aput-object v5, v3, v2

    .line 148
    .end local v5    # "columnValue":Ljava/lang/Object;
    move v2, v6

    goto :goto_1d

    .line 144
    .end local v6    # "current":I
    .restart local v2    # "current":I
    .restart local v5    # "columnValue":Ljava/lang/Object;
    :cond_2f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "columnValues.size() > columnNames.length"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .end local v5    # "columnValue":Ljava/lang/Object;
    :cond_37
    if-ne v2, v1, :cond_40

    .line 157
    iget v4, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 158
    return-void

    .line 152
    :cond_40
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "columnValues.size() < columnNames.length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist addRow([Ljava/lang/Object;)V
    .registers 6
    .param p1, "columnValues"    # [Ljava/lang/Object;

    .line 109
    array-length v0, p1

    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-ne v0, v1, :cond_1d

    .line 115
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 116
    .local v0, "start":I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 117
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-void

    .line 110
    .end local v0    # "start":I
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columnNames.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", columnValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBlob(I)[B
    .registers 4
    .param p1, "column"    # I

    .line 314
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 257
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    return v0
.end method

.method public whitelist getDouble(I)D
    .registers 5
    .param p1, "column"    # I

    .line 306
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    return-wide v1

    .line 308
    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 309
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getFloat(I)F
    .registers 4
    .param p1, "column"    # I

    .line 298
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 300
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    .line 301
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public whitelist getInt(I)I
    .registers 4
    .param p1, "column"    # I

    .line 282
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 284
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    .line 285
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public whitelist getLong(I)J
    .registers 5
    .param p1, "column"    # I

    .line 290
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    return-wide v1

    .line 292
    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 293
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getShort(I)S
    .registers 4
    .param p1, "column"    # I

    .line 274
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 276
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1

    .line 277
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "column"    # I

    .line 267
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 268
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 269
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getType(I)I
    .registers 3
    .param p1, "column"    # I

    .line 320
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isNull(I)Z
    .registers 3
    .param p1, "column"    # I

    .line 325
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist newRow()Landroid/database/MatrixCursor$RowBuilder;
    .registers 4

    .line 93
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 94
    .local v0, "row":I
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    .line 95
    .local v1, "endIndex":I
    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 96
    new-instance v2, Landroid/database/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v0}, Landroid/database/MatrixCursor$RowBuilder;-><init>(Landroid/database/MatrixCursor;I)V

    return-object v2
.end method

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
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method static synthetic -get0(Landroid/database/MatrixCursor;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/database/MatrixCursor;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/database/MatrixCursor;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 58
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@5
    .line 57
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    #@3
    .line 30
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@6
    .line 41
    iput-object p1, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    #@8
    .line 42
    array-length v0, p1

    #@9
    iput v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@b
    .line 44
    const/4 v0, 0x1

    #@c
    if-ge p2, v0, :cond_0

    #@e
    .line 45
    const/4 p2, 0x1

    #@f
    .line 48
    :cond_0
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@11
    mul-int/2addr v0, p2

    #@12
    new-array v0, v0, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@16
    .line 40
    return-void
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p1, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 156
    .local v2, "size":I
    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "columnNames.length = "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    .line 158
    iget v5, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@18
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 158
    const-string/jumbo v5, ", columnValues.size() = "

    #@1f
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 161
    :cond_0
    iget v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    iput v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@35
    .line 162
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@37
    .line 163
    .local v1, "localData":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@38
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@3a
    .line 164
    add-int v3, p2, v0

    #@3c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    aput-object v4, v1, v3

    #@42
    .line 163
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 154
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 170
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@3
    array-length v2, v2

    #@4
    if-le p1, v2, :cond_1

    #@6
    .line 171
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@8
    .line 172
    .local v1, "oldData":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@a
    array-length v2, v2

    #@b
    mul-int/lit8 v0, v2, 0x2

    #@d
    .line 173
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    #@f
    .line 174
    move v0, p1

    #@10
    .line 176
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    #@12
    iput-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@14
    .line 177
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@16
    array-length v3, v1

    #@17
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 169
    .end local v0    # "newSize":I
    .end local v1    # "oldData":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "column"    # I

    #@0
    .prologue
    .line 65
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 66
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Requested column: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 67
    const-string/jumbo v2, ", # of columns: "

    #@1b
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 67
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@21
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 69
    :cond_1
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    #@2f
    if-gez v0, :cond_2

    #@31
    .line 70
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@33
    const-string/jumbo v1, "Before first row."

    #@36
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 72
    :cond_2
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    #@3c
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@3e
    if-lt v0, v1, :cond_3

    #@40
    .line 73
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@42
    const-string/jumbo v1, "After last row."

    #@45
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 75
    :cond_3
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@4b
    iget v1, p0, Landroid/database/MatrixCursor;->mPos:I

    #@4d
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@4f
    mul-int/2addr v1, v2

    #@50
    add-int/2addr v1, p1

    #@51
    aget-object v0, v0, v1

    #@53
    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p1, "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@2
    iget v8, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@4
    mul-int v6, v7, v8

    #@6
    .line 124
    .local v6, "start":I
    iget v7, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@8
    add-int v4, v6, v7

    #@a
    .line 125
    .local v4, "end":I
    invoke-direct {p0, v4}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    #@d
    .line 127
    instance-of v7, p1, Ljava/util/ArrayList;

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 128
    check-cast p1, Ljava/util/ArrayList;

    #@13
    .end local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-direct {p0, p1, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    #@16
    .line 129
    return-void

    #@17
    .line 132
    .restart local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    move v2, v6

    #@18
    .line 133
    .local v2, "current":I
    iget-object v5, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@1a
    .line 134
    .local v5, "localData":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "columnValue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_2

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .line 135
    .local v0, "columnValue":Ljava/lang/Object;
    if-ne v2, v4, :cond_1

    #@2a
    .line 137
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@2c
    .line 138
    const-string/jumbo v8, "columnValues.size() > columnNames.length"

    #@2f
    .line 137
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v7

    #@33
    .line 140
    :cond_1
    add-int/lit8 v3, v2, 0x1

    #@35
    .end local v2    # "current":I
    .local v3, "current":I
    aput-object v0, v5, v2

    #@37
    move v2, v3

    #@38
    .end local v3    # "current":I
    .restart local v2    # "current":I
    goto :goto_0

    #@39
    .line 143
    .end local v0    # "columnValue":Ljava/lang/Object;
    :cond_2
    if-eq v2, v4, :cond_3

    #@3b
    .line 145
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@3d
    .line 146
    const-string/jumbo v8, "columnValues.size() < columnNames.length"

    #@40
    .line 145
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v7

    #@44
    .line 150
    :cond_3
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@46
    add-int/lit8 v7, v7, 0x1

    #@48
    iput v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@4a
    .line 122
    return-void
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .param p1, "columnValues"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 102
    array-length v1, p1

    #@1
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "columnNames.length = "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 104
    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@15
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 104
    const-string/jumbo v3, ", columnValues.length = "

    #@1c
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 105
    array-length v3, p1

    #@21
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 108
    :cond_0
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@2f
    add-int/lit8 v2, v1, 0x1

    #@31
    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@33
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@35
    mul-int v0, v1, v2

    #@37
    .line 109
    .local v0, "start":I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@39
    add-int/2addr v1, v0

    #@3a
    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    #@3d
    .line 110
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    #@3f
    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@41
    const/4 v3, 0x0

    #@42
    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@45
    .line 101
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 302
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, [B

    #@6
    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@2
    return v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "column"    # I

    #@0
    .prologue
    .line 293
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 294
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    const-wide/16 v2, 0x0

    #@8
    return-wide v2

    #@9
    .line 295
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    #@b
    if-eqz v1, :cond_1

    #@d
    check-cast v0, Ljava/lang/Number;

    #@f
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@12
    move-result-wide v2

    #@13
    return-wide v2

    #@14
    .line 296
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1b
    move-result-wide v2

    #@1c
    return-wide v2
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 285
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 287
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Ljava/lang/Number;

    #@e
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 288
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 269
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 271
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Ljava/lang/Number;

    #@e
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 272
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    #@0
    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 278
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    const-wide/16 v2, 0x0

    #@8
    return-wide v2

    #@9
    .line 279
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    #@b
    if-eqz v1, :cond_1

    #@d
    check-cast v0, Ljava/lang/Number;

    #@f
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    #@12
    move-result-wide v2

    #@13
    return-wide v2

    #@14
    .line 280
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1b
    move-result-wide v2

    #@1c
    return-wide v2
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 262
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 263
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    #@a
    if-eqz v1, :cond_1

    #@c
    check-cast v0, Ljava/lang/Number;

    #@e
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 264
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 254
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 255
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 256
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

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

.method public newRow()Landroid/database/MatrixCursor$RowBuilder;
    .locals 4

    #@0
    .prologue
    .line 86
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@2
    add-int/lit8 v2, v1, 0x1

    #@4
    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@6
    .line 87
    .local v1, "row":I
    iget v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    #@8
    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    #@a
    mul-int v0, v2, v3

    #@c
    .line 88
    .local v0, "endIndex":I
    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    #@f
    .line 89
    new-instance v2, Landroid/database/MatrixCursor$RowBuilder;

    #@11
    invoke-direct {v2, p0, v1}, Landroid/database/MatrixCursor$RowBuilder;-><init>(Landroid/database/MatrixCursor;I)V

    #@14
    return-object v2
.end method

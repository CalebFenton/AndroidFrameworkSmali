.class public Landroid/app/StatsCursor;
.super Landroid/database/AbstractCursor;
.source "StatsCursor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mColumnNames:[Ljava/lang/String;

.field private final blacklist mColumnTypes:[I

.field private final blacklist mMatrixCursor:Landroid/database/MatrixCursor;

.field private final blacklist mRowCount:I


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 11
    .param p1, "queryData"    # [Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "columnTypes"    # [I
    .param p4, "rowCount"    # I

    .line 40
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 41
    iput-object p3, p0, Landroid/app/StatsCursor;->mColumnTypes:[I

    .line 42
    iput-object p2, p0, Landroid/app/StatsCursor;->mColumnNames:[Ljava/lang/String;

    .line 43
    iput p4, p0, Landroid/app/StatsCursor;->mRowCount:I

    .line 44
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, p4, :cond_2d

    .line 46
    iget-object v1, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 47
    .local v1, "builder":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1a
    array-length v3, p2

    if-ge v2, v3, :cond_2a

    .line 48
    array-length v3, p2

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 49
    .local v3, "dataIndex":I
    aget-object v4, p2, v2

    aget-object v5, p1, v3

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 47
    .end local v3    # "dataIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 45
    .end local v1    # "builder":Landroid/database/MatrixCursor$RowBuilder;
    .end local v2    # "j":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 52
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method


# virtual methods
.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/app/StatsCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/app/StatsCursor;->mRowCount:I

    return v0
.end method

.method public whitelist getDouble(I)D
    .registers 4
    .param p1, "column"    # I

    .line 141
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .registers 3
    .param p1, "column"    # I

    .line 130
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(I)I
    .registers 3
    .param p1, "column"    # I

    .line 108
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "column"    # I

    .line 119
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .registers 3
    .param p1, "column"    # I

    .line 97
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "column"    # I

    .line 85
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .registers 3
    .param p1, "column"    # I

    .line 163
    iget-object v0, p0, Landroid/app/StatsCursor;->mColumnTypes:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist isNull(I)Z
    .registers 3
    .param p1, "column"    # I

    .line 152
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onMove(II)Z
    .registers 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 171
    iget-object v0, p0, Landroid/app/StatsCursor;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

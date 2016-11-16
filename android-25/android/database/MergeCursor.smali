.class public Landroid/database/MergeCursor;
.super Landroid/database/AbstractCursor;
.source "MergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MergeCursor$1;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mCursors:[Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursors"    # [Landroid/database/Cursor;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    #@3
    .line 27
    new-instance v1, Landroid/database/MergeCursor$1;

    #@5
    invoke-direct {v1, p0}, Landroid/database/MergeCursor$1;-><init>(Landroid/database/MergeCursor;)V

    #@8
    iput-object v1, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    #@a
    .line 44
    iput-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@c
    .line 45
    const/4 v1, 0x0

    #@d
    aget-object v1, p1, v1

    #@f
    iput-object v1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@11
    .line 47
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@14
    array-length v1, v1

    #@15
    if-ge v0, v1, :cond_1

    #@17
    .line 48
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@19
    aget-object v1, v1, v0

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 47
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 50
    :cond_0
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@22
    aget-object v1, v1, v0

    #@24
    iget-object v2, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    #@26
    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@29
    goto :goto_1

    #@2a
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    .line 172
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 173
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 174
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-nez v2, :cond_0

    #@c
    .line 173
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 175
    :cond_0
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@16
    goto :goto_1

    #@17
    .line 177
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    #@1a
    .line 171
    return-void
.end method

.method public deactivate()V
    .locals 3

    #@0
    .prologue
    .line 161
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 162
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 163
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 164
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    #@13
    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 167
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    #@19
    .line 159
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 152
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@6
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 154
    :cond_0
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public getCount()I
    .locals 4

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    .line 58
    .local v0, "count":I
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@3
    array-length v2, v3

    #@4
    .line 59
    .local v2, "length":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 60
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@9
    aget-object v3, v3, v1

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 61
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@f
    aget-object v3, v3, v1

    #@11
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    #@14
    move-result v3

    #@15
    add-int/2addr v0, v3

    #@16
    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 64
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onMove(II)Z
    .locals 6
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 71
    iput-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@3
    .line 72
    const/4 v0, 0x0

    #@4
    .line 73
    .local v0, "cursorStartPos":I
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@6
    array-length v2, v4

    #@7
    .line 74
    .local v2, "length":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@a
    .line 75
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@c
    aget-object v4, v4, v1

    #@e
    if-nez v4, :cond_0

    #@10
    .line 74
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 79
    :cond_0
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@15
    aget-object v4, v4, v1

    #@17
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    #@1a
    move-result v4

    #@1b
    add-int/2addr v4, v0

    #@1c
    if-ge p2, v4, :cond_2

    #@1e
    .line 80
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@20
    aget-object v4, v4, v1

    #@22
    iput-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@24
    .line 88
    :cond_1
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 89
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    #@2a
    sub-int v5, p2, v0

    #@2c
    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@2f
    move-result v3

    #@30
    .line 90
    .local v3, "ret":Z
    return v3

    #@31
    .line 84
    .end local v3    # "ret":Z
    :cond_2
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@33
    aget-object v4, v4, v1

    #@35
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    #@38
    move-result v4

    #@39
    add-int/2addr v0, v4

    #@3a
    goto :goto_1

    #@3b
    .line 92
    :cond_3
    const/4 v4, 0x0

    #@3c
    return v4
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 182
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 183
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 184
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 185
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@13
    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 181
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 201
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 202
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 203
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 204
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@13
    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 200
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    #@0
    .prologue
    .line 222
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 223
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@6
    .line 224
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-nez v2, :cond_1

    #@c
    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 228
    :cond_1
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 229
    const/4 v2, 0x0

    #@1a
    return v2

    #@1b
    .line 233
    :cond_2
    const/4 v2, 0x1

    #@1c
    return v2
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 191
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 192
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 193
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 194
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@13
    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 190
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 211
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 212
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 213
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 214
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@13
    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 210
    :cond_1
    return-void
.end method

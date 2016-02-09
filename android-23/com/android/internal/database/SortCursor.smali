.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/database/SortCursor$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method static synthetic -set0(Lcom/android/internal/database/SortCursor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    #@2
    return p1
.end method

.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "sortcolumn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/16 v7, 0x40

    #@4
    .line 55
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    #@7
    .line 34
    iput v7, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    #@9
    .line 35
    new-array v5, v7, [I

    #@b
    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    #@d
    .line 36
    new-array v5, v7, [I

    #@f
    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    #@11
    .line 38
    const/4 v5, -0x1

    #@12
    iput v5, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    #@14
    .line 40
    new-instance v5, Lcom/android/internal/database/SortCursor$1;

    #@16
    invoke-direct {v5, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    #@19
    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    #@1b
    .line 57
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@1d
    .line 59
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@1f
    array-length v3, v5

    #@20
    .line 60
    .local v3, "length":I
    new-array v5, v3, [I

    #@22
    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    #@24
    .line 61
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@27
    .line 62
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@29
    aget-object v5, v5, v1

    #@2b
    if-nez v5, :cond_0

    #@2d
    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 65
    :cond_0
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@32
    aget-object v5, v5, v1

    #@34
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    #@36
    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@39
    .line 67
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@3b
    aget-object v5, v5, v1

    #@3d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    #@40
    .line 70
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    #@42
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@44
    aget-object v6, v6, v1

    #@46
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@49
    move-result v6

    #@4a
    aput v6, v5, v1

    #@4c
    goto :goto_1

    #@4d
    .line 72
    :cond_1
    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@4f
    .line 73
    const-string/jumbo v4, ""

    #@52
    .line 74
    .local v4, "smallest":Ljava/lang/String;
    const/4 v2, 0x0

    #@53
    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_5

    #@55
    .line 75
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@57
    aget-object v5, v5, v2

    #@59
    if-eqz v5, :cond_2

    #@5b
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@5d
    aget-object v5, v5, v2

    #@5f
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    #@62
    move-result v5

    #@63
    if-eqz v5, :cond_3

    #@65
    .line 74
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_2

    #@68
    .line 77
    :cond_3
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@6a
    aget-object v5, v5, v2

    #@6c
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    #@6e
    aget v6, v6, v2

    #@70
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    .line 78
    .local v0, "current":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@76
    if-eqz v5, :cond_4

    #@78
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@7b
    move-result v5

    #@7c
    if-gez v5, :cond_2

    #@7e
    .line 79
    :cond_4
    move-object v4, v0

    #@7f
    .line 80
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@81
    aget-object v5, v5, v2

    #@83
    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@85
    goto :goto_3

    #@86
    .line 84
    .end local v0    # "current":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    #@88
    array-length v5, v5

    #@89
    add-int/lit8 v1, v5, -0x1

    #@8b
    :goto_4
    if-ltz v1, :cond_6

    #@8d
    .line 85
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    #@8f
    const/4 v6, -0x2

    #@90
    aput v6, v5, v1

    #@92
    .line 84
    add-int/lit8 v1, v1, -0x1

    #@94
    goto :goto_4

    #@95
    .line 87
    :cond_6
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@97
    const/4 v6, 0x2

    #@98
    new-array v6, v6, [I

    #@9a
    aput v7, v6, v9

    #@9c
    const/4 v7, 0x1

    #@9d
    aput v3, v6, v7

    #@9f
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@a2
    move-result-object v5

    #@a3
    check-cast v5, [[I

    #@a5
    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    #@a7
    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 268
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 269
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-nez v2, :cond_0

    #@c
    .line 268
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@16
    goto :goto_1

    #@17
    .line 266
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    #@0
    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 259
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 260
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-nez v2, :cond_0

    #@c
    .line 259
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    #@16
    goto :goto_1

    #@17
    .line 256
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 241
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@6
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@d
    array-length v1, v2

    #@e
    .line 246
    .local v1, "length":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@11
    .line 247
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@13
    aget-object v2, v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 248
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@19
    aget-object v2, v2, v0

    #@1b
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 251
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v3, "No cursor that can return names"

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2
.end method

.method public getCount()I
    .locals 4

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    .line 94
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@3
    array-length v2, v3

    #@4
    .line 95
    .local v2, "length":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 96
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@9
    aget-object v3, v3, v1

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 97
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@f
    aget-object v3, v3, v1

    #@11
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    #@14
    move-result v3

    #@15
    add-int/2addr v0, v3

    #@16
    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 100
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 211
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 199
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 205
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 193
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 187
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 222
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

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
    .line 228
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onMove(II)Z
    .locals 13
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    .line 106
    if-ne p1, p2, :cond_0

    #@6
    .line 107
    return v11

    #@7
    .line 117
    :cond_0
    rem-int/lit8 v0, p2, 0x40

    #@9
    .line 119
    .local v0, "cache_entry":I
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    #@b
    aget v8, v8, v0

    #@d
    if-ne v8, p2, :cond_2

    #@f
    .line 120
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    #@11
    aget v7, v8, v0

    #@13
    .line 121
    .local v7, "which":I
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@15
    aget-object v8, v8, v7

    #@17
    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@19
    .line 122
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@1b
    if-nez v8, :cond_1

    #@1d
    .line 123
    const-string/jumbo v8, "SortCursor"

    #@20
    const-string/jumbo v9, "onMove: cache results in a null cursor."

    #@23
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 124
    return v10

    #@27
    .line 126
    :cond_1
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@29
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    #@2b
    aget-object v9, v9, v0

    #@2d
    aget v9, v9, v7

    #@2f
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@32
    .line 127
    iput v0, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    #@34
    .line 128
    return v11

    #@35
    .line 131
    .end local v7    # "which":I
    :cond_2
    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@37
    .line 132
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@39
    array-length v4, v8

    #@3a
    .line 134
    .local v4, "length":I
    iget v8, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    #@3c
    if-ltz v8, :cond_4

    #@3e
    .line 135
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    #@41
    .line 136
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@43
    aget-object v8, v8, v2

    #@45
    if-nez v8, :cond_3

    #@47
    .line 135
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 137
    :cond_3
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@4c
    aget-object v8, v8, v2

    #@4e
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    #@50
    iget v10, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    #@52
    aget-object v9, v9, v10

    #@54
    aget v9, v9, v2

    #@56
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@59
    goto :goto_1

    #@5a
    .line 141
    .end local v2    # "i":I
    :cond_4
    if-lt p2, p1, :cond_5

    #@5c
    if-ne p1, v12, :cond_8

    #@5e
    .line 142
    :cond_5
    const/4 v2, 0x0

    #@5f
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_7

    #@61
    .line 143
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@63
    aget-object v8, v8, v2

    #@65
    if-nez v8, :cond_6

    #@67
    .line 142
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 144
    :cond_6
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@6c
    aget-object v8, v8, v2

    #@6e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@71
    goto :goto_3

    #@72
    .line 146
    :cond_7
    const/4 p1, 0x0

    #@73
    .line 148
    .end local v2    # "i":I
    :cond_8
    if-gez p1, :cond_9

    #@75
    .line 149
    const/4 p1, 0x0

    #@76
    .line 153
    :cond_9
    const/4 v6, -0x1

    #@77
    .line 154
    .local v6, "smallestIdx":I
    move v2, p1

    #@78
    .restart local v2    # "i":I
    :goto_4
    if-gt v2, p2, :cond_e

    #@7a
    .line 155
    const-string/jumbo v5, ""

    #@7d
    .line 156
    .local v5, "smallest":Ljava/lang/String;
    const/4 v6, -0x1

    #@7e
    .line 157
    const/4 v3, 0x0

    #@7f
    .local v3, "j":I
    :goto_5
    if-ge v3, v4, :cond_d

    #@81
    .line 158
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@83
    aget-object v8, v8, v3

    #@85
    if-eqz v8, :cond_a

    #@87
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@89
    aget-object v8, v8, v3

    #@8b
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    #@8e
    move-result v8

    #@8f
    if-eqz v8, :cond_b

    #@91
    .line 157
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    #@93
    goto :goto_5

    #@94
    .line 161
    :cond_b
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@96
    aget-object v8, v8, v3

    #@98
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    #@9a
    aget v9, v9, v3

    #@9c
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    .line 162
    .local v1, "current":Ljava/lang/String;
    if-ltz v6, :cond_c

    #@a2
    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@a5
    move-result v8

    #@a6
    if-gez v8, :cond_a

    #@a8
    .line 163
    :cond_c
    move-object v5, v1

    #@a9
    .line 164
    move v6, v3

    #@aa
    goto :goto_6

    #@ab
    .line 167
    .end local v1    # "current":Ljava/lang/String;
    :cond_d
    if-ne v2, p2, :cond_10

    #@ad
    .line 172
    .end local v3    # "j":I
    .end local v5    # "smallest":Ljava/lang/String;
    :cond_e
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@af
    aget-object v8, v8, v6

    #@b1
    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    #@b3
    .line 173
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    #@b5
    aput p2, v8, v0

    #@b7
    .line 174
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    #@b9
    aput v6, v8, v0

    #@bb
    .line 175
    const/4 v2, 0x0

    #@bc
    :goto_7
    if-ge v2, v4, :cond_12

    #@be
    .line 176
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@c0
    aget-object v8, v8, v2

    #@c2
    if-eqz v8, :cond_f

    #@c4
    .line 177
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    #@c6
    aget-object v8, v8, v0

    #@c8
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@ca
    aget-object v9, v9, v2

    #@cc
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    #@cf
    move-result v9

    #@d0
    aput v9, v8, v2

    #@d2
    .line 175
    :cond_f
    add-int/lit8 v2, v2, 0x1

    #@d4
    goto :goto_7

    #@d5
    .line 168
    .restart local v3    # "j":I
    .restart local v5    # "smallest":Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@d7
    aget-object v8, v8, v6

    #@d9
    if-eqz v8, :cond_11

    #@db
    .line 169
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@dd
    aget-object v8, v8, v6

    #@df
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@e2
    .line 154
    :cond_11
    add-int/lit8 v2, v2, 0x1

    #@e4
    goto :goto_4

    #@e5
    .line 180
    .end local v3    # "j":I
    .end local v5    # "smallest":Ljava/lang/String;
    :cond_12
    iput v12, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    #@e7
    .line 181
    return v11
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 277
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 278
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 279
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@13
    .line 277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 275
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    #@0
    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 298
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@6
    .line 299
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-nez v2, :cond_1

    #@c
    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 302
    const/4 v2, 0x0

    #@1a
    return v2

    #@1b
    .line 306
    :cond_2
    const/4 v2, 0x1

    #@1c
    return v2
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@2
    array-length v1, v2

    #@3
    .line 287
    .local v1, "length":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 288
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@8
    aget-object v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 289
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    #@e
    aget-object v2, v2, v0

    #@10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@13
    .line 287
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 285
    :cond_1
    return-void
.end method

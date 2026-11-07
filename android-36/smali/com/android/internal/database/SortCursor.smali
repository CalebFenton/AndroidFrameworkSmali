.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final blacklist ROWCACHESIZE:I

.field private blacklist mCurRowNumCache:[[I

.field private greylist mCursor:Landroid/database/Cursor;

.field private blacklist mCursorCache:[I

.field private greylist mCursors:[Landroid/database/Cursor;

.field private blacklist mLastCacheHit:I

.field private blacklist mObserver:Landroid/database/DataSetObserver;

.field private blacklist mRowNumCache:[I

.field private blacklist mSortColumns:[I


# direct methods
.method public constructor greylist <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 10
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "sortcolumn"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    .line 38
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 39
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 43
    new-instance v1, Lcom/android/internal/database/SortCursor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 61
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 63
    iget-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    .line 64
    .local v1, "length":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 65
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v1, :cond_4b

    .line 66
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-nez v3, :cond_2c

    goto :goto_48

    .line 69
    :cond_2c
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 71
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v2

    invoke-interface {v4, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 65
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 76
    .end local v2    # "i":I
    :cond_4b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 77
    const-string v2, ""

    .line 78
    .local v2, "smallest":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_51
    if-ge v3, v1, :cond_84

    .line 79
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 80
    goto :goto_81

    .line 81
    :cond_64
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "current":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7a

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_81

    .line 83
    :cond_7a
    move-object v2, v4

    .line 84
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v3

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 78
    .end local v4    # "current":Ljava/lang/String;
    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 88
    .end local v3    # "j":I
    :cond_84
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_89
    if-ltz v3, :cond_93

    .line 89
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    const/4 v6, -0x2

    aput v6, v5, v3

    .line 88
    add-int/lit8 v3, v3, -0x1

    goto :goto_89

    .line 91
    .end local v3    # "i":I
    :cond_93
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 92
    return-void
.end method

.method static synthetic blacklist access$002(Lcom/android/internal/database/SortCursor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;
    .param p1, "x1"    # I

    .line 29
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic blacklist access$102(Lcom/android/internal/database/SortCursor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;
    .param p1, "x1"    # I

    .line 29
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 272
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_17

    .line 273
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_14

    .line 274
    :cond_d
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 276
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist deactivate()V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 263
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_17

    .line 264
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_14

    .line 265
    :cond_d
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 263
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 267
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 3
    .param p1, "column"    # I

    .line 238
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 250
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_23

    .line 251
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_20

    .line 252
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 250
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 255
    .end local v1    # "i":I
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No cursor that can return names"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCount()I
    .registers 5

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    .line 99
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_19

    .line 100
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-eqz v3, :cond_16

    .line 101
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 99
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 104
    .end local v2    # "i":I
    :cond_19
    return v0
.end method

.method public whitelist getDouble(I)D
    .registers 4
    .param p1, "column"    # I

    .line 221
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .registers 3
    .param p1, "column"    # I

    .line 215
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(I)I
    .registers 3
    .param p1, "column"    # I

    .line 203
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "column"    # I

    .line 209
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .registers 3
    .param p1, "column"    # I

    .line 197
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "column"    # I

    .line 191
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .registers 3
    .param p1, "column"    # I

    .line 226
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public whitelist isNull(I)Z
    .registers 3
    .param p1, "column"    # I

    .line 232
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onMove(II)Z
    .registers 13
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 110
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 111
    return v0

    .line 121
    :cond_4
    rem-int/lit8 v1, p2, 0x40

    .line 123
    .local v1, "cache_entry":I
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_31

    .line 124
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aget v2, v2, v1

    .line 125
    .local v2, "which":I
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 126
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_23

    .line 127
    const-string v0, "SortCursor"

    const-string v3, "onMove: cache results in a null cursor."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_23
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 131
    iput v1, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 132
    return v0

    .line 135
    .end local v2    # "which":I
    :cond_31
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 136
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v2

    .line 138
    .local v2, "length":I
    iget v3, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    if-ltz v3, :cond_57

    .line 139
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3c
    if-ge v3, v2, :cond_57

    .line 140
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    if-nez v4, :cond_45

    goto :goto_54

    .line 141
    :cond_45
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    iget v6, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 139
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 145
    .end local v3    # "i":I
    :cond_57
    const/4 v3, -0x1

    if-lt p2, p1, :cond_5c

    if-ne p1, v3, :cond_71

    .line 146
    :cond_5c
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5d
    if-ge v4, v2, :cond_70

    .line 147
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v4

    if-nez v5, :cond_66

    goto :goto_6d

    .line 148
    :cond_66
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v4

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 150
    .end local v4    # "i":I
    :cond_70
    const/4 p1, 0x0

    .line 152
    :cond_71
    if-gez p1, :cond_74

    .line 153
    const/4 p1, 0x0

    .line 157
    :cond_74
    const/4 v4, -0x1

    .line 158
    .local v4, "smallestIdx":I
    move v5, p1

    .local v5, "i":I
    :goto_76
    if-gt v5, p2, :cond_bb

    .line 159
    const-string v6, ""

    .line 160
    .local v6, "smallest":Ljava/lang/String;
    const/4 v4, -0x1

    .line 161
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7c
    if-ge v7, v2, :cond_a8

    .line 162
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v7

    if-eqz v8, :cond_a5

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v7

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 163
    goto :goto_a5

    .line 165
    :cond_8f
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v7

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v9, v9, v7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "current":Ljava/lang/String;
    if-ltz v4, :cond_a3

    invoke-virtual {v8, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a5

    .line 167
    :cond_a3
    move-object v6, v8

    .line 168
    move v4, v7

    .line 161
    .end local v8    # "current":Ljava/lang/String;
    :cond_a5
    :goto_a5
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    .line 171
    .end local v7    # "j":I
    :cond_a8
    if-ne v5, p2, :cond_ab

    goto :goto_bb

    .line 172
    :cond_ab
    iget-object v7, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v7, v7, v4

    if-eqz v7, :cond_b8

    .line 173
    iget-object v7, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v7, v7, v4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 158
    .end local v6    # "smallest":Ljava/lang/String;
    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 176
    .end local v5    # "i":I
    :cond_bb
    :goto_bb
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v4

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 177
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aput p2, v5, v1

    .line 178
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aput v4, v5, v1

    .line 179
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_ca
    if-ge v5, v2, :cond_e3

    .line 180
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v5

    if-eqz v6, :cond_e0

    .line 181
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    aput v7, v6, v5

    .line 179
    :cond_e0
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 184
    .end local v5    # "i":I
    :cond_e3
    iput v3, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 185
    return v0
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 280
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 281
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_16

    .line 282
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 283
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 281
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 286
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method public whitelist requery()Z
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 302
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_1c

    .line 303
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_19

    .line 305
    :cond_d
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_19

    .line 306
    const/4 v2, 0x0

    return v2

    .line 302
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 310
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 290
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 291
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_16

    .line 292
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    .line 293
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 296
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

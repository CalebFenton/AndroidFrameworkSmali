.class public Landroid/database/TranslatingCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "TranslatingCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/TranslatingCursor$Config;,
        Landroid/database/TranslatingCursor$Translator;
    }
.end annotation


# instance fields
.field private final blacklist mAuxiliaryColumnIndex:I

.field private final blacklist mConfig:Landroid/database/TranslatingCursor$Config;

.field private final blacklist mDropLast:Z

.field private final blacklist mTranslateColumnIndices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslator:Landroid/database/TranslatingCursor$Translator;


# direct methods
.method public constructor blacklist <init>(Landroid/database/Cursor;Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Z)V
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "config"    # Landroid/database/TranslatingCursor$Config;
    .param p3, "translator"    # Landroid/database/TranslatingCursor$Translator;
    .param p4, "dropLast"    # Z

    .line 67
    invoke-direct {p0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 69
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/TranslatingCursor$Config;

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mConfig:Landroid/database/TranslatingCursor$Config;

    .line 70
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/TranslatingCursor$Translator;

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mTranslator:Landroid/database/TranslatingCursor$Translator;

    .line 71
    iput-boolean p4, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    .line 73
    iget-object v0, p2, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/TranslatingCursor;->mAuxiliaryColumnIndex:I

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "columnName":Ljava/lang/String;
    iget-object v2, p2, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 78
    iget-object v2, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 81
    .end local v0    # "i":I
    :cond_43
    return-void
.end method

.method public static blacklist query(Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 25
    .param p0, "config"    # Landroid/database/TranslatingCursor$Config;
    .param p1, "translator"    # Landroid/database/TranslatingCursor$Translator;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "sortOrder"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "signal"    # Landroid/os/CancellationSignal;

    .line 105
    move-object/from16 v0, p4

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    .line 106
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    move v1, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v1, v3

    .line 107
    .local v1, "requestedAuxiliaryColumn":Z
    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, p0, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    .line 108
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_27

    :cond_25
    move v4, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v4, v3

    .line 112
    .local v4, "requestedTranslateColumns":Z
    :goto_28
    if-nez v4, :cond_2f

    .line 113
    invoke-virtual/range {p2 .. p11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 118
    :cond_2f
    if-nez v1, :cond_3e

    .line 119
    const-class v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .end local p4    # "projectionIn":[Ljava/lang/String;
    .local v0, "projectionIn":[Ljava/lang/String;
    goto :goto_3f

    .line 118
    .end local v0    # "projectionIn":[Ljava/lang/String;
    .restart local p4    # "projectionIn":[Ljava/lang/String;
    :cond_3e
    move-object v7, v0

    .line 123
    .end local p4    # "projectionIn":[Ljava/lang/String;
    .local v7, "projectionIn":[Ljava/lang/String;
    :goto_3f
    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "c":Landroid/database/Cursor;
    new-instance v5, Landroid/database/TranslatingCursor;

    if-nez v1, :cond_55

    move v2, v3

    :cond_55
    invoke-direct {v5, v0, p0, p1, v2}, Landroid/database/TranslatingCursor;-><init>(Landroid/database/Cursor;Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Z)V

    return-object v5
.end method


# virtual methods
.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 203
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 206
    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 208
    return-void

    .line 204
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 131
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 132
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 4
    .param p1, "columnIndex"    # I

    .line 212
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 215
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getBlob(I)[B

    move-result-object v0

    return-object v0

    .line 213
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getColumnCount()I
    .registers 2

    .line 85
    iget-boolean v0, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    if-eqz v0, :cond_b

    .line 86
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 88
    :cond_b
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 4

    .line 94
    iget-boolean v0, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    if-eqz v0, :cond_16

    .line 95
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 97
    :cond_16
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .line 148
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 151
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 149
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getFloat(I)F
    .registers 4
    .param p1, "columnIndex"    # I

    .line 157
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 160
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getFloat(I)F

    move-result v0

    return v0

    .line 158
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 166
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 169
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getInt(I)I

    move-result v0

    return v0

    .line 167
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 175
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 178
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 176
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getShort(I)S
    .registers 4
    .param p1, "columnIndex"    # I

    .line 184
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 187
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getShort(I)S

    move-result v0

    return v0

    .line 185
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "columnIndex"    # I

    .line 193
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 194
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslator:Landroid/database/TranslatingCursor$Translator;

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/database/TranslatingCursor;->mAuxiliaryColumnIndex:I

    .line 195
    invoke-virtual {p0, p1}, Landroid/database/TranslatingCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/database/TranslatingCursor$Translator;->translate(Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1d
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 221
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    const/4 v0, 0x3

    return v0

    .line 224
    :cond_e
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 2

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWrappedCursor()Landroid/database/Cursor;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Returning underlying cursor risks leaking data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isNull(I)Z
    .registers 4
    .param p1, "columnIndex"    # I

    .line 230
    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 231
    invoke-virtual {p0, p1}, Landroid/database/TranslatingCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    .line 233
    :cond_16
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->isNull(I)Z

    move-result v0

    return v0
.end method

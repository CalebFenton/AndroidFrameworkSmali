.class public Landroid/database/CursorWrapper;
.super Ljava/lang/Object;
.source "CursorWrapper.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field protected final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@5
    .line 49
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    #@5
    .line 141
    return-void
.end method

.method public deactivate()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    #@5
    .line 65
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    return-object v0
.end method

.method public isAfterLast()Z
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFirst()Z
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLast()Z
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public moveToLast()Z
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@5
    .line 216
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@5
    .line 221
    return-void
.end method

.method public requery()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    #@5
    .line 106
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    #@5
    .line 237
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@5
    .line 247
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@5
    .line 252
    return-void
.end method

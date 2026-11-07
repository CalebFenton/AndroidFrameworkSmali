.class public abstract Landroid/database/AbstractWindowedCursor;
.super Landroid/database/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected whitelist mWindow:Landroid/database/CursorWindow;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist checkPosition()V
    .registers 3

    .line 139
    invoke-super {p0}, Landroid/database/AbstractCursor;->checkPosition()V

    .line 141
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_8

    .line 145
    return-void

    .line 142
    :cond_8
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempting to access a closed CursorWindow.Most probable cause: cursor is deactivated prior to calling this method."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist clearOrCreateWindow(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_c

    .line 203
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    goto :goto_11

    .line 205
    :cond_c
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    .line 207
    :goto_11
    return-void
.end method

.method protected greylist-max-r closeWindow()V
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 191
    :cond_c
    return-void
.end method

.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 59
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 60
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 61
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 4
    .param p1, "columnIndex"    # I

    .line 47
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 48
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .line 89
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 90
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .registers 4
    .param p1, "columnIndex"    # I

    .line 83
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 84
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 71
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 72
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 77
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 78
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .registers 4
    .param p1, "columnIndex"    # I

    .line 65
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 66
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getShort(II)S

    move-result v0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .line 53
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 54
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 133
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 134
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method public whitelist hasWindow()Z
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isBlob(I)Z
    .registers 4
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isFloat(I)Z
    .registers 4
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isLong(I)Z
    .registers 4
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isNull(I)Z
    .registers 4
    .param p1, "columnIndex"    # I

    .line 95
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 96
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist isString(I)Z
    .registers 4
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected greylist onDeactivateOrClose()V
    .registers 1

    .line 213
    invoke-super {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 214
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    .line 215
    return-void
.end method

.method public whitelist setWindow(Landroid/database/CursorWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/database/CursorWindow;

    .line 166
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eq p1, v0, :cond_9

    .line 167
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    .line 168
    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 170
    :cond_9
    return-void
.end method

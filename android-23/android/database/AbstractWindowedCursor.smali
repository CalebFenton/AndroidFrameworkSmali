.class public abstract Landroid/database/AbstractWindowedCursor;
.super Landroid/database/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected mWindow:Landroid/database/CursorWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 2

    #@0
    .prologue
    .line 136
    invoke-super {p0}, Landroid/database/AbstractCursor;->checkPosition()V

    #@3
    .line 138
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 139
    new-instance v0, Landroid/database/StaleDataException;

    #@9
    const-string/jumbo v1, "Attempting to access a closed CursorWindow.Most probable cause: cursor is deactivated prior to calling this method."

    #@c
    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 135
    :cond_0
    return-void
.end method

.method protected clearOrCreateWindow(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 198
    new-instance v0, Landroid/database/CursorWindow;

    #@6
    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    #@9
    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@b
    .line 196
    :goto_0
    return-void

    #@c
    .line 200
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@e
    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    #@11
    goto :goto_0
.end method

.method protected closeWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 184
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@7
    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    #@a
    .line 185
    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@c
    .line 182
    :cond_0
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 57
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1, p2}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    #@a
    .line 55
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 45
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 87
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 81
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 69
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 75
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 63
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getShort(II)S

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 51
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@3
    .line 131
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@5
    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@2
    return-object v0
.end method

.method public hasWindow()Z
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isBlob(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isFloat(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isLong(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 117
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 3
    .param p1, "columnIndex"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    #@4
    .line 93
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@6
    iget v2, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    #@8
    invoke-virtual {v1, v2, p1}, Landroid/database/CursorWindow;->getType(II)I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public isString(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method protected onDeactivateOrClose()V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-super {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    #@3
    .line 208
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    #@6
    .line 206
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 164
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    #@7
    .line 165
    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    #@9
    .line 162
    :cond_0
    return-void
.end method

.class public Landroid/database/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor whitelist <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 42
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 47
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 49
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 50
    return-void

    .line 53
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_e
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 54
    return-void
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_f

    .line 59
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 60
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onMove(II)Z
    .registers 5
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 68
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 70
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v1

    return v1

    .line 73
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

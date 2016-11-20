.class public Landroid/database/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 41
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    #@0
    .prologue
    .line 47
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 48
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@8
    check-cast v0, Landroid/database/CrossProcessCursor;

    #@a
    .line 49
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    #@d
    .line 50
    return-void

    #@e
    .line 53
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_0
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@10
    invoke-static {v1, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    #@13
    .line 46
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2

    #@0
    .prologue
    .line 58
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 59
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@8
    check-cast v0, Landroid/database/CrossProcessCursor;

    #@a
    .line 60
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 63
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_0
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    #@0
    .prologue
    .line 68
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@2
    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 69
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    #@8
    check-cast v0, Landroid/database/CrossProcessCursor;

    #@a
    .line 70
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 73
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :cond_0
    const/4 v1, 0x1

    #@10
    return v1
.end method

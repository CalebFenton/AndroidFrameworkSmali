.class public abstract Landroid/content/CursorEntityIterator;
.super Ljava/lang/Object;
.source "CursorEntityIterator.java"

# interfaces
.implements Landroid/content/EntityIterator;


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mIsClosed:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    #@6
    .line 38
    iput-object p1, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #@8
    .line 39
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #@a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@d
    .line 36
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    #@0
    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closing when already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 109
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    #@10
    .line 110
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #@12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@15
    .line 105
    return-void
.end method

.method public abstract getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "calling hasNext() when the iterator is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 63
    :cond_0
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #@f
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    const/4 v0, 0x0

    #@16
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method public next()Landroid/content/Entity;
    .locals 3

    #@0
    .prologue
    .line 76
    iget-boolean v1, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "calling next() when the iterator is closed"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/content/CursorEntityIterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v2, "you may only call next() if hasNext() is true"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 84
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #@1e
    invoke-virtual {p0, v1}, Landroid/content/CursorEntityIterator;->getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 85
    :catch_0
    move-exception v0

    #@24
    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v2, "caught a remote exception, this process will die soon"

    #@29
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/CursorEntityIterator;->next()Landroid/content/Entity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "remove not supported by EntityIterators"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final reset()V
    .locals 2

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "calling reset() when the iterator is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 98
    :cond_0
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    #@f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@12
    .line 94
    return-void
.end method

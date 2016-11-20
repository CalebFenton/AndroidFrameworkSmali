.class public Landroid/content/CursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    #@3
    .line 124
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    #@5
    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    #@8
    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    #@a
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    #@3
    .line 136
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    #@5
    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    #@8
    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    #@a
    .line 137
    iput-object p2, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@c
    .line 138
    iput-object p3, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@e
    .line 139
    iput-object p4, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@10
    .line 140
    iput-object p5, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@12
    .line 141
    iput-object p6, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@14
    .line 134
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    #@0
    .prologue
    .line 86
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    #@3
    .line 88
    monitor-enter p0

    #@4
    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 90
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@a
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 85
    return-void

    #@f
    .line 88
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isReset()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 100
    if-eqz p1, :cond_0

    #@8
    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@b
    .line 103
    :cond_0
    return-void

    #@c
    .line 105
    :cond_1
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@e
    .line 106
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@10
    .line 108
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isStarted()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 109
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    #@19
    .line 112
    :cond_2
    if-eqz v0, :cond_3

    #@1b
    if-eq v0, p1, :cond_3

    #@1d
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 97
    :cond_3
    :goto_0
    return-void

    #@24
    .line 113
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@27
    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    check-cast p1, Landroid/database/Cursor;

    #@2
    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    #@5
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v0, "mUri="

    #@9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 234
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    const-string/jumbo v0, "mProjection="

    #@17
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 235
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@1c
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string/jumbo v0, "mSelection="

    #@29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    const-string/jumbo v0, "mSelectionArgs="

    #@37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 238
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@3c
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 239
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v0, "mSortOrder="

    #@49
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@4e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v0, "mCursor="

    #@57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5f
    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v0, "mContentChanged="

    #@65
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    iget-boolean v0, p0, Landroid/content/CursorLoader;->mContentChanged:Z

    #@6a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6d
    .line 231
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    #@0
    .prologue
    .line 57
    monitor-enter p0

    #@1
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 59
    new-instance v0, Landroid/os/OperationCanceledException;

    #@9
    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 57
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    .line 61
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    #@12
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    #@15
    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 64
    :try_start_2
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@22
    iget-object v2, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@24
    iget-object v3, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@26
    .line 65
    iget-object v4, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@28
    iget-object v5, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2a
    iget-object v6, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@2c
    .line 64
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    move-result-object v7

    #@30
    .line 66
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@32
    .line 69
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@35
    .line 70
    iget-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    #@37
    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    .line 78
    :cond_1
    monitor-enter p0

    #@3b
    .line 79
    const/4 v0, 0x0

    #@3c
    :try_start_4
    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3e
    monitor-exit p0

    #@3f
    .line 76
    return-object v7

    #@40
    .line 71
    :catch_0
    move-exception v8

    #@41
    .line 72
    .local v8, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@44
    .line 73
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@45
    .line 77
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    #@46
    .line 78
    monitor-enter p0

    #@47
    .line 79
    const/4 v1, 0x0

    #@48
    :try_start_6
    iput-object v1, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@4a
    monitor-exit p0

    #@4b
    .line 77
    throw v0

    #@4c
    .line 78
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    #@4d
    monitor-exit p0

    #@4e
    throw v0

    #@4f
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    #@50
    monitor-exit p0

    #@51
    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 172
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 171
    :cond_0
    :goto_0
    return-void

    #@9
    .line 173
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@c
    goto :goto_0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 171
    check-cast p1, Landroid/database/Cursor;

    #@2
    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    #@5
    return-void
.end method

.method protected onReset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    #@4
    .line 182
    invoke-virtual {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    #@7
    .line 184
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@d
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 187
    :cond_0
    :goto_0
    iput-object v1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@15
    .line 178
    return-void

    #@16
    .line 185
    :cond_1
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@18
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1b
    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 154
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@6
    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    #@9
    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->takeContentChanged()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@11
    if-nez v0, :cond_2

    #@13
    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/content/CursorLoader;->forceLoad()V

    #@16
    .line 152
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    #@0
    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/CursorLoader;->cancelLoad()Z

    #@3
    .line 165
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@2
    .line 202
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    #@0
    .prologue
    .line 211
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2
    .line 210
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 219
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@2
    .line 218
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 227
    iput-object p1, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2
    .line 226
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@2
    .line 194
    return-void
.end method

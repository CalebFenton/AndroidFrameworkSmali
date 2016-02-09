.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
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
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    #@3
    .line 120
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    #@5
    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    #@8
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    #@a
    .line 118
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
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    #@3
    .line 132
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    #@5
    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    #@8
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    #@a
    .line 133
    iput-object p2, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@c
    .line 134
    iput-object p3, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@e
    .line 135
    iput-object p4, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@10
    .line 136
    iput-object p5, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@12
    .line 137
    iput-object p6, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@14
    .line 130
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    #@3
    .line 84
    monitor-enter p0

    #@4
    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 86
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 81
    return-void

    #@f
    .line 84
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
    .line 94
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 96
    if-eqz p1, :cond_0

    #@8
    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@b
    .line 99
    :cond_0
    return-void

    #@c
    .line 101
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@e
    .line 102
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@10
    .line 104
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    #@19
    .line 108
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
    .line 93
    :cond_3
    :goto_0
    return-void

    #@24
    .line 109
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
    .line 93
    check-cast p1, Landroid/database/Cursor;

    #@2
    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

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
    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 229
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v0, "mUri="

    #@9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 230
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    const-string/jumbo v0, "mProjection="

    #@17
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 231
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@1c
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 232
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string/jumbo v0, "mSelection="

    #@29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    const-string/jumbo v0, "mSelectionArgs="

    #@37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 234
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@3c
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 235
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v0, "mSortOrder="

    #@49
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@4e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v0, "mCursor="

    #@57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5f
    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v0, "mContentChanged="

    #@65
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z

    #@6a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6d
    .line 227
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    #@0
    .prologue
    .line 52
    monitor-enter p0

    #@1
    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 54
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    #@9
    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 52
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    .line 56
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v4/os/CancellationSignal;

    #@12
    invoke-direct {v0}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    #@15
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 59
    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v0

    #@20
    .line 60
    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@22
    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@24
    iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@26
    iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@28
    iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2a
    .line 61
    iget-object v6, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    #@2c
    .line 59
    invoke-static/range {v0 .. v6}, Landroid/support/v4/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    move-result-object v7

    #@30
    .line 62
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@32
    .line 65
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@35
    .line 66
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    #@37
    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    .line 74
    :cond_1
    monitor-enter p0

    #@3b
    .line 75
    const/4 v0, 0x0

    #@3c
    :try_start_4
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3e
    monitor-exit p0

    #@3f
    .line 72
    return-object v7

    #@40
    .line 67
    :catch_0
    move-exception v8

    #@41
    .line 68
    .local v8, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@44
    .line 69
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@45
    .line 73
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    #@46
    .line 74
    monitor-enter p0

    #@47
    .line 75
    const/4 v1, 0x0

    #@48
    :try_start_6
    iput-object v1, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@4a
    monitor-exit p0

    #@4b
    .line 73
    throw v0

    #@4c
    .line 74
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
    .line 51
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

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
    .line 168
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 167
    :cond_0
    :goto_0
    return-void

    #@9
    .line 169
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
    .line 167
    check-cast p1, Landroid/database/Cursor;

    #@2
    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    #@5
    return-void
.end method

.method protected onReset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    #@4
    .line 178
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    #@7
    .line 180
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@d
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 183
    :cond_0
    :goto_0
    iput-object v1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@15
    .line 174
    return-void

    #@16
    .line 181
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@18
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@1b
    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 150
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@6
    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    #@9
    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@11
    if-nez v0, :cond_2

    #@13
    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    #@16
    .line 148
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    #@3
    .line 161
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@2
    .line 198
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2
    .line 206
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@2
    .line 214
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2
    .line 222
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@2
    .line 190
    return-void
.end method
